//
//  ViewController.swift
//  Class2
//
//  Created by 이용준 on 2022/04/21.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet var thirdButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // thirdButton.text = "~~" 아님!
        thirdButton.setTitle("Third", for: .normal)
    }
    
    
    @IBAction func tapSecond() {
        performSegue(withIdentifier: "second", sender: nil)
    }
    
    @IBAction func tapThrid() {
        performSegue(withIdentifier: "third", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let segueViewController = segue.destination as? SegueViewController else { return }
        segueViewController.someString = "스토리보드에서 이어준 세그입니다"
    }

}

