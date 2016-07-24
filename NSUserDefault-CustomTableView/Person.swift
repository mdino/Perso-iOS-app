//
//  Person.swift
//  NSUserDefault-CustomTableView
//
//  Created by Dino Musliu on 22/07/2016.
//  Copyright © 2016 Dino Musliu. All rights reserved.
//

import Foundation


class Person : NSObject, NSCoding {


    var ime: String!
    var prezime: String!

    
    init (ime: String, prezime: String){
        self.ime = ime
        self.prezime = prezime
    
    }
    
    override init() {
    }
    
    required convenience init? (coder aDecoder: NSCoder){
        self.init()
        self.ime = aDecoder.decodeObjectForKey("ime") as? String
        self.prezime = aDecoder.decodeObjectForKey("prezime") as? String
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.ime, forKey: "ime")
        aCoder.encodeObject(self.prezime, forKey: "prezime")
    }
    
}
    
