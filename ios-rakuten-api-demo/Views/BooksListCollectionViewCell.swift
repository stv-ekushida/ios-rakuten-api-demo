//
//  BooksListCollectionViewCell.swift
//  ios-rakuten-api-demo
//
//  Created by Eiji Kushida on 2017/02/24.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit

final class BooksListCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    static var identifier: String {
        get {
            return String(describing: self)
        }
    }

    var bookItem: BookItem? {
        
        didSet {
            titleLabel.text = bookItem?.title
            authorLabel.text = bookItem?.author
        }
    }
}
