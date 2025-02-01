//
//  ViewController.swift
//  ios-prework
//
//  Created by Megan Andrews on 1/31/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labels: [UILabel]!

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    @IBAction func changeTextColor(_ sender: UISwitch) {
        let randomColor = changeColor()
            if let labels = labels {  // Ensure labels exist
                    for label in labels {
                        label.textColor = randomColor
                    }
                } else {
                    print("Labels array is nil!")
                }
    }
    
    func changeColor() -> UIColor{

        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)

        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

