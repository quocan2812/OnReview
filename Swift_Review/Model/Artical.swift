//
//  Artical.swift
//  Swift_Review
//
//  Created by TyMac on 5/20/21.
//

import Foundation

let defaultText: String = "N/A"

struct Artical {
    
    var sourceId : String = defaultText
    var sourceName: String  = defaultText
    var author: String = defaultText
    var title: String = defaultText
    var description: String = defaultText
    var url: String = defaultText
    var urlToImage: String = defaultText
    var publishedAt: String = defaultText
    var content: String = defaultText
    
    var publishDate : Date? {
        return Date()
    }
    
    var imageUrl : URL? {
        return URL(string: urlToImage)
    }
    
    init(json : JsonDictionary) {
       
        if let source = json["source"] as? JsonDictionary {
            if let obj = source["id"] {self.sourceId = "\(obj)"}
            if let obj = source["name"] {self.sourceName = "\(obj)"}
        }
        if let obj = json["author"] {self.author = "\(obj)"}
        
        if let obj = json["title"] {self.title = "\(obj)"}
        
        if let obj = json["description"] {self.description = "\(obj)"}
        
        if let obj = json["url"] {self.url = "\(obj)"}
        
        if let obj = json["urlToImage"] {self.urlToImage = "\(obj)"}
        
        if let obj = json["publishedAt"] {self.publishedAt = "\(obj)"}
        
        if let obj = json["content"] {self.content = "\(obj)"}
    }
    
    static func getModel(json : [JsonDictionary]) -> [Artical] {
        return json.map {
            Artical(json: $0)
        }
    }
    
    
    
    
    
}
