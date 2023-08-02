//
//  Greeter.swift
//  DelegatePattern
//
//  Created by Furkan Kızmaz on 25.07.2023.
//

import Foundation

class Greeter {
    var delegate: ControllerDelegate?

    func greeting(_ name: String) {
        delegate?.dataTransferGreet(name)
    }

    func sayGoodBye(_ say: String) {
        delegate?.dataTransferGoodBye(say)
    }
}
