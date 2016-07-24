//
//  PersonVC.swift
//  NSUserDefault-CustomTableView
//
//  Created by Dino Musliu on 23/07/2016.
//  Copyright © 2016 Dino Musliu. All rights reserved.
//

import UIKit

class PersonVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView : UITableView!
    var personObj = Person()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        DataPerson.instance.loadNS()
        tableView.reloadData()
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
                
        let post = DataPerson.instance.arrayPeople[indexPath.row]
    
        if let cell = tableView.dequeueReusableCellWithIdentifier("personCell") as? PersonCell {
            cell.configureCell(post)
            return cell
        } else {
            let cell = PersonCell()
            cell.configureCell(post)
            return cell
        }
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataPerson.instance.arrayPeople.count
    }
    
}
