//
//  TableViewCell.swift
//  magic cooking
//
//  Created by stud on 11/05/2019.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import Foundation
import UIKit

class IngredientsCell: UITableViewCell {
    
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemText: UILabel!
    
    @IBAction func itemSwitch(_ sender: Any) {
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
