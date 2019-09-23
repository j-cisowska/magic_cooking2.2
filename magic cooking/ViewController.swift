//
//  ViewController.swift
//  magic cooking
//
//  Created by stud on 11/05/2019.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
    var name:NSArray = []
    var imageArr:NSArray = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
        
        name = ["bazylia", "maslo", "jajka", "mleko"]
        imageArr = [UIImage(named: "bazylia")!, UIImage(named: "maslo")!, UIImage(named: "jajka")!, UIImage(named: "mleko")!,]
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell") as! IngredientsCell
    
        cell.itemImage.image = imageArr[indexPath.row] as! UIImage
        cell.itemText.text = name[indexPath.row] as! String
        
        
    return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
}
