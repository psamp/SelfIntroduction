//
//  MadLibController.swift
//  SelfIntroduction
//
//  Created by Princess Sampson on 9/6/16.
//  Copyright © 2016 Princess Sampson. All rights reserved.
//

import UIKit

class MabLibController: UIViewController {
    var words: Dictionary<String, String> = [:]
    @IBOutlet var playButton: UIButton!
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emptyTextField(andDisablePlayButton: true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        emptyTextField(andDisablePlayButton: true)
        
    }
    
    func emptyTextField(andDisablePlayButton: Bool) {
        playButton.isEnabled = !andDisablePlayButton
        textField.text?.removeAll()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

extension MabLibController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        textField.text?.removeAll()
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return !(textField.text?.isEmpty ?? true)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if words.isEmpty {
            words["noun"] = textField.text
            textField.placeholder = "Enter verb"
        } else {
            words["verb"] = textField.text
            
            emptyTextField(andDisablePlayButton: false)
            textField.isEnabled = false;
            textField.placeholder = "Hit the play button"
        }
    }
    
}

