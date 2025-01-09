

//Search Element in Rotated Sorted Array II
//
//Problem Statement: Given an integer array arr of size N, sorted in ascending order (may contain duplicate values) and a target value k. Now the array is rotated at some pivot point unknown to you. Return True if k is present and otherwise, return False.


func searchElementWithRepeatedElementInRotatedSearchArray(_ arr: [Int], _ target: Int) -> Int {
    let count = arr.count - 1
    var low = 0, high = count
    while(low <= high) {
        let mid = (low+high)/2
        if arr[mid] == target { return mid }
        if arr[low] == arr[mid] && arr[mid] == arr[high] {
            low = low + 1
            high = high - 1
            continue
        }
        if arr[low] <= arr[mid] {
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

print("The index at which \(3) is present \(searchElementWithRepeatedElementInRotatedSearchArray([4,5,6,7,0,1,2,3], 3))")