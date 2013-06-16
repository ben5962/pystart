# 
#         USAGE: ./pyproj.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 16/06/2013 21:57:17 CEST
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
echo "nom du projet?"
read PROJ
PROJET="$PROJ.py"
touch $PROJET

#ajouter les lignes qui vont bien
# fonction d'ajout de ligne à la suite
function ajoute_ligne(){
echo "$1" >> "$PROJET"
}

#ajouter shebang python
ajoute_ligne "#!/bin/env python"

#ajoute utf-8
ajoute_ligne "# -*- coding: utf-8 -*"


#ajoute les tests
ajoute_ligne "import unittest"
ajoute_ligne " "
ajoute_ligne "def fonction_d_entree(untruc):"
ajoute_ligne "	class entree():"
ajoute_ligne "		def __init__(self):"
ajoute_ligne "			self.bidule = \"untruc\""
ajoute_ligne "	return entree()"
ajoute_ligne " "
ajoute_ligne "class test_basic_essai(unittest.TestCase):"
ajoute_ligne "	def test_trouve_untruc(self):"
ajoute_ligne "		objet_entree = fonction_d_entree(\"unbidule-untruc\")"
ajoute_ligne "		a_verif = objet_entree.bidule"
