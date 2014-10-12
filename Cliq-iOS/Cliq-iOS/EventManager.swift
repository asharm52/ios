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
    var title = "No Title"
    var desc = "No description"
}

class EventManager: NSObject {
    
    var events = [event]()
    
    func addEvent(title: String, desc: String) {
        events.append(event(title: title, desc: desc))
    }


}
