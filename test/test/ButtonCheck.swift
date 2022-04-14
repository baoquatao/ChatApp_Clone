//
//  ButtonCheck.swift
//  test
//
//  Created by Viettelimex on 06/04/2022.
//

import UIKit

final class ButtonCheck: UIView {

    private var isCheck = false
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        layer.cornerRadius = frame.size.width / 2.0
        layer.borderColor = UIColor.secondaryLabel.cgColor
        layer.borderWidth = 0.5
        backgroundColor = .systemBackground
        
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func toggle(){
        self.isCheck = !isCheck
        
        
        if self.isCheck{
            backgroundColor = .systemBlue
        }
        else{
            backgroundColor = .systemBackground
        }
    }
}
