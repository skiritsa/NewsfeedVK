//
//  GradientView.swift
//  VKNewsFeed
//
//  Created by Alex Kiritsa on 01.05.2020.
//  Copyright © 2020 Alex Kiritsa. All rights reserved.
//

import Foundation
import UIKit

class GradienView: UIView {
    
    @IBInspectable private var startColor: UIColor? {
        didSet {
            setupGradientColor()
        }
    }
    @IBInspectable private var endColor: UIColor? {
        didSet {
            setupGradientColor()
        }
    }
    
    private let gradientLayer = CAGradientLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupGradient()
    }
    
    override func layoutSubviews() {
        gradientLayer.frame = bounds
    }
    
    private func setupGradient() {
        self.layer.addSublayer(gradientLayer)
        setupGradientColor()
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
    }
    
    private func setupGradientColor() {
        if let startColor = startColor, let endColor = endColor {
            gradientLayer.colors = [startColor.cgColor, endColor.cgColor]
        }
    }
}
