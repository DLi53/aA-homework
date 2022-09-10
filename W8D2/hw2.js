function madLib(verb, adj, noun) {
    console.log(`We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}`);
}

// madLib('make', 'best', 'guac'); // "We shall MAKE the BEST GUAC."


// isSubstring
// Input

// A String called searchString.
// A String called subString.
//     Output: A Boolean; true if the subString is a part of the searchString.

function isSubstring(searchString, subString) {
    console.log(searchString.includes(subString));
}

// isSubstring("time to program", "time") // true

// isSubstring("Jump for joy", "joys") // false


// ---------------

// Carry on! Know your loops!

// fizzBuzz
// 3 and 5 are magic numbers.

// Define a function fizzBuzz(array) that takes an array and returns 
// a new array of every number in the array that is divisible by either 3 or 5, 
// but not both.

function fizzBuzz(array) {
    let newArr = []
    array.forEach(function(num) {
        if ((num % 3 ===0 || num % 5 === 0 ) 
        && !(num % 3 === 0 && num % 5 === 0))
        newArr.push(num);
    }) ;
    console.log(newArr);
}


// fizzBuzz([3,5,15,9])


function isPrime(num) {
    if (num < 2) {
        return false;
    }

    for(let i = 2; i < num; i++) {
        if (num % i === 0) {
            return false;
        }
    }

    return true;
}

// isPrime
// Define a function isPrime(number) that returns true if number is prime.
// Otherwise, false.Assume number is a positive integer.

// console.log(isPrime(2)) // true

// console.log(isPrime(10)) // false

// console.log(isPrime(15485863)) // true

// console.log(isPrime(3548563)) // false


function sumOfNPrimes(num) {
    let sum = 0;
    let count = 0;
    for (let i = 2; count < num; i++) {
        if (isPrime(i)) {
            sum += i;
            count ++;
        }
    }
    return sum;
}


// sumOfNPrimes
// Using firstNPrimes, write a function sumOfNPrimes(n) that 
// returns the sum of the first n prime numbers.Hint: use isPrime 
// as a helper method.

console.log(sumOfNPrimes(0)) // 0

console.log(sumOfNPrimes(1)) // 2

console.log(sumOfNPrimes(4)) // 17