import UIKit

/* Arrays - It can be said that this is an array/ collection of values */
let c180 = "Mercedes-benz C180"
let gol = "Volkswagen Gol"
let uno = "Fiat Uno"
let xc40 = "Volvo XC40"

let cars = [c180, gol, uno, xc40]
print(cars[2]) // To access array values, simple select the desired index.

/* 
    Set - It is a similar type to the previous one, however, with two distinctions:
    - There is no ordering for your items;
    - Items do not repeat
*/
let carsWithSet = Set([c180, gol, uno, uno, xc40])
print(carsWithSet)

/* Tuples - It allows you to store multiple values in a single variable */
let mercedesC180 = (factory:"Mercedes", model:"C180")
let vwGol = (factory:"Volkswagen", model:"Gol")
let fiatUno = (factory:"Fiat", model:"Uno")
let volvoXc40 = (factory:"Volvo", model:"XC180")

print(mercedesC180)
print(mercedesC180.factory)
print(mercedesC180.model)
print(vwGol.0)
print(vwGol.1)

/* 
    Dictionaries - It's like matrices, but the storage of information is done by 
    "key-value" relationship 
*/

let carsCategorySample = [
    "carroDeEntrada": uno,
    "carroIntermediario": gol,
    "carroClass": c180 
]

print(carsCategorySample["carroDeEntrada"])

// Try doing the search using a default value in case you can't find the key
print(carsCategorySample["carroIntermediario", default: "Sem itens compatíveis"])

/* Initializing collections, matrices, empty lists */
var intList = [Int]()
var strList = [String]()
var setList = Set<String>()
var dictionary = [String: String]()
var strIntDict = [String: Int]()
var list = Array<Int>()

/* Enums - Enumarators is a simpler and more organized way of defining and using values */
enum Cars {
    case popular
    case top
}

let carsCategoryEnum = [
    Cars.popular: gol,
    Cars.top: c180
]
print(carsCategoryEnum[Cars.popular, default: "Não localizado"])

/* Associated enums */
enum BestCars {
    case economy(who: String)
    case comfort(who: String)
    case offRoad
}

BestCars.economy(who: uno)
BestCars.comfort(who: c180)
print(BestCars.comfort)

// When the integer enum has no assigned value, it starts at 0 (zero)
enum TypeCar: Int {
    case passeio
    case pickup
    case minivan
    case suv
}
print(TypeCar(rawValue: 0))

// When the integer enum has some value assigned, it follows sequentially from its assignment.
enum ColorCar: Int {
    case prata = 15
    case bordo
    case vermelho
    case amarelo
}
print(ColorCar(rawValue: 16))