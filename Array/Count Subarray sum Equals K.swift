/******************************************************************************

Count Subarray sum Equals K

Problem Statement: Given an array of integers and an integer k, return the total number of subarrays whose sum equals k.

A subarray is a contiguous non-empty sequence of elements within an array.

Pre-requisite: Longest subarray with given sum

Examples
Example 1:
Input Format:
 N = 4, array[] = {3, 1, 2, 4}, k = 6
Result:
 2
Explanation:
 The subarrays that sum up to 6 are [3, 1, 2] and [2, 4].

Example 2:
Input Format:
 N = 3, array[] = {1,2,3}, k = 3
Result:
 2
Explanation:
 The subarrays that sum up to 3 are [1, 2], and [3].

*******************************************************************************/

var array = [1,2,3,-3,1,1,1,4,2,-3]
var K = 3

func countSubarraySumEqualsKUsingBruteForce() {
    var count = 0
    for i in 0..<array.count {
        for j in i..<array.count {
            var sum = 0
            for k in i...j {
                sum = sum + array[k]
            }
            if sum == K {
                count += 1
            }
        }
    }
    print("Subarray count whose sum Equals K using brute force is", count)
}

countSubarraySumEqualsKUsingBruteForce()

func countSubarraySumEqualsKUsingBetterApproch() {
    var count = 0
    for i in 0..<array.count {
        var sum = 0
        for j in i..<array.count {
            sum += array[j]
            if sum == K {
                count += 1
            }
        }
    }
    print("Subarray count whose sum Equals K using better approach is", count)
}

countSubarraySumEqualsKUsingBetterApproch()

func countSubarraySumEqualsKUsingOptimalApproch() {
    var dict = [Int: Int]()
    var  i = 0, sum = 0, count = 0
    dict[0] = 1
    while(i < array.count) {
        sum += array[i]
        if let value = dict[sum - K] {
            count += value
        }
        dict[sum, default: 0] += 1
        i += 1
    }
    print("Subarray count whose sum Equals K using optimal approach is", count)
}

countSubarraySumEqualsKUsingOptimalApproch()
