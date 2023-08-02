//
//  AppController.swift
//  BMICalculator
//
//  Created by Furkan Kızmaz on 26.07.2023.
//

import Foundation

protocol AppControllerDelegate {
    func backwardDataTransfer(_ result: String) -> String
}

extension AppControllerDelegate {
    func backwardDataTransfer(_ result: String) -> String {
        return result
    }
}

class AppController: AppControllerDelegate {
    var status = BMIStatus()

    init() {
        status.delegate = self
    }

    func start(_ data: String) {
        status.showBmi(data)
    }

    func backwardDataTransfer(_ result: String) -> String {
        return result
    }
}
