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
                ScannerView()
                    .frame(maxWidth:.infinity , maxHeight: 300 )
                
                Spacer().frame(height: 60)
                Label("Scanned Barcode", image: "barcode.viewfinder")
                    .font(.title)
                
                Text("Not Scanned Yet")
                    .bold()
                    .font(.largeTitle)
                    .foregroundStyle(.green)
            }
            .navigationTitle("Barcode Scanner")
        }
        .padding()
    }
}

#Preview {
    BarCodeScannerScreen()
}
