//
//  IOSClassTests2.swift
//  Framework1Tests
//
//  Created by Adil Hussain on 26/07/2021.
//

import XCTest

class IOSClassTests2: XCTestCase {

    func testExample() throws {
        XCTAssertNotNil(IOSClass.forName("NSString"))
        XCTAssertNotNil(IOSClass.forName("java.lang.String"))
        
        XCTAssertNotNil(IOSClass.forName("ABCEnglishGreeter"))
        
        XCTAssertNotNil(IOSClass.forName("ABCItalianGreeter"))
        XCTAssertNotNil(IOSClass.forName("com.greeter.ItalianGreeter"))
        
        XCTAssertNotNil(IOSClass.forName("ABCSpanishGreeter"))
        XCTAssertNotNil(IOSClass.forName("com.greeter.SpanishGreeter"))
    }

}
