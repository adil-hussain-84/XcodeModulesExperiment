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
    
    func test_greetings_1() {
        // When.
        let greeting = someAwesomeFramework.greetings()
        
        // Then.
        XCTAssertEqual("Hello Ciao Hola", greeting)
    }
    
    func test_greetings_2() {
        // When.
        let greeting = someAwesomeFramework.greetings()
        
        // Then.
        let expected = "\(ABCEnglishGreeter().greeting()!) \(ABCItalianGreeter().greeting()!) \(ABCSpanishGreeter().greeting()!)";
        
        XCTAssertEqual(expected, greeting)
    }
}
