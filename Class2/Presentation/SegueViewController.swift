//
//  SegueViewController.swift
//  Class2
//
//  Created by 이용준 on 2022/04/21.
//

import Foundation
import UIKit

class SegueViewController: UIViewController {
    @IBOutlet var label: UILabel!
    var someString: String? = nil
    var number: Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = someString
        label.textColor = .black
    }
    

}
