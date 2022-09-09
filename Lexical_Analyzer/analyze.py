# -*- coding: utf-8 -*-
# analyze.py
# main program for lexical analysis

from ast import keyword
from asyncore import read
import imp
from itertools import count
import re
from punct import is_punc
from punct import puncList
from keywords import is_keyword
from ID import is_ID


# Define the program file that needs to be opened for analysis
keyword = ['int', 'print', 'input', 'float', 'string']
workfile = input("Enter Python file (.py) fullname: ")


# Handling of open file exceptions
try:
    fin = open(workfile, 'r')

except:
    
    print ("Input file does not exists: ", workfile)
    quit(0)


# Exception handling for files that can be opened, but the file content is empty

lines = fin.readlines()
if len(lines) <= 0:
        print ("Input file  is empty") 

        quit(0)


def breakup_line(line):
    # Separate all words in the program and store them in words,

    words = line.split()
    newwords = []
    # For all words in words, use the for loop to do the following processing

    for i in range(len(words)):
        if words[i][0] in ("'",'"') and words[i][-1] in ("'",'"'):
            # Quotes are not counted as a single word

            newwords.append(words[i])
        else: 

            t = re.findall(r"[\w]+|[^\w]|[-:\w]", words[i])
            newwords.extend(t) 

    return newwords

def get_strings(words):
    new_words = []
    adding = False
    tmpstring = ''
    skip = False
    for w in words:
        if ('"' in w or "'" in w) and (w.count('"') < 2 and w.count("'") < 2):
            # If the split contains quotes, we need to wait for the closure

            adding = not adding
        if not adding:
            # So first save this part to tmpstring

            new_words.append(tmpstring+w)
            tmpstring = ''
            skip = True
        if adding:
            # We add spaces before and after the words that need to be added and then insert

            tmpstring += w + ' '
        else:
            if skip:
                # If it is a quotation mark, do not add it, see what is below

                skip = False
            else:
                # In other cases, you can join

                new_words.append(w)
    return new_words


skip = False
# Set up a counter to print the internal code

count = 0
a = ("<value part , class part , line number>")
print(a)
# print(a)
# Line-by-line analysis of the program in the file

for line in lines:
    if '#' in line:
        # "#" is the comment part in the Python program
        # Just truncate the line after "#" and keep only the previous part

        line = line[:line.index('#')]
    # split first

    tokens = breakup_line(line)
    # and then processed into meaningful multiple words

    final = get_strings(tokens)

    for c, item in enumerate(final):
        count += 1
        # print count
        if not skip:
            if is_punc(item):
                try:
                    if keyword(item, count):
                        print(keyword, 'is keyword')
                    if is_punc(item + final[c+1]):
                        print('\n',a)

                        print ('<PUNC , "" , "">' ,str(item + final[c+1]) , count)
                        skip = True
                    else:
                        print('\n',a)

                        print ('<PUNC , "" , "">' ,item , count)
                except:
                    print('\n',a)

                    print ('<PUNC , "" , "">',item , count)
            elif is_keyword(item , count):
                pass
            elif is_ID(item , count):
                pass
            else:
                print('\n',a)

                print ('<LIT , "" , "">', item , count)
        else:
            skip = False

print ("\n END OF FILE")