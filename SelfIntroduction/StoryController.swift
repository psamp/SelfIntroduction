//
//  StoryController.swift
//  SelfIntroduction
//
//  Created by Princess Sampson on 9/6/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

import UIKit

class StoryController: UIViewController {
    var story: String = "Boring Story"
    @IBOutlet var storyText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyText.text = story
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

