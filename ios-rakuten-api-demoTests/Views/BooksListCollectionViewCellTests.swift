//
//  BooksListCollectionViewCellTests.swift
//  ios-rakuten-api-demo
//
//  Created by Eiji Kushida on 2017/02/24.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import XCTest
@testable import ios_rakuten_api_demo

class BooksListCollectionViewCellTests: XCTestCase {
    
    var collectionView: UICollectionView?
    let dataSouce = FakeDataSource()
    var cell: BooksListCollectionViewCell?
    var result: BooksBookSearchResults?
    
    override func setUp() {
        super.setUp()
        
        let controller = MocViewController().create(
            identifier: "ViewController") as! ViewController
        
        collectionView = controller.booksListCollectionView
        collectionView?.dataSource = dataSouce

        cell = collectionView?.dequeueReusableCell(
            withReuseIdentifier: BooksListCollectionViewCell.identifier,
            for: IndexPath(row: 0, section: 0)) as? BooksListCollectionViewCell
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCollectionViewCellID() {
        XCTAssertEqual(BooksListCollectionViewCell.identifier, "BooksListCollectionViewCell")
    }
    
    func testHasImageLabel() {
        XCTAssertNotNil(cell?.imageView)
    }
    
    func testHasTitleLabel() {
        XCTAssertNotNil(cell?.titleLabel)
    }
    
    func testHasAuthorLabel() {
        XCTAssertNotNil(cell?.authorLabel)
    }
    
    func testConfigCellBooks() {
        
        result = MocBooksBookList().feachTestData()
        let item = result?.items.first
        cell?.bookItem = item
        
        XCTAssertEqual(cell?.titleLabel.text, "本気ではじめるiPhoneアプリ作り Xcode 8.x＋Swift 3.x対応")
        XCTAssertEqual(cell?.authorLabel.text, "西 磨翁")
        XCTAssertNil(cell?.imageView.image)
    }
}

extension BooksListCollectionViewCellTests {
    
    final class FakeDataSource: NSObject, UICollectionViewDataSource {
        
        func collectionView(_ collectionView: UICollectionView,
                            numberOfItemsInSection section: Int) -> Int {
            return 1
        }
        
        func collectionView(_ collectionView: UICollectionView,
                            cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
            return UICollectionViewCell()
        }
    }
}
