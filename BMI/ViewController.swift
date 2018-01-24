//
//  ViewController.swift
//  BMI
//
//  Created by kamontat chantrachirathumrong on 18/1/18.
//  Copyright © 2018 kamontat. All rights reserved.
//

import UIKit
import Scale

class ViewController: UIViewController {

    @IBOutlet weak var heightInput: UITextField!
    @IBOutlet weak var weightInput: UITextField!

    @IBOutlet weak var resultLb: UILabel!
    @IBOutlet weak var categoryLb: UILabel!

    @IBOutlet weak var headerImg: UIImageView!


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Calculate(_ sender: UIButton) {
        if let w = Double(weightInput.text!), let h = Double(heightInput.text!) {
            let weight = Weight.init(value: w, unit: WeightUnit.kilogram)
            let height = Length.init(value: h, unit: LengthUnit.centimeter)

            let result = cal(weight: weight, height: height)
            resultLb.text = String(format: "%.3f", result)
            let type = get_type(BMI: result)
            categoryLb.text = type
            headerImg.image = get_image(type: type)
        } else {
            resultLb.text = String(format: "%.3f", 0)
            let type = "Unknown"
            categoryLb.text = type
            headerImg.image = get_image(type: type)
        }
    }
}
