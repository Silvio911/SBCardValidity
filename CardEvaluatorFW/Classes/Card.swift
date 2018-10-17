//
//  Card.swift
//  CardEvaluator
//
//  Created by Silvio Bulla on 09/09/2018.
//  Copyright © 2018 Silvio Bulla. All rights reserved.
//

import Foundation

public class Card {
    
    public enum CType: Int {
        case visa = 0
        case mastercard
        case chinaUnionPay
        case maestro
        case notFound
    }
    
    public static func cardType(for cardNumber: String) -> CType {
        var cardTypeFoundet: CType?
        
        for i in CType.visa.rawValue...CType.notFound.rawValue {
         
            let cardType = CType(rawValue: i)!
            let regex = Utility.regularExpression(for: cardType)
            
            let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
           
            if regex == "" {
                cardTypeFoundet = CType.notFound
            }else if predicate.evaluate(with: cardNumber) == true {
                cardTypeFoundet = cardType
                break
            }
            
        }
        return cardTypeFoundet!
    }
    
    public static func cardTypeByRange(for card_number: String) ->CType {
        var cardTypeFoundet: CType?
        let cardType = Utility.cartTypeByRange(for: card_number)
        cardTypeFoundet = CType(rawValue: cardType)
        return cardTypeFoundet!
    }
    
}
