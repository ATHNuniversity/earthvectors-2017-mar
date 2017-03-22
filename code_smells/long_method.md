# Code Smells

## Long Method
"The longer a procedure is, the more difficult it is to understand."

### Heuristic
"Whenever [you] feel the need to comment something, [you should] write a method instead."

### Cures:
  - **Extract Method** (works 99% of the time)
  - If Extract Method is difficult (because of lots of temp vars and parameters)
    - Use **Replace Temp w/ Query** for temp vars
    - Use **Introduce Parameter Object** or **Preserve Whole Object** to deal w/ parameters
  - If Replace Temp w/ Query, Introduce Parameter Object, Preserve Whole Object doesn't work, use **Replace Method w/ Method Object**

### How do you know what to extract?
  - Look for comments
  - Look for conditionals (Use **Decompose Conditional**)
  - Look for loops (Use Extract Method to extract loop body)

### Advice:
  - Don't be afraid to extract single line methods!

### Example
`ProductUsageService#create_one_product_usage`

----

## Lyrics
Long ass method, Get outta my code
This code smell's gonna make my head explode

'Cause there's a girl at home who loves me, With ice cream a la mode
Long ass method, Get outta my code

https://www.youtube.com/watch?v=VZ2BkomH8XI
