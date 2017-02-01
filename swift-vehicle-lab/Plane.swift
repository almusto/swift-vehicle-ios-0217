//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Alessandro Musto on 2/1/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class Plane : Vehicle {
  let maxAltitude : Double
  var altitude : Double = 0
  var inFlight : Bool {
    return (speed > 0 && altitude > 0)
  }

  init(name: String, weight: Double, maxSpeed: Double, maxAltitude : Double) {
    self.maxAltitude = maxAltitude
    super.init(name: name, weight: weight, maxSpeed: maxSpeed)
  }

  func takeoff() {
    if inFlight == false {
      speed = maxSpeed/10
      altitude = maxAltitude/10
    }
  }

  func land() {
    speed = 0
    altitude = 0
  }

  func climb() {
    if inFlight == true {
      let newAltitude = altitude + maxAltitude/10
      if newAltitude > maxAltitude {
        altitude = maxAltitude
      } else {
        altitude = newAltitude
      }
      self.decelerate()
    }
  }

  func dive() {
//    if inFlight == true {
//      let newAltitude = altitude - maxAltitude/10
//      if newAltitude < 0 {
//        altitude = 0
//      } else {
//        altitude = newAltitude
//      }
//      self.accelerate()
//    }
    if altitude > 0 {
      altitude -= maxAltitude/10
      if altitude < 0 {
        altitude = 0
      }
      self.accelerate()
    }
  }

  func bankRight() {
    if inFlight == true {
      heading = (heading + 45).truncatingRemainder(dividingBy: 360)
      speed -= speed/10
    }
  }

  func bankLeft() {
    if inFlight == true {
      heading = (heading + 315).truncatingRemainder(dividingBy: 360)
      speed -= speed/10
    }
  }


}
