# using regex in Unix as it applies to tools like sed or grep (egrep)

# characters
[a-z] mataches a to z

. matches any character

# character classes
/c.t/ matches 'cat', 'cbt', and 'czt'

/c[ab]t/ matches 'cat' and 'cbt'

/c[a-k]t/ matches 'cat' and 'cft'

/c[^a-k]t/ matches 'cmt' and 'czt' but not 'cat'

# repetitions
/dog*/ matches 'do', 'dog', 'dogg'

/dog+/ matches 'dog', 'dogg'

/dog?/ matches 'do' or 'dog'

/dog{3,5}/ matches 'doggg' 'dogggg' 'doggggg'

# Grouping & Anchor Points
/(dog)*/ matches 'dog' , 'dogdog'

/th(is|at)/ matches 'this' or 'that'

^ beginning of a string

$ end of a string

\b word boundary

\w word character

\s whitespace character
