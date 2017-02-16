//
//  APIClient.swift
//  ios-rakuten-api-demo
//
//  Created by Kushida　Eiji on 2017/02/17.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import Alamofire

enum Result {
    case Success(Any)
    case Failure(Error)
}

final class APIClient {
    
    func request(router : Router,
                 completionHandler: @escaping (Result) -> () = {_ in}) {
        
        Alamofire.request(router).responseJSON  { response in
            switch response.result {
            case .success(let value):
                completionHandler(Result.Success(value))
                
            case .failure:
                
                if let error = response.result.error {
                    completionHandler(Result.Failure(error))
                } else {
                    fatalError("エラーのインスタンスがnil")
                }
            }
        }
    }
}
