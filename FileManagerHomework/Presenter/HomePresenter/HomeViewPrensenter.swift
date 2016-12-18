//
//  HomeViewPrensenter.swift
//  FileManagerHomework
//
//  Created by minea on 12/16/16.
//  Copyright © 2016 minea. All rights reserved.
//

import Foundation
protocol HomeViewDelegatePresenter {
    func responseData(data:[Articles] )
}

class HomeViewPresenter: HomeViewDelegatePresenter {
    
    var homeTableViewService: ArticleServiceAPI!
    
//    func articleLoad(viewInterface: HomeTableViewInterface){
//        homeTableViewInterface = viewInterface
//        homeTableViewService = ArticleServiceAPI()
//        
//        // set Delegate
//        homeTableViewService.homeViewDelegatePresenter = self
//    }
//    func fetchData(page: Int, limit: Int){
//        homeTableViewService?.fetchData(page: page, limit: limit)
//    }
    func responseData(data: [Articles]) {
       
    }
}


