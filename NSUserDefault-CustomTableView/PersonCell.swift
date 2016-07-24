//
//  NamesViewCell.swift
//  NSUserDefault-CustomTableView
//
//  Created by Dino Musliu on 22/07/2016.
//  Copyright © 2016 Dino Musliu. All rights reserved.
//

import UIKit

class PersonCell: UITableViewCell {
    
    @IBOutlet weak var imeLbl : UILabel!
    @IBOutlet weak var prezimeLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(person: Person){
        imeLbl.text = person.ime
        prezimeLbl.text = person.prezime
    
    
    }


}
