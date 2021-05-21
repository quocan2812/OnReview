//
//  ViewController.swift
//  Swift_Review
//
//  Created by TyMac on 5/20/21.
//

import UIKit

class ViewController: UIViewController {
    
    let mainViewModel = MainViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        mainViewModel.callDemoApi()
        
        
    }

    @IBAction func onTouchButton(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DelegateClosureViewControllerId") as! DelegateClosureViewController
        self.present(vc, animated: true)
        
        vc.delegateClosureModel.didChangeBackgroundColorClosure = { (color : UIColor) -> () in
            self.view.backgroundColor = color
        }
        
        
          
    }
    
}


