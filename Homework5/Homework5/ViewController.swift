//
//  ViewController.swift
//  Homework5
//
//  Created by Erdal Yalçın on 3.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var islemLabel: UILabel!
    @IBOutlet weak var sayiLabel: UILabel!
    @IBOutlet weak var ifadeLabel: UILabel!
    
    @IBOutlet weak var viewButtons: UIView!
    
    @IBOutlet weak var viewGradient: UIView!
    
    @IBAction func refreshButton(_ sender: Any) {
        self.viewDidLoad()
        islemLabel.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let color1 = UIColor(red: 0.49, green: 0.81, blue: 0.47, alpha: 1.00)
        let color2 = UIColor(red: 1.00, green: 0.95, blue: 0.74, alpha: 1.00)
        
        viewGradient.setGradietColor(colorOne: color1, colorTwo: color2)
        
        viewButtons.layer.masksToBounds = true
        viewButtons.layer.cornerRadius = 15
        viewButtons.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        
        sayiLabel.text = ""
        ifadeLabel.text = ""
    }
    
        var sayi1 = ""
        var sayi2 = ""
        var sonuç = 0.0
        var sonuçint = 0
        var sonuçinttodouble = 0.0
        var s1 = 0.0
        var s2 = 0.0
    
    @IBAction func buttonDot(_ sender: Any) {
        sayiLabel.text = sayiLabel.text! + "."
            changeLabel(ifade: ".")
    }
    @IBAction func button0(_ sender: Any) {
        sayiLabel.text = sayiLabel.text! + "0"
        changeLabel(ifade: "0")
    }
    @IBAction func button1(_ sender: Any) {
        sayiLabel.text = sayiLabel.text! + "1"
        changeLabel(ifade: "1")
    }
    @IBAction func button2(_ sender: Any) {
        sayiLabel.text = sayiLabel.text! + "2"
        changeLabel(ifade: "2")
    }
    @IBAction func button3(_ sender: Any) {
        sayiLabel.text = sayiLabel.text! + "3"
        changeLabel(ifade: "3")
    }
    @IBAction func button4(_ sender: Any) {
        sayiLabel.text = sayiLabel.text! + "4"
        changeLabel(ifade: "4")
    }
    @IBAction func button5(_ sender: Any) {
        sayiLabel.text = sayiLabel.text! + "5"
        changeLabel(ifade: "5")
    }
    @IBAction func button6(_ sender: Any) {
        sayiLabel.text = sayiLabel.text! + "6"
        changeLabel(ifade: "6")
    }
    @IBAction func button7(_ sender: Any) {
        sayiLabel.text = sayiLabel.text! + "7"
        changeLabel(ifade: "7")
    }
    @IBAction func button8(_ sender: Any) {
        sayiLabel.text = sayiLabel.text! + "8"
        changeLabel(ifade: "8")
    }
    @IBAction func button9(_ sender: Any) {
        sayiLabel.text = sayiLabel.text! + "9"
        changeLabel(ifade: "9")
    }
    @IBAction func button00(_ sender: Any) {
        sayiLabel.text = sayiLabel.text! + "00"
        changeLabel(ifade: "00")
    }
    @IBAction func buttonPlus(_ sender: Any) {
      
        sayi1 = sayiLabel.text!
        islemLabel.text = "+"
        sayiLabel.text = ""
        changeLabel(ifade: "+")
    }
    @IBAction func buttonEqual(_ sender: Any) {
        sayi2 = sayiLabel.text!
        
        islemLabel.text = "="
        changeLabel(ifade: "=")
               
        s1 = Double(sayi1)!
        s2 = Double(sayi2)!
        sonuç = s1 + s2
        sonuçint = Int(sonuç)
                
            sonuçinttodouble = Double(sonuçint)
                
        if (sonuç == sonuçinttodouble){
            sayiLabel.text = String(sonuçint)
            changeLabel(ifade: String(sonuçint))
        } else{
            sayiLabel.text = String(sonuç)
            changeLabel(ifade: String(sonuç))
        }
    }
    func changeLabel(ifade:String) {
        ifadeLabel.text! += ifade
    }
}

