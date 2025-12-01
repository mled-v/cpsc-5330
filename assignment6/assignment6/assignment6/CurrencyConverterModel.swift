//
//  CurrencyConverterModel.swift
//  assignment6
//
//  Created by Matthew Ledford on 11/30/25.
//

import Foundation

struct CurrencyConverterModel {
    let rateC1: Double = 0.9
    let rateC2: Double = 110
    let rateC3: Double = 1.3
    let rateC4: Double = 0.8

    func convert(amountInUSD: Int, to currencyIndex: Int) -> Double {
        let amount = Double(amountInUSD)
        switch currencyIndex {
        case 1: return amount * rateC1
        case 2: return amount * rateC2
        case 3: return amount * rateC3
        case 4: return amount * rateC4
        default: return 0
        }
    }
}
