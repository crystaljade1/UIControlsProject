//
//  TasksTableViewController".swift
//  UIControlsProject
//
//  Created by Crystal Jade Allen-Washington on 5/4/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import UIKit

class TasksTableViewController: UIViewController, UITableViewDelegate {
    let dataSource: Colorway = Colorway(shades: [
        "Amnesty Apricot",
        "Gallimaufry Green",
        "Macrosmatic at Midnight",
        "Indigo Invictus",
        "Purple Parhelion"
        ])
    
    var tableView: UITableView {
        return view as! UITableView
    }
    
    override func loadView() {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.delegate = self
        tableView.dataSource = dataSource
        
        self.view = tableView
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let colorOfChoice = dataSource.shades[indexPath.row]
        print("Let it be \(colorOfChoice).")
    }
}


class Colorway: NSObject, UITableViewDataSource {
    let shades: [String]
    init(shades: [String]) {
        self.shades = shades
        super.init()
    }
    
    override convenience init() {
        self.init(shades: [])
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shades.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let nameOfShade = shades[indexPath.row]
        cell.textLabel?.text = nameOfShade
        return cell
    }
}

class Task {
    let title: String
    
    init(title: String) {
        self.title = title
    }
    
    
}






















