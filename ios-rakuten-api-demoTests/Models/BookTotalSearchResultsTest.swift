//
//  BookTotalSearchResultsTest.swift
//  ios-rakuten-api-demo
//
//  Created by Eiji Kushida on 2017/02/17.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import XCTest
@testable import ios_rakuten_api_demo

class BookTotalSearchResultsTest: XCTestCase {
    
    var result: BookTotalSearchResults?
    
    override func setUp() {
        super.setUp()
        
        result = MocBookTotalList().feachTestData()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testBookTotalSearchResults() {        
        XCTAssertEqual(result?.count, 148)
        XCTAssertEqual(result?.page, 1)
        XCTAssertEqual(result?.pageCount, 5)
        XCTAssertEqual(result?.items.count, 30)        
    }
}
