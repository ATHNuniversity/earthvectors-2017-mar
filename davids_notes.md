# quotables

"quick green excuses all sins" kent beck

indirection makes things harder to understand - SM

the typist should not have to think (wrt pairing) - SM

maximize knowledge in domain w/o sacrificing changability - SM

# exercises
requirement -- 

# questions

# misc
What does the "O" mean in solid? OCP
What is OCP mean? Open Close Principle
Which is short for? Open for Extension, Close for Modification
What does that mean? (something about how programmers always make these things harder than necessary)
What would it mean if for every new requirement all you had to do was add new code?
SOLID
OCP
Open Closed Principle
Open for extension, Closed for modification


# actions
work our way through the code smells weekly!


flowchart
if is it open?
  make the change
else
  if I know how to make it open
    make it open
  else
    fix code smells
      easy
      understandable
      most related
    goto top :)

flocking rules
1. find the things that are most alike
2. find the smallest difference between them
3. make the simplest change to remove the difference
  a. parse
  b. parse & execute
  c. parse, execute, & use result
  d. delete unused code

- make changes to 1 one line only
- run tests after every change
- if test fails, undo and make a better change

horizontal v. vertical refactoring

verses' responsibility is to know about verse


methods are named after what they do/mean

classes are named after what they are

1. Create the new class
  a. choose a name
  b. copy the methods that obsess
  c. add attr_reader & initializer
2. Hook new class into old
  a. add fowarding to every copied method
3. Remove extra args from methods in new class
  a. change the name of the param in new class
  b. remove param from all senders
  c. remove arg from receiver

when refactoring and something breaks, it's because you don't actually understand your code (as well as you thought)

where do we construct objects w/ state v. passing state


smells:
data clump
primitive obsession
duplication
switch statement
