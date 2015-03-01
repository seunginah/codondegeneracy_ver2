from xml.dom import minidom
import csv
import os

""" 
to create specific XML file:
1. go to http://www.ncbi.nlm.nih.gov/protein
2. search: (("Homo sapiens"[Organism] OR human[All Fields]) AND (g protein coupled receptor[Protein Name])) AND "Homo sapiens"[porgn] 
3. create XML file
IUPACna for nucleotide sequence
IUPACaa for amino acid sequences
"""

class SequenceReader:
	""" 
	reads data from xml file 
	builds csv file that may be opened with matlab
	[amino acid sequence     nucleic acid sequence]

	"""

	def __init__ (self, filename):
		"""
		constructor takes 1 argument: filename
		"""
		xmlfile = minidom.parse(filename)
		self.filename = filename.split(".xml")[0] # use for new csv filename
		# collect all the sequences
		self.nas = xmlfile.getElementsByTagName('IUPACna')
		self.aas = xmlfile.getElementsByTagName('IUPACaa')
		self.seqdict = {} # dictionary of all sequences | [aa] = na
		# counters
		self.IDcount = 0
		self.nascount = 0
		self.aascount = 0

	def constructSequenceDictionary(self):
		for aa in self.aas:
			for na in self.nas:
				self.seqdict[aa] = na

	def createCSVFile(self):
		newFilename = self.filename + ".csv"
		print newFilename

		file = open(newFilename, "wb")
		writer = csv.writer(file)

		for aa in self.seqdict:
			aaseq = aa.childNodes[0].nodeValue
			naseq = self.seqdict[aa].childNodes[0].nodeValue
			writer.writerow([aaseq, naseq])

		file.close()

	def printstuff(self):
		for ID in self.IDs:
			print ID.childNodes[0].nodeValue
			self.IDcount +=1 
		for aa in self.aas:
			print aa.childNodes[0].nodeValue
			self.aascount +=1
		for na in self.nas:
			print na.childNodes[0].nodeValue
			self.nascount +=1

		for aa in self.seqdict:
			print aa.childNodes[0].nodeValue
			print self.seqdict[aa].childNodes[0].nodeValue

		print "#IDs:", self.IDcount, "#aas", self.aascount, "#nas", self.nascount


# testing
if __name__ == "__main__":
	# enter file name here
	file = '10byaccession.xml'	
	print "reading... ", file
	reader = SequenceReader(file)
	print file, "has been read"
	#reader.printstuff()
	reader.constructSequenceDictionary()
	reader.createCSVFile()