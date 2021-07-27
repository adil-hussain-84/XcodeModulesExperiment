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
    
    func test_englishGreeting_1() {
        // When.
        let greeting = greetingHelper.englishGreeting()
        
        // Then.
        XCTAssertEqual("Hello", greeting)
    }
    
    func test_englishGreeting_2() {
        // When.
        let greeting = greetingHelper.englishGreeting()
        
        // Then.
        XCTAssertEqual(ABCEnglishGreeter().greeting(), greeting)
    }
    
    func test_italianGreeting_1() {
        // When.
        let greeting = greetingHelper.italianGreeting()
        
        // Then.
        XCTAssertEqual("Ciao", greeting)
    }
    
    func test_italianGreeting_2() {
        // When.
        let greeting = greetingHelper.italianGreeting()
        
        // Then.
        XCTAssertEqual(ABCItalianGreeter().greeting(), greeting)
    }
    
    func test_spanishGreeting_1() {
        // When.
        let greeting = greetingHelper.spanishGreeting()
        
        // Then.
        XCTAssertEqual("Hola", greeting)
    }
    
    func test_spanishGreeting_2() {
        // When.
        let greeting = greetingHelper.spanishGreeting()
        
        // Then.
        XCTAssertEqual(ABCSpanishGreeter().greeting(), greeting)
    }
}
