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

    private var textFields: [UITextField] {
        [num1TextField,
         num2TextField,
         num3TextField,
         num4TextField,
         num5TextField]
    }

    @IBAction private func pressButton(_ sender: Any) {
        resultLabel.text = String(
            textFields
                .compactMap { $0.text }
                .compactMap { Int($0) }
                .reduce(0, +)
        )
    }
}
