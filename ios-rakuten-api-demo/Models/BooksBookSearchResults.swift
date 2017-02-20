//
//  BooksBookSearchResults.swift
//  ios-rakuten-api-demo
//
//  Created by Eiji Kushida on 2017/02/17.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit
import ObjectMapper

struct BooksBookSearchResults: Mappable {
    
    var count = 0
    var page = 0
    var pageCount = 0
    var items: [BookItem] = []
    
    init?(map: Map) {}
    
    mutating func mapping(map: Map) {
        count <- map["count"]
        page <- map["page"]
        pageCount <- map["pageCount"]
        items <- map["Items"]
    }
}
