//
//  SignIn.swift
//  ByUser
//
//  Created by MacBook Pro on 21/5/21.
//

import UIKit

class SignIn: UIViewController {
    

    
    @IBOutlet weak var emailtextfieldsignIn: UITextField!
    
    @IBOutlet weak var passwordtextfieldsignIn: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        emailgloalVariablefromSignUP = defaultt1.string(forKey: "value1") ?? "a"
        passwordgloalVariablefromSignUP = defaultt2.string(forKey: "value2") ?? "b"
        
        gotoHomeScreen()
        
    }
    
    
    @IBAction func SigninButton(_ sender: Any) {
        if (emailtextfieldsignIn.text?.isEmpty)! || (passwordtextfieldsignIn.text?.isEmpty)! {
            
            Alert()
          return
        }
        
        if emailtextfieldsignIn.text == emailgloalVariablefromSignUP && passwordtextfieldsignIn.text == passwordgloalVariablefromSignUP {

            gotoHomeScreen()
        }else{
            Alert()
        }
                
    }
    
    @IBAction func SignUpButtonfromSignIn(_ sender: Any) {
        
        
        let  vc2 = storyboard?.instantiateViewController(identifier: "SignUp") as! SignUp
        navigationController?.pushViewController(vc2, animated: true)
    }
    
 
    func gotoHomeScreen() {
    
        let  vc1 = storyboard?.instantiateViewController(identifier: "Home") as! Home
        navigationController?.pushViewController(vc1, animated: true)
            
         
    }
    
    func Alert(){
        let alart = UIAlertController(title: "Oops!", message: "Anything is Wrong", preferredStyle: .alert)
        alart.addAction(UIAlertAction(title: "Try Again", style: UIAlertAction.Style.cancel, handler: {_ in
            
        }))
        
        self.present(alart, animated: true, completion: nil)
        
    }
    
}
