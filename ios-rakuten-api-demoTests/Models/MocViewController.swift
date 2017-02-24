//
//  MocViewController.swift
//  ios-rakuten-api-demo
//
//  Created by Eiji Kushida on 2017/02/24.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import XCTest
import UIKit
@testable import ios_rakuten_api_demo

final class MocViewController: NSObject {
    
    var controller: UIViewController?
    
    func create(identifier: String) -> UIViewController{
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        controller = storyboard.instantiateViewController(withIdentifier: identifier)        
        _ = controller?.view
        return controller!
    }
}
