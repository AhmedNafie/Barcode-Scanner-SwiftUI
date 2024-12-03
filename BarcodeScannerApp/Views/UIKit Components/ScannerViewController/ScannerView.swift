//
//  ScannerView.swift
//  BarcodeScannerApp
//
//  Created by Ahmed Nafie on 27/11/2024.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    @Binding var scannedCode: String
    @Binding var alertItem: AlertItem?

    func makeCoordinator() -> Coordinator {
        Coordinator(scannerView:self)
    }
    func makeUIViewController(context: Context) -> ScannerViewController {
        ScannerViewController(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerViewController, context: Context) {}
  
    typealias UIViewControllerType = ScannerViewController
    
    final class Coordinator:NSObject, ScannerViewControllerDelegate {
        private let scannerView: ScannerView
        init(scannerView: ScannerView) {
            self.scannerView = scannerView
        }
        func didFind(barcode: String) {
            print(barcode)
            scannerView.scannedCode = barcode
        }
        
        func didSurface(error: CameraError) {
            print(error)
            switch error {
            case .invalidDeviceInput:
                scannerView.alertItem = AlertContext().invalidDeviceInput
            case .invalidScannedValue:
                scannerView.alertItem = AlertContext().invalidScannedValue
            }
        }
    }
}

