//
//  SpyBookTotalSearchAPILoadable.swift
//  ios-rakuten-api-demo
//
//  Created by Eiji Kushida on 2017/02/17.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import XCTest
@testable import ios_rakuten_api_demo

final class SpyBookTotalSearchAPILoadable: BookTotalSearchLoadable {
    
    var result: BookTotalSearchStatus?
    var asyncExpectation: XCTestExpectation?
    
    func setResult(result: BookTotalSearchStatus) {
        
        guard let expectation = asyncExpectation else {
            XCTFail("SpyBookTotalSearchAPIDelegateが正しく設定されていない")
            return
        }
        
        self.result = result
        expectation.fulfill()
    }
}
