//
//  CameraError.swift
//  BarcodeScannerApp
//
//  Created by Ahmed Nafie on 27/11/2024.
//


enum CameraError: String {
    case invalidDeviceInput = "Something is wrong with the camera."
    case invalidScannedValue = "The value scanned is not valid, This app scans EAN-8 and EAN-13."
}
