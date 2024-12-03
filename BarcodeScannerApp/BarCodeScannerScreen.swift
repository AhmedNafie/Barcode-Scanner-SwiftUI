//
//  ContentView.swift
//  BarcodeScannerApp
//
//  Created by Ahmed Nafie on 24/11/2024.
//

import SwiftUI

struct BarCodeScannerScreen: View {
    @State private var scannedCode = ""
    @State private var alertItem: AlertItem?
    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $scannedCode, alertItem: $alertItem)
                    .frame(maxWidth:.infinity , maxHeight: 300 )
                
                Spacer().frame(height: 60)
                Label("Scanned Barcode", image: "barcode.viewfinder")
                    .font(.title)
                
                Text(scannedCode.isEmpty ? "Not Scanned Yet" : scannedCode)
                    .bold()
                    .font(.largeTitle)
                    .foregroundStyle(scannedCode.isEmpty ? .red : .green)
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $alertItem) { alertItem in
                Alert(title: Text(alertItem.title), message: Text(alertItem.message), dismissButton: alertItem.dismissButton)
            }
        }
        .padding()
    }
}

#Preview {
    BarCodeScannerScreen()
}
