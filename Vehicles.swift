/*
* The vehicles program.
*
* @author Matthew Sanii
* @version 1.0
* @since 2021-12-16
*/

public class Vehicle {

  /**
  * Initializing speed variable.
  */
  private var speed: Int = 0

  private let maxSpeed: Int = 100

  private let speedChange: Int = 10

  private let wheels: Int = 4

  /**
  * accelerate method.
  */
  func accelerate() -> Int {
    speed += speedChange
    if speed > maxSpeed {
      return -1
    } else {
      return speed
    }
  }

  /**
  * the brake method.
  *
  * @return speed
  */
  func brake() -> Int {
    speed = 0
    return speed
  }

  func getWheels() -> Int {
    return wheels
  }
}

class Bike: Vehicle {

  private var cadence: Int = 1

  private var bikeWheel: Int = 2

  /**
  * The bike initializer.
  *
  * @param cadance the cadence of the bike.
  */
  init(_ cadance: Int) {
    cadence = cadance
  }

  /**
  * ringBell method, which returns a Ding! string.
  *
  * @return Ding!
  */
  func ringBell() -> String {
    return "Ding!"
  }

  /**
  * The getCadence method.
  *
  * @return cadence.
  */
  func getCadence() -> Int {
    return cadence
  }

  /**
  * The bikeWheels method.
  *
  * @return number of wheels bike has.
  */
  func bikeWheels() -> Int {
    return bikeWheel
  }
}

class Truck: Vehicle {

  private var colour: String = "blue"

  private var plate: String = "123qwe"

  private var truckSpeed: Int = 0

  /**
  * The truck initializer.
  *
  * @param color the truck color.
  * @param plateinfo the plate info.
  */
  init(_ color: String, _ plateinfo: String) {
    plate = plateinfo
    colour = color
  }

  /**
  * The accelerates method.
  *
  * @return truckSpeed.
  */
  func accelerates() -> Int {
    truckSpeed = super.accelerate()
    truckSpeed = super.accelerate()
    return truckSpeed
  }

  /**
  * The provideAir method.
  *
  * @return Honk Honk!
  */
  func provideAir() -> String {
    return "Honk Honk!"
  }

  /**
  * The getPlate method.
  *
  * @return plate
  */
  func getPlate() -> String {
    return plate
  }

  /**
  * The getColor method.
  *
  * @return colour.
  */
  func getColor() -> String {
    return colour
  }

  /**
  * The truckWheels method.
  *
  * @return number of wheels the truck has.
  */
  func truckWheels() -> Int {
    return super.getWheels()
  }
}

print("Input color of truck: ")
let truckColor = readLine()!
print("Input plate number: ")
let platInfo = readLine()!
print("Set bike cadence: ")
let bikeCadence = readLine()!
let startCadence = Int(bikeCadence) ?? -1
let colorInput = Int(truckColor) ?? 0
let plateInput = platInfo.count
if colorInput == 0 && plateInput != 0
&& startCadence != -1 {
  let truck = Truck(truckColor, platInfo)
  let bike = Bike(startCadence)
  print("Bike speed after accelerating is", bike.accelerate())
  print("Truck speed after accelerating is", truck.accelerates())
  print("The bike's bell goes", bike.ringBell())
  print("The truck's horn goes", truck.provideAir())
  print("The bike's cadence is now", bike.getCadence())
  print("The truck's plate number is", truck.getPlate())
  print("The truck's color is", truck.getColor())
  print("The bike has", bike.bikeWheels(), "wheels.")
  print("The truck has", truck.truckWheels(), "wheels.")
} else {
  print("You must input strings for truck color and plate number, and int for bike cadence.")
}
