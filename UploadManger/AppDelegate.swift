//
//  AppDelegate.swift
//  UploadManger
//
//  Created by Sky Arnold on 4/22/15.
//  Copyright (c) 2015 Skyler Arnold. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate  {

    @IBOutlet weak var window: NSWindow!

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        var request = NSMutableURLRequest(URL: NSURL(string: "https://accounts.google.com/o/oauth2/auth?client_id=852892140756-oqbpkk811aojkh2ef25lq5fn1micvnv7.apps.googleusercontent.com&redirect_uri=http://localhost&response_type=code&scope=https://www.googleapis.com/auth/youtube.upload")!)
        var session = NSURLSession.sharedSession()
        request.HTTPMethod = "POST"
        
        var params = ["client_id": "852892140756-oqbpkk811aojkh2ef25lq5fn1micvnv7.apps.googleusercontent.com", "redirect_uri": "http://localhost:port", "response_type": "code", "scope": "*"]
        var err: NSError?
        request.HTTPBody = NSJSONSerialization.dataWithJSONObject(params, options: nil, error: &err)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    }
    
    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

