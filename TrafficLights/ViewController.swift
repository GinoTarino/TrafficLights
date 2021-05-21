//
//  ViewController.swift
//  TrafficLights
//
//  Created by Павел on 18.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var changeColorButton: UIButton!
    
    enum CurrentColor {
        case red, yellow, green
    }
    
    var currentColor: CurrentColor = .red
    let lightIsOn: CGFloat = 1
    let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = redLight.frame.width / 2
        greenLight.layer.cornerRadius = redLight.frame.width / 2
        
        
        changeColorButton.layer.cornerRadius = 15
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
    }

    @IBAction func tappedChangeColor() {
    
        changeColorButton.setTitle("Next", for: .normal)
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        
        switch currentColor {
        case .red:
            redLight.alpha = lightIsOn
            currentColor = .yellow
        case .yellow:
            yellowLight.alpha = lightIsOn
            currentColor = .green
        case .green:
            greenLight.alpha = lightIsOn
            currentColor = .red
        }
    }
}

