//Find out how many times the array has been rotated
//
//Problem Statement: Given an integer array arr of size N, sorted in ascending order (with distinct values). Now the array is rotated between 1 to N times which is unknown. Find how many times the array has been rotated.

func timeArrayHasBeenRotatedSearchArray(_ arr: [Int]) -> Int {
    let count = arr.count - 1
    var low = 0, high = count
    var minimiumEle = 100000
    var index = -1
    while(low <= high) {
        let mid = (low+high)/2
        if arr[low] <= arr[high] {
            minimiumEle = min(minimiumEle, arr[low])
            index = low
            break
        }
        if arr[low] <= arr[mid] {
            minimiumEle = min(minimiumEle, arr[low])
            low = mid + 1
        } else {
            minimiumEle = min(minimiumEle, arr[mid])
            high = mid - 1
        }
    }
    return index
}

print("Times the array has been rotated is \(timeArrayHasBeenRotatedSearchArray([4,5,6,7,0,1,2,3]))")