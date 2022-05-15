//
//  ViewController.swift
//  semen-interview
//
//  Created by mac on 15.05.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        testFunc1()
//        testFunc3()
//        testFunc4()
//        testFunc5()
//        testFunc6()
//        testFunc7()
        testFunc8()
        
    }
    
    func testFunc1() {
        class Tutorial {
          var difficulty: Int = 1
        }

        var tutorial1 = Tutorial()
        var tutorial2 = tutorial1
        tutorial2.difficulty = 2
        
//        print(tutorial1.difficulty, tutorial2.difficulty) // tutorial1 - 2, tutorial2 - 2
    }
    
    func testFunc2() {
        
        var view1 = UIView()
        view1.alpha = 0.5

        let view2 = UIView()
        view2.alpha = 0.5 // Will this line compile?
    }
    
    func testFunc3() {
        
        var animals = ["fish", "cat", "chicken", "dog"]
        animals.sort { (one: String, two: String) -> Bool in
            return one < two
        }
//        print(animals) // cat dog fish chicken
    }
    
    func testFunc4() {
        class Address {
          var fullAddress: String
          var city: String
          
          init(fullAddress: String, city: String) {
            self.fullAddress = fullAddress
            self.city = city
          }
        }

        class Person {
          var name: String
          var address: Address
          
          init(name: String, address: Address) {
            self.name = name
            self.address = address
          }
        }

        var headquarters = Address(fullAddress: "123 Tutorial Street", city: "Appletown")
        var ray = Person(name: "Ray", address: headquarters)
        var brian = Person(name: "Brian", address: headquarters)
        
        brian.address.fullAddress = "148 Tutorial Street"
        
        print (ray.address.fullAddress) // 148 Tutorial Street
    }
}

// Опционал решает проблему, когда у переменной нет какого-то значения
// чтобы отобразить состояние переменной, когда у нее отсутствует значение

func testFunc5() {
    
    let x : String? = "Test"
    
    //    1. force unwrapping
    let a = x!
    print(a)
    
    if x != nil {
        print(x!)
    }
    
    //    2. nil coalessing operator
    let b = x ?? ""
    print(b)
    
    //    3. if let / optional binding
    if let c = x {
        print(c)
    }
    
    //    4. guard (работает внутри функции)
    guard let d = x else { return }
    print(d)
    
    //    5. optional chaining (работает при связке нескольких переменных)
    let e = x?.count ?? 0
    print(e)
    
    //    6. optional pattern
    if case let f? = x {
        print(f)
    }
}
    
func testFunc6() {
    class ThermometerClass {
        private(set) var temperature: Double = 0.0
        public func registerTemperature(_ temperature: Double) {
            self.temperature = temperature
        }
    }
    
    let thermometerClass = ThermometerClass()
    thermometerClass.registerTemperature(56.0)
    
    struct ThermometerStruct {
        private(set) var temperature: Double = 0.0
        public mutating func registerTemperature(_ temperature: Double) {
            self.temperature = temperature
        }
    }
    
    var thermometerStruct = ThermometerStruct()
    thermometerStruct.registerTemperature(56.0)
}

func testFunc7() {
    
    func countUniques<T: Comparable>(_ array: Array<T>) -> Int {
      let sorted = array.sorted()
      let initial: (T?, Int) = (.none, 0)
      let reduced = sorted.reduce(initial) {
        ($1, $0.0 == $1 ? $0.1 : $0.1 + 1)
      }
      return reduced.1
    }
    print(countUniques([1, 2, 3, 3]))
}

func testFunc8() {
    enum KittenError: Error {
      case noKitten
    }
    
    struct Kitten {}
    
    func showKitten(kitten: Kitten?) throws {
  
        guard let k = kitten else {
            
            throw KittenError.noKitten
        }
        print(k)
    }
    
    do {
        try showKitten(kitten: nil)
      
    } catch {
      print(error)
    }
    
    
//    showKitten(kitten: .none)
}
