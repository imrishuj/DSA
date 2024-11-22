/******************************************************************************

Problem Statement: Given a sorted array of N integers and an integer x, write a program to find the upper bound of x.

What is Upper Bound?

The upper bound algorithm finds the first or the smallest index in a sorted array where the value at that index is greater than the given key i.e. x.

The upper bound is the smallest index, ind, where arr[ind] > x.

*******************************************************************************/

var nums = [3,5,8,9,15,19]
var target = 9

func upperBound(_ arr: [Int], _ target: Int) -> Int {
	var upperBound = arr.count
	var low = 0
	var high = arr.count - 1
	while (low <= high) {
		let mid = (low + high)/2
		if arr[mid] > target {
		    upperBound = mid 
			high = mid - 1
		} else {
			low = mid + 1
		}
	}
	return upperBound
}

print("Upper bound of target is", upperBound(nums, target))
