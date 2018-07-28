//
//  SectionViewController.swift
//  SimpleTableViewDemo
//
//  Created by Vipul on 28/07/18.
//  Copyright © 2018 Vipul. All rights reserved.
//

import UIKit

class SectionViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var countries:[String:[String]] = [:]
    
    @IBOutlet weak var sectionTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sectionTableView.dataSource = self
        sectionTableView.delegate = self
        
        countries["Asia"] = ["India","China","Japan"]
        countries["Africa"] = ["Nigeria","Rwanda","Somalia","Uganda"]
        countries["Europe"] = ["Croatia","Netherlands","Romania","Sweden","Ankara"]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        let keys = Array(countries.keys)
        return keys.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let keys = Array(countries.keys)
        return  keys[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let keys = Array(countries.keys)
        let key = keys[section]
        return countries[key]!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let keys = Array(countries.keys)
        let key = keys[indexPath.section]
        let countryValues = countries[key]!
        
        let countryName = countryValues[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = countryName
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let keys = Array(countries.keys)
        let key = keys[indexPath.section]
        let countryValues = countries[key]!
        
        let countryName = countryValues[indexPath.row]
        print("Selected Country is \(countryName)")
    }
}

