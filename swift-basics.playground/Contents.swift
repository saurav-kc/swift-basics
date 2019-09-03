/*:
 
 ## Swift Basics Cheat Sheet
 ### by Ultan
 
 ---
 
### Variables, Constants, Comments, Operators

- Variables

*/

var x:Int

/*:
 
 - Constants
 
 */


let X:Int


/*:
 
-   Multiple Declarations on a single line
 
*/


var a = 1, b = 2, c = 3
  
/*:
 
- Types Safety and Inference
- Swift has type inference
 
 */


var myNum = 5

/*:
 
- Type annotation with no initial value
 
 */

var myVar:String

/*:
 
- Multiple variables of the same type with a single type annotation
 
*/

var d, e, f: Int

/*:
 
- Commenting
 
 */
    // Single Line
    
    /*
     Hello multiple lines
     */
        
/*:

- Operators
 
 */
 
// Arithmetic operators: $$+ - * /$$

// Compound assignments: += -= \*= /= %=

// Comparisons: == != \> \< \<= \>=

// Logical Operators: !, &&, \|\|

// Ranges: 1â€¦5 or 1..\<6

/*:

 ### Strings, Type Conversion, Optionals
 
 */

var myString:String = "Hello, world!"

/*:

- Concatenation
 
 */


var myString1 = "Hello, " + "world"
    
/*:
    
- String interpolation
 
 */

var newString = "\(myString1) wooo"
    
/*:
    
- String methods
 
 */

myString1.count
myString1.isEmpty
myString1.contains(" ")
myString1.append(" ")
myString1.removeLast()
myString1.split(separator: ",")
    
/*:

- Type Conversions
 
 */

var otherNumber:Double = 1.0
var myInt:Int = Int(otherNumber)
    
/*:
 
- Optionals
 
 Tells the compiler that the variable is either storing a value or storing
 nothing. Basically, optionals allow `nil` and you can then check if something is
 `nil` or not.
 
 */

var item:String? = "Hi"

/*:
 
- You can force unwrap
 
 */

print(item!)



/*:
 
### Arrays
     
-   Ordered lists
     
-   Work off an index which is used to access and modify
     
-   Zero indexed
 
*/

var levelOfDifficulty:[Int] = [1,2,3]
levelOfDifficulty[0]
   
/*:
 
- Alternatively can use
 
 */

var levelOfDifficulty1:Array<Int> = Array<Int>()
    
/*:
     
- Access like so `levelOfDifficulty[1]`
 
 */
    
/*:

- Array methods
 
*/

levelOfDifficulty.append(4)
levelOfDifficulty.insert(4, at:0)
levelOfDifficulty.remove(at: 2)
levelOfDifficulty.reverse()
levelOfDifficulty.sort()
levelOfDifficulty.contains(3)

/*:
 
- 2D arrays
 
*/

var multi:[[String]] = [
["Hi","Hello"],
["Yay"],
["No"]
]

var hello:String = multi[0][1]

/*:
 
### Dictionaries
 
- Key-value pairs
- Keys must be of the same time
- Values must be of the same type
- Unordered. Access a value by the key
 
*/

var myDic:[String: Int] = ["Age": 22, "Weight": 70]
    
/*:
 - Lookup will add the item to the dictionary if the lookup fails to find that item
 */

myDic["Height"] = 180

/*:
     
- Getting all the keys
     
*/

let allKeys = [String](myDic.keys)
    
/*:
    
- Getting all the values
 
 */

let allValues = [Int](myDic.values)
 
/*:
     
- Updating a value `myDic.updateValue(30, forkey: ...` (will add the item if
not present)
- Removing a value `myDic.removeValue(forKey: â€œWeightâ€` (in turn also removes the key)
 
 */

/*:
 
- Nested dictionaries
 
 */

var nested = [
"Key": [
"Key": 123
]
]

var fetch = nested["Key"]?["Key"]

/*:
 
### Sets
     
- Unique (no repetition allowed), unordered values
 
 */

var mySet:Set<Int> = [1,2,3]

var myNewSet:Set = [3,4,5]

var inter = mySet.intersection(myNewSet)
var differentSets = mySet.symmetricDifference(myNewSet)
var union = mySet.union(myNewSet)
mySet.formIntersection(myNewSet)

