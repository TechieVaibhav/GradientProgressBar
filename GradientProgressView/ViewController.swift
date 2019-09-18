//
//  ViewController.swift
//  GradientProgressView
//
//  Created by Vaibhav Shrama on 18/09/19.
//  Copyright © 2019 vaibhav sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var gradientProgressbar: GradientProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       gradientProgressbar.addCornerRadius(radius: gradientProgressbar.frame.size.height/2)
    }

    @IBAction func sliderChanged(_ sender: Any) {
        UIView.animate(withDuration: 0.2) {
            self.gradientProgressbar.progress = self.slider.value
        }
    }
}

