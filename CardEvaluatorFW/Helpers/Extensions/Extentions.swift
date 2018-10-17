//
//  Extentions.swift
//  CardEvaluator
//
//  Created by Silvio Bulla on 09/09/2018.
//  Copyright © 2018 Silvio Bulla. All rights reserved.
//

import Foundation

public extension String {
    
    //Card number formated.
    public func formattedCardNumber() -> String {
        let numbersOnly = replacingOccurrences(of: "[^0-9]", with: "", options: .regularExpression, range: nil)
        return numbersOnly.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }
    
    //Convert a string into array of digits
    public func convertToArray() -> [Int] {
        return self.compactMap{ Int(String($0)) }
    }
    
    //Perform Luhn Algorithm
    public func isValidCard() -> Bool {
        return LuhnAlg.performAlgorithmTo(self)
    }
    
}

public extension Array {

    //Sum of array elements
    func sum() -> Int {
        guard let array = self as? [Int] else {return 0}
        return array.reduce(0) { $0 + $1 }

    }
}
