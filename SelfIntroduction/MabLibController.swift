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
        emptyTextField(withPlaceholder: "Enter noun", andDisablePlayButton: true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        emptyTextField(withPlaceholder: "Enter noun", andDisablePlayButton: true)
        textField.isEnabled = true;
        words = [:]
    }
    
    func emptyTextField(withPlaceholder placeholderText: String, andDisablePlayButton: Bool) {
        playButton.isEnabled = !andDisablePlayButton
        textField.text?.removeAll()
        textField.placeholder = placeholderText;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let iuoNoun: String! = words["noun"]
        let iuoVerb: String! = words["verb"]
        let noun: String = iuoNoun
        let verb: String = iuoVerb
        
        let destinationStory = "If you followed directions, \"\(noun)\" is a noun and \"\(verb)\" is a verb. Otherwise, boo on you."
        
        if let destination = segue.destination as? StoryController {
            
            destination.story = destinationStory
        }
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
            
            emptyTextField(withPlaceholder: "Hit the play button", andDisablePlayButton: false)
            textField.isEnabled = false;
        }
    }
    
}

