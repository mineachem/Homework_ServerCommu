//
//  ArticleConstantAPI.swift
//  FileManagerHomework
//
//  Created by minea on 12/16/16.
//  Copyright © 2016 minea. All rights reserved.
//

import Foundation
class ArticleConstantAPI{
    struct PublicConstants {
        // Constant API
        static let URL_ARTICLE = "http://120.136.24.174:1301/"
        static let ARTICLE = URL_ARTICLE + "/v1/api/articles"
        static let UPLOAD_IMAGE = URL_ARTICLE + "/v1/api/uploadfile/single"
        
        
//        static let headers = [
//                    "Authorization": "Basic QU1TQVBJQURNSU46QU1TQVBJUEBTU1dPUkQ=",
//                    "Accept": "application/json; charset=utf-8"
//                ]
//        
        static let headers = "Basic QU1TQVBJQURNSU46QU1TQVBJUEBTU1dPUkQ="
        static let contentType = "application/json; charset=utf-8"
    }

}
