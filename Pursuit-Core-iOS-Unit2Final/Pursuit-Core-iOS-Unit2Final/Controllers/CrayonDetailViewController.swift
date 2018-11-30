//
//  CrayonDetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Ibraheem rawlinson on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonDetailViewController: UIViewController {
    //OutLets
    @IBOutlet weak var resetBttn: UIButton!
    @IBOutlet weak var crayonColorLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redHexValue: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenHexValue: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueHexValue: UILabel!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var alphaOpacityLabel: UILabel!
   
    
    var crayonIExpect: Crayon!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = crayonIExpect.name
        crayonColorLabel.text = crayonIExpect.name
        redSliderSlided(redSlider)
        greenSliderSlided(greenSlider)
        blueSliderSlided(blueSlider)
        alphaOpacitySlided(alphaSlider)
    self.view.backgroundColor = UIColor(red: CGFloat(crayonIExpect.red), green: CGFloat(crayonIExpect.green), blue: CGFloat(crayonIExpect.blue), alpha: CGFloat(crayonIExpect.alpha))
        //Crayon(name: "Black", red: 0, green: 0, blue: 0, hex: "#000000", alpha: 0.8)
        if self.view.backgroundColor == UIColor(red: CGFloat(0), green: CGFloat(0), blue: CGFloat(0), alpha: CGFloat(0.8)) {
            crayonColorLabel.textColor = .white
            redHexValue.textColor = .white
            greenHexValue.textColor = .white
            blueHexValue.textColor = .white
            alphaOpacityLabel.textColor = .white
        }
    
       
    }
    @IBAction func redSliderSlided(_ sender: UISlider) {
            redSlider.value = crayonIExpect.red
        redHexValue.text = " \(redSlider.value)"
    }
    @IBAction func greenSliderSlided(_ sender: UISlider) {
        greenSlider.value = crayonIExpect.green
        greenHexValue.text = " \(greenSlider.value)"
    }
    @IBAction func blueSliderSlided(_ sender: UISlider) {
        blueSlider.value = crayonIExpect.blue
        blueHexValue.text = " \(blueSlider.value)"
    }
    
    @IBAction func alphaOpacitySlided(_ sender: UISlider) {
        alphaSlider.value = crayonIExpect.alpha
        alphaOpacityLabel.text = "\(alphaSlider.value)"
    }
    @IBAction func resetBttnPressed(_ sender: UIButton) {
        crayonColorLabel.text = "Go Back To Colors"
        crayonColorLabel.textColor = .black
        redHexValue.text = "Red"
        greenHexValue.text = "Green"
        blueHexValue.text = "Blue"
        alphaOpacityLabel.text = "Alpha"
        redSlider.value = 0.0
        greenSlider.value = 0.0
        blueSlider.value = 0.0
        alphaSlider.value = 0.0
        
    }
    
    
}
