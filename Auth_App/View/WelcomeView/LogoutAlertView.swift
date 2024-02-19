//
//  LogoutAlertView.swift
//  Auth_App
//
//  Created by Eldar Gaiypov on 19/2/24.
//

import UIKit
import SnapKit

class LogoutAlertView: UIView {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.text = "Do you want to log out?"
        label.textAlignment = .center
        label.numberOfLines = 1
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}

