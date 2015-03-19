//
//  MasterViewController.swift
//  test-app
//
//  Created by Brendan Martin on 3/10/15.
//  Copyright (c) 2015 Brendan Martin. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {

    @IBOutlet weak var testImageView0: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let playlist = Playlist(index: 0)
        testImageView0.image = playlist.icon
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier! == "showDetailPlaylistSegue" {
            let detailViewController = segue.destinationViewController as DetailViewController;
            detailViewController.playlist = Playlist(index: 0)
            
        }
    }

    @IBAction func showDetail(sender: AnyObject) {
        performSegueWithIdentifier("showDetailPlaylistSegue", sender: sender);
    
    }

}

