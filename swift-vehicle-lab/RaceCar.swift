//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by Alessandro Musto on 2/1/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar : Car {
  let driver : String
  var sponsors : [String]

  init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver : String, sponsors : [String]) {
    self.driver = driver
    self.sponsors = sponsors
    super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
  }

  override func accelerate() {
      let newSpeed = speed + maxSpeed/5
      if newSpeed > maxSpeed {
        speed = maxSpeed
      } else {
        speed = newSpeed
      }
  }

  override func decelerate() {
    let newSpeed = speed - maxSpeed/5
    if newSpeed < 0 {
      speed = 0
    } else {
      speed = newSpeed
    }
  }

  func driftRight() {
    if speed > 0 {
      heading = (heading + 90).truncatingRemainder(dividingBy: 360)
      speed -= speed/4
    }
  }

  func driftLeft() {
    if speed > 0 {
      heading = (heading + 270).truncatingRemainder(dividingBy: 360)
      speed -= speed/4
    }
  }

}
