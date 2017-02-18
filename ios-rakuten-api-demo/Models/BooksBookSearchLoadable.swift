//
//  BooksBookSearchLoadable.swift
//  ios-rakuten-api-demo
//
//  Created by Eiji Kushida on 2017/02/17.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import Foundation

enum BooksBookSearchStatus {
    case none
    case normal(BooksBookSearchResults)
    case noData
    case error(Error)
}

protocol BooksBookSearchLoadable {
    func setResult(result: BooksBookSearchStatus)
}
