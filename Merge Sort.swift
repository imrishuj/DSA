//Merge Sort 

var arr = [13,46,24,52,20,9]

func merge(_ arr: inout [Int], _ left: Int, _ right: Int, _ mid: Int) {
    var temp = [Int]()
    var i = left
    var j = mid + 1

    while (i <= mid && j <= right) {
        if arr[i] < arr[j] {
            temp.append(arr[i])
            i += 1
        } else {
            temp.append(arr[j])
            j += 1
        }
    }
    
    if i > mid {
        while (j <= right) {
            temp.append(arr[j])
            j += 1
        }
    } else {
        while (i <= mid ) {
            temp.append(arr[i])
            i += 1
        }
    }
    for index in left...right {
        arr[index] = temp[index - left]
    }
}

func mergeSort(_ arr: inout [Int], _ left: Int, _ right: Int) {
    if (left < right) {
        let mid = (left+right)/2
        mergeSort(&arr, left, mid)
        mergeSort(&arr, mid+1, right)
        merge(&arr, left, right, mid)
    }
}

mergeSort(&arr, 0, arr.count-1)
print(arr)