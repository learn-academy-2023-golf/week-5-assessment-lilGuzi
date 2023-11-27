// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.
describe("codedmessage", () => {
      it("takes in a string and returns a string with a coded message", () => {
          const secretCodeWord1 = "Lackadaisical"
          // Expected output: "L4ck4d41s1c4l"
          const secretCodeWord2 = "Gobbledygook"
          // Expected output: "G0bbl3dyg00k"
          const secretCodeWord3 = "Eccentric"
          // Expected output: "3cc3ntr1c"
        expect(codedmessage(secretCodeWord1)).toEqual("L4ck4d41s1c4l")
        expect(codedmessage(secretCodeWord2)).toEqual("G0bbl3dyg00k")
        expect(codedmessage(secretCodeWord3)).toEqual("3cc3ntr1c")
      })
    })

// b) Create the function that makes the test pass.
// Pseudo code:
//declares a function called codedmessageand takes in a string 
const codedmessage = (string) => {
// declares a variable that will hold the coded string 
    let codedString = ""
// declares a loop that will itterate through each index
   for (let i = 0; i < string.length; i++) {
// if the current string index hold a value of "a" or "A"
    if (string[i] === "a" || string[i] === "A"){
// will replace the "a" or "A" with "4" and will add it to the codedString variable
        codedString += "4"
// if the current string index hold a value of "e" or "E"
    } else if (string[i] === "e" || string[i] === "E"){
// will replace the "e" or "E" with "3" and will add it to the codedString variable
         codedString += "3"
// if the current string index hold a value of "i" or "I"
    } else if (string[i] === "i" || string[i] === "I"){
// will replace the "i" or "I" with "1" and will add it to the codedString variable
        codedString += "1"
// if the current string index hold a value of "o" or "O"
   } else if (string[i] === "o" || string[i] === "O"){
// will replace the "o" or "O" with "0" and will add it to the codedString variable
    codedString += "0"
// if the index value doesnt meet any of the above 
   } else {
// will add the value of the index to the codedString variable as is
    codedString += string[i]
   }
//will return the codedstring variable after the string has been itterated through
    } return codedString
}

// --------------------2) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.
describe("fullHouse", () => {
      it("takes in an array of 5 numbers and determines whether or not the array is a 'full house'", () => {
          const hand1 = [5, 5, 5, 3, 3]
          // Expected output: true
          const hand2 = [5, 5, 3, 3, 4]
          // Expected output: false
          const hand3 = [5, 5, 5, 5, 4]
          // Expected output: false
          const hand4 = [7, 2, 7, 2, 7]
          // Expected output: true
        expect(fullHouse(hand1)).toEqual(true)
        expect(fullHouse(hand2)).toEqual(false)
        expect(fullHouse(hand3)).toEqual(false)
        expect(fullHouse(hand4)).toEqual(true)
      })
    })

// b) Create the function that makes the test pass.
// Pseudo code:
// declares a function called fullHouse and takes an array as an input
const fullHouse = (array) => {
// declares a variable called counts and used the .reduce method to accumulate the occurrences of each unique number in the obj object
    const counts = array.reduce((obj, num) => {
// checks if the number exists in the object, if it does, it increments its value by 1, if not it initializes the value to 1.
        obj[num] = (obj[num] || 0) + 1
// returns the final object after all elements of the array have been processed
        return obj}, {})
// returns the values of the counts object, if it includes the numbers 2 and 3.the function returns true; otherwise, it returns false
        return Object.values(counts).includes(2) && Object.values(counts).includes(3)
}