//
//  InterestsController.swift
//  SelfIntroduction
//
//  Created by Princess Sampson on 9/6/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

import UIKit

class InterestsController: UIViewController {
    @IBOutlet var interestsTable: UITableView!
    var interests: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interestsTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

extension InterestsController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = interestsTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = interests[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return interests.count
    }

}

