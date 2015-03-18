//
//  Playlist.swift
//  test-app
//
//  Created by Brendan Martin on 3/12/15.
//  Copyright (c) 2015 Brendan Martin. All rights reserved.
//

import Foundation
import UIKit

struct Playlist {
    
    var title: String?
    var description: String?
    var icon: UIImage?
    var iconLarge: UIImage?
    var artists: [String] = []
    var backgroundcolor: UIColor = UIColor.clearColor()

    init(index: Int) {
        let testLibrary = Library().library
        let playlistDictionary = testLibrary[index]
        
        title = playlistDictionary["title"] as String!
        description = playlistDictionary["description"] as String!
        
        let iconName = playlistDictionary["icon"] as String!
        icon = UIImage(named: iconName)
        
        let iconLargeName = playlistDictionary["largeIcon"] as String!
        iconLarge = UIImage(named: iconLargeName)
        
        artists += playlistDictionary["artists"] as [String]
        
        let colorDictionary = playlistDictionary["backgroundColor"] as [String: CGFloat]
        backgroundcolor = rgbColorFromDictionary(colorDictionary)
        
    }

    func rgbColorFromDictionary(colorDictionary: [String:CGFloat]) -> UIColor {
        
        let red = colorDictionary["red"]!
        let green = colorDictionary["green"]!
        let blue = colorDictionary["blue"]!
        let alpha = colorDictionary["alpha"]!
        
        return UIColor(red : red/255.0, green : green/255.0, blue : blue/255.0, alpha : alpha)
    }
    
}