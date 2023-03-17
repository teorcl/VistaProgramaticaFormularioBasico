//
//  FormularioViewController.swift
//  VistaProgramaticaFormularioBasico
//
//  Created by Teodoro Calle Lara on 16/03/23.
//

import UIKit

class FormularioViewController: UIViewController {
    
    private let loginContentView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.layer.cornerRadius = 12.0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let nameTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.placeholder = "Username"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let pwdTextField: UITextField = {
        let pwdField = UITextField()
        pwdField.backgroundColor = .white
        pwdField.placeholder = "Password"
        pwdField.borderStyle = .roundedRect
        pwdField.translatesAutoresizingMaskIntoConstraints = false
        return pwdField
    }()
    
    private let btnLogin: UIButton = {
        let btnLogin = UIButton()
        btnLogin.backgroundColor = .blue
        btnLogin.setTitle("Login", for: .normal)
        btnLogin.tintColor = .white
        btnLogin.layer.cornerRadius = 6
        btnLogin.clipsToBounds = true
        btnLogin.translatesAutoresizingMaskIntoConstraints = false
        return btnLogin
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .tintColor
        setLoginContent()
        view.addSubview(loginContentView)
        setUpAutoLayout()
    }

    //=============================================================
    
    func setLoginContent() {
        loginContentView.addSubview(nameTextField)
        loginContentView.addSubview(pwdTextField)
        loginContentView.addSubview(btnLogin)
    }
    
    func setUpAutoLayout(){
        loginContentView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20.0).isActive = true
        loginContentView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20.0).isActive = true
        loginContentView.heightAnchor.constraint(equalToConstant: view.frame.height/3).isActive = true
        loginContentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        // == Restricciones para los elementos dentro del content
        nameTextField.topAnchor.constraint(equalTo: loginContentView.topAnchor, constant: 20.0).isActive = true
        nameTextField.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant: 16.0).isActive = true
        nameTextField.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant: -16.0).isActive = true
        
        pwdTextField.bottomAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 50.0).isActive = true
        pwdTextField.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant: 16.0).isActive = true
        pwdTextField.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant: -16.0).isActive = true
        
        btnLogin.bottomAnchor.constraint(equalTo: pwdTextField.bottomAnchor,constant: 50).isActive = true
        btnLogin.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant: 16.0).isActive = true
        btnLogin.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant: -16.0).isActive = true
        
    }

}

