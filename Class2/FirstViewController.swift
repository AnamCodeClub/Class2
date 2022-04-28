//
//  ViewController.swift
//  Class2
//
//  Created by 이용준 on 2022/04/21.
//

import UIKit //ios


class FirstViewController: UIViewController {
    @IBOutlet var thirdButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // thirdButton.text = "~~" 아님!
        thirdButton.setTitle("Third", for: .normal)
    }
    
    
    
    
    // MARK: - Navigation
    @IBAction func tapSecond() {
        performSegue(withIdentifier: "second", sender: nil)
    }
    
    // MARK: - Modal
    @IBAction func tapThrid() {
        performSegue(withIdentifier: "third", sender: nil) // Stroyboard
    }

    @IBAction func tapfourth() {
        present(ModalViewController(), animated: true) // 코드
    }
    
    
    
    
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let segueViewController = segue.destination as? SegueViewController else { return }

        segueViewController.someString = "이용준 세그 수업입니다"
        segueViewController.number = 2
    }

}

var a = ModalViewController()

class ModalViewController: UIViewController {
    var someString: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
    }
}


// 1. modal 밑에서 위로 POP UP -> 동의, 로그인

// a) code ⭕️
// b) segue ⭕️
// c) SwiftUI 😭


// 2. Navigation 오른쪽에서 왼쪽으로 - 관계지향
// Stack

// a) code 😭
// b) segue ⭕️
// c) SwiftUI 😭
