//
//  ViewController.swift
//  CryptoTracker
//
//  Created by Илья on 7.06.23.
//

import Cocoa

class ViewController: NSViewController {
    
    var APITimer: Timer?
    
    let increase: NSColor  = NSColor(red: 0.2, green: 0.5, blue: 1.0, alpha: CGFloat)
    let decrease: NSColor  = NSColor(red: 0.72, green: 0.25, blue: 0.96, alpha: CGFloat)
    
    @IBOutlet weak var btcUsd: NSTextField!
    @IBOutlet weak var ethUsd: NSTextField!
    @IBOutlet weak var ltcUsd: NSTextField!
    
    
    
    @IBOutlet weak var btcPercent: NSTextField!
    @IBOutlet weak var ethPercent: NSTextField!
    @IBOutlet weak var ltcPercent: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func quitPressed(_ sender: Any) {
        NSApplication.shared.terminate(sender)
    }
    
}

