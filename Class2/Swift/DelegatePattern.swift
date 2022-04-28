//
//  DelegatePattern.swift
//  Class2
//
//  Created by 이용준 on 2022/04/28.
//

import Foundation
// Delegate
// 예시


protocol 폐 {
    func 숨쉼()
}

class 신체: 폐 {
    func 숨쉼() {
        // 각종 로직
        print("breath")
    }
}


class 이용준 {
    
    var myBody: 신체
    init() {
        self.myBody = 신체()
    }
    
    func doSomething() {
        myBody.숨쉼()
    }
}

// delegate : 위임자

// MARK: - TableView

// tableView
//
//protocol _UITableViewDataSource {
//    func tableView(_ numberOfRow: Int) -> Int
//    // ...
//}
//
//class _UITableView {
//    var delegate: _UITableViewDataSource
//}
//
//class AViewController: _UIViewController, _UITableViewDataSource {
//    func tableView(_ numberOfRow: Int) -> Int {
//        <#code#>
//    }
//
//    var tableView = _UITableView()
//
//    init() {
//        tableView = self
//    }
//}
