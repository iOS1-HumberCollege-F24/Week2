import UIKit


@objc
protocol Printable{
    func print()
    @objc optional func threeDPrint()
}

protocol Drawable{
    func draw()
}

class Shape : Printable, Drawable{
    var name: String = ""
    var area: Double = 0.0
    
    init(name: String, area: Double) {
        self.name = name
        self.area = area
    }
    
    func print(){
        Swift.print("This is a \(name) in print function")
    }
    
    func draw(){
        Swift.print("This is a \(name) in draw function")

    }
}

class ResearchPaper: Printable {
   
    var name: String = ""
    var year : Int = 1990
    init(name: String, year: Int) {
        self.name = name
        self.year = year
    }
    func print() {
        Swift.print("This is a research ")
    }
}



var Circle = Shape(name: "Circle",area: 20.3)
