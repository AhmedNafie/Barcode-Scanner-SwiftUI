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
                    .frame(maxWidth:.infinity , maxHeight: 300 )
                
                Spacer().frame(height: 60)
                Label("Scanned Barcode", image: "barcode.viewfinder")
                    .font(.title)
                
                Text(viewModel.scannedCode.isEmpty ? "Not Scanned Yet" : viewModel.scannedCode)
                    .bold()
                    .font(.largeTitle)
                    .foregroundStyle(viewModel.scannedCode.isEmpty ? .red : .green)
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: Text(alertItem.title), message: Text(alertItem.message), dismissButton: alertItem.dismissButton)
            }
        }
        .padding()
    }
}

#Preview {
    BarCodeScannerScreen()
}
