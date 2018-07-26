//
//  ViewController.swift
//  SwitchBoard
//
//  Created by Shalu Scaria on 2018-07-24.
//  Copyright © 2018 Shalu Scaria. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var onOffBtn: UIButton!
    @IBOutlet var onOffLbl: UILabel!
    
    //**** SwitchStatus set to off
    var switchStatus = SwitchStatus.off
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
   //**** toggleBtnPressed method calls toggle()method
   //**** toggle() switch the status to on/off
   //**** changes made to view based on switchstatus.
    
    @IBAction func toggleBtnPressed(_ sender: Any) {
        switchStatus.toggle()
        
        if switchStatus == .off {
            view.backgroundColor = #colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)
            onOffBtn.setImage(UIImage(named: "offBtn"), for: .normal)
            onOffLbl.text = "🌚 OFF 🌚"
            onOffLbl.textColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        }else{
            view.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            onOffLbl.text = "🌝 ON 🌝"
            onOffBtn.setImage(UIImage(named:"onBtn"), for: .normal)
            onOffLbl.textColor = #colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)
        }
        
    }
    

}

