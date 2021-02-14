//
//  PhoneValue.swift
//  Shaffaf
//
//  Created by Muhammadjon Tohirov on 1/13/20.
//  Copyright © 2020 TxC. All rights reserved.
//

import Foundation

public class CardNumberValue: StringValue {
    
    public var formattedValue: ((_ text: String) -> String)?
    
    public init(_ value: String = "", required: Bool = false) {
        super.init(16, value, required: required)
    }
    
    public override func hasError() -> Bool {
        return getValue().removeSpaces().count != 16
    }

    public func formattedValue(_ text: String) -> String {
        let number = text.removeLastSpaces()
        let paddedNumber = number.padding(
            toLength: 16,
            withPad: " ",
            startingAt: 0
        )

        let chunkedNumbers = paddedNumber.chunk(by: 4)
        var value = ""
        zip(number, chunkedNumbers).forEach { tuple in
            value.append("\(tuple.1.removeSpaces()) ")
        }
        return value.removeLastSpaces()
    }
}
