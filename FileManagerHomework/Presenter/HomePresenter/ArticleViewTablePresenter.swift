//
//  ArticleViewTablePresenter.swift
//  FileManagerHomework
//
//  Created by minea on 12/18/16.
//  Copyright © 2016 minea. All rights reserved.
//

import Foundation
class ArticleViewTablePresenter {
    
    var articleView:ArticleViewProtocol!
    private var articleService: ArticleServiceAPI!
    
    // LoadView
    func attachView(view: ArticleViewProtocol){
        print("Presenter loadView")
        articleView = view
        articleService = ArticleServiceAPI() // Mark object
        articleService.articleListPresenter = self 
        
    }
    
    func getArticles(page: Int, limit:Int){
        print("present getArticle")
        
        articleService.fetchData(page: page, limit: limit)
    }
    
}

extension ArticleViewTablePresenter: ArticleViewPresenterProtocol{
    
    func responseArticle(_ article: [Articles]) {
        print("Present response to view")
        articleView.setArticle(article)
    }
}
