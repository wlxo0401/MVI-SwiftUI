//
//  Item.swift
//  MyProj
//
//  Created by KimJitae on 9/2/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
