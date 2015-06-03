//
//  RecordedAudio.swift
//  Pitch Perfect
//
//  Created by lolo-15 on 5/29/15.
//  Copyright (c) 2015 air4media. All rights reserved.
//

import Foundation

class RecordedAudio: NSObject{
    var filePathUrl: NSURL!
    var title: String!
    
    init(filePathUrl: NSURL, title: String) {
        self.filePathUrl = filePathUrl
        self.title = title
    }
}