/*:
 
 ### Tuples
 
 */

var myTuple:(String,Int,Bool) = ("Ultan",22,true)

var myNewTuple: (name: String, age: Int, single: Bool)
myNewTuple.single = true

/*:
 
 ### If Statement, Unwrapping Optionals
 
 */

var currentHealth = 20, maxHealth = 100

if currentHealth > maxHealth {

} else if currentHealth == maxHealth {

} else if currentHealth == 100 && maxHealth == 100 {

}

/*:
 
- Unwrapping Optionals
 
 */

let theItem:String? = ""

if let item = theItem {
print("The \(item) was found")
} else {
print("The item is nil")
}

/*:
 
 ### For Loops
 
 - Commonly used to iterate over sequences such as the characters in a string,
 the elements of an array or the entries in a dictionary
 
 */

var levelOfDifficulty2:[Int] = [1,2,3]
var myString2:String = "Hello, world!"
var myDic2:[String: Int] = ["Age": 22, "Weight": 70]

/*:
 
- Examples of indexing / looping
 
*/

for i in levelOfDifficulty {
    print(i)
}

for i in myString {
    print(i)
}

for i in myDic.keys {
    print(i)
}

for i in myDic.values {
    print(i)
}

for (i,j) in myDic {
    print(i)
    print(j)
}

/*:

 ### While Loops
 
 */
var numbers = 10
while numbers > 0 {
    // Do stuff
    numbers -= 1
}

/*:
 
 - Repeat-While Loops
 - Useful when you want something to execute at least once
 
 */

repeat {
numbers -= 1
// Do Stuff
} while numbers > 0

/*:
 
 ### Switch Statement
 
 */

switch myString {
case "H":
    print("Hello")
default:
    print("Bummer")
}

switch (a, b) {
    case (15,10):
        print("Great")
case (1...15,20..<25):
        print("Fantastic")
case (let localA, let localB) where localA + localB > 20: // capturing the values
        print(localA)
        print(localB)
default:
        print("Bummer")
}

/*:
             
### Guard Statement
 
 */
   
let wallet = 20
let price = 50
for _ in 1...10 {
    guard wallet >= price else {
        print("not enough in wallet for purchase")
        continue
        // continue or return or throw
    }
}

/*:
 
 ### Functions
 
 */

func myFunc(myInput: Int) -> String {
    return String(myInput)
}

/*:
 
- You Can Overfload Functions
 
 */

func myFunc(myInput: String) -> String {
    let myReturn = "Hi \(myInput)"
    return myReturn
}

/*:

- Optional Return Values
 
*/

func hasPartner() -> Bool? {
    return nil
}

/*:
 
 - Multiple Return Values
 
 */

func setupMatch(level: String) -> (success: Bool, name: String) {
    print("\(level) started")
    return (true, "Success")
}

let level = setupMatch(level: "Croke Park")
level.success
level.name


/*:
 
- Default Values
 
*/

func setup(level: String = "Croke Park", difficulty: Int = 3) {
    print("Level \(level) at difficulty \(difficulty)")
}

setup()
setup(level: "Aviva Stadium", difficulty: 10)

/*:
 
- Functions as Input Parameters
 
 */

func multiply(input1: Int, input2: Int) -> Int {
    return input1 * input2
}

func scale(scaler: Int, multiplier: (Int, Int) -> Int) {
    let result = scaler * multiplier(3,2)
    print(result)
}

scale(scaler: 1, multiplier: multiply)

/*:
 
 ### Closures
 
 */

var closure: () -> () = {}

var myClosure: (Int) -> (Int) = { (myInput: Int) -> Int in return myInput*2}
myClosure(5)

var myNumbers = [1,3,9,2]
myNumbers.sorted { (first, second) -> Bool in return first < second }


/*:
 
 - Closure as Parameter
 
 */

func myFunction(myClosureInput: ([String]) -> Void) {
    let theStrings = ["A","B","C"]
    myClosureInput(theStrings)
}

myFunction { (strings)    in    for i in strings {print(i)}    }

/*:
 
 - Closure as Return Type
 
 */

func myFunction(input: [String]) -> () -> Void {
    let completion: () -> Void = {}
    return completion
}
let theStrings = ["A","B","C"]
var closureReturn = myFunction(input: theStrings)
closureReturn()


