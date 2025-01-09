//Search Single Element in a sorted array
//
//Problem Statement: Given an array of N integers. Every number in the array except one appears twice. Find the single number in the array.

func singleElementInArray(_ arr: [Int]) -> Int {
    let count = arr.count
    if count == 1 { return arr[0] }
    else if arr[0] != arr[1] { return arr[0] }
    else if arr[count-1] != arr[count-2] { return arr[count] }
    var low = 1, high = count-2
    while(low <= high) {
        let mid = (low+high)/2
        if arr[mid] != arr[mid + 1] && arr[mid] != arr[mid - 1] {
            return arr[mid]
        }
        if ((mid % 2 == 1) && arr[mid] == arr[mid - 1]) || ((mid % 2 == 0) && arr[mid] == arr[mid + 1]) {
            low = mid + 1
        } else {
            high = mid - 1
        }
    }
    return -1
}

print("The single number in the array. is \(singleElementInArray([1,1,2,2,3,3,4,5,5,6,6]))")