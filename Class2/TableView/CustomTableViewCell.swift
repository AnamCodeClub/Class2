//
//  CustomTableViewCell.swift
//  Class2
//
//  Created by 이용준 on 2022/04/21.
//

import Foundation
import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet var customLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
