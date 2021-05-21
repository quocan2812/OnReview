//
//  MainViewModal.swift
//  Swift_Review
//
//  Created by TyMac on 5/20/21.
//

import UIKit

class MainViewModel: NSObject {
    
    var listArticals : [Artical]
    
    func callDemoApi() {
        Network.shared().callApiDemo { (sucess, resultArtical) in
            
            if resultArtical.count > 0 {
                self.listArticals.append(contentsOf: resultArtical)
            }
            
            print("\(self.listArticals[0])")
        }
    }
    override init() {
        self.listArticals = []
    }

}
