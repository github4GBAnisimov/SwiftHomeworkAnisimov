import UIKit

struct Listing {
    var car: String
    var year: Int
}

extension Listing: CustomStringConvertible {
    var description : String {
        return "Car: \(car), Year: \(year)"
    }
}


struct queue <A> {
    private var elements: [A] = []
    
    public var isEmpty: Bool {
        return elements.count == 0
    }
    
    mutating func enqueue(element: A ) {
        elements.append(element)
    }
    mutating func dequeue()->A {
        return elements.removeLast()
    }
    
    public var head: A? {
        if isEmpty {
            print("Элементы не найдены")
            return nil
        } else {
            print("Последний элемент \(elements.last!)")
            return elements.last
        }
    }
    
    public var front: A? {
        if isEmpty {
            print("Элементы не найдены")
            return nil
        } else {
            print("Первый элемент \(elements.first!)")
            return elements.first
        }
    }
    
    func printMyQueue() {
        print(elements)
    }
}

extension queue {
    func myFilter(predicate:(A) -> Bool) -> [A] {
        var result = [A]()
        for i in elements {
            if predicate(i) {
                result.append(i)
            }
        }
        return result
    }
}

var number = queue<Listing>()
number.enqueue(element: .init(car: "BMW", year: 1985))
number.enqueue(element: .init(car: "Nissan", year: 2002))
number.enqueue(element: .init(car: "Hennesy", year: 2001))
number.enqueue(element: .init(car: "Honda", year: 1999))
number.enqueue(element: .init(car: "Ferrari", year: 1986))
number.enqueue(element: .init(car: "Opel", year: 1982))
number.enqueue(element: .init(car: "Acura", year: 1979))
number.enqueue(element: .init(car: "Mercedes", year: 1981))

number.printMyQueue()
number.head
number.front

let number2 = number.myFilter(predicate: {$0.year == 2001})
print(number2)
