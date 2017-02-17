//
//  BookTotalSearchParamsBuilder.swift
//  ios-rakuten-api-demo
//
//  Created by Kushida　Eiji on 2017/02/17.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit

final class BookTotalSearchParamsBuilder {
    
    static func create(keyword: String, page: Int) -> [String: Any] {
        
        return [
            "method":"json",
            "applicationId":"37e722ba9b54f161df2000054ab79b71",
            "format":"json",
            "booksGenreId":"000",
            "keyword": keyword,
            "page": "\(page)"
        ]
    }
}
