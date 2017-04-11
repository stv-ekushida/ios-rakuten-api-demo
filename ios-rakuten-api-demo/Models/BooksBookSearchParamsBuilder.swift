//
//  BooksBookSearchParamsBuilder.swift
//  ios-rakuten-api-demo
//
//  Created by Kushida　Eiji on 2017/02/17.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import Keys
import UIKit

final class BooksBookSearchParamsBuilder {
    
    static func create(title: String, page: Int) -> [String: Any] {
        
        return [
            "applicationId": IosRakutenApiDemoKeys().applicationId,
            "format": "json",
            "booksGenreId": "001",
            "title": title,
            "page": "\(page)"
        ]
    }
}
