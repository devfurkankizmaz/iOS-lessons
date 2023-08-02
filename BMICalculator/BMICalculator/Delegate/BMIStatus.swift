//
//  BMIStatus.swift
//  BMICalculator
//
//  Created by Furkan Kızmaz on 26.07.2023.
//

import Foundation

class BMIStatus {
    var delegate: AppControllerDelegate?

    func showBmi(_ result: String) {
        if let delegate = delegate {
            let delegate = delegate.backwardDataTransfer(result)
            print(delegate)
        }
    }
}
