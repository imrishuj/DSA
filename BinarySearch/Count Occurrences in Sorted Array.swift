/******************************************************************************

Count Occurrences in Sorted Array

Problem Statement: You are given a sorted array containing N integers and a number X, you have to find the occurrences of X in the given array.

*******************************************************************************/

var nums = [1, 1, 2, 2, 2, 2, 2, 3]
var target = 2

func findFirstOccurrence(_ arr: [Int], _ target: Int) -> Int {
	var firstOccurrence = -1
	var low = 0
	var high = arr.count - 1
	while (low <= high) {
		let mid = (low + high)/2
		if arr[mid] == target {
		    firstOccurrence = mid
			high = mid - 1
		} else if arr[mid] < target {
			low = mid + 1
		} else {
		    high = mid - 1
		}
	}
	return firstOccurrence
}

func findLastOccurrence(_ arr: [Int], _ target: Int) -> Int {
	var lastOccurrence = -1
	var low = 0
	var high = arr.count - 1
	while (low <= high) {
		let mid = (low + high)/2
		if arr[mid] == target {
		    lastOccurrence = mid
			low = mid + 1
		} else if arr[mid] < target {
			high = mid - 1
		} else {
		    low = mid + 1
		}
	}
	return lastOccurrence
}

func totalOccurence() {
    print("The occurrences of \(target) is: \(findLastOccurrence(nums, target) - findFirstOccurrence(nums, target))")
}

totalOccurence()