// Left Rotate array by K elements

func leftRotateByKPlaceBruteForce(_ arr: inout [Int], _ k: Int) -> ([Int]) {
    var tempArray = [Int]()
    for index in 0..<k {
        tempArray.append(arr[index])
    }
    for index in 0..<arr.count-k {
        arr[index] = arr[index+k]
    }
    for index in (arr.count-k)..<arr.count {
        arr[index] = tempArray[index-arr.count+k] 
    }
    return (arr)
}

var array = [3,7,8,9,10,11]
var k = 3
print("Array after left rotate by one place using brute force is", leftRotateByKPlaceBruteForce(&array, k))

func leftRotateByKPlaceOptimalApproach(_ arr: inout [Int], _ k: Int) {
    reverseArray(&arr, 0, (k - 1))
    reverseArray(&arr, k, (array.count - 1))
    reverseArray(&arr, 0, (array.count - 1))
    print("Array after left rotate by one place using optimal approach is", arr)
}

func reverseArray(_ arr: inout [Int], _ start: Int, _ end: Int) {
    var i = start, j = end
    while (i <= j) {
    let temp = arr[i]
    arr[i] = arr[j]
    arr[j] = temp
    i += 1
    j -= 1
  }
}

var array1 = [1,2,3,4,5,6,7]
leftRotateByKPlaceOptimalApproach(&array1, k)
