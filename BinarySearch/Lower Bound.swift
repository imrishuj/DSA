/******************************************************************************

Problem Statement: Given a sorted array of N integers and an integer x, write a program to find the lower bound of x.

What is Lower Bound?
The lower bound algorithm finds the first or the smallest index in a sorted array where the value at that index is greater than or equal to a given key i.e. x.

The lower bound is the smallest index, ind, where arr[ind] >= x. But if any such index is not found, the lower bound algorithm returns n i.e. size of the given array.

*******************************************************************************/

var nums = [3,5,8,15,19]
var target = 9

func lowerBound(_ arr: [Int], _ target: Int) -> Int {
	var lowerBound = arr.count
	var low = 0
	var high = arr.count - 1
	while (low <= high) {
		let mid = (low + high)/2
		if arr[mid] >= target {
		    lowerBound = mid 
			high = mid - 1
		} else {
			low = mid + 1
		}
	}
	return lowerBound
}

print("Lower bound of target is", lowerBound(nums, target))
