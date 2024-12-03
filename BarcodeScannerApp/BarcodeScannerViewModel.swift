//
//  BarcodeScannerViewModel.swift
//  BarcodeScannerApp
//
//  Created by Ahmed Nafie on 03/12/2024.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject  {
    @Published  var scannedCode = ""
    @Published  var alertItem: AlertItem?
    
    var statusText: String {
        scannedCode.isEmpty ? "Not Scanned Yet" : scannedCode
    }
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}
