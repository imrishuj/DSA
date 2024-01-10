// Quick sort

var arr = [4, 6, 2, 5, 7, 9, 1, 3]

func swap(_ arr: inout [Int], _ i: Int, _ j: Int) {
    let temp = arr[i]
    arr[i] = arr[j]
    arr[j] = temp
}

func partition(_ arr: inout [Int], _ low: Int, _ high: Int) -> Int {
    let pivot = arr[low]
    var i = low
    var j = high
    while (i < j) {
        while(arr[i] <= pivot && i <= high - 1) {
            i += 1
        }
        while(arr[j] > pivot && j >= low) {
            j -= 1
        }
        if (i < j) {
            swap(&arr, i, j)
        }
    }
    swap(&arr, j, low)
    return j
}

func quickSort(_ arr: inout [Int], _ low: Int, _ high: Int) {
    if (low < high) {
        let pivot = partition(&arr, low, high)
        quickSort(&arr, low, pivot-1)
        quickSort(&arr, pivot+1, high)
    }
}

quickSort(&arr, 0, arr.count-1)
print(arr)

