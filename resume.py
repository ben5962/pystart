#!/bin/env python
# -*- coding: utf-8 -*
 
#INTENTION: classer les mots d'un fichier par fréquence et en tracer le graphe
 
	import unittest
 
def fonction_d_entree(untruc):
	class entree():
		def __init__(self):
			self.bidule = "untruc"
	return entree()
 
class test_basic_essai(unittest.TestCase):
	def test_trouve_untruc(self):
		objet_entree = fonction_d_entree("unbidule-untruc")
		a_verif = objet_entree.bidule
		self.assertEqual(a_verif, "untruc")
