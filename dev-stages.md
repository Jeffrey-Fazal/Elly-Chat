# Keeping track of the project
10075  rails new . --force
10076  rails generate scaffold Post title:string body:text\n
10077  rails db:migrate\n
10078  rails db
10079  rails console
---

---
Inspiration is from Eliza, pseducode is.

function ELIZA GENERATOR(user sentence) returns response
   Let w be the word in sentence that has the highest keyword rank
   if w exists
       Let r be the highest ranked rule for w that matches sentence
       response ← Apply the transform in r to sentence
       if w = 'my'
           future ← Apply a transformation from the ‘memory’ rule list to sentence
           Push future onto the memory queue
       else (no keyword applies)
           Either
               response ← Apply the transform for the NONE keyword to sentence
           Or
               response ← Pop the oldest response from the memory queue
   Return response

Example: 
http://www.med-ai.com/models/eliza.html
view-source: https://web.njit.edu/~ronkowit/eliza.html

This repos aim is to surpas this code and pass the turing test 
---