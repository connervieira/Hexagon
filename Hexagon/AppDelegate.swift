//
//  AppDelegate.swift
//  Hexagon
//
//  Created by Conner Vieira on 8/24/19.
//  Copyright © 2019 V0LT. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool { // If all windows are closed, automatically terminate
        NSApplication.shared.terminate(self)
        return true
    }


}

