//
//  DelegateClosureVM.swift
//  Swift_Review
//
//  Created by TyMac on 5/21/21.
//

import Foundation
import UIKit

struct DelegateClosureModel {
    
    
    
    func genRandomColor() -> UIColor{
      
        let color = UIColor(red: CGFloat.random(in: 0..<1), green: CGFloat.random(in: 0..<1), blue: CGFloat.random(in: 0..<1), alpha: 1.0)
        
        return color
    }
    
}
