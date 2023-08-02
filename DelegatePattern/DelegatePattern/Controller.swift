//
//  Controller.swift
//  DelegatePattern
//
//  Created by Furkan Kızmaz on 25.07.2023.
//

import Foundation

protocol ControllerDelegate {
    func dataTransferGreet(_ name: String)
    func dataTransferGoodBye(_ say: String)
}

class Controller: ControllerDelegate {
    var greetings = Greeter()

    init() {
        greetings.delegate = self
    }

    func run() {
        greetings.greeting("Furkan")
        greetings.sayGoodBye("Ali")
    }

    func dataTransferGreet(_ name: String) {
        print("Hello!, \(name)")
    }

    func dataTransferGoodBye(_ say: String) {
        print("Goodbye!, \(say)")
    }
}
