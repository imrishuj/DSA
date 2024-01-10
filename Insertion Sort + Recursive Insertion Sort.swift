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

func doRecursiveInsertionSort(_ array: inout [Int], _ length: Int) {
    guard length > 0 else { return }
    var j = array.count - length
    while(j > 0 && array[j-1] > array[j]) {
        let temp = array[j]
        array[j] = array[j-1]
        array[j-1] = temp
        j -= 1
    }
    doRecursiveInsertionSort(&array, (length-1))
    
}

array = [12, 11, 13, 5, 6]
print("Array before recursive sort", array)
doRecursiveInsertionSort(&array, array.count)
print("Array after recursive sort", array)
