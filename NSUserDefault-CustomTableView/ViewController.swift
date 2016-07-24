//
//  ViewController.swift
//  NSUserDefault-CustomTableView
//
//  Created by Dino Musliu on 22/07/2016.
//  Copyright © 2016 Dino Musliu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imeTxt: UITextField!
    @IBOutlet weak var prezimeTxt: UITextField!
    @IBOutlet weak var validacijaLbl: UILabel!
    
    var personObject = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func PotvrdiBtn(sender: AnyObject) {
        
        let ime = imeTxt.text
        let prezime = prezimeTxt.text
        let person = Person(ime: ime!, prezime: prezime!)
        
        if imeTxt.text == "" {
            validacijaLbl.text = "Niste unijeli ime"
        }
        
        else if prezimeTxt.text == "" {
            validacijaLbl.text = "Niste unijeli prezime"
        
        }else {
            DataPerson.instance.arrayPeople.append(person)
            DataPerson.instance.saveNS()
            
            imeTxt.text = ""
            prezimeTxt.text = ""
            validacijaLbl.text = ""
        }
        
    }
}

