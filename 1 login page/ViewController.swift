//
//  ViewController.swift
//  1 login page
//
//  Created by Керемет  on 20/11/22.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate, UITextFieldDelegate {

    
    @IBOutlet weak var TextFieldName: UITextField!
    
    @IBOutlet weak var TextFieldPassword: UITextField!
    

    @IBOutlet weak var TextResult: UILabel!
    
    

    var name = ""
    var password = ""
    
    @IBAction func buttonSignIn(_ sender: Any) {
    
    
        name = TextFieldName.text!
        password = TextFieldPassword.text!
        
        if name.count >= 3{
            if password.count >= 3{
                TextResult.textColor = .green
                TextResult.text = "Success"
            }else{
                
                TextResult.text = "Not correct data"
                TextResult.textColor = .red
                
            }
            
        }
        func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        TextFieldName.delegate = self
        TextFieldPassword.delegate = self
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.TextFieldName.resignFirstResponder()
        self.TextFieldPassword.resignFirstResponder()
        return true
    }
    
    
    
   

   
    
    
}

}
