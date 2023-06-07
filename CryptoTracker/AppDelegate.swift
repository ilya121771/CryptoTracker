//
//  AppDelegate.swift
//  CryptoTracker
//
//  Created by Илья on 7.06.23.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.squareLength)
    
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        statusItem.button?.image = NSImage(named: NSImage.Name("bitcoin-48"))
        statusItem.button?.action = #selector(createPopover)
        
        // Insert code here to initialize your application
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }
    
    
    @objc func createPopover() {
        let mainStoryboard: NSStoryboard = NSStoryboard(name: NSStoryboard.Name("Main"), bundle: nil)
        
        guard let vs = mainStoryboard.instantiateController(withIdentifier: "ViewController") as?
                ViewController else{
            fatalError("Unable to find ViewContoller in Storyboard")
        }
        
        guard let button = statusItem.button else {
            fatalError("Unable to find the StatusButton")
        }
        
        let popoverView = NSPopover()
        popoverView.contentViewController =  vs
        popoverView.behavior = .transient
        popoverView.show(relativeTo: button.bounds, of: button, preferredEdge: .maxY)
    }
}
