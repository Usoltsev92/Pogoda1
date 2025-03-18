import Foundation

// 1. Структура "Описание файла"
struct FileDescription {
    // Хранимые свойства
    let filePath: String
    let fileName: String
    let maxFileSize: Int
    let isHidden: Bool
    var content: String
    
    // Вычисляемое свойство для пути к папке
    var folderPath: String {
        return (filePath as NSString).deletingLastPathComponent
    }
    
    // Инициализатор
    init(filePath: String, fileName: String, maxFileSize: Int, isHidden: Bool, content: String) {
        self.filePath = filePath
        self.fileName = fileName
        self.maxFileSize = maxFileSize
        self.isHidden = isHidden
        self.content = content
    }
}

// 2. Энум для цветовой гаммы
enum ColorPalette: Int {
    case red = 0xFF0000
    case green = 0x00FF00
    case blue = 0x0000FF
    case yellow = 0xFFFF00
    case cyan = 0x00FFFF
    case magenta = 0xFF00FF
    
    // Количество цветов в гамме
    static var numberOfColors: Int {
        return 6
    }
    
    // Начальный цвет
    static var startColor: ColorPalette {
        return .red
    }
    
    // Конечный цвет
    static var endColor: ColorPalette {
        return .magenta
    }
}

// 3. Класс "Человек"
class Person {
    // Хранимые свойства
    var firstName: String
    var lastName: String
    var age: Int
    var height: Double
    var weight: Double
    
    // Статические свойства для контроля
    static var minAge: Int = 0
    static var maxAge: Int = 120
    static var minNameLength: Int = 2
    static var maxNameLength: Int = 50
    static var minHeight: Double = 30.0
    static var maxHeight: Double = 250.0
    static var minWeight: Double = 2.0
    static var maxWeight: Double = 300.0
    
    // Счетчик созданных объектов
    static var numberOfPersons: Int = 0
    
    // Инициализатор
    init(firstName: String, lastName: String, age: Int, height: Double, weight: Double) {
        // Проверка длины имени и фамилии
        self.firstName = String(firstName.prefix(Person.maxNameLength))
        self.lastName = String(lastName.prefix(Person.maxNameLength))
        
        // Проверка возраста
        self.age = min(max(age, Person.minAge), Person.maxAge)
        
        // Проверка роста и веса
        self.height = min(max(height, Person.minHeight), Person.maxHeight)
        self.weight = min(max(weight, Person.minWeight), Person.maxWeight)
        
        // Увеличиваем счетчик созданных объектов
        Person.numberOfPersons += 1
    }
}

// Пример использования

// 1. Создаем структуру файла
let file = FileDescription(
    filePath: "/Users/username/Documents/example.txt",
    fileName: "example.txt",
    maxFileSize: 1024,
    isHidden: false,
    content: "This is a sample file content."
)
print("Folder path: \(file.folderPath)")

// 2. Используем энум для цветовой гаммы
print("Number of colors: \(ColorPalette.numberOfColors)")
print("Start color: \(ColorPalette.startColor.rawValue)")
print("End color: \(ColorPalette.endColor.rawValue)")

// 3. Создаем объекты класса "Человек"
let person1 = Person(firstName: "John", lastName: "Doe", age: 30, height: 180.0, weight: 75.0)
let person2 = Person(firstName: "Jane", lastName: "Doe", age: 25, height: 165.0, weight: 60.0)
print("Number of persons created: \(Person.numberOfPersons)")
