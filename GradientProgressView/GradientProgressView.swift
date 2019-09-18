//
//  GradientProgressView.swift
//  GradientProgressView
//
//  Created by Vaibhav Shrama on 18/09/19.
//  Copyright © 2019 vaibhav sharma. All rights reserved.
//

import UIKit

class GradientProgressView: UIView {
    
    private var progressView : UIProgressView  = {
        let progressView = UIProgressView(progressViewStyle: .bar)
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    var progress : Float{
        get {
            return progressView.progress
        }
        set{
            progressView.progress = newValue
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.clipsToBounds = true
        self.layer.masksToBounds = true
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.clipsToBounds = true
        self.layer.masksToBounds = true
    }
    //Progress lies 0 -> 1
    func setProgress(progress: Float, animated: Bool) {
        progressView.setProgress(progress, animated: animated)
    }
    var progressTintColor : UIColor? {
        get{
            return progressView.progressTintColor
        } set{
            progressView.progressTintColor = newValue
        }
    }
    var progressImage : UIImage?{
        get{
            return progressView.progressImage
        }set{
            progressView.progressImage = newValue
        }
    }
    var trackImage : UIImage?{
        get{
            return progressView.trackImage
        }set{
            progressView.trackImage = newValue
        }
    }
    var trackColor : UIColor?{
        get{
            return progressView.trackTintColor
        }set{
            progressView.trackTintColor = newValue
        }
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        self.addSubview(progressView)
        progressView.applyDefaultContraints(top: 0, bottom: 0, leading: 0, trailing: 0,toParentView: self)
        progressView.progress = progress
        progressView.clipsToBounds = true
        let gradientView = GradientView(frame: progressView.bounds)
        progressView.trackImage  = UIImage(view: gradientView).withHorizontallyFlippedOrientation()
        progressView.tintColor = UIColor.gray
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    func rotateView() {
        self.transform = CGAffineTransform(rotationAngle: -(.pi * 0.5))
    }
    
    func addCornerRadius(radius: CGFloat) {
        self.layer.cornerRadius = (radius)
        progressView.layer.cornerRadius = (radius)
        progressView.layer.sublayers![1].cornerRadius = (radius)
        progressView.subviews[1].clipsToBounds = true
    }
    override var intrinsicContentSize: CGSize{
        get {
            return CGSize(width: progressView.frame.size.width, height: progressView.frame.size.height)
        }
    }
}


