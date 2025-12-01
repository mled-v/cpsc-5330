//
//  InputViewController.swift
//  assignment6
//
//  Created by Matthew Ledford on 11/30/25.
//

import UIKit

class InputViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var usdTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!

    @IBOutlet weak var currency1Switch: UISwitch!
    @IBOutlet weak var currency2Switch: UISwitch!
    @IBOutlet weak var currency3Switch: UISwitch!
    @IBOutlet weak var currency4Switch: UISwitch!

    let converter = CurrencyConverterModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.text = ""
    }

    @IBAction func convertButtonTapped(_ sender: UIButton) {
        errorLabel.text = ""

        guard let text = usdTextField.text,
              let amount = Int(text),
              amount >= 0 else {
            errorLabel.text = "Please enter a valid integer amount."
            return
        }

        if !currency1Switch.isOn &&
            !currency2Switch.isOn &&
            !currency3Switch.isOn &&
            !currency4Switch.isOn {
            errorLabel.text = "Select at least one currency."
            return
        }

        performSegue(withIdentifier: "showResults", sender: amount)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResults" {
            if let dest = segue.destination as? ResultViewController,
               let amount = sender as? Int {

                dest.amountInUSD = amount
                dest.currency1On = currency1Switch.isOn
                dest.currency2On = currency2Switch.isOn
                dest.currency3On = currency3Switch.isOn
                dest.currency4On = currency4Switch.isOn
                dest.converter = converter
            }
        }
    }
}

