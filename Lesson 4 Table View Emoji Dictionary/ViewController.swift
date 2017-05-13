//
//  ViewController.swift
//  Lesson 4 Table View Emoji Dictionary
//
//  Created by Bryan on 5/13/17.
//  Copyright © 2017 KO. All rights reserved.
//

import UIKit


//after saying get the info from self, change this shit below
class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    //table view needs to know how many things are there and how many rows 
    
    
    var emojis = ["😄", "😡", "😇", "😎", "💩"]
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //where it goes to see how many things it needs/ how many rows. says look to this viewcontroller (self) for the answers
        tableView.dataSource = self
        tableView.delegate = self
        
        
        
        
        
    }
    
    
    //add this shit after adding uitableview shit above
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    
    //what cell should/do you want for each row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        //cells have textlabels inside of them
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

