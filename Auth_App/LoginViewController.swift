//
//  ViewController.swift
//  Auth_App
//
//  Created by Eldar Gaiypov on 18/2/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    lazy var loginView = LoginView()
    //    lazy var loginViewModel = AuthViewModel()
    
    override func loadView() {
        view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        addTargets()
        addDelegates()
    }
    
    func addDelegates() {
        
    }
    
    func addTargets() {
        
    }

}

