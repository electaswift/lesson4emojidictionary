//
//  DefinitionViewController.swift
//  Lesson 4 Table View Emoji Dictionary
//
//  Created by Bryan on 5/13/17.
//  Copyright © 2017 KO. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    
    @IBOutlet weak var emojiPic: UILabel!    //19th
    
    var emojiefef = Emoji()    //17th
    
    
    @IBOutlet weak var meaning: UILabel!    //20th
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    
    @IBOutlet weak var birthyearLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiPic.text = emojiefef.stringEmoji
        categoryLabel.text = emojiefef.category
        birthyearLabel.text = "\(emojiefef.birthYear)"
        meaning.text = emojiefef.definition
   
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}



