//
//  CommonExtenion.swift
//  GradientProgressView
//
//  Created by Mohit Shrama on 18/09/19.
//  Copyright © 2019 vaibhav sharma. All rights reserved.
//
import UIKit

extension UIView {
    
    func applyDefaultContraints(top : CGFloat? = nil, bottom: CGFloat? = nil, leading : CGFloat? = nil ,trailing : CGFloat? = nil, height : CGFloat? = nil, width : CGFloat? = nil, centerX : CGFloat? = nil, centerY : CGFloat? = nil, toParentView: UIView)  {
        if let top = top {
            topAnchor.constraint(equalTo: toParentView.topAnchor, constant: top).isActive = true
        }
        if let bottomCont = bottom {
            bottomAnchor.constraint(equalTo: toParentView.bottomAnchor, constant: bottomCont).isActive = true
        }
        if let leadingConst = leading {
            leadingAnchor.constraint(equalTo: toParentView.leadingAnchor, constant: leadingConst).isActive = true
        }
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: toParentView.trailingAnchor, constant: trailing).isActive = true
        }
        if let centerXCont = centerX {
            centerXAnchor.constraint(equalTo: toParentView.centerXAnchor, constant: centerXCont).isActive = true
        }
        if let widthCont = width {
            widthAnchor.constraint(equalToConstant: widthCont).isActive = true
        }
        if let centerYCont = centerY {
            centerYAnchor.constraint(equalTo: toParentView.centerYAnchor, constant: centerYCont).isActive = true
        }
        if let heightConst = height {
            heightAnchor.constraint(equalToConstant: heightConst).isActive = true
        }
    }
}

extension UIImage {
    convenience init(view: UIView) {
        UIGraphicsBeginImageContext(view.frame.size)
        view.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image  = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.init(cgImage : (image?.cgImage)!)
        
    }
}
