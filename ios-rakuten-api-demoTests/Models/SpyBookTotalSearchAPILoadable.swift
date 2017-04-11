//
//  SpyBooksBookSearchAPILoadable.swift
//  ios-rakuten-api-demo
//
//  Created by Eiji Kushida on 2017/02/17.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

@testable import ios_rakuten_api_demo
import XCTest

final class SpyBooksBookSearchAPILoadable: BooksBookSearchLoadable {
    
    var result: BooksBookSearchStatus?
    var asyncExpectation: XCTestExpectation?
    
    func setResult(result: BooksBookSearchStatus) {
        
        guard let expectation = asyncExpectation else {
            XCTFail("SpyBooksBookSearchAPIDelegateが正しく設定されていない")
            return
        }
        
        self.result = result
        expectation.fulfill()
    }
}
