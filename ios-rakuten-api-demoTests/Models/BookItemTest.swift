//
//  BookItemTests.swift
//  ios-rakuten-api-demo
//
//  Created by Eiji Kushida on 2017/02/17.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import XCTest
@testable import ios_rakuten_api_demo

class BookItemTests: XCTestCase {
    
    var result: BooksBookSearchResults?
    
    override func setUp() {
        super.setUp()
        
        result = MocBooksBookList().feachTestData()
    }
    
    override func tearDown() {
        super.tearDown()
        result = nil
    }
    
    func testBooksBookSearchResults() {
        
        let item = result?.items.first
        
        XCTAssertEqual(item?.title, "本気ではじめるiPhoneアプリ作り Xcode 8.x＋Swift 3.x対応")
        XCTAssertEqual(item?.author, "西 磨翁")
        XCTAssertEqual(item?.itemCaption, "アプリを作り、Ａｐｐ　Ｓｔｏｒｅに公開するまでを、ヤフーの「黒帯」が爆速で支援します。アプリのアイデアの出し方から、Ｘｃｏｄｅのセットアップと使い方、Ｓｗｉｆｔプログラムの書き方、アプリの公開方式まで、基本と押さえておくべきポイントを、実際にサンプルアプリを作る手順の流れでしっかり解説しています。")
        XCTAssertEqual(item?.itemUrl, "http://books.rakuten.co.jp/rb/14506521/")
        XCTAssertEqual(item?.mediumImageUrl, "http://thumbnail.image.rakuten.co.jp/@0_mall/book/cabinet/9821/9784797389821.jpg?_ex=120x120")        
    }
}
