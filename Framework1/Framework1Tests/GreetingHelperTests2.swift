//
//  GreetingHelperTests2.swift
//  Framework1Tests
//
//  Created by Adil Hussain on 06/07/2021.
//

import XCTest

class GreetingHelperTests2: XCTestCase {
    
    private var greetingHelper: GreetingHelper!
    
    override func setUp() {
        greetingHelper = GreetingHelper()
    }
    
    func test_greeting_1() {
        // When.
        let greeting = greetingHelper.greeting()
        
        // Then.
        XCTAssertEqual("Hello", greeting)
    }
    
    func test_greeting_2() {
        // When.
        let greeting = greetingHelper.greeting()
        
        // Then.
        XCTAssertEqual(Greeter().greeting(), greeting)
    }
}
