//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by Holt Skinner on 11/4/17.
//  Copyright © 2017 Holt Skinner. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    var converters = [Converter]()
    let alert = UIAlertController(title: "Choose Converter", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)

    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!

    override func viewDidLoad() {

        super.viewDidLoad()

        converters = [
            Converter(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit: "°C"),
            Converter(label: "celcius to fahrenheit", inputUnit: "°C", outputUnit: "°F"),
            Converter(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km"),
            Converter(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi")
        ]

        for converter in converters {
            alert.addAction(UIAlertAction(title: converter.label, style: .default, handler: nil))
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func converterButtonTapped(_ sender: Any) {
        self.present(alert, animated: true, completion: nil)
    }

}

