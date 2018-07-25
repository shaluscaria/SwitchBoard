//
//  SwitchStatus.swift
//  SwitchBoard
//
//  Created by Shalu Scaria on 2018-07-24.
//  Copyright © 2018 Shalu Scaria. All rights reserved.
//

import Foundation

enum SwitchStatus : Togglable{
    case on,off
    
    mutating func toggle() {
        switch self{
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}
