//
//  MilStdSymbol.swift
//  mil-std-2525
//
//  Created by Kevin on 8/30/17.
//  Copyright © 2017 Kevin Militello. All rights reserved.
//

import Foundation
import CoreLocation

class MilStdSymbol {
    
    var frame: CGRect?
    var boundary: CGPath?
    var modifiers: [String:String]?
    var amplifiers: AnyObject?
    var standardIdentity: AnyObject?
    var battleDimension: AnyObject?
    var status: AnyObject?
    var mission: AnyObject?
    var lineWidth: CGFloat?
    var coordinates: [CLLocationCoordinate2D]?
    var symbolId: String?
    
    //MARK: Colors
    var iconColor: CGColor?
    var lineColor: CGColor?
    var fillColor: CGColor?
    var textColor: CGColor?
    var textBackgroundColor: CGColor?
    var outlineColor: CGColor?
    
    init(symbolId: String, coordinates: [CLLocationCoordinate2D]?, modifiers: [String:String]?) {
        guard let _ = modifiers else{
            self.modifiers = modifiers
            return
        }
        
        self.coordinates = coordinates
        self.symbolId = symbolId
        self.lineColor = SymbolUtilities.lineColorOfAffiliation(symbolId: symbolId)
        
        if SymbolUtilities.hasDefaultFill(symbolId: symbolId) {
            self.fillColor = SymbolUtilities.fillColorOfAffiliation(symbolId: symbolId)
        }
    }
}
