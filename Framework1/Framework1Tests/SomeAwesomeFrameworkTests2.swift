//
//  SomeAwesomeFrameworkTests2.swift
//  Framework1Tests
//
//  Created by Adil Hussain on 06/07/2021.
//

import XCTest
import Framework1

class SomeAwesomeFrameworkTests2: XCTestCase {
    
    private var someAwesomeFramework: SomeAwesomeFramework!
    
    override func setUp() {
        super.setUp()
        someAwesomeFramework = SomeAwesomeFramework()
    }
    
    func test_greeting_1() {
        // When.
        let greeting = someAwesomeFramework.greeting()
        
        // Then.
        XCTAssertEqual("Hello", greeting)
    }
    
    func test_greeting_2() {
        // When.
        let greeting = someAwesomeFramework.greeting()
        
        // Then.
        XCTAssertEqual(Greeter().greeting(), greeting)
    }
}
