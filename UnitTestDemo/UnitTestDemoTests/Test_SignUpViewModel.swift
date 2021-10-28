//
//  SignUpViewModel.swift
//  UnitTestDemoTests
//
//  Created by Muhammad Akhtar on 27/10/2021.
//

import XCTest

class Test_SignUpViewModel: XCTestCase {
    var model: SignupModel!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        print("setUpWithError")
        model = SignupModel(firstName: "Jumann", lastName: "tell", email: "sdkh@gmail.com",
                            password: "@AK47iuy123", repeatedPassword: "@AK47iuy123")
    }

    
    func test_ValidateUserName() {
        // Arrange - data should be provided to the test
        model.firstName = "Tamana"
        model.lastName = "qb"
        
        // Act - Invoke the actual method under test
        let isValidFirstName = model.isValidFirstName
        let isValidLastName = model.isValidLastName
        
        // Assert
        XCTAssertTrue(isValidFirstName, "First name is not a valid one")
        XCTAssertTrue(isValidLastName, "Last name is not a valid one")
    }
    func test_EmailValidation() {
        // Arrange
        model.email = "Human@google.com"
        
        // Act
        let isValidEmail = model.isValidEmail
        
        // Assert
        XCTAssertTrue(isValidEmail, "Email is not valid")
        XCTAssertFalse(isValidEmail, "Email is valid")
        XCTAssert(isValidEmail, "Email is not valid")
    }
    
    func test_EmailValidations(){
        // Arrange
        model.email = "Human@google.com"
        
        // Act
        let isValidEmail = model.isValidEmail
        
        //Assert
        XCTAssertTrue(isValidEmail, "Email is not valid")
        XCTAssertFalse(isValidEmail, "Email is valid")
        XCTAssert(isValidEmail, "Email is not valid")
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
