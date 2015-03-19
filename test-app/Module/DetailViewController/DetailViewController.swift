//
//  DetailViewController.swift
//  test-app
//
//  Created by Brendan Martin on 3/10/15.
//  Copyright (c) 2015 Brendan Martin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var playlistCoverImage: UIImageView!
    @IBOutlet weak var playlistTitle: UILabel!
    @IBOutlet weak var playlistDescription: UILabel!
    
    
    var playlist: Playlist?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if playlist != nil {
            playlistCoverImage.image = playlist!.largeIcon
            playlistCoverImage.backgroundColor = playlist!.backgroundcolor
            playlistTitle.text = playlist!.title
            playlistDescription.text = playlist!.description
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
