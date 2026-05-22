# Returns the factors of a number
@example "Factor a number" {66 | math factor} --result [1 2 3 6 11 22 33 66]
def "math factor" []: int -> table {
  let n = $in | into int
  1..$n | where $n mod $it == 0 
}

# def "math pfactor" []: int -> table {
#   let n = $in | into int
#   1..$n | where (($it * $it) <= $n) | each {
#     if $n mod $in {
#     }
#   }
# }
