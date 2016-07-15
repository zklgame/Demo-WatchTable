//
//  InterfaceController.swift
//  WatchTable WatchKit Extension
//
//  Created by zklgame on 16/7/15.
//  Copyright © 2016年 Kaili Zhu. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var table: WKInterfaceTable!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        let rowArray = ["LabelRow", "LabelRow", "ImageRow"]
        self.table.setRowTypes(rowArray)
        
        for i in 0 ..< 2 {
            let cell = self.table.rowControllerAtIndex(i) as! LabelRowController
            cell.label.setText("label \(i)")
        }
        
        let cell = self.table.rowControllerAtIndex(2) as! ImageRowController
        cell.image.setImage(UIImage(named: "meow"))
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
