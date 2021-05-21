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


}

