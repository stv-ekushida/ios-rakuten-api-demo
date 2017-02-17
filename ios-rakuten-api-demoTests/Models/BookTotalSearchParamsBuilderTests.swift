//
//  BookTotalSearchParamsBuilderTests.swift
//  ios-rakuten-api-demo
//
//  Created by Eiji Kushida on 2017/02/17.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import XCTest
@testable import ios_rakuten_api_demo

class BookTotalSearchParamsBuilderTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testBookTotalSearchParamsBuilder() {
        
        let params = BookTotalSearchParamsBuilder.create(keyword: "Swift", page: 1) as? [String: String]
        
        XCTAssertEqual(params?["applicationId"], "37e722ba9b54f161df2000054ab79b71")
        XCTAssertEqual(params?["format"], "json")
        XCTAssertEqual(params?["booksGenreId"], "000")
        XCTAssertEqual(params?["keyword"], "Swift")
        XCTAssertEqual(params?["page"], "1")
    }
}
