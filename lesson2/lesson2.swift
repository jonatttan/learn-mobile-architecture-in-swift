import UIKit

/* Arrays - Pode-se dizer que se trata de uma matriz/ coleção de valores */
let c180 = "Mercedes-benz C180"
let gol = "Volkswagen Gol"
let uno = "Fiat Uno"
let xc40 = "Volvo XC40"

let cars = [c180, gol, uno, xc40] // Array
print(cars[2]) // Para acessar os valores de array, basta selecionar o índice desejado.


/* 
    Set - Se trata de um tipo parecido com o anterior, porém, com duas distinções:
    - Não há ordenação para seus itens;
    - Os itens não se repetem.
*/
let carsWithSet = Set([c180, gol, uno, uno, xc40]) // Set
print(carsWithSet)

/* Tuples - Com ela é possível armazenar vários valores em uma única variável */
let mercedesC180 = (factory:"Mercedes", model:"C180") // Tuples
let vwGol = (factory:"Volkswagen", model:"Gol")
let fiatUno = (factory:"Fiat", model:"Uno")
let volvoXc40 = (factory:"Volvo", model:"XC180")

print(mercedesC180)
print(mercedesC180.factory)
print(mercedesC180.model)
print(vwGol.0)
print(vwGol.1)

/* 
    Dictionaries - É como matrizes, porém o armazenamento das informações se dá por
    relação "chave-valor" 
 */

let carsCategorySample = [ // Dictionary
    "carroDeEntrada": uno,
    "carroIntermediario": gol,
    "carroClass": c180 
]

print(carsCategorySample["carroDeEntrada"])

// Experimente fazer a busca usando um valor default pro caso de não encontrar a chave
print(carsCategorySample["carroIntermediario", default: "Sem itens compatíveis"])

/* Inicializando colecoes, matrizes, listas vazias */
var intList = [Int]()
var strList = [String]()
var setList = Set<String>()
var dictionary = [String: String]()
var strIntDict = [String: Int]()
var list = Array<Int>()

/* Enums - Enumeradores é uma forma mais simples e organizada de definir e usar valores */
enum Cars { // Enum
    case popular
    case top
}

let carsCategoryEnum = [
    Cars.popular: gol,
    Cars.top: c180
]
print(carsCategoryEnum[Cars.popular, default: "Não localizado"])

/* Enums associados */
enum BestCars { // Associated enum
    case economy(who: String)
    case comfort(who: String)
    case offRoad
}

BestCars.economy(who: uno)
BestCars.comfort(who: c180)
print(BestCars.comfort)

// Quando o enum de inteiro não tem valor atribuído, este inicia em 0 (zero)
enum TypeCar: Int {
    case passeio
    case pickup
    case minivan
    case suv
}
print(TypeCar(rawValue: 0))

// Quando o enum de inteiro possui algum valor atribuído, segue sequencialmente a partir de sua atribuição
enum ColorCar: Int {
    case prata = 15
    case bordo
    case vermelho
    case amarelo
}
print(ColorCar(rawValue: 16))