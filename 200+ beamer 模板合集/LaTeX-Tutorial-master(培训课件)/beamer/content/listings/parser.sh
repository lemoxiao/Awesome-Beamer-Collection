#!usr/bin/bash

# LaTeX-ColorListings turns LaTeX-Code into colored and escaped LaTeX-code for nice listings.
# Copyright (C) 2012 Linus Dietz 
#
# This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.


# Inputfile (scans the first argument)
inputfile=$1

# Validating the input-file

if [ -z "$inputfile" ] # Case 1: No argument given
then
	echo "You need a '.tex'-file as argument... exiting!"
	exit 0

elif [ ${inputfile: -4} != ".tex" ] # Case 2: Not a '.tex'-file
then
	echo "You need a '.tex'-file as argument... exiting!"
	exit 0
fi

# The output file. 
escapedfile="${inputfile%????}_escaped.tex"

# We use a temporary file. Will be deleted afterwards
temp="${inputfile}.TEMP"

# The color-variables. Use valid LaTeX-colors. Dont forget to use the corresponding LaTeX color packages when you compile the LaTeX-code.

textcolor=black
greencolor=nounibagreenI
bluecolor=unibablueI
redcolor=nounibaredI
yellowcolor=unibayellowI
graycolor=unibagrayV

# Console outputs
echo "LaTeX-ColorListings  Copyright (C) 2012 Linus Dietz
This program comes with ABSOLUTELY NO WARRANTY;
This is free software, and you are welcome to redistribute it under certain conditions."

echo "
This script converts LaTeX-Code into colored and escaped LaTeX-code for nice listings. The colors (shown below) are adjustable.
"

# You can change your colors here!
echo "color 'textcolor' is set to '$textcolor'"
echo "color 'red' is set to '$redcolor'"
echo "color 'yellow' is set to '$yellowcolor'"
echo "color 'green' is set to '$greencolor'"
echo "color 'blue' is set to '$bluecolor'"
echo "color 'gray' is set to '$graycolor'"
echo ""


# Replacements start here.
sed "
### Brackets ###
s|{|;ESCBRACKETSTART|g
s|}|;ESCBRACKETSTOP|g
#
# Dollar #
s|\\$|\$NOESCcolor{$yellowcolor}NOESC\$NOESCcolor{$textcolor}|g
s|[\$]\{2\}|\$NOESCcolor{$yellowcolor}NOESC\$NOESC\$NOESCcolor{$textcolor}|g
#
# Single backslash
s|\\\|ESCAPEDBACKSLASH|g
#
### Main parser ###
s|ESCAPEDBACKSLASH[a-zA-Z0-9]*|\\\color{$redcolor}&\\\color{$textcolor}|g
#
### environment commands ###
# begin -- end #
s|ESCAPEDBACKSLASHbegin|\\\color{$bluecolor}\\\textbackslash\\\color{$bluecolor}begin\\\color{$textcolor}|g
s|ESCAPEDBACKSLASHend|\\\color{$bluecolor}\\\textbackslash\\\color{$bluecolor}end\\\color{$textcolor}|g
# Sections #
s|ESCAPEDBACKSLASHsection|\\\color{$bluecolor}\\\textbackslash\\\color{$bluecolor}section\\\color{$textcolor}|g
s|ESCAPEDBACKSLASHsubsection|\\\color{$bluecolor}\\\textbackslash\\\color{$bluecolor}subsection\\\color{$textcolor}|g
s|ESCAPEDBACKSLASHsubsubsection|\\\color{$bluecolor}\\\textbackslash\\\color{$bluecolor}subsubsection\\\color{$textcolor}|g
s|ESCAPEDBACKSLASHsubsubsubsection|\\\color{$bluecolor}\\\textbackslash\\\color{$bluecolor}subsubsubsection\\\color{$textcolor}|g
# Paragraphs #
s|ESCAPEDBACKSLASHparagraph|\\\color{$bluecolor}\\\textbackslash\\\color{$bluecolor}paragraph\\\color{$textcolor}|g
s|ESCAPEDBACKSLASHsubparagraph|\\\color{$bluecolor}\\\textbackslash\\\color{$bluecolor}subparagraph\\\color{$textcolor}|g
s|ESCAPEDBACKSLASHsubsubparagraph|\\\color{$bluecolor}\\\textbackslash\\\color{$bluecolor}subsubparagraph\\\color{$textcolor}|g
s|ESCAPEDBACKSLASHsubsubsubparagraph|\\\color{$bluecolor}\\\textbackslash\\\color{$bluecolor}subsubsubparagraph\\\color{$textcolor}|g
# Part #
s|ESCAPEDBACKSLASHpart|\\\color{$bluecolor}\\\textbackslash\\\color{$bluecolor}part\\\color{$textcolor}|g
# Chapter #
s|ESCAPEDBACKSLASHchapter|\\\color{$bluecolor}\\\textbackslash\\\color{$bluecolor}chapter\\\color{$textcolor}|g
#
# Double backslash #
s|[\\]\{2\}|NOESCcolor{$redcolor}NOESCtextbackslashNOESCtextbackslashNOESCcolor{$textcolor}|g
#
# Optional commands #
s|\[[^]]*\]|\\\color{$greencolor}&\\\color{$textcolor}|g
#
#
# SPECIAL CHARACTERS! (still some issues) #
# Pipe
s;|;\\\color{$redcolor}|\\\color{$textcolor};g
# Ampersand
s|& |NOESCcolor{$redcolor}NOESC& NOESCcolor{$textcolor}|g
# Hash
s|#|\\\#|g
# Tilde
s|~|~\\\~\\\,|g
# backslashes back
s|NOESC|\\\|g
" $inputfile>$temp;

sed "
s|ESCAPEDBACKSLASH|\\\color{$redcolor}\\\textbackslash |g
s|$| \\\blablablmrdoublebackslash\\\|g
s|blablablmrdoublebackslash||g
s|;ESCBRACKETSTART|\\\{|g
s|;ESCBRACKETSTOP|\\\}|g
# Line Comment #
s|%.*|\\\color{$graycolor}\\\&\\\color{$textcolor}|
# FIXME escape the '%'

" $temp>$escapedfile;

echo "The file '$inputfile' was parsed and escaped to '$escapedfile'"

#remove the temporary file
rm $temp

#bye!
echo "Run completed!"
