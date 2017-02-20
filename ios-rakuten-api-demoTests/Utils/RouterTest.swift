//
//  RouterTest.swift
//  ios-rakuten-api-demo
//
//  Created by Kushida　Eiji on 2017/02/17.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import XCTest
@testable import ios_rakuten_api_demo

class RouterTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testBaseURL() {
        
        XCTAssertEqual(Router.baseURLString, "https://app.rakuten.co.jp/services/api/")
    }
    
    func testURLRequest() {
        
        let router = Router.BooksBookSearch(["format":"json","keyword":"Swift"])
        let urlRequest = try! router.asURLRequest()        
        XCTAssertEqual(urlRequest.description, "https://app.rakuten.co.jp/services/api/BooksBook/Search/20130522?format=json&keyword=Swift")
    }
}

