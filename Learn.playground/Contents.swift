
class Human {
    var name: String
    static let maxAge = 100
    
    var age: Int {
        didSet {
            if age > Human.maxAge {
                age = oldValue
            }
        }
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

struct Cat {
    var name: String
    
    static let maxAge = 20
    
    // Непонятная вещь
    nonisolated(unsafe) static var totalCats = 0
    
    lazy var totalCatsInstance = 0
    
    var age: Int {
        didSet {
            if age > Cat.maxAge {
                age = oldValue
            }
        }
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        Cat.totalCats += 1
    }
}

let human = Human(name: "Peter", age: 55)
var cat = Cat(name: "Tom", age: 9)

human.age = 560
cat.age = 250

print("Human age: \(human.age)")
print("Cat age: \(cat.age)")

print("Total cats: \(Cat.totalCats)")

var cat1 = Cat(name: "Tom", age: 9)
var cat2 = Cat(name: "Tom", age: 9)
var cat3 = Cat(name: "Tom", age: 9)

print("Total cats after creating more instances: \(Cat.totalCats)")
