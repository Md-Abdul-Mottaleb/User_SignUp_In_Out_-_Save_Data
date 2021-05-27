//
//  SignUp.swift
//  ByUser
//
//  Created by MacBook Pro on 21/5/21.
//

import UIKit

var emailgloalVariablefromSignUP = ""
var passwordgloalVariablefromSignUP = ""

var defaultt1 = UserDefaults.standard
var defaultt2 = UserDefaults.standard

class SignUp: UIViewController {
    
    @IBOutlet weak var emailtextfieldSignUp: UITextField!
    
    @IBOutlet weak var passwordtextfieldSignUp: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
        
        

    @IBAction func SignUpButton(_ sender: Any) {
        

        
        if (emailtextfieldSignUp.text?.isEmpty)! || (passwordtextfieldSignUp.text?.isEmpty)! {
            Alert2()
          return
        }else{
            emailgloalVariablefromSignUP = emailtextfieldSignUp.text ?? "a"
            passwordgloalVariablefromSignUP = passwordtextfieldSignUp.text ?? "b"
 
            defaultt1.set(emailgloalVariablefromSignUP, forKey: "value1")
            defaultt2.set(passwordgloalVariablefromSignUP, forKey: "value2")
            
            let vc5 = storyboard?.instantiateViewController(identifier: "SignIn") as! SignIn
            navigationController?.pushViewController(vc5, animated: true)
        }
        
    
       
    }
    
    func Alert2(){
        
        let alert = UIAlertController(title: "Oops", message: "wrong trying", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Try Again", style: UIAlertAction.Style.cancel, handler: {_ in
            
        }))
        self.present(alert, animated: true, completion: nil)
        
        
    }
    

}
