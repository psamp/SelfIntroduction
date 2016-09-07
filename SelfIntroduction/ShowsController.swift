//
//  ShowsController.swift
//  SelfIntroduction
//
//  Created by Princess Sampson on 9/7/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

import UIKit

class ShowsController: UIViewController {
    @IBOutlet var showsTable: UITableView!
    var shows: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showsTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

extension ShowsController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = shows[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shows.count
    }
    
}

