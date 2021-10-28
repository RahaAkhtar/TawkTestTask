//
//  testappTests.swift
//  testappTests
//
//  Created by Muhammad Akhtar on 27/10/2021.
//

import XCTest

class testappTests: XCTestCase {

    private var vc: ViewController!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        vc = ViewController()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        vc = nil
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func test_Compare(){
        vc.xVal = 60
        vc.yVal = 10
       let result = vc.comnpareValue()
        
        XCTAssertTrue(result, "y is greater")
    }

}

