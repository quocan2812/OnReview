//
//  Network.swift
//  Swift_Review
//
//  Created by TyMac on 5/20/21.
//

import UIKit
import Alamofire


typealias JsonDictionary = [String:Any]

class Network: NSObject {
    
    static let defaultNetwork = Network()
    
    static func shared() -> Network {
        return defaultNetwork
    }
    
    let apiDemo = "https://newsapi.org/v2/everything?apiKey=105c922b69f045d894fe423b86fbe660&q=abc"
    
    func callApiDemo(callBack : @escaping(_ success : Bool,_ list : [Artical]) ->()) -> () {
        
        getSimpleApi(urlStr: apiDemo) { (isSuccess, response) in
            if isSuccess {
                
                let data : JsonDictionary = response.value as! JsonDictionary
                
                
                var jsonDatas : [JsonDictionary] = []
                
                for item in data["articles"] as! [JsonDictionary] {
                    jsonDatas.append(item)
                }
                let articals: [Artical] = Artical.getModel(json: jsonDatas)
                
                callBack(true,articals)
                
            }else {
                callBack(false, [])
            }
        }
        
    }
    
    func getSimpleApi(urlStr: String, callBack :@escaping (_ success: Bool , _ response : AFDataResponse<Any>) ->()) -> () {
        
        AF.request(urlStr, method: .get).responseJSON { (responseApi) in
            
            switch responseApi.result {
            case .success(_):
                
                callBack(true,responseApi)
                
            
            case .failure(_):
                callBack(false,responseApi)
            }
            
        }.resume()
        
    }
    
    

}
