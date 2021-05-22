//
//  MainViewModal.swift
//  Swift_Review
//
//  Created by TyMac on 5/20/21.
//comment source by acc

import UIKit

class MainViewModel: NSObject {
    
    var listArticals : [Artical]
    
    var numberOfPlayGirl : Int = 0 {
        
        willSet {
            if newValue < 1000 {
                showAlertWithMessageAndTitle("Oh master quốc chơi nhiều hơn bạn nghĩ","Sai rồi bạn tôi!!")
            }
        }
        
        didSet {
            if numberOfPlayGirl >= 1000 {
                showAlertWithMessageAndTitle("Oh year, master Quốc thật sung sức","Well done!!")
                self.disSetValuePlayGirl(numberOfPlayGirl)
            }
            
        }
    }
    
    var showAlertWithMessageAndTitle :(String, String) -> () = { _,_  in }
    
    var disSetValuePlayGirl :(Int) -> () = {_ in }
    
    
    override init() {
        self.listArticals = []
    }
    
    func callDemoApi() {
        Network.shared().callApiDemo { (sucess, resultArtical) in
            
            if resultArtical.count > 0 {
                self.listArticals.append(contentsOf: resultArtical)
            }
            
            print("\(self.listArticals[0])")
        }
    }
    
  

}
