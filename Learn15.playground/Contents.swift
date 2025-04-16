//Сабскрипты
let array = [1, 2, 3, 4, 5]
array[0]
array[1]
array[2]
array[3]
array[4]

struct Family{
    var father = "Father"
    var mother = "Mother"
    var kids = ["kid1", "kid2", "kid3"]
    var count: Int {
            return kids.count + 2
    }
    
    subscript (index: Int) -> String? {
            if index < count {
                return kids[index]
            } else {
                return nil
        }
        
        
    }
}

