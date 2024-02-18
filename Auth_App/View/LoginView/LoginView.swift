//
//  LoginView.swift
//  Auth_App
//
//  Created by Eldar Gaiypov on 18/2/24.
//

import Foundation
import SnapKit

class LoginView: UIView {
    lazy var alertLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "Wrong username or password, try again!"
        label.textColor = .red
        label.textAlignment = .center
        label.numberOfLines = 1
        label.layer.borderColor = UIColor.red.cgColor
        label.layer.borderWidth = 1
        label.layer.cornerRadius = 12
        return label
    }()
    
    lazy var globeImage: UIImageView = {
        let image = UIImage(named: "glob")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy titleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textColor = .black
        label.textAlignment = .center
        label.text = "Welcome back!"
        return label
    }()
    
    lazy var usernameTextField: UITextField = {
        let field = UITextField()
        field.placeholder = "Enter username"
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.backgroundColor = .secondarySystemBackground
        field.layer.cornerRadius = 8
        field.layer.borderWidth = 0
        field.layer.borderColor = UIColor.label.cgColor
        field.clearButtonMode = .always
        let leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: field.frame.height))
        field.leftView = leftView
        field.leftViewMode = .always
        field.rightViewMode = .always
        return field
    }()
    
    lazy var passwordTextField: UITextField = {
        let field = UITextField()
        field.placeholder = "Enter password"
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.backgroundColor = .secondarySystemBackground
        field.layer.cornerRadius = 8
        field.layer.borderWidth = 0
        field.layer.borderColor = UIColor.label.cgColor
        field.rightViewMode = .whileEditing
        field.rightView = createPasswordVisibilityButton()
        let leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: field.frame.height))
        field.leftView = leftView
        field.leftViewMode = .always
        field.rightViewMode = .always
        return field
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Log in", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 12
        return button
    }()
    
    lazy var createButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("I have no account yet", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.backgroundColor = .clear
        button.setTitleColor(.black, for: .normal)
        return button
    }()

}

// Mark: - Inits
override init(frame: CGRect) {
    super.init(frame: frame)
}

required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
}

override func layoutSubviews() {
    backgroundColor = .white
    setupViews()
    setupConstraints()
}

func setupViews() {
    addSubview(alertLabel)
    alertLabel.isHidden = true
    addSubview(globeImage)
    addSubview(titleLabel)
    addSubview(usernameTextField)
    addSubview(passwordTextField)
    addSubview(loginButton)
    addSubview(createButton)
}

func setupConstraints() {
    alertLabel.snp.makeConstraints { make in
        make.centerX.equalToSuperview()
        make.top.equalToSuperview().inset(80)
        make.width.equalTo(340)
        make.height.equalTo(50)
    }
    
    globeImage.snp.makeConstraints{ make in
        make.centerX.equalToSuperview()
        make.top.equalToSuperview().inset(120)
        make.width.height.equalTo(220)
    }
    
    titleLabel.snp.makeConstraints{ make in
        make.centerX.equalToSuperview()
        make.top.equalTo(globeImage.snp.bottom).offset(40)
        make.width.equalTo(340)
        make.height.equalTo(40)
    }
    
    usernameTextField.snp.makeConstraints{ make in
        make.centerX.equalToSuperview()
        make.top.equalTo(titleLabel.snp.bottom).offset(40)
        make.width.equalTo(340)
        make.height.equalTo(45)
    }
    
    passwordTextField.snp.makeConstraints{ make in
        make.centerX.equalToSuperview()
        make.top.equalTo(usernameTextField.snp.bottom).offset(20)
        make.width.equalTo(340)
        make.height.equalTo(45)
    }
    
    loginButton.snp.makeConstraints{ make in
        make.centerX.equalToSuperview()
        make.top.equalTo(passwordTextField.snp.bottom).offset(30)
        make.width.equalTo(340)
        make.height.equalTo(45)
    }
    
    createButton.snp.makeConstraints{ make in
        make.centerX.equalToSuperview()
        make.top.equalTo(loginButton.snp.bottom).offset(25)
        make.width.equalTo(340)
        make.height.equalTo(45)
    }
}
