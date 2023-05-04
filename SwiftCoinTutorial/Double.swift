//
//  Double.swift
//  SwiftCoinTutorial
//
//  Created by Carlos Alberto on 02/05/23.
//

import Foundation

extension Double {
    
    private var currencyFormatter: NumberFormatter {
        let formmatter = NumberFormatter()
        formmatter.usesGroupingSeparator = true
        formmatter.numberStyle = .currency
        formmatter.minimumFractionDigits = 2
        formmatter.maximumFractionDigits = 2
        return formmatter
    }
    
    private var numberFormatter: NumberFormatter {
        let formmatter = NumberFormatter()
        formmatter.numberStyle = .decimal
        formmatter.minimumFractionDigits = 2
        formmatter.maximumFractionDigits = 2
        return formmatter
    }
    
    func toCurrency() -> String {
        return currencyFormatter.string(for: self) ?? "$0.00"
    }
    
    func toPercentString() -> String {
        guard let numberAsString = numberFormatter.string(for: self) else {return ""}
        return numberAsString + "%"
    }
}
