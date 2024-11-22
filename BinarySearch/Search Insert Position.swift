/******************************************************************************

Search Insert Position

Problem Statement: You are given a sorted array arr of distinct values and a target value x. You need to search for the index of the target value in the array.

If the value is present in the array, then return its index. Otherwise, determine the index where it would be inserted in the array while maintaining the sorted order.

*******************************************************************************/

var nums = [1,2,2,4,7]
var target = 2

func searchInsertPosition(_ arr: [Int], _ target: Int) -> Int {
	var searchInsertPosition = arr.count
	var low = 0
	var high = arr.count - 1
	while (low <= high) {
		let mid = (low + high)/2
		if arr[mid] >= target {
		    searchInsertPosition = mid 
			high = mid - 1
		} else {
			low = mid + 1
		}
	}
	return searchInsertPosition
}

print("Search insert position is", searchInsertPosition(nums, target))
