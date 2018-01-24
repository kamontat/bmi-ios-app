//
//  BMICalculator.swift
//  BMI
//
//  Created by kamontat chantrachirathumrong on 23/1/18.
//  Copyright © 2018 kamontat. All rights reserved.
//

import Foundation
import Scale

func cal(weight: Weight, height: Length) -> Double {
    let wv = weight.to(unit: WeightUnit.kilogram).value
    let hv = height.to(unit: LengthUnit.meter).value

    return wv / pow(hv, 2)
}

func get_type(BMI: Double) -> String {
    if BMI < 18.5 {
        return "Underweight"
    } else if BMI < 23.0 {
        return "Healthy range"
    } else if BMI < 27.5 {
        return "Over weight"
    } else {
        return "Obese"
    }
}

func get_image(type: String) -> UIImage? {
    switch type {
    case "Underweight":
        return UIImage(named: "uw.jpg")
    case "Healthy range":
        return UIImage(named: "hw.jpg")
    case "Over weight":
        return UIImage(named: "ow.jpg")
    case "Obese":
        return UIImage(named: "ob.jpg")
    default:
        return UIImage(named: "header.jpeg")
    }
}
