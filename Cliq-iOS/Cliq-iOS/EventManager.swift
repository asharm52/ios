//
//  EventManager.swift
//  Cliq-iOS
//
//  Created by Arjun Sarode on 10/12/14.
//  Copyright (c) 2014 Cliq. All rights reserved.
//

import UIKit

var eventMgr : EventManager = EventManager()

struct event{
    var desc = "No description"
    var tags = "No tags"
    var timePosted = 1413234046
    var groupSize = 6
    var location = ["lat": 40.110971, "long": -88.225928]
    var name = "Firstname"
    var avatar = "n/a"
    
}

class EventManager: NSObject {
    
    var events = [event]()
    
    //TODO
    // Add a function to add a new event with the information in the parameters
    
//    func addEvent(title: String, desc: String) {
//        events.append(event(title: title, desc: desc))
//    }


}
