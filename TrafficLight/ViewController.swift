//
//  ViewController.swift
//  TrafficLight
//
//  Created by Yaroslav Malygin on 24.09.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var switchLightButton: UIButton!
    
    private let cornerRadius: CGFloat = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        redLightView.layer.cornerRadius = cornerRadius
        yellowLightView.layer.cornerRadius = cornerRadius
        greenLightView.layer.cornerRadius = cornerRadius
        switchLightButton.layer.cornerRadius = 10
    }
    
    @IBAction func switchLightButtonDidTapped(_ sender: UIButton) {
        if redLightView.alpha != 1 && yellowLightView.alpha != 1 && greenLightView.alpha != 1 {
            redLightView.alpha = 1
            sender.setTitle("NEXT", for: .normal)
        } else if redLightView.alpha == 1 {
            yellowLightView.alpha = 1
            redLightView.alpha = 0.3
        } else if yellowLightView.alpha == 1{
            greenLightView.alpha = 1
            yellowLightView.alpha = 0.3
        } else if greenLightView.alpha == 1 {
            redLightView.alpha = 1
            greenLightView.alpha = 0.3
        }
    }
}

