//
//  ArticleServiceAPI.swift
//  FileManagerHomework
//
//  Created by minea on 12/16/16.
//  Copyright © 2016 minea. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
class ArticleServiceAPI {
    
    var articleListPresenter:ArticleViewPresenterProtocol!
    // create reference
    var articles = [Articles]()
   
    
    // Mark fetchData(page: Int, limit: Int)
    func fetchData(page: Int, limit: Int){
        
        let url = URL(string: "\(ArticleConstantAPI.PublicConstants.ARTICLE)")
        var urlRequest = URLRequest(url: url!)
        urlRequest.setValue("\(ArticleConstantAPI.PublicConstants.headers)", forHTTPHeaderField: "Authorization")
        urlRequest.httpMethod = HTTPMethod.get.rawValue
        
        Alamofire.request(urlRequest).responseJSON { (response) -> Void in
            if((response.result.value) != nil) {
                let swiftyJsonVar = JSON(response.result.value!)
                if let arrayArticle = swiftyJsonVar["DATA"].arrayObject {
                    let jsonData = arrayArticle as [AnyObject]
                    print("testing\(jsonData)")
                    
                    for responseData in jsonData {
                        self.articles.append(Articles(JSON: responseData as! [String:Any])!)
                    }
                   // notify to presenter
                    self.articleListPresenter?.responseArticle(self.articles)
                }
                
                
            }
        }
    }
        //
//        let getTask = URLSession.shared.dataTask(with: request){
//            (data, response, error)in
//            if error != nil {
//                print("error")
//            }else {
//                if let urlContent = data {
//                    do {
//                        let jsonResult = try
//                        JSONSerialization.jsonObject(with: urlContent, options:JSONSerialization.ReadingOptions.mutableContainers) as! [String:Any]
//                        
//                        let jsonData = jsonResult["DATA"] as! [AnyObject]
//                        print("My JSON Data==== \(jsonData)")
//                    }
//                    catch{
//                        print("JSON Processing Fail")
//                    }
//                }
//            }
//        }
//        getTask.resume()
//        //
    }
    

