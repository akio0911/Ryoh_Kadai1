//
//  ViewController.swift
//  Kadai1
//
//  Created by Ryoh on 2021/06/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var num1TextField: UITextField!
    @IBOutlet private weak var num2TextField: UITextField!
    @IBOutlet private weak var num3TextField: UITextField!
    @IBOutlet private weak var num4TextField: UITextField!
    @IBOutlet private weak var num5TextField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction private func pressButton(_ sender: Any) {
        let numsArray: [Int] = [Int(num1TextField.text ?? "") ?? 0,
                                Int(num2TextField.text ?? "") ?? 0,
                                Int(num3TextField.text ?? "") ?? 0,
                                Int(num4TextField.text ?? "") ?? 0,
                                Int(num5TextField.text ?? "") ?? 0]

        let resultNum = numsArray.reduce(0) { $0 + $1 }
        resultLabel.text = "\(resultNum)"
    }
}
