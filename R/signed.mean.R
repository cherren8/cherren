# signed.mean
#'take average of positive or negative values.
#' 
#'this function averages positive or negative values over the entire length of the input vector.
#'
#'@param vector input vector to be averaged.
#'@param type string; either "pos" or "neg".
#' 
#'@return n.mean averaged positive or negative values from the vector.
#'@export
#' 
#'@examples 
#'signed.mean(c(0, -1, 2, 5), type = "pos")
#' 
signed.mean <- 
  function(vector, type)
  {
    if(type != "pos" & type != "neg"){break}
    if(length(vector) == 0){break}
    ifelse(type == "pos", vals <- vector[vector > 0], vals <- vector[vector < 0])
    n.mean <- sum(vals) / length(vector)
    return(n.mean)
  }

