## Tutorial for function `signed.mean`
### Overview

Author: Cristina Herren

Purpose: This is a tutorial to accompany the function signed.mean in the package cherren. 




### Function Description

The function signed.mean takes the arguments `vector` and `type`. The `vector` argument contains the entire set of values, both positive and negative. The `type` argument should be either `"pos"` or `"neg"`, depending on whether the returned average should be of the positive or negative values. 

### Example of Function Utility

I originally designed this function to take a vector of interaction strengths between different species and return the "average" positive or negative interaction strength between one species and all other species. Dividing by the total number of species interactions gave a good indicator of overall positive or negative interaction strength. This is the reason why the function divides the sum of all positive (or negative) values by the total length of the vector, rather than strictly averaging just the positive (or negative) values. 

### Function Code


```r
signed.mean <- 
  function(vector, type){
    if(type != "pos" & type != "neg"){break}
    if(length(vector) == 0){break}
    ifelse(type == "pos", vals <- vector[vector > 0], vals <- vector[vector < 0])
    n.mean <- sum(vals) / length(vector)
    return(n.mean)
  }
```

### Using the Function

First, generate a vector with mixed positive and negative values to send to the function. 


```r
set.seed(509390770)
vector <- floor(rnorm(10, 0, 5))
```

Note that the initial length of the vector:


```r
length(vector)
```

```
## [1] 10
```

Send the vector to the function, along with either `"pos"` or `"neg"` as the argument `type`


```r
signed.mean(vector, type = "pos")
```

```
## [1] 2.2
```

```r
signed.mean(vector, type = "neg")
```

```
## [1] -1.5
```

Again, note that the returned value from the function run with `type = "pos"` gives 2.2. This is the sum of all positive values (22) divided by the length of the original vector (10).

Similarly, the signed.mean function run with `type = "neg"` gives -1.5, which is the sum of all negative numbers in the vector (-15) divided by the length of the original vector.


### Happy coding! 





