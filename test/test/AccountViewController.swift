//
//  AccountViewController.swift
//  test
//
//  Created by Viettelimex on 12/04/2022.
//

import UIKit

class AccountViewController: UIViewController {
    

    @IBOutlet weak var SwitchMode: UISwitch!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    // Button
    @IBAction func SwitchMode(_ sender: UISwitch!){
            
        if sender.isOn {
            view.backgroundColor = .black
        }
        
        else {
            view.backgroundColor = .white
        }
        
    }
    //
}
