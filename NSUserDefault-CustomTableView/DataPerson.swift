//
//  DataPerson.swift
//  NSUserDefault-CustomTableView
//
//  Created by Dino Musliu on 24/07/2016.
//  Copyright © 2016 Dino Musliu. All rights reserved.
//

import Foundation
import UIKit

class DataPerson {
    
    static let instance = DataPerson()
    let KEY_POST = "people"
    var arrayPeople = [Person]()
  

    func saveNS () {
        let peopleData = NSKeyedArchiver.archivedDataWithRootObject(arrayPeople)
        NSUserDefaults.standardUserDefaults().setObject(peopleData, forKey: KEY_POST)
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    func loadNS () {
        if let loadedPeople = NSUserDefaults.standardUserDefaults().objectForKey(KEY_POST) as? NSData{
            if let peoplearray = NSKeyedUnarchiver.unarchiveObjectWithData(loadedPeople) as? [Person]{
                arrayPeople = peoplearray
            }
        }
    }
    
    
}