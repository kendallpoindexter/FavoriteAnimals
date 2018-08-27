//
//  ViewController.swift
//  FavoriteAnimals
//
//  Created by Kendall Poindexter on 8/27/18.
//  Copyright © 2018 Kendall Poindexter. All rights reserved.
//

import UIKit

class FavoriteAnimalViewController: UITableViewController {

// MARK: - Properties
    
    let myFavoriteAnimals = ["Lions", "Tigers", "Dogs", "Tortoises", "Elephants"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

// MARK: - Methods
   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FavoriteAnimals", for: indexPath)
        cell.textLabel?.text = myFavoriteAnimals[indexPath.row]
        
        return cell
    }
}

