//
//  cellModel.swift
//  randomApp
//
//  Created by Jigar Parekh on 05/04/17.
//  Copyright © 2017 Next. All rights reserved.
//

import Foundation

class cellModel {
    
    private var _imageURL : String
    private var _videoTitle : String
    private var _videoURL : String
    
    var imageURL : String {
        return _imageURL
    }
    var videoTitle : String {
        return _videoTitle
    }
    var videoURL : String {
        return _videoURL
    }

    
    init(imageURL : String, videoURL : String, videoTitle : String) {
        
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
}
