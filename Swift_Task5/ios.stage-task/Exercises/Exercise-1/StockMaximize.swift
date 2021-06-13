import Foundation

class StockMaximize {

    func countProfit(prices: [Int]) -> Int {
        if prices.count < 2 {
            return 0
        }
        var pricesCopy = prices
        var profit = 0
        var stocks = 0
        if pricesCopy.firstIndex(of: pricesCopy.max()!) == 0 {
            pricesCopy.remove(at: 0)
        }
        var max = pricesCopy.max()
        
        for (i, element) in pricesCopy.enumerated() {
            if (element != max) {
                stocks += 1
                profit -= element
            } else {
                profit += stocks * element
                stocks = 0
                pricesCopy.remove(at: pricesCopy.firstIndex(of: max!)!)
                max = pricesCopy.max()
            }
        }
        return profit < 0 ? 0 : profit
    }
}
