//
//  WelcomeView.swift
//  Auth_App
//
//  Created by Eldar Gaiypov on 18/2/24.
//

import Foundation
import SnapKit

class WelcomeView: UIView {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = UIFont.boldSystemFont(ofSize: 45)
        label.textColor = .black
        label.textAlignment = .center
        label.text = "Welcome!"
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    // MARK: - INITS
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        setupViews()
        setupConstraints()
        setupAlert()
    }
    
    func setupViews() {
        backgroundColor = .white
        
    }
    
    func setupConstraints() {
        
        // containerView
        containerView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
    }
    
    func setupAlert() {
        alertView.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().inset(15)
            make.right.equalToSuperview().inset(15)
            make.height.equalTo(250)
        }
    }

    func showAlert() {
        containerView.backgroundColor = .darkGray
        containerView.alpha = 0.5
        alertView.isHidden = false
        self.bringSubviewToFront(alertView)
    }
    
    func hideAlert() {
        alertView.isHidden = true
        containerView.backgroundColor = .white
        containerView.alpha = 1.0
    }
    
}
