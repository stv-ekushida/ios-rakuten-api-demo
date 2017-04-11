//
//  BooksBookSearchAPI.swift
//  ios-rakuten-api-demo
//
//  Created by Eiji Kushida on 2017/02/17.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import ObjectMapper

final class BooksBookSearchAPI {

    var loadable: BooksBookSearchLoadable?

    func fetch(title: String, page: Int) {

        let router = Router.booksBookSearch(
            BooksBookSearchParamsBuilder.create(title: title, page: page)
        )

        APIClient().request(router: router) { [weak self] (response) in

            switch response {
            case .success(let result) :
                
                if let searchResult = Mapper<BooksBookSearchResults>().map(JSONObject: result) {
                    
                    if let result = self?.setResult(searchResult: searchResult) {
                        self?.loadable?.setResult(result: result)
                    }
                }
                break
                
            case .failure(let error):
                self?.loadable?.setResult(result: .error(error))
                break
            }
        }
    }
        
    private func setResult(searchResult: BooksBookSearchResults) -> BooksBookSearchStatus {
        return searchResult.items.isEmpty ? .noData : .normal(searchResult)
    }
}
