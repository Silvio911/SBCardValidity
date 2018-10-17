//
//  LuhnAlgorithm.swift
//  CardEvaluator
//
//  Created by Silvio Bulla on 09/09/2018.
//  Copyright © 2018 Silvio Bulla. All rights reserved.
//

import Foundation

public class LuhnAlg {
    
    public static func performAlgorithmTo(_ card_number: String) -> Bool {
        var cc_number_array: [Int] = []
        var product_array: [Int] = []
        
        let card_number_formated = card_number.formattedCardNumber()
        
        //Check validity of string
        guard card_number_formated.count > 12 && card_number_formated.count < 19 && !card_number_formated.hasPrefix("0") else {return false}
       
        cc_number_array = card_number_formated.convertToArray()
        
        for index in 0...cc_number_array.count - 1{
            
            if index % 2 == 0 {
                let product_odd = cc_number_array[index] * 2
                
                if String(product_odd).count > 1{
                    let little_product_array = String(product_odd).convertToArray()
                    let sum = little_product_array.sum()
                    // Or we can do: let sum == product - 9
                    product_array.append(sum)
                }else {
                    product_array.append(product_odd)
                }
                
            }else{
                let product_even = cc_number_array[index]
                product_array.append(product_even)
            }
            
        }
        let sumOfProducts = product_array.sum()
        
        return sumOfProducts % 10 == 0 ? true : false
    }
    
}
