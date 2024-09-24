/**

Count the number of subarrays with given xor K

Problem Statement: Given an array of integers A and an integer B. Find the total number of subarrays having bitwise XOR of all elements equal to k.

*/
var array = [4, 2, 2, 6, 4]
var k = 6

func lonestSubarrayWithZeoSumUsingBruteForce() {
    var xor = 0, count = 0
    for i in 0..<array.count {
        for j in i..<array.count {
            xor = 0
            for l in i...j {
                xor = xor ^ array[l]
            }
            if xor == k {
                count += 1
            }
        }
    }
    print("Length of the longest subarray with zero Sum using brute force is", count)
}

lonestSubarrayWithZeoSumUsingBruteForce()

func lonestSubarrayWithZeoSumUsingBetterApproach() {
    var xor = 0, count = 0
    for i in 0..<array.count {
        xor = 0
        for j in i..<array.count {
            xor = xor ^ array[j]
            if xor == k {
                count += 1
            }
        }
    }
    print("Length of the longest subarray with zero Sum using better approach is", count)
}

lonestSubarrayWithZeoSumUsingBetterApproach()

func lonestSubarrayWithZeoSumUsingOptimalApproach() {
    var xor = 0, count = 0
    var hashDict: [Int: Int] = [0: 1]
    for i in 0..<array.count {
        xor = xor ^ array[i]
        let x = xor ^ k
        if let valueIndex = hashDict[x] {
            count += valueIndex
        }
        hashDict[xor] = i
    }
    print("Length of the longest subarray with zero Sum using optimal approach is", count)
}

lonestSubarrayWithZeoSumUsingOptimalApproach()