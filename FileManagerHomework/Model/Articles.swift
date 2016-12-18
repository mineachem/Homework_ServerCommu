//
//  Articles.swift
//  FileManagerHomework
//
//  Created by minea on 12/16/16.
//  Copyright © 2016 minea. All rights reserved.
//

import Foundation
import ObjectMapper

class Articles: Mappable {
    var title: String?
    var description: String?
    var createDate: String?
    var image: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        title <- map["TITLE"]
        createDate <- map["CREATED_DATE"]
        description <- map["DESCRIPTION"]
        image <- map["IMAGE"]
    }

    }


