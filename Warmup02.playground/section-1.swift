//StringTimes
//Given a string and a non-negative int n, return a larger string that is n copies of the original string.

func stringTimes(str: String, n: Int) -> String {
    var result = ""
    for var i = 0; i < n; i++ {
        result += str
    }
    return result
}

stringTimes("Hi", 3)



