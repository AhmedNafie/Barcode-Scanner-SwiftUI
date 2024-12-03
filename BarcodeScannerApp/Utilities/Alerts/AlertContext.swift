//
//  AlertContext.swift
//  BarcodeScannerApp
//
//  Created by Ahmed Nafie on 03/12/2024.
//

import SwiftUI

struct AlertContext {
    let invalidDeviceInput = AlertItem(title: "Invalid Device Input", message: "Something is wrong with the camera.", dismissButton: .default(Text("OK")))
    let invalidScannedValue = AlertItem(title: "Invalid Scanned Value", message: "The value scanned is not valid, This app scans EAN-8 and EAN-13.", dismissButton: .default(Text("OK")))
}
