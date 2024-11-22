/******************************************************************************

Floor and Ceil in Sorted Array

Problem Statement: You're given an sorted array arr of n integers and an integer x. Find the floor and ceiling of x in arr[0..n-1].
The floor of x is the largest element in the array which is smaller than or equal to x.
The ceiling of x is the smallest element in the array greater than or equal to x.

*******************************************************************************/

var nums = [3,4,4,7,8,10]
var target = 5

func findCeil(_ arr: [Int], _ target: Int) -> Int {
	var ceil = -1
	var low = 0
	var high = arr.count - 1
	while (low <= high) {
		let mid = (low + high)/2
		if arr[mid] >= target {
		    ceil = arr[mid] 
			high = mid - 1
		} else {
			low = mid + 1
		}
	}
	return ceil
}

print("Ceil is", findCeil(nums, target))

func findFloor(_ arr: [Int], _ target: Int) -> Int {
	var floor = -1
	var low = 0
	var high = arr.count - 1
	while (low <= high) {
		let mid = (low + high)/2
		if arr[mid] <= target {
		    floor = arr[mid]
		    low = mid + 1
		} else {
			high = mid - 1
		}
	}
	return floor
}

print("Floor is", findFloor(nums, target))