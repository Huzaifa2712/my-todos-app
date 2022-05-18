# keywords.py

# List possible keywords
keyword = ['and', 'as', 'assert', 'break', 'class', 'def', 'del',
'elif', 'else', 'except', 'exec', 'finally', 'for', 'from', 'global','if', 'import',
'in', 'is', 'lambda', 'not', 'or', 'pass', 'print', 'raise', 'return', 'try', 'while', 'with', 'yield']

# is_keyword accepts one character input
# If this is a keyword we defined, print it and return
def is_keyword(a , cnt):
    if a in keyword:
        print ('<KEYWORD >' ,a , cnt)
    return a in keyword