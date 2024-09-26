/**

Merge Overlapping Sub-intervals

Problem Statement: Given an array of intervals in sorted order, merge all the overlapping intervals and return an array of non-overlapping intervals.

*/
var array = [[1,3], [2,6], [8,10], [15,18]]

func mergeOverlappingSubIntervalsUsingBruteForceApproach() {
    var finalArray = [[Int]]()
    for i in 0..<array.count {
        let firstElementOfCurrentIndex = array[i][0]
        var lastElementOfCurrentIndex = array[i][1]
        if !finalArray.isEmpty && lastElementOfCurrentIndex <= finalArray[finalArray.count - 1][1] {
            continue
        }
        for j in (i + 1)..<array.count {
            if lastElementOfCurrentIndex > array[j][0] {
                lastElementOfCurrentIndex =  array[j][1]
            } else {
                break
            }
        }
        finalArray.append([firstElementOfCurrentIndex, lastElementOfCurrentIndex])
    }
    print("Array after Merge Overlapping Sub-intervals using Brute Force Approach is", finalArray)
}

mergeOverlappingSubIntervalsUsingBruteForceApproach()

array = [[1,3], [2,6], [8,10], [15,18]]

func mergeOverlappingSubIntervalsUsingOptimalApproach() {
    var finalArray: [[Int]] = [array[0]]
    for i in 1..<array.count {
        let lastElementOfPreviousIndex = finalArray[finalArray.count-1][1]
        let firstElementOfCurrentIndex = array[i][0]
        if firstElementOfCurrentIndex <= lastElementOfPreviousIndex {
            let count = finalArray[finalArray.count-1].count - 1
            finalArray[finalArray.count-1][count] = array[i][1]
        } else {
            finalArray.append(array[i])
        }
    }
    print("Array after Merge Overlapping Sub-intervals using Optimal Approach is", finalArray)
}

mergeOverlappingSubIntervalsUsingOptimalApproach()