//
//  ViewController.swift
//  Swift_Review
//
//  Created by TyMac on 5/20/21.
//

import UIKit

class ViewController: UIViewController {
    
    let mainViewModel = MainViewModel()
    
    @IBOutlet weak var inputTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setup some closure model
        
        self.mainViewModel.showAlertWithMessageAndTitle = { (message : String, title : String) -> () in
            
            self.showAlert(title: message, message: title)
        }
        
        self.mainViewModel.disSetValuePlayGirl = {(numberPlayGirl : Int) -> () in
            self.inputTextField.text = "\(numberPlayGirl)"
        }

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
    
    
    @IBAction func onTouchConfirmButton(_ sender: UIButton) {
        
        guard let numberGirl = inputTextField.text else {
            return
        }
        
        self.mainViewModel.numberOfPlayGirl = Int(numberGirl) ?? 0
        
        
    }
    
    func showAlert(title: String, message : String){
            
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            alert.addAction(okAction)
            
            present(alert, animated: true, completion: nil)
            
        }
    
}


