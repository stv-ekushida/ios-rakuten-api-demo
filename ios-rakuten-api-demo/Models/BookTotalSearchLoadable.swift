//
//  BookTotalSearchLoadable.swift
//  ios-rakuten-api-demo
//
//  Created by Eiji Kushida on 2017/02/17.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import Foundation

enum BookTotalSearchStatus {
    case none
    case normal(BookTotalSearchResults)
    case noData
    case error(Error)
}

protocol BookTotalSearchLoadable {
    func setResult(result: BookTotalSearchStatus)
}
