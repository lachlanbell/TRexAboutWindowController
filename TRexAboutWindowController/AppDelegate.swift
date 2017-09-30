//
//  AppDelegate.swift
//  TRexAboutWindowController
//
//  Created by David Ehlen on 25.07.15.
//  Copyright © 2015 David Ehlen. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var aboutWindowController:TRexAboutWindowController
    
    override init() {
        self.aboutWindowController = TRexAboutWindowController(windowNibName: NSNib.Name(rawValue: "PFAboutWindow"))
        super.init()
    }
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    @IBAction func showAboutWindow(_ sender:AnyObject) {
        self.aboutWindowController.appURL = URL(string:"https://github.com/T-Rex-Editor/")
        self.aboutWindowController.appName = "TRex-Editor"
        let font = NSFont(name: "HelveticaNeue", size: 11.0) ?? NSFont.systemFont(ofSize: 11.0)
        let color = NSColor.tertiaryLabelColor
        let attribs:[NSAttributedStringKey: Any] = [NSAttributedStringKey(rawValue: NSAttributedStringKey.foregroundColor.rawValue):color,
                                                    NSAttributedStringKey(rawValue: NSAttributedStringKey.font.rawValue):font]
        
        self.aboutWindowController.appCopyright = NSAttributedString(string: "Copyright (c) 2015 David Ehlen", attributes: attribs)
        
        self.aboutWindowController.windowShouldHaveShadow = true
        self.aboutWindowController.showWindow(nil)
    }
}