/*:
 
 ### Type Aliasing
 
 */

typealias myCustomType = (name: String, age: Int)
var usingMyType:myCustomType = ("Bob", 90)

typealias myClosureAsAType = ([String]) -> Void
func myFunction1(myClosureInput: myClosureAsAType) {
    let theStrings = ["A","B","C"]
    myClosureInput(theStrings)
}
myFunction1 {(strings) in for i in strings {print(i)}}


/*:
 
 ### Classes
 
 */

class Dog {
    var breed:String
    var age:Int
    
    init(breed: String, age: Int) {
        self.breed = breed
        self.age = age
    }
    
    convenience init(age: Int) {
        self.init(breed: "Lurcher", age: age)
    }
    
    func info() {
        print("Breed: \(self.breed), Age: \(self.age)")
    }
}

var alsation = Dog(breed: "Alsation", age: 2)
var lurcher1 = Dog(age: 1)


// Classes are by Ref
var getsByRef = alsation

getsByRef.breed
alsation.breed = "German Shepherd"
getsByRef.breed

// Using a class function
alsation.info()

/*:
 
- Access Modifiers and Properties
 
 */

// Public entities are accessed inside their source file and any module that imports the parent module
// Internal accessed by any source file inside its defining module (every entitiy in Swift is set as internal by default)
// Fileprivate can only be accessed inside its defining module
// Private can only be accessed inside the declaration scope

class Cat {
    var breed:String
    var age:Int
    
    init(breed: String, age: Int, personality: String) {
        self.breed = breed
        self.age = age
        self.personality = personality
    }
    
    convenience init(age: Int) {
        self.init(breed: "Cat", age: age, personality: "Playful")
    }
    
    func info() {
        print("Breed: \(self.breed), Age: \(self.age)")
    }
    
    // Computed Properties: Read Only Access
    var Name:String {
        return "Bob";
    }
    
    // Type Properties
    static var alive:Bool = true    // Cannot be overwritten by a subclass
    
    class var motto:String {        // Can be overwritten by a subclass
        return "Meow"
    }
    
    fileprivate var personality:String
    
    // Computed Properties: Read and Write Access
    var Personality:String {
        get { return personality }
        set { personality = "Playful" }
    }
    
}

/*:
 
 - Subclassing
 
 */

class TwoLeggedDog:Dog {
    var speed:Int
    
    init(speed:Int) {
        self.speed = speed
        super.init(breed: "Dog", age: 10)
    }
    
    override func info() {
        print("Breed: \(self.breed), Age: \(self.age), Speed: \(self.speed)")
    }
}

var doggo = TwoLeggedDog(speed: 5)


/*:
 
 ### Structures
 
 */

/*:
 
 - Classes are passed by reference. Structures are passed by value.
 - Suited for simple instances that don't need reference or inheritance
 
 */

struct Floor {
    let number:Int
    var tenant:String
    let rooms:Int
    
    var company:String {
        return "Tenant: \(self.tenant)"
    }
    
    init(number:Int, tenant:String, rooms:Int) {
        self.number = number
        self.tenant = tenant
        self.rooms = rooms
    }
    
    func displayInfo() {
        print("Tenant: \(self.tenant). Floor number: \(self.number). No. Rooms: \(self.rooms)")
    }
    
    // Must mutate as we are overriding the default behavior of a struct (that is a struct is a value type
    // and not a reference type)
    mutating func changeTenant(new:String) {
        self.tenant = new
    }
}

var ground = Floor(number: 0, tenant: "Acme Blinds", rooms: 3)

// Structures are by value

var getsByValue = ground

getsByValue.tenant
ground.changeTenant(new: "Tom's Plumbing Services")
getsByValue.tenant


/*:
 
 ### Chaining Optionals
 
 */

/*:
 
 - Unwrap an optional type that has optional properties of its own
 
 */

var dictionary = [
    "Bill": [
        "Course": "Science",
        "Year": 2
        ],
    "Bob": [
        "Course": "English",
        "Year": 1
        ]
    ]

if let details = dictionary["Bill"]?["Course"] {
    print("Bill is smart. He studies \(details)")
}


