//
//  ViewController.swift
//  ColorSlider
//
//  Created by Mac User on 11/19/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appName: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    
    @IBOutlet weak var switchColor: UISwitch!
    
    
    @IBAction func redSliderAct(_ sender: Any) {
        changeColor()
    }
    
    @IBAction func greenSliderAct(_ sender: Any) {
        changeColor()
    }
    
    
    @IBAction func blueSliderAct(_ sender: Any) {
        changeColor()
    }
    
    
    @IBAction func resetBtn(_ sender: Any) {
        redSlider.value = 0.5
        greenSlider.value = 0.5
        blueSlider.value = 0.5
        self.view.backgroundColor = UIColor(
            red:CGFloat(0.5),
            green: CGFloat(0.5),
            blue: CGFloat(0.5),
            alpha:1.0)
        appName.textColor = nil
    }
    
    @IBAction func swColor(_ sender: Any) {
        changeColor()
    }
    
    func changeColor(){
        if switchColor.isOn{
            self.view.backgroundColor = UIColor(
            red:CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha:1.0)
        }
        else{
            appName.textColor = UIColor(
            red:CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha:1.0)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeColor()
        // Do any additional setup after loading the view.
    }


}

