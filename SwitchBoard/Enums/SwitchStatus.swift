//
//  SwitchStatus.swift
//  SwitchBoard
//
//  Created by Shalu Scaria on 2018-07-24.
//  Copyright © 2018 Shalu Scaria. All rights reserved.
//

import Foundation


//**** SwitchStatus confirms to protocol Togglable
enum SwitchStatus : Togglable{
    case on,off
    
    //**** Defining mutating method toggle()
    //**** Toggles the switch on/off based on status
    //**** Switches to on if its off and viceversa
    mutating func toggle() {
        switch self{
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}
