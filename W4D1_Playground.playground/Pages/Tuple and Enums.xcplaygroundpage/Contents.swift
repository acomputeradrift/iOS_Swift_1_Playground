//: [Previous](@previous)
/*:
 ## Tuples
 Tuples are a type that can store multiple values into a group. You can also name each of the values if you choose to.
 */
// This is a tuple with a person's first name, last name and age.
var personTuple = ("Bob", "Smith", 23)

// We can access each value using their index
personTuple.0
personTuple.1
personTuple.2

// We can also consider naming each value for clarity
var namedPersonTuple = (firstName: "Jane", lastName: "Smith", age: 23)

// This way, we can also access the values using their name
namedPersonTuple.firstName
namedPersonTuple.lastName
namedPersonTuple.age

/*:
 - Experiment:
 Try creating your own tuple. Mix in different variable types and try mixing some parameters with names and some without. Does it still work?
 */

var myNewArray = ["this", "that", "the other thing"]
var jamieTuple = ("Jamie", 40, namedPersonTuple, myNewArray)
jamieTuple.3[1]
/*:
 - Experiment:
 Try nesting tuples within one another. Create a tuple and add a tuple as one of its items.
 */


/*:
 - Experiment:
 We took a look at tuple earlier during the 'Loops' section. Can you tell where it is being used? Experiment with the tuple names and even change up the interesting numbers to see what's possible.
 */

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
for (kind, numbers) in interestingNumbers {
    
}

/*:
 - Callout(Challenge):
 Create a function that takes three parameters, a name of type `String`, an age of type `Int`, and eligable of type `Bool`. The function returns a tuple of the name and age if eligable is true, otherwise, it will return `nil`.
 \
To test: call your new function with eligable true and false, and print the two values
 (Hint: Use optional return value and conditional unwrapping)
 */
func forTheTuple (name: String, age: Double, eligable:Bool) -> (name: String, age: Double)?{
    if eligable == true {
        return (name, age)
    }else{
        return nil
    }
}
forTheTuple(name: "Jamie", age: 40, eligable: false)
/*:
 ## Enums
 Enums are related values defined by the user. An example to think of this are the months within a year. There are only 12 months and when you are programming, you'll need a way to represent this. We could potentially use a String for each month, but that could lead to spelling mistakes. So instead, we can define our own values that makes it obvious to you.
 
 - Note:
 Enums in Swift are *WAY* more powerful than in Objective-C. Enums in Swift can have methods and an assigned value that can be a string, a character, or a value of any integer or floating-point type.
 */

enum Months: Int{
    case January = 1
    case Feburary
    case March
    case April
    case May
    case June
    case July
    case August
    case September
    case October
    case November
    case December
    
  
    
    func abbreviatedStringForm() -> String {
        switch self {
        case Months.January:
            return "Jan"
        case Months.Feburary:
            return "Feb"
        case Months.March:
            return "Mar"
        case Months.April:
            return "Apr"
        case Months.May:
            return "May"
        case Months.June:
            return "Jun"
        case Months.July:
            return "Jul"
        case Months.August:
            return "Aug"
        case Months.September:
            return "Sept"
        case Months.October:
            return "Oct"
        case Months.November:
            return "Nov"
        case Months.December:
            return "Dec"
//            default:
//                return ""
        }
    }

   
}

func compareMonths (firstMonth: Months, secondMonth: Months){
    if firstMonth.rawValue > secondMonth.rawValue{
        print("The answer is \(firstMonth.rawValue - secondMonth.rawValue).")
    }else{
        print("The answer is \(secondMonth.rawValue - firstMonth.rawValue).")
    }
}
compareMonths(firstMonth: Months.January, secondMonth: Months.December)
//: Now we can represents the months in our program with easy readiablity and minimal mistakes.
let januaryMonth = Months.January.rawValue
let marchMonth = Months.March.rawValue
let april = Months.April.rawValue

/*:
 - Experiment:
 Try adding '.rawValue' to the end of `Months.Januray` and `Months.March` above. What value did you get? How are these values assigned to the months?
 \
Try removing the '= 1' from the Months enum. Now what is different?
 */


/*:
 - Experiment:
 Finish the rest of the months for our `Months` enum. Then take a look at `abbreviatedStringForm()` function. Complete this function so that it returns the abbreviated form of the desired month as a String. ie: calling `Months.January.abbreviatedStringForm()` returns "Jan".
 */
Months.January .abbreviatedStringForm()

/*:
 - Experiment:
 Write a function within the enum that compares two months and determines how many months are they apart. For example: Comparing January to March would return to me '2', because January and March are two months apart.
 */


/*:
 - Callout(Challenge):
 Create enums for the game "Rock, Paper, Scissors". Create a function within the enum that compares two hand shapes and determines the winner. Then create a function that returns ✋ , ✌️, or 👊 given rock, paper, or scissors.
*/


//: [Next](@next)
