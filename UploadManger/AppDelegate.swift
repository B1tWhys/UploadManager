//
//  AppDelegate.swift
//  UploadManger
//
//  Created by Sky Arnold on 4/22/15.
//  Copyright (c) 2015 Skyler Arnold. All rights reserved.
//]

// http://practicalswift.com/2014/06/27/a-minimal-webkit-browser-in-30-lines-of-swift/

import Cocoa
import WebKit

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate  {

    @IBOutlet weak var window: NSWindow!

    func applicationDidFinishLaunching(aNotification: NSNotification) {
//        var window = NSWindow(contentRect: CGRect(origin: CGPoint(x: 0.0, y: 0.0), size: CGSize(width: 300, height: 300)),
//            styleMask: NSTitledWindowMask,
//            backing: NSBackingStoreType.Buffered,
//            defer: false)
//        let bgColor = NSColor(calibratedRed: 255, green: 0, blue: 0, alpha: 255)
//        window.backgroundColor = bgColor
//        
//        window.addChildWindow(win, ordered:NSWindowOrderingMode.Above)
        
        var browser = WebView(frame: NSRect(x: 0.0, y: 0.0, width: 400, height: 400))
        
        self.window.addChildWindow(browser, ordered: NSWindowOrderingMode.Above)
    }
    
    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

