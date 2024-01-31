//
//  RegisterVC.swift
//  Login
//
//  Created by João Pedro Rosada Volponi on 24/01/24.
//

import UIKit

class RegisterVC: UIViewController {
    
    var registerScreen: RegisterScreen?
    
    override func loadView() {
        self.registerScreen = RegisterScreen()
        self.view = self.registerScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerScreen?.configTextFieldDelegate(delegate: self)
        self.registerScreen?.delegate(delegate: self)
    }
}

extension RegisterVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension RegisterVC: RegisterScreenProtocol {
    func actionBackButton(){
        print("Back Button!")
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionRegisterButton(){
        print("Register Button!")
    }
}
