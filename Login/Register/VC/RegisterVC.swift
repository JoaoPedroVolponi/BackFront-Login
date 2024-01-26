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
    }
}
