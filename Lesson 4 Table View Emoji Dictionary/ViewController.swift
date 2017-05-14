//
//  ViewController.swift
//  Lesson 4 Table View Emoji Dictionary
//
//  Created by Bryan on 5/13/17.
//  Copyright © 2017 KO. All rights reserved.
//

import UIKit


//after saying get the info from self, change this shit below.  3rd
class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!    //1st.  connecting viewcontroller to this.
    
    //table view needs to know how many things are there and how many rows 
    
    
    var emojis : [Emoji] = []     // [Emoji]  the type is Emoji inside of an array
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //where it goes to see how many things it needs/ how many rows. says look to this viewcontroller (self) for the answers.  2nd
        tableView.dataSource = self
        tableView.delegate = self
        emojis = makeEmojiArray()
        
        
        
        
    }
    
    
    //add this shit after adding uitableview shit above
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {      //4th
        return emojis.count    //9th
    }
    
    
    //what cell should/do you want for each row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {   //5th
        
        let cell = UITableViewCell()     //6th
        //cells have textlabels inside of them
        
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji    //10th
        return cell    //7th
        
    }
    
    
    
    //after creating 2nd storyboard viewcontroller with labels. create segue with identifier nam.  //11th
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {        //12th
        
        tableView.deselectRow(at: indexPath, animated: true)   //last step. if you want the gray bar to disappear.
        

        
        let emoji = emojis[indexPath.row]        //15th part 1
        performSegue(withIdentifier: "moveSegue", sender: emoji)      //code to make segue happen.   //13th    changing sender to emoji is 15th part 2.
    }
    
    
    //gets run right between 1st and 2nd view controller.  the sender above gets sent to the shit below
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {      //14th
        let defViewController = segue.destination as! DefinitionViewController    //16th   this constant contains the connection between this and the definition view controller.  ..?
        defViewController.emojiefef = sender as! Emoji    //what im sending over is Emoji and not [Emoji] because emoji1 is being sent which is not an array, its just type Emoji.      // 18th
    }
    
    
    
    //create new view controller code by file. new file. cocoa touch class. subclass uiviewcontroller.  click on yellow circle of that storyboard view controller and click on class and type in the name of the viewcontroller.  15th
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😄"
        emoji1.birthYear = 1900
        emoji1.category = "Smiley"
        emoji1.definition = "Smiley face with sunglasses"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😡"
        emoji2.birthYear = 1910
        emoji2.category = "Angry"
        emoji2.definition = "Angry Red Face"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😇"
        emoji3.birthYear = 1920
        emoji3.category = "Holy"
        emoji3.definition = "Holy Face"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😎"
        emoji4.birthYear = 1930
        emoji4.category = "Cool"
        emoji4.definition = "Coolio"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "💩"
        emoji5.birthYear = 1940
        emoji5.category = "Poo"
        emoji5.definition = "Poop Man"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5]

}

}



/*
 
 Emoji Dictionary:
 
 
 -under override func in viewcontroller.swift
 
 
 self.view.backgroundColor = UIColor.red
 
 
 Emoji Dictionary:
 -control click on label and drag to under viewcontroller for outlets
 
 
 -changing label text
 theLabel.text = "Hello there"
 
 -buton control click under label
 put as action
 -add any code for button tap to do something
 
 
 -when maximizing table view, uncheck the constrain to margins and put 0 for all 4 shit
 
 
 -control click table view under class ViewController
 
 -create new view controller. click on yellow circle and control click to other view controller. click present modally = segue
 
 
 
 -to add back, click on view controller yellow circle. click editor, embed in navigation controller
 -change segue kind to show
 
 -present modally shoves another view controller on top
 
 
 -to get rid of large space between top and emojis, click on yellow circle of table view controller and uncheck "adjust scroll view insets"
 
 
 */





































