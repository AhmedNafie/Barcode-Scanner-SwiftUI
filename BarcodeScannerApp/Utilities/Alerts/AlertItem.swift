//
//  AlertItem.swift
//  BarcodeScannerApp
//
//  Created by Ahmed Nafie on 03/12/2024.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}
