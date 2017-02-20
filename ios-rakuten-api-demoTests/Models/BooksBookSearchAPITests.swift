//
//  BooksBookSearchAPITests.swift
//  ios-rakuten-api-demo
//
//  Created by Eiji Kushida on 2017/02/17.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import XCTest
@testable import ios_rakuten_api_demo

class BooksBookSearchAPITests: XCTestCase {
    
    let api = BooksBookSearchAPI()
    let loadable = SpyBooksBookSearchAPILoadable()
    
    override func setUp() {
        super.setUp()
        api.loadable = loadable
    }
    
    override func tearDown() {
        super.tearDown()
        api.loadable = nil
    }
    
    func testSearchKeywordSwift() {
        
        let exp = expectation(description: "「Swift」で検索したときのテスト")
        loadable.asyncExpectation = exp
        
        api.fetch(title: "Swift", page: 1)
        
        waitForExpectations(timeout: 3) { error in
            if let error = error {
                XCTFail("waitForExpectationsエラー: \(error)")
            }
            
            if let result = self.loadable.result {
             
                switch result {
                case .normal(let result) :
                    XCTAssertNotNil(result)
                    XCTAssertTrue(result.items.count > 0)
                    XCTAssertEqual(result.page, 1)
                    
                case .error(let error) :
                    XCTFail(error.localizedDescription)
                    
                default:
                    XCTFail("バグです")
                }

            }
        }
    }
    
    func testSearchKeywordNoData() {
        
        let exp = expectation(description: "該当データがないときのテスト")
        loadable.asyncExpectation = exp
        
        api.fetch(title: "Swiあああああft", page: 1)
        
        waitForExpectations(timeout: 3) { error in
            if let error = error {
                XCTFail("waitForExpectationsエラー: \(error)")
            }
            
            if let result = self.loadable.result {
                switch result {
                case .noData:
                    XCTAssertTrue(true)
                    
                case .error(let error) :
                    XCTFail(error.localizedDescription)
                    
                default:
                    XCTFail("バグです")
                }
            }
        }
    }
}
