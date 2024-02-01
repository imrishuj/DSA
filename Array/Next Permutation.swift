// Next Permutation : find next lexicographically greater permutation

var arr = [1, 2, 3, 6, 5, 4]

func nextPermutationusingOptimalApproach() {
    var pivotIndex = -1
    var index = arr.count-2
    
    while(index >= 0) {
        if arr[index] < arr[index + 1] {
            pivotIndex = index
            break
        }
        index -= 1
    }
    
    if pivotIndex == -1 {
        arr.reverse()
        print("Next Permutation of array using optimal approach", arr)
        return
    } else {
    
        var index = arr.count-1
        while(index > pivotIndex) {
            if arr[index] > arr[pivotIndex] {
                arr.swapAt(index, pivotIndex)
                index -= 1
                break
            }
        }

        var start = pivotIndex + 1
        var end = arr.count - 1
        while(start < end) {
            arr.swapAt(start, end)
            start += 1
            end -= 1
        }
    }
    print("Next Permutation of array using optimal approach", arr)
}
nextPermutationusingOptimalApproach()


