//
//  MilStd2525RendererTests.swift
//  mil-std-2525Tests
//
//  Created by Kevin on 9/2/17.
//  Copyright © 2017 Kevin Militello. All rights reserved.
//

import XCTest

class MilStd2525RendererTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testRenderNeutralGroundUnit(){
        let symbolId = "SNG-U----------" //Neutral Ground Unit
    
        let symbolImage = MilStd2525Renderer.imageFrom(symbolId: symbolId)
        
        XCTAssertNotNil(symbolImage)
    }
    
    func testRenderHostilePhaseLine(){
        let symbolId = "GHGAGLP----AUSX"//Ex. from https://goworldwind.org/developers-guide/symbology/tactical-graphics/
        
        let symbolImage = MilStd2525Renderer.imageFrom(symbolId: symbolId)
        
        XCTAssertNotNil(symbolImage)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
