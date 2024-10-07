/**

Find the repeating and missing numbers

Problem Statement: You are given a read-only array of N integers with values also in the range [1, N] both inclusive. Each integer appears exactly once except A which appears twice and B which is missing. The task is to find the repeating and missing numbers A and B where A repeats twice and B is missing.
*/

var arr = [3,1,2,5,3]

func findMissingRepeatingNumbersUsingBruteForce() {
    var missingNumber = -1, repeatedNumber = -1
    for i in 1...arr.count {
        var count = 0
         for j in 0..<arr.count {
            if arr[j] == i {
                count += 1
            }
        }
        if (count == 2) {
            repeatedNumber = i
        }
        else if (count == 0) { 
            missingNumber = i
        }
    }
    print("Repeating number & Missing number using brute force is", repeatedNumber, missingNumber)
}

findMissingRepeatingNumbersUsingBruteForce()

func findMissingRepeatingNumbersUsingBetterApproach() {
    var dict = [Int: Int]()
    for i in 0..<arr.count {
        dict[arr[i], default: 0] += 1
    }
    var missingNumber = -1, repeatedNumber = -1
    for i in 1...arr.count {
        if let val = dict[i], val == 2 {
            repeatedNumber = i
        } else if dict[i] == nil  { 
            missingNumber = i
        }
    }
    print("Repeating number & Missing number using brute force is", repeatedNumber, missingNumber)
}

findMissingRepeatingNumbersUsingBetterApproach()

func findMissingRepeatingNumbersUsingMath() {
    let n = arr.count
    let sum1 = (n*(n+1))/2
    let sum2 = (n*(n+1)*(2*n+1))/6
    var s1 = 0, s2 = 0
    for i in 0..<arr.count {
        s1 += arr[i]
        s2 += arr[i] * arr[i]
    }
    let val1 = sum1 - s1
    let val2 = sum2 - s2
    let val3 = val2 / val1
    let x = (val1 + val3)/2
    print("Repeating number & Missing number using brute force is", x-val1, x)
}

findMissingRepeatingNumbersUsingMath()