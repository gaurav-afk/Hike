//
//  Item.swift
//  Hike
//
//  Created by Gaurav Rawat on 2024-01-31.
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
