//
//  Utility.swift
//  CardEvaluator
//
//  Created by Silvio Bulla on 09/09/2018.
//  Copyright © 2018 Silvio Bulla. All rights reserved.
//

import Foundation

open class Utility {
    
    public static func regularExpression(for cardType: Card.CType) -> String {
        switch cardType {
        case .visa:
            return "^4[0-9]{6,}$"
        case .mastercard:
            return "^(5[1-5][0-9]{14}|2(22[1-9][0-9]{12}|2[3-9][0-9]{13}|[3-6][0-9]{14}|7[0-1][0-9]{13}|720[0-9]{12}))$"
        case .chinaUnionPay:
            return "^(62[0-9]{14,17})$"
        case .maestro:
            return "^(5018|5020|5038|6304|6759|6761|6763)[0-9]{8,15}$"
        case .notFound:
            return ""
        }
    }
    
    //Choose brand type by first 6 digits
    public static func cartTypeByRange(for card_number: String) -> Int {
        guard card_number.count > 12 && card_number.count < 19 else {return Card.CType.notFound.rawValue}
        let brand_digits = card_number.prefix(6)
        guard let card = Int(brand_digits) else {return Card.CType.notFound.rawValue}
        var founded_card:Int!
      
        switch card {
        case 400000...499999:
            founded_card = Card.CType.visa.rawValue
        case 222100...272099, 510000...559999:
            founded_card = Card.CType.mastercard.rawValue
        case 620000...629999:
            founded_card = Card.CType.chinaUnionPay.rawValue
        case 500000...509999, 560000...699999:
            if founded_card == nil {
                founded_card = Card.CType.maestro.rawValue
            }
        default:
            return Card.CType.notFound.rawValue
        }
        
        return founded_card
    }
        
}
