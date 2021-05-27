//
//  Home.swift
//  ByUser
//
//  Created by MacBook Pro on 21/5/21.
//

import UIKit

class Home: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func logOutButton(_ sender: Any) {
        
        let vc3 = storyboard?.instantiateViewController(identifier: "SignIn") as! SignIn
        navigationController?.pushViewController(vc3, animated: true)
    }
    

}
