//Peak element in Array, Mountain Array, Zig-Zag Array
//
//Problem Statement: Given an array of length N. Peak element is defined as the element greater than both of its neighbors. Formally, if 'arr[i]' is the peak element, 'arr[i - 1]' < 'arr[i]' and 'arr[i + 1]' < 'arr[i]'. Find the index(0-based) of a peak element in the array. If there are multiple peak numbers, return the index of any peak number.
//
//Note: For the first element, the previous element should be considered as negative infinity as well as for the last element, the next element should be considered as negative infinity.

func findPeakElement(_ nums: [Int]) -> Int {
    let count = nums.count
    if count == 1 { return 0 }
    if nums[0] > nums[1] { return 0 }
    if nums[count-1] > nums[count-2] { return count-1 }
    var low = 1, high = count-2
    while(low <= high) {
        let mid = (low+high)/2
        if nums[mid-1] < nums[mid] && nums[mid+1] < nums[mid] {
            return mid
        }
        if nums[mid] > nums[mid-1] {
            low = mid + 1
        } else {
            high = mid - 1
        }
    }
    return -1
}

print("The peak element index in the array is \(findPeakElement([1,2,3,4,5,6,7,8,5,1]))")