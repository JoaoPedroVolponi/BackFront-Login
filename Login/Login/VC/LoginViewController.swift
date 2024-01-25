//
//  ViewController.swift
//  Login
//
//  Created by João Pedro Rosada Volponi on 12/01/24.
//

import UIKit

class ViewController: UIViewController {
    
    var loginScreen: LoginScreen?
    
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginScreen?.delegate(delegate: self)
        self.loginScreen?.configTextFieldDelegate(delegate: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
}

extension ViewController: LoginScreenProtocol {
    func actionLoginButton() {
        print("Login Button")
    }
    
    func actionRegisterButton() {
        print("Register Button")
        let vc: RegisterVC = RegisterVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField:UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}

