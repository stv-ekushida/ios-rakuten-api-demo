//
//  MocBookTotalList.swift
//  ios-rakuten-api-demo
//
//  Created by Eiji Kushida on 2017/02/17.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import XCTest
import Foundation
import ObjectMapper

@testable import ios_rakuten_api_demo

final class MocBookTotalList: XCTestCase {
    
    func feachTestData() -> BookTotalSearchResults{
        
        let bundle = Bundle(for: type(of: self))
        let path = bundle.path(forResource: "booktotal_search", ofType: "json")
        if let path = path {
            
            let fileHandle = FileHandle(forReadingAtPath: path)
            let jsonData = fileHandle?.readDataToEndOfFile()
            
            if let jsonData = jsonData {
                
                let json = String(data: jsonData,
                                  encoding: String.Encoding.utf8)
                
                if let json = json {
                    
                    if let searchResult = Mapper<BookTotalSearchResults>().map(JSONString: json) {
                        return searchResult
                    }
                }
            }
        }
        fatalError("テストデータが読み込めない")
    }    
}
