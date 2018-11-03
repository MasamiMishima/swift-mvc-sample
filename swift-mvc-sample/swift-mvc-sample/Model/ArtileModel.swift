//
//  ArtileModel.swift
//  swift-mvc-sample
//
//  Created by 三島 正三 on 2018/11/01.
//  Copyright © 2018 三島 正三. All rights reserved.
//

import Foundation
import UIKit
// MARK: - Data model
protocol DataModel {
    var id: Int {get}
}

struct ArticlesDataModel {
    let article:  [ArticleDataModel]
}

struct ArticleDataModel: DataModel {
    let id: Int
    let title: String
    let image: UIImage?
}

class ArticleData {
    var articleModel: ArticlesDataModel!
    
    init() {
        articleModel = ArticlesDataModel(
            article: [ArticleDataModel(id: 1, title: "test", image: nil)]
        )
    }
}
