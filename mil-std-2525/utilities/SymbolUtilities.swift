//
//  SymbolUtilities.swift
//  mil-std-2525
//
//  Created by Kevin on 9/11/17.
//  Copyright © 2017 Kevin Militello. All rights reserved.
//

import Foundation

class SymbolUtilities{
    
    static func lineColorOfAffiliation(symbolId: String)->CGColor{
        return UIColor.black.cgColor
    }
    
    static func fillColorOfAffiliation(symbolId: String)->CGColor{
        return UIColor.black.cgColor
    }
    
    static func fillColorOfWeather(symbolId: String)->CGColor{
        return UIColor.black.cgColor
    }
    
    static func lineColorOfWeather(symbolId: String)->CGColor{
        return UIColor.black.cgColor
    }
    
    static func hasDefaultFill(symbolId: String)->Bool{
        return true
    }

    static func isWeather(symbolId: String)->Bool{
        return false
    }
}
