// Strings01 from codingbat.com

// HelloName
// Given a string name, e.g. "Bob", return a greeting of the form "Hello Bob!".

func helloName(name: String) -> String {
    return "Hello \(name)!"
}

helloName("Bob") //Hello Bob!

// MakeOutWord
//Given an "out" string length 4, such as "<<>>", and a word, return a new string where the word is in the middle of the out string, e.g. "<<word>>". 

func makeOutWord(out: String, word: String) -> String {
    let outFirst = out[out.startIndex ..< advance(out.startIndex, 2)]
    
    let outLastIndex = advance(out.startIndex, 2)
    let outLast = out[outLastIndex ..< advance(outLastIndex, 2)]
    
    return outFirst + word + outLast
    
}


makeOutWord("<<>>", "Yay") //<<Yay>>
makeOutWord("[[]]", "word") //[[word]]



