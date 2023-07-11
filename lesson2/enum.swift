/* Enum - A way to organize data */

enum IBGEData {
    case cityName
    case state
    case country
    case numberOfInhabitants
    case area
}

let florianopolis = [ // Applying enum like the keys in dictionary [IBGEData:String]
    IBGEData.cityName: "Florianópolis",
    IBGEData.state: "Santa Catarina",
    IBGEData.country: "Brasil",
    IBGEData.numberOfInhabitants: "637.213",
    IBGEData.area: "674.5 km²"
]

florianopolis.forEach{ print("\($0.key): \($0.value)") }

// Associated enum
enum GMCar {
    case model(String)
    case doors(Int)
    case motor(Double)
}

let corsaModel = GMCar.model("Corsa")
let corsaDoors = GMCar.doors(2)
let corsaMotor = GMCar.motor(1.0)

print(corsaModel)
print(corsaDoors)
print(corsaMotor)

// Named associated enum
enum Motorcycle {
    case yamaha(model: String)
    case honda(model: String)
}

let CG150 = Motorcycle.honda(model: "Honda CG150 KS")
let factor150 = Motorcycle.yamaha(model: "Yamaha Factor 150")

print(CG150)
print(factor150)

// Named associated enum with more attributes
enum Immobile {
    case house(size: Int, bedrooms: Int, toilet: Int)
    case apartment(size: Int, bedrooms: Int, toilet: Int)
}

let apMoradasDoBosque = Immobile.apartment(size: 80, bedrooms: 2, toilet: 2)
let casaBosqueDasMancoes = Immobile.apartment(size: 120, bedrooms: 3, toilet: 4)

print(apMoradasDoBosque)
print(casaBosqueDasMancoes)

// var for print a specific enum atribute
extension Immobile {
    var size: Int {
        switch self {
        case .house(size: let size, bedrooms: _, toilet: _):
            return size
        case .apartment(size: let size, bedrooms: _, toilet: _):
            return size
        }
    }

    var qtdToilets: String {
        switch self {
        case .house(size: _, bedrooms: _, toilet: let toilet):
            return "Has \(toilet) toilets."
        case .apartment(size: _, bedrooms: _, toilet: let toilet):
            return "Has \(toilet) toilets."
        }
    }
}

print(apMoradasDoBosque.size)