//
//  ViewController.swift
//  DropDownMenu
//
//  Created by Lin Cheng on 26/03/2018.
//  Copyright © 2018 Lin Cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cityButtons: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func handleSelection(_ sender: UIButton?) {
        
        cityButtons.forEach { (button) in
            
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    enum Citys: String {
        case boston = "Boston"
        case sanFrancisco = "San Francisco"
    }
    
    @IBAction func cityTapped(_ sender: UIButton) {
        
        guard let title = sender.currentTitle, let city = Citys(rawValue: title) else {
            return
        }
        
        switch city {
        case .boston:
            print("Boston")
        default:
            print("San Francisco")
        }
        
        handleSelection(nil)
    }
}

