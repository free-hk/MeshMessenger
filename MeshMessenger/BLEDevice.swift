//
//  BLEDevice.swift
//  MeshMessenger
//
//  Created by For HK on 3/11/2019.
//  Copyright © 2019 FreeHK. All rights reserved.
//

import Foundation
import RZBluetooth

final class BLEDevice {
    var advInfo = Dictionary<AnyHashable, Any>()
    var peripheral: RZBPeripheral?
    var rssi: NSNumber?
    var name: String?
}
