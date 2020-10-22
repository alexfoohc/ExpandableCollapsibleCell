//
//  TeamData.swift
//  TableViewellExpColl
//
//  Created by Alejandro Hernández Cortés on 22/10/20.
//  Copyright © 2020 Alejandro Hernández Cortés. All rights reserved.
//

import Foundation
struct TeamData {
    private(set) public var title: String
    private(set) public var message: String
    
    init(title: String, message: String) {
        self.title = title
        self.message = message
    }
    
}
