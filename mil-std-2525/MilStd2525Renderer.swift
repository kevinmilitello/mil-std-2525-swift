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
        return nil
    }
}
