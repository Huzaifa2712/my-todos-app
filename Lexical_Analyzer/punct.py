# List possible delimiters

puncList = [".",";",":","!","?","/","\\",",","@","$","&",")","(","\"","#",
"[", "]", "{", "}", "=", "+=", "-=", "*=", "/=", "//=", "%=", "&=", "|=",
"^=", ">>=", "<<=", "**=", "+", '-', '==']

# is_punc will accept a character input
# Return True if the character is in the predefined puncList
def is_punc(a):
    if a in puncList:
        return True

        print('(PUNC "%s")') % a
    return a in puncList
