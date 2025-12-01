//
//  ResultViewController.swift
//  assignment6
//
//  Created by Matthew Ledford on 11/30/25.
//

import UIKit

class ResultViewController: UIViewController {

    var amountInUSD: Int = 0
    var currency1On: Bool = false
    var currency2On: Bool = false
    var currency3On: Bool = false
    var currency4On: Bool = false

    var converter: CurrencyConverterModel?

    @IBOutlet weak var amountInUSDLabel: UILabel!

    @IBOutlet weak var currency1Label: UILabel!
    @IBOutlet weak var currency1AmountLabel: UILabel!

    @IBOutlet weak var currency2Label: UILabel!
    @IBOutlet weak var currency2AmountLabel: UILabel!

    @IBOutlet weak var currency3Label: UILabel!
    @IBOutlet weak var currency3AmountLabel: UILabel!

    @IBOutlet weak var currency4Label: UILabel!
    @IBOutlet weak var currency4AmountLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        amountInUSDLabel.text = "Amount in USD: \(amountInUSD)"

        guard let converter = converter else { return }

        if currency1On {
            let c1 = converter.convert(amountInUSD: amountInUSD, to: 1)
            currency1Label.isHidden = false
            currency1AmountLabel.isHidden = false
            currency1AmountLabel.text = String(format: "%.2f", c1)
        } else {
            currency1Label.isHidden = true
            currency1AmountLabel.isHidden = true
        }

        if currency2On {
            let c2 = converter.convert(amountInUSD: amountInUSD, to: 2)
            currency2Label.isHidden = false
            currency2AmountLabel.isHidden = false
            currency2AmountLabel.text = String(format: "%.2f", c2)
        } else {
            currency2Label.isHidden = true
            currency2AmountLabel.isHidden = true
        }

        if currency3On {
            let c3 = converter.convert(amountInUSD: amountInUSD, to: 3)
            currency3Label.isHidden = false
            currency3AmountLabel.isHidden = false
            currency3AmountLabel.text = String(format: "%.2f", c3)
        } else {
            currency3Label.isHidden = true
            currency3AmountLabel.isHidden = true
        }

        if currency4On {
            let c4 = converter.convert(amountInUSD: amountInUSD, to: 4)
            currency4Label.isHidden = false
            currency4AmountLabel.isHidden = false
            currency4AmountLabel.text = String(format: "%.2f", c4)
        } else {
            currency4Label.isHidden = true
            currency4AmountLabel.isHidden = true
        }
    }
}
