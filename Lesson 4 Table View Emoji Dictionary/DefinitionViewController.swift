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
    
    var emojiefef = "No Emoji"    //17th
    
    
    @IBOutlet weak var meaning: UILabel!    //20th
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiPic.text = emojiefef
        
        
        if emojiefef == "😄" {       //21st
            meaning.text = "S"
        } else if emojiefef == "😡" {
        meaning.text = "C"
        }  else if emojiefef == "😇" {
            meaning.text = "H"
        }  else if emojiefef == "😎" {
            meaning.text = "R"
            
        } else if emojiefef == "💩" {
            meaning.text = "U"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}



