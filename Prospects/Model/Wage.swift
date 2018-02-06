//
//  Wage.swift
//  Prospects
//
//  Created by Dan Lindsay on 2018-02-05.
//  Copyright © 2018 Dan Lindsay. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
