//: Playground - noun: a place where people can play

import UIKit

class NiceClass {
    func awesomeMethod(x: String, some: String) {}
    func awesomeMethod(x: String, another: String) {}
    func awesomeMethod(_ x: String, any: String) {}
    func awesomeMethod(_ x: String, some: String) {}
}
let nice = NiceClass()

let some = nice.awesomeMethod(x:some:)
let another = nice.awesomeMethod(x:another:)

let any = nice.awesomeMethod(_:any:)
let some3 = nice.awesomeMethod(_:some:)


class SampleClass : NSObject {
    func methodA(x: String, some: String) -> Void {
        
    }
}

let sel = #selector(SampleClass.methodA(x:some:))

print("sample text")

do {
    print("Display? \(sel)")
}