/******************************************************************************

Problem statement: You are given a sorted array of integers and a target, your task is to search for the target in the given array. Assume the given array does not contain any duplicate numbers.

*******************************************************************************/

var nums = [-1,0,3,5,9,12]
           var target = 9

func iterativeBinarySearch(_ arr: [Int], _ target: Int) -> Int {
	var low = 0
	var high = arr.count - 1
	while (low <= high) {
		let mid = (low + high)/2
		if arr[mid] == target {
			return mid
		} else if arr[mid] > target {
			high = mid - 1
		} else {
			low = mid + 1
		}
	}
	return -1
}

print("Index of element using iterative approach is", iterativeBinarySearch(nums, target))

func recursiveBinarySearch(_ arr: [Int], _ target: Int, _  low: Int, _ high: Int) -> Int {
	if low > high { return -1 }
let mid = (low + high)/2
	if arr[mid] == target {
		return mid
	} else if arr[mid] > target {
		return recursiveBinarySearch(arr, target, low, mid - 1)
	} else {
		return recursiveBinarySearch(arr, target, mid + 1, high)
	}
}

print("Index of element using recursive approach is", recursiveBinarySearch(nums, target, 0, nums.count - 1))
