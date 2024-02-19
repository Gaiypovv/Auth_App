//
//  RegistrationView.swift
//  Auth_App
//
//  Created by Eldar Gaiypov on 19/2/24.
//

import UIKit
import SnapKit

class RegistrationView {
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .white
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 1.0
        scrollView.bounces = true
        scrollView.isDirectionalLockEnabled = false
        scrollView.contentInsetAdjustmentBehavior = .always
        scrollView.isScrollEnabled = true
        scrollView.isUserInteractionEnabled = true
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
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
        
    }
    
    func setupConstraints() {
        
    }
    
    
}
