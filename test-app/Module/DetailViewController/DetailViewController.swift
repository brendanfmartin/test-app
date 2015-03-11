//
//  DetailViewController.swift
//  test-app
//
//  Created by Brendan Martin on 3/10/15.
//  Copyright (c) 2015 Brendan Martin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var buttonPressLabel: UILabel!
    var segueLabelText: String = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonPressLabel.text = segueLabelText;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
