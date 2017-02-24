//
//  BooksListCollectionViewTests.swift
//  ios-rakuten-api-demo
//
//  Created by Eiji Kushida on 2017/02/24.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import XCTest
@testable import ios_rakuten_api_demo

class BooksListCollectionViewTests: XCTestCase {
    
    let dataSouce = BooksListCollectionView()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testBooksCount() {
        XCTAssertEqual(dataSouce.books.count, 0)
    }
    
    func testAddBooksBy30() {
        
        let result = MocBooksBookList().feachTestData()
        dataSouce.add(books: result.items)
        
        XCTAssertEqual(dataSouce.books.count, 30)
    }
}
