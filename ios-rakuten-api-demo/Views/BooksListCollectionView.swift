//
//  BooksListCollectionView.swift
//  ios-rakuten-api-demo
//
//  Created by Eiji Kushida on 2017/02/24.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit

final class BooksListCollectionView:NSObject, UICollectionViewDataSource {
    
    var books: [BookItem] = []
    
    func add(books: [BookItem]) {
        self.books = books
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return books.count
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BooksListCollectionViewCell.identifier,for: indexPath) as! BooksListCollectionViewCell
        return cell
    }
}
