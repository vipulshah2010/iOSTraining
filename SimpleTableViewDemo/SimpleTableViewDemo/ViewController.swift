//
//  ViewController.swift
//  SimpleTableViewDemo
//
//  Created by Vipul on 28/07/18.
//  Copyright © 2018 Vipul. All rights reserved.
//

import UIKit

struct Fruit {
    var name:String
    var price:String
}

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var fruits = [Fruit]()
    
    @IBOutlet weak var fruitsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fruitsTableView.dataSource = self
        fruitsTableView.delegate = self
        
        fruits.append(Fruit(name: "Apple", price: "$10"))
        fruits.append(Fruit(name: "Orange", price: "$20"))
        fruits.append(Fruit(name: "Pineapple", price: "$30"))
        fruits.append(Fruit(name: "Banana", price: "$40"))
        
        self.navigationItem.rightBarButtonItem = editButtonItem
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        if indexPath.row == 2 {
            return false
        }
        return true
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        fruitsTableView.setEditing(editing, animated: animated)
        super.setEditing(editing, animated: animated)
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let fruit = self.fruits[sourceIndexPath.row]
        fruits.remove(at: sourceIndexPath.row)
        fruits.insert(fruit, at: destinationIndexPath.row)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let rowIndex = indexPath.row
            fruits.remove(at: rowIndex)
            fruitsTableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let fruit = fruits[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = fruit.name
        cell.detailTextLabel?.text = fruit.price
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedRowIndex = indexPath.row
        let selectedFruit = fruits[selectedRowIndex]
        print("Selected fruit is \(selectedFruit)")
    }
}

