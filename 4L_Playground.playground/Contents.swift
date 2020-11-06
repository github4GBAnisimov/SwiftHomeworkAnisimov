import UIKit

enum CarDoorState {
    case open, close
}
enum Transmission {
    case manual, auto
}
enum trunkValue {
    case full, empty
}

class Car {
    let Vtrunk: trunkValue
    let color: UIColor
    let mp3: Bool
    let transmission: Transmission
    var km: Double
    var doorState: CarDoorState
    init(color: UIColor, mp3: Bool, transmission: Transmission, km: Double, doorState: CarDoorState, Vtrunk: trunkValue) {
        self.color = color
        self.mp3 = mp3
        self.transmission = transmission
        self.km = km
        self.doorState = doorState
        self.Vtrunk = .empty
    }
}
class SportCar: Car { // наследуем HondaSport от Honda
// мы ничего не пишем здесь
// и наш новый класс имеет все те же свойства и методы, что и его родитель
}
var sportCar1 = SportCar(color: .white, mp3: true, transmission: .auto, km: 0.0, doorState: .close, Vtrunk: . empty)

class trunkCar: Car {
}
var trunkCar1 = trunkCar(color: .black, mp3: false, transmission: .manual, km: 999.0, doorState: .open, Vtrunk: . full)

