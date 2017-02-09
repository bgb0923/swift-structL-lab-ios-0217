//
//  PizzaDeliveryService.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct PizzaDeliveryService {
    let location : Coordinate
    var pizzasAvailable : Int = 10
    
    init(location: Coordinate) {
        self.location = location
    }
    
    func isInRange(to destination: Coordinate) -> Bool {
        return destination.distance(to: self.location) <= 5000
    }
    
    mutating func deliverPizza(to destination: Coordinate) -> Bool {
        if isInRange(to: destination) && self.pizzasAvailable > 0 {
            self.pizzasAvailable -= 1
            return true
        } else {
            return false
        }
    }
    
}
