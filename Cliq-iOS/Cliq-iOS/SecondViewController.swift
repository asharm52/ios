//
//  SecondViewController.swift
//  Cliq-iOS
//
//  Created by Arjun Sarode on 10/11/14.
//  Copyright (c) 2014 Cliq. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate, CLLocationManagerDelegate {
    
    @IBOutlet var txtTitle : UITextField!
    @IBOutlet var txtDesc : UITextField!
    
    
    var manager: OneShotLocationManager?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager = OneShotLocationManager()
        manager!.fetchWithCompletion {location, error in
            
            // fetch location or an error
            if let loc = location {
                println(location)
            } else if let err = error {
                println(err.localizedDescription)
            }
            self.manager = nil
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Events that are triggered when the create event button is clicked
    @IBAction func btnAddEvent_Click(sender: UIButton) {
        
        // TODO
        // Get all the information that we need to create a new event
        
        
        
//        eventMgr.addEvent(txtTitle.text, desc: txtDesc.text)
//        txtTitle.text = ""
//        txtDesc.text = ""
        self.tabBarController?.selectedIndex = 0
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }

    
    // UITextFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

