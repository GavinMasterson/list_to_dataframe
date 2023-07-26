# list_to_dataframe
This repo contains a simple script that shows how to convert a nested list with named elements into a dataframe.
Refer to list-to-df.R for details.

## Overview:

### We start with a nested list of named elements, with the following structure:

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

### And end up with a tidy dataframe:

|town |loc |elt |
|:----|:---|:---|
|a    |1   |foo |
|a    |2   |foo |
|a    |3   |foo |
|a    |4   |foo |
|a    |5   |foo |
|a    |6   |foo |
|a    |7   |foo |
|a    |8   |foo |
|a    |9   |foo |
|a    |10  |foo |
|b    |2   |bar |
|b    |3   |bar |
|b    |4   |bar |
|b    |5   |bar |
|b    |6   |bar |
|b    |7   |bar |
|b    |8   |bar |
|b    |9   |bar |
|b    |10  |bar |
|b    |11  |bar |
|b    |12  |bar |
|b    |13  |bar |
|b    |14  |bar |
|b    |15  |bar |
|b    |16  |bar |
|b    |17  |bar |
|b    |18  |bar |
|b    |19  |bar |
|b    |20  |bar |
|c    |3   |baz |
|c    |4   |baz |
|c    |5   |baz |
|c    |6   |baz |
|c    |7   |baz |
|c    |8   |baz |
|c    |9   |baz |
|c    |10  |baz |
|c    |11  |baz |
|c    |12  |baz |
|c    |13  |baz |
|c    |14  |baz |
|c    |15  |baz |
|c    |16  |baz |
|c    |17  |baz |
|c    |18  |baz |
|c    |19  |baz |
|c    |20  |baz |
|c    |21  |baz |
|c    |22  |baz |
|c    |23  |baz |
|c    |24  |baz |
|c    |25  |baz |
|c    |26  |baz |
|c    |27  |baz |
|c    |28  |baz |
|c    |29  |baz |
|c    |30  |baz |

