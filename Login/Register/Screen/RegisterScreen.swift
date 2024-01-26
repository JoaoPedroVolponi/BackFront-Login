//
//  RegisterScreen.swift
//  Login
//
//  Created by João Pedro Rosada Volponi on 25/01/24.
//

import UIKit

class RegisterScreen: UIView {
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "back"), for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround()
        self.configSuperView()
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configBackGround() {
        self.backgroundColor = UIColor.gray
    }
    
    private func configSuperView() {
        self.addSubview(backButton)
    }
    
    private func configConstraints() { 
        
    }
}
