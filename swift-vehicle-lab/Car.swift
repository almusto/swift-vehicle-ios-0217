//
//  Car.swift
//  swift-vehicle-lab
//
//  Created by Alessandro Musto on 2/1/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class Car : Vehicle {
  let transmission : String
  let cylinders : Int
  let milesPerGallon : Double

  init(name: String, weight: Double, maxSpeed: Double, transmission : String, cylinders : Int, milesPerGallon : Double) {
    self.transmission = transmission
    self.cylinders = cylinders
    self.milesPerGallon = milesPerGallon
    super.init(name: name, weight: weight, maxSpeed: maxSpeed)
  }

  func drive() {
    self.accelerate()
  }

  func brake() {
    self.decelerate()
  }


}
