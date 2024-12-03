//
//  ScannerViewControllerDelegate.swift
//  BarcodeScannerApp
//
//  Created by Ahmed Nafie on 27/11/2024.
//


protocol ScannerViewControllerDelegate: class {
    func didFind(barcode: String)
    func didSurface(error: CameraError)
}
