//
//  ContentView.swift
//  BarcodeScannerApp
//
//  Created by Ahmed Nafie on 24/11/2024.
//

import SwiftUI

struct BarCodeScannerScreen: View {
    var body: some View {
        NavigationView {
            VStack {
                Rectangle()
                    .frame(maxWidth:.infinity , maxHeight: 300 )
            }
            .navigationTitle("Barcode Scanner")
        }
        .padding()
    }
}

#Preview {
    BarCodeScannerScreen()
}
