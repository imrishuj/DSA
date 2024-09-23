/**

Length of the longest subarray with zero Sum

Problem Statement: Given an array containing both positive and negative integers, we have to find the length of the longest subarray with the sum of all elements equal to zero.

*/
var array = [9, -3, 3, -1, 6, -5]

func lonestSubarrayWithZeoSumUsingBruteForce() {
    var sum = 0, max_length = 0
    for i in 0..<array.count {
        sum = 0
        for j in i..<array.count {
            sum = sum + array[j]
            if sum == 0 {
                max_length = max(max_length, j-i+1)
            }
        }
    }
    print("Length of the longest subarray with zero Sum using brute force is", max_length)
}

lonestSubarrayWithZeoSumUsingBruteForce()

func lonestSubarrayWithZeoSumUsingOptimalApproach() {
    var sum = 0, max_length = 0
    var hashDict = [Int: Int]()
    for i in 0..<array.count {
        sum = sum + array[i]
        if sum == 0 {
            max_length = i + 1
        }
        if let valueIndex = hashDict[sum] {
            max_length = max(max_length, i - valueIndex)
        } else {
            hashDict[sum] = i
        }
    }
    print("Length of the longest subarray with zero Sum using optimal approach is", max_length)
}

lonestSubarrayWithZeoSumUsingOptimalApproach()