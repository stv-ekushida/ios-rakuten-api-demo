//
//  NetworkManagerTest.swift
//  ios-rakuten-api-demo
//
//  Created by Kushida　Eiji on 2017/02/17.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

@testable import ios_rakuten_api_demo
import XCTest

class NetworkManagerTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    //オンラインのときのみ
    func testIsAvailable() {
        let result = NetworkManager.isAvailable()
        XCTAssertTrue(result)
    }
}
