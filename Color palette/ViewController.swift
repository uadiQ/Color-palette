//
//  ViewController.swift
//  Color palette
//
//  Created by Vadim Shoshin on 12.10.2017.
//  Copyright © 2017 Vadim Shoshin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var palette: UIView!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    @IBOutlet weak var redSliderValue: UISlider!
    @IBOutlet weak var greenSliderValue: UISlider!
    @IBOutlet weak var blueSliderValue: UISlider!
    
//    palette.backgroundColor = UIColor(red: CGFloat(redColor / 250), green: CGFloat(greenColor) / 250, blue: CGFloat(blueColor / 250), alpha: CGFloat(alpha))
    
    var redColor = 0
    var greenColor = 0
    var blueColor = 0
    var alpha = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greenLabel.text = "\(greenColor)"
        blueLabel.text = "\(blueColor)"
        redLabel.text = "\(redColor)"
        alphaLabel.text = "\(alpha)"
        palette.backgroundColor = UIColor(red: CGFloat(redColor / 250), green: CGFloat(greenColor) / 250, blue: CGFloat(blueColor / 250), alpha: CGFloat(alpha) / 100)
    }
    
    @IBAction func minButtonPressed(_ sender: Any) {
        redColor = 0
        greenColor = 0
        blueColor = 0
        redSliderValue.value = 0
        greenSliderValue.value = 0
        blueSliderValue.value = 0
        greenLabel.text = "\(greenColor)"
        blueLabel.text = "\(blueColor)"
        redLabel.text = "\(redColor)"
        palette.backgroundColor = UIColor(red: CGFloat(redColor / 250), green: CGFloat(greenColor) / 250, blue: CGFloat(blueColor / 250), alpha: CGFloat(alpha) / 100)
        
    }
    
    @IBAction func mediumButtonPressed(_ sender: UIButton) {
        redColor = 175
        greenColor = 175
        blueColor = 175
        redSliderValue.value = 175
        greenSliderValue.value = 175
        blueSliderValue.value = 175
        greenLabel.text = "\(greenColor)"
        blueLabel.text = "\(blueColor)"
        redLabel.text = "\(redColor)"
        palette.backgroundColor = UIColor(red: CGFloat(redColor / 250), green: CGFloat(greenColor) / 250, blue: CGFloat(blueColor / 250), alpha: CGFloat(alpha) / 100)
        
    }
    
    @IBAction func maxButtonPressed(_ sender: UIButton) {
        redColor = 255
        greenColor = 255
        blueColor = 255
        redSliderValue.value = 255
        greenSliderValue.value = 255
        blueSliderValue.value = 255
        greenLabel.text = "\(greenColor)"
        blueLabel.text = "\(blueColor)"
        redLabel.text = "\(redColor)"
        palette.backgroundColor = UIColor(red: CGFloat(redColor / 250), green: CGFloat(greenColor) / 250, blue: CGFloat(blueColor / 250), alpha: CGFloat(alpha) / 100)
        
    }
    
    @IBAction func redScroll(_ sender: UISlider) {
        redColor = Int(sender.value)
        redLabel.text = "\(redColor)"
        palette.backgroundColor = UIColor(red: CGFloat(redColor) / 255, green: CGFloat(greenColor) / 255, blue: CGFloat(blueColor) / 255, alpha: CGFloat(alpha))
    }
    
    @IBAction func greenScroll(_ sender: UISlider) {
        greenColor = Int(sender.value)
        greenLabel.text = "\(greenColor)"
        palette.backgroundColor = UIColor(red: CGFloat(redColor / 250), green: CGFloat(greenColor) / 250, blue: CGFloat(blueColor / 250), alpha: CGFloat(alpha) / 100)
    }
    
    @IBAction func blueScroll(_ sender: UISlider) {
        blueColor = Int(sender.value)
        blueLabel.text = "\(blueColor)"
        palette.backgroundColor = UIColor(red: CGFloat(redColor / 250), green: CGFloat(greenColor) / 250, blue: CGFloat(blueColor / 250), alpha: CGFloat(alpha) / 100)
    }
    
    
    @IBAction func alphaScroll(_ sender: UISlider) {
        alpha = Int(sender.value)
        alphaLabel.text = "\(alpha)"
        palette.backgroundColor = UIColor(red: CGFloat(redColor / 250), green: CGFloat(greenColor) / 250, blue: CGFloat(blueColor / 250), alpha: CGFloat(alpha) / 100)
    }
    
    
    
}

