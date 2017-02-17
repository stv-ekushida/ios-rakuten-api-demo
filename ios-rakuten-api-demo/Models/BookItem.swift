//
//  BookItem.swift
//  ios-rakuten-api-demo
//
//  Created by Eiji Kushida on 2017/02/17.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit
import ObjectMapper

struct BookItem: Mappable {
    
    var title = ""
    var author = ""
    var itemCaption = ""
    var itemUrl = ""
    var mediumImageUrl = ""
    
    init?(map: Map) {}
    
    mutating func mapping(map: Map) {
        title <- map["Item.title"]
        author <- map["Item.author"]
        itemCaption <- map["Item.itemCaption"]
        itemUrl <- map["Item.itemUrl"]
        mediumImageUrl <- map["Item.mediumImageUrl"]
    }
}
