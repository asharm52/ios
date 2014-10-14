//
//  FirstViewController.swift
//  Cliq-iOS
//
//  Created by Arjun Sarode on 10/11/14.
//  Copyright (c) 2014 Cliq. All rights reserved.
//

import UIKit
import CoreLocation

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, CLLocationManagerDelegate {
    
    @IBOutlet var tblEvents : UITableView!
    
    let lm = CLLocationManager()
    
    func findMyLocation(){
        lm.delegate = self
        lm.desiredAccuracy = kCLLocationAccuracyBest
        lm.startUpdatingLocation()
        println(lm.location)
    }
    
    func locationManager(manager: CLLocationManager!, didFailWithError error: NSError!) {
        println("Error while updating location ")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventMgr.events.count
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
        
        cell.textLabel?.text = eventMgr.events[indexPath.row].title
        cell.detailTextLabel?.text = eventMgr.events[indexPath.row].desc
        
        return cell
        
    }
    func findMyTime(){
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components(.CalendarUnitHour | .CalendarUnitMinute, fromDate: date)
        let hour = components.hour
        let minutes = components.minute
    }
    
    // Called when user returns to this view
    override func viewWillAppear(animated: Bool) {
        tblEvents.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
