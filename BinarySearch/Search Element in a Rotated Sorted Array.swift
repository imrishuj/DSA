

//Search Element in a Rotated Sorted Array
//
//Problem Statement: Given an integer array arr of size N, sorted in ascending order (with distinct values) and a target value k. Now the array is rotated at some pivot point unknown to you. Find the index at which k is present and if k is not present return -1.

var arr = [4,5,6,7,0,1,2,3]
var k1 = 0

func searchElementInRotatedSearchArray(_ arr: [Int], _ target: Int) -> Int {
    let count = arr.count - 1
    var low = 0, high = count
    while(low <= high) {
        let mid = (low+high)/2
        if arr[mid] == target { return mid }
        else if arr[low] <= arr[mid] {
            if arr[low] <= target && target <= arr[mid] {
                high = mid - 1
            } else {
                low = mid + 1
            }
        } else {
            if arr[mid] <= target && target <= arr[high] {
                low = mid + 1
            } else {
                high = mid - 1
            }
        }
    }
    return -1
}

print("The index at which \(k1) is present \(searchElementInRotatedSearchArray(arr, k1))")