//
//  ViewController.swift
//  Login
//
//  Created by João Pedro Rosada Volponi on 12/01/24.
//

import UIKit

class ViewController: UIViewController {

    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "Login"
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.loginLabel)
        self.setUpConstraints()
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            self.loginLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.loginLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }
}

