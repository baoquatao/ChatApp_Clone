//
//  SignUpViewController.swift
//  test
//
//  Created by Viettelimex on 05/04/2022.
//

import UIKit




class SignUpViewController: UIViewController {
    
    
    let checkbox = ButtonCheck(frame: CGRect(x: 30, y: 500, width: 20, height: 20))
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        view.addSubview(checkbox)
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(didTapCheckBox))
        
        checkbox.addGestureRecognizer(gesture)
    }
    
    @objc func didTapCheckBox(){
        checkbox.toggle()
        
        
    }
}

