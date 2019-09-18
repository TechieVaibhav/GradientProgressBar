//
//  GradientView.swift
//  GradientProgressView
//
//  Created by Vaibhav Shrama on 18/09/19.
//  Copyright © 2019 vaibhav sharma. All rights reserved.
//

import UIKit

class GradientView: UIView {

    private var gradientlayer = CAGradientLayer()
    private var vertical: Bool = false
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        super.draw(rect)
        gradientlayer.frame = self.bounds
        if gradientlayer.superlayer == nil {
            gradientlayer.startPoint = CGPoint( x: 0, y: 0)
            gradientlayer.endPoint = vertical ? CGPoint(x: 0, y: 1): CGPoint(x: 1, y: 0)
            gradientlayer.colors = [UIColor.red.cgColor, UIColor.orange.cgColor]
            gradientlayer.locations = [0.5,0.1]
            self.layer.insertSublayer(gradientlayer, at: 0)
        }
    }

}
