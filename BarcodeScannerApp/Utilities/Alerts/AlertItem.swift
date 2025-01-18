//
//  AlertItem.swift
//  BarcodeScannerApp
//
//  Created by Ahmed Nafie on 03/12/2024.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}
