//: Playground - noun: a place where people can play

import UIKit

var name = "Moustafa Abdelaziz"
var number = 50
var numberDouble = 100.0
var numberFloat: Float = 25.0
var downloadFinished = false

func calculateVolume(number: Double) -> Double{
    return number*number*number
}

print("The volume of a cube that has side of 5 is: \(calculateVolume(number:5.0))")

var pokemons = ["Pikachu", "Snorlax", "Charmender", "Onix"]
for pokemon in pokemons{
    print("\(pokemon), I choose you")
}

var cars = ["Renault":"Talisman", "Toyota":"Camry", "Nissan":"Maxima", "Hyundai":"Sonata"]

if downloadFinished{
    print("Download Completed")
}else{
    print("Downloading...")
}

class Person{
    var name: String
    var age: Int
    var fuckedLadyBefore:Bool
    
    init(){
        name = "Default Person"
        age = 18
        fuckedLadyBefore = false
    }
    
    init(name: String, age: Int, fuckedLadyBefore: Bool) {
        self.name = name
        self.age = age
        self.fuckedLadyBefore = fuckedLadyBefore
    }
    
    func printPersonInfo(){
        if(fuckedLadyBefore){
            print("This person is called \(name). He is \(age) years old and he fucked ladies before")
        }else{
            print("This person is called \(name). He is \(age) years old is still virgin")
        }
    }
}

var newPerson = Person()
newPerson.name = "Moustafa Abdelaziz"
newPerson.age = 27
newPerson.fuckedLadyBefore = true
newPerson.printPersonInfo()
var newPerson2 = Person(name: "Omar Abduljaleel", age:26, fuckedLadyBefore: false)
newPerson2.printPersonInfo()

class FineMan: Person{
    var position: String
    override init(){
        //super.init() if this is called, compiler will assume that any values you are going to initialize afterwards is coming from parent class. to initialize class variables of child class, they need to be initialized before calling super function
        position = "BAE"
        super.init()
    }
    
    override func printPersonInfo() {
        print("This Person is a fine man called: \(name). He is \(age) years old and still virign. He works in RMG Networks as \(position)")
    }
    
    func getPosition(){
        print("This fine man position is: \(position)")
    }
    
}

var newPerson3 = FineMan()
newPerson3.getPosition()
newPerson3.printPersonInfo()
