//
//  ContentView.swift
//  BarcodeScannerApp
//
//  Created by Ahmed Nafie on 24/11/2024.
//

import SwiftUI

struct BarCodeScannerScreen: View {
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem)
                    .frame(maxHeight: 300)
                
                Spacer().frame(height: 60)
                Label("Scanned Barcode", image: "barcode.viewfinder")
                    .font(.title)
                Text(viewModel.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundStyle(viewModel.statusTextColor)
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
            }
        }
        .padding()
    }
}

#Preview {
    BarCodeScannerScreen()
}
