//
//  ScannerView.swift
//  BarcodeScannerApp
//
//  Created by Ahmed Nafie on 27/11/2024.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
 
    
    func makeCoordinator() -> Coordinator {
         Coordinator()
    }
    func makeUIViewController(context: Context) -> ScannerViewController {
        ScannerViewController(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerViewController, context: Context) {}
  
    typealias UIViewControllerType = ScannerViewController
    
    final class Coordinator:NSObject, ScannerViewControllerDelegate {
        func didFind(barcode: String) {
            print(barcode)
        }
        
        func didSurface(error: CameraError) {
            print(error.rawValue)

        }
        
        
    }
}

#Preview {
    ScannerView()
}
