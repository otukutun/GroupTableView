//
//  ViewController.swift
//  GroupTableView
//
//  Created by otukutun on 12/20/16.
//  Copyright © 2016 otukutun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate  = self
    }
    
    let sectionArray: Array = ["Tokyo", "Oosaka"]
    
    let tokyoRows: Array = ["Shibuya", "Shinjuku", "Ikebukuro"]
    let oosakaRows: Array = ["Umeda", "Oosaka"]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var tableView: UITableView!

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return tokyoRows.count
        } else if section == 1 {
            return oosakaRows.count
        } else {
            return 0
        }
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionArray[section] as String
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        if indexPath.section == 0 {
            cell.textLabel?.text = "\(tokyoRows[indexPath.row])"
        } else if indexPath.section == 1 {
            cell.textLabel?.text = "\(oosakaRows[indexPath.row])"
        }
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionArray.count
    }

    func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
        if index == 0 {
            return tokyoRows.count
        } else if index == 1 {
            return oosakaRows.count
        } else {
            return 0
        }
    }
}

