/*:
 ## Exercise: Goals

Think of a goal of yours that can be measured in progress every day, whether it’s minutes spent exercising, number of photos sent to friends, hours spent sleeping, or number words written for your novel.

 - callout(Exercise): Create an array literal with 20 to 25 items of sample data for your daily activity. It may be something like `let milesBiked = [3, 7.5, 0, 0, 17 ... ]` Feel free to make up or embellish the numbers, but make sure you have entries that are above, below and exactly at the goal you've thought of. _Hint: Make sure to choose the right kind of array for your data, whether `[Double]` or `[Int]`._
*/
let minExercised = [3, 7,0 ,10, 12, 14, 16, 18, 20, 22, 24,26,28,30,32,34,36,38,40,0, 2,4]
//: - callout(Exercise): Write a function that takes the daily number as an argument and returns a message as a string. It should return a different message based on how close the number comes to your goal. You can be as ambitious and creative as you'd like with your responses, but make sure to return at least two different messages depending on your daily progress!
// goal is to exercise for 2 hours which is 120 minutes
func motivation(goals: [Int] ) {
    for goal in goals {
    if goal < 100{
    print("Your so close to your goal just a few minutes and you have accomplished your goal!")
    } else {
    print("Your quite not there yet, but I know you can do it")
    }
    }
}

print(motivation(goals:[minExercised]))
//: - callout(Exercise): Write a `for…in` loop that loops over your sample data, calls your function to get an appropriate message for each item, and prints the message to the console.
for goal in minExercised{
 motivation(goals: [minExercised])
}




//: [Previous](@previous)  |  page 16 of 17  |  [Next: Exercise: Screening Messages](@next)
