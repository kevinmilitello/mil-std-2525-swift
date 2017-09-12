//
//  MilStd2525Renderer.swift
//  mil-std-2525
//
//  Created by Kevin on 8/30/17.
//  Copyright © 2017 Kevin Militello. All rights reserved.
//

import UIKit

class MilStd2525Renderer: TacticalGraphicIconRenderer {
    
    public func iconFrom(symbolId: String) -> UIImage?{
        return iconFrom(symbolId: symbolId, pixelHeightWidth: 25, color: nil)
    }
    
    public func iconFrom(symbolId: String, pixelHeightWidth: CGFloat) -> UIImage?{
        return iconFrom(symbolId: symbolId, pixelHeightWidth: pixelHeightWidth, color: nil)
    }
    
    public func iconFrom(symbolId: String, pixelHeightWidth: CGFloat, color: CGColor?) -> UIImage?{
        var milStdSymbol = MilStdSymbol(symbolId: symbolId, coordinates: nil, modifiers: nil)
        var id = symbolId
        if !SymbolUtilities.isWeather(symbolId: id){
            id = symbolId.substring(to: symbolId.index(after: symbolId.startIndex))
                .appending("*")
                .appending(symbolId.substring(with: symbolId.index(symbolId.startIndex, offsetBy: 2)..<symbolId.index(symbolId.startIndex, offsetBy: 3))) //<--Really?
                .appending("P")
                .appending(symbolId.substring(to: symbolId.index(symbolId.startIndex, offsetBy: 4)))
            guard (color != nil) else{
                return nil
            }
            milStdSymbol.lineColor = color
        }
        else{
            var tempColor = SymbolUtilities.fillColorOfWeather(symbolId: symbolId)
            if tempColor == nil{
                tempColor = SymbolUtilities.lineColorOfWeather(symbolId: symbolId)
            }
            if tempColor != nil{
                milStdSymbol.lineColor = tempColor
            }
        }
        return nil
    }
}
