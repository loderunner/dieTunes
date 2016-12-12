//
//  main.swift
//  dieTunes
//
//  Created by Charles Francoise on 12/12/2016.
//  Copyright © 2016 Charles Francoise. All rights reserved.
//

import Foundation
import AppKit

let workspace = NSWorkspace.shared()
let notificationCenter = workspace.notificationCenter

notificationCenter.addObserver(forName: Notification.Name.NSWorkspaceDidLaunchApplication,
                               object: nil,
                               queue: nil)
{ (notification: Notification) in
    let app: NSRunningApplication = notification.userInfo![NSWorkspaceApplicationKey] as! NSRunningApplication
    if app.bundleIdentifier == "com.apple.iTunes" {
        app.terminate()
    }
}

CFRunLoopRun()

