//
//  RouterTest.swift
//  ios-rakuten-api-demo
//
//  Created by Kushida　Eiji on 2017/02/17.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

@testable import ios_rakuten_api_demo
import XCTest

class RouterTest: XCTestCase {

    private let url = "https://app.rakuten.co.jp/services/api/BooksBook/Search/20130522?format=json&keyword=Swift"
    
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
        
        let router = Router.booksBookSearch(["format": "json",
                                             "keyword": "Swift"])

        do {
            let urlRequest = try router.asURLRequest()
            XCTAssertEqual(urlRequest.description, url)
        } catch let error {
            print(error.localizedDescription)
        }
    }
}
