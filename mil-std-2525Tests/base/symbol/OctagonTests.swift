//
//  OctagonTests.swift
//  mil-std-2525Tests
//
//  Created by Kevin on 9/4/17.
//  Copyright © 2017 Kevin Militello. All rights reserved.
//

import XCTest

class OctagonTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPointCount() {
        let boundingOctagon = Octagon(L: 1)
        XCTAssertTrue(boundingOctagon.points.count==9)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
