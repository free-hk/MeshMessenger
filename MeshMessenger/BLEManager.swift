//
//  BLEManager.swift
//  MeshMessenger
//
//  Created by For HK on 3/11/2019.
//  Copyright © 2019 FreeHK. All rights reserved.
//

import Foundation
import RZBluetooth

final class BLEManager {
    
    var centralManager = RZBCentralManager.init()
    var scannedDevices = [BLEDevice]()
    
    func search(uuid: String) {
        self.centralManager.scanForPeripherals(withServices: [CBUUID.init(string: uuid)], options: [:]) { ( scaninfo , error) in
          
            guard error == nil else {
                print("error = \(error?.localizedDescription)")
                return
            }
            
            guard let found_device = self.scannedDevices.first(where: { $0.name == scaninfo?.peripheral.name }) else {
                let device = BLEDevice.init()
                device.advInfo = scaninfo!.advInfo
                device.peripheral = scaninfo?.peripheral
                device.name = scaninfo?.peripheral.name
                
                self.scannedDevices.append(device)
                return
            }
        
            found_device.rssi = scaninfo?.rssi
            found_device.advInfo = scaninfo!.advInfo
        }
    }
}
