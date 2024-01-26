// Stock Buy And Sell

var array = [7,1,5,3,6,4]

func maxProfitAfterBuySellStockUsingBruteForce() {
    var max_profit = 0
    for i in 0..<array.count {
        for j in i..<array.count {
            max_profit = max(max_profit,  array[j] - array[i])
        }
    }
    print("Maximum profit after buy And sell stock using brute force is", max_profit)
}

maxProfitAfterBuySellStockUsingBruteForce()

func maxProfitAfterBuySellStockUsingOptimalApproach() {
    var max_profit = 0, min_price = array[0]
    for i in 0..<array.count {
        min_price = min(min_price, array[i]) 
        max_profit = max(max_profit,  array[i] - min_price)
    }
    print("Maximum profit after buy And sell stock using optimal approach is", max_profit)
}

maxProfitAfterBuySellStockUsingOptimalApproach()