//
//  SecondViewController.swift
//  Class2
//
//  Created by 이용준 on 2022/04/21.
//

import Foundation
import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    lazy var list = ["이용준", "전동혁", "이호영", "김남오", "기타 등등"] + Array(repeating: "test", count: 100)
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        view.backgroundColor = .white
        tableView.backgroundColor = .white
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell") as? CustomTableViewCell else { return UITableViewCell() }
        
        cell.customLabel.text = list[indexPath.row]
//        if indexPath.row % 3 == 0 {
//            cell.backgroundColor = .red
//        } else if indexPath.row % 3 == 1 {
//            cell.backgroundColor = .yellow
//        }
        
        return cell
    }
}


