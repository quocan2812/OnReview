//
//  DelegateClosureViewController.swift
//  Swift_Review
//
//  Created by TyMac on 5/21/21.
//

import UIKit

class DelegateClosureViewController: UIViewController {
    
    var delegateClosureModel : DelegateClosureModel?
    
    var didChangeBackgroundColorClosure :(UIColor) -> () = {_ in }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegateClosureModel = DelegateClosureModel()
        
        
        
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func onTouchButton(_ sender: UIButton) {
        
        let color = self.delegateClosureModel?.genRandomColor()
        
      //  self.view.backgroundColor = color
        
        self.didChangeBackgroundColorClosure(color!)
        
        
        
    }
}
