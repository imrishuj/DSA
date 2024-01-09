// Insertion Sort

var array = [12, 11, 13, 5, 6]

func doInsertionSort() {
    for index in 0..<array.count {
        var j = index
        while(j > 0 && array[j-1] > array[j]) {
            let temp = array[j]
            array[j] = array[j-1]
            array[j-1] = temp
            j -= 1
        }
    }
}

print("Array before sort", array)
doInsertionSort()
print("Array after sort", array)