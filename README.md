# list_to_dataframe
This repo contains a simple script that shows how to convert a nested list with named elements into a dataframe.
Refer to list-to-df.R for details.

Overview:
We start with a nested list with the following structure:
List of 3
 $ :List of 2
  ..$ town: chr "a"
  ..$     :List of 2
  .. ..$ loc: int [1:10] 1 2 3 4 5 6 7 8 9 10
  .. ..$ elt: chr "foo"
 $ :List of 2
  ..$ town: chr "b"
  ..$     :List of 2
  .. ..$ loc: int [1:19] 2 3 4 5 6 7 8 9 10 11 ...
  .. ..$ elt: chr "bar"
 $ :List of 2
  ..$ town: chr "c"
  ..$     :List of 2
  .. ..$ loc: int [1:28] 3 4 5 6 7 8 9 10 11 12 ...
  .. ..$ elt: chr "baz"

And end up with a tidy dataframe:
# A tibble: 57 × 3
   town  loc   elt  
   <chr> <chr> <chr>
 1 a     1     foo  
 2 a     2     foo  
 3 a     3     foo  
 4 a     4     foo  
 5 a     5     foo  
 6 a     6     foo  
 7 a     7     foo  
 8 a     8     foo  
 9 a     9     foo  
10 a     10    foo  
# ℹ 47 more rows
# ℹ Use `print(n = ...)` to see more rows
