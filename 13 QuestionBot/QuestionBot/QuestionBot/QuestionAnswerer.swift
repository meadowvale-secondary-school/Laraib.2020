struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
            let lowerQuestion = question.lowercased()
            if lowerQuestion == "hello there"{
                return "Why, hello there!"
            } else if lowerQuestion.hasPrefix("hello") {
                return "Hi, there!"
            }else if lowerQuestion.hasPrefix("can i") {
                return "Sure why not!"
            }else if lowerQuestion.hasPrefix("what") {
                return "I am not sure use google.ca"
                
            } else {
                let defaultNumber = question.count % 3
                if lowerQuestion.hasPrefix("should"){
                    return "I don't know, can you?"
                    
                }else if defaultNumber == 2 {
                    return "To the North!"
                } else if defaultNumber == 1{
                    return "In the cookie jar!"
                }else{
                    return "I'm sorry, I don't understand the question"
                }
            }
        }
}

