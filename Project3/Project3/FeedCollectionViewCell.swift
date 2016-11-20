//
//  FeedCollectionViewCell.swift
//  Project3
//
//  Created by Sona Jeswani on 11/12/16.
//  Copyright © 2016 Sona Jeswani. All rights reserved.
//

import UIKit

class FeedCollectionViewCell: UICollectionViewCell {
    
    var eventPic: UIImageView!
    var memberName: UILabel!
    var eventName: UILabel!
    var numRSVP: UILabel!
    var numRSVPInt: Int = 0
    var postBodyText: UILabel!
    
    override func awakeFromNib() {
        
        eventPic = UIImageView(frame: CGRect(x: 10, y: 10, width: 40, height: 40))
        eventPic.contentMode = .ScaleAspectFill
        eventPic.layer.cornerRadius = eventPic.frame.width/2
        eventPic.clipsToBounds = true
        //self.contentView.addSubview(profPic)
        
        memberName = UILabel(frame: CGRect(x: 60, y: 10, width: UIScreen.mainScreen().bounds.width - 40 - 60, height: 20))
        memberName.font = UIFont.boldSystemFontOfSize(14)
        memberName.text = "HELLO"
        self.contentView.addSubview(memberName)
        
        postBodyText = UILabel(frame: CGRect(x: 60, y: 55, width: UIScreen.mainScreen().bounds.width - 20, height: 20))
        postBodyText.font = UIFont.systemFontOfSize(14)
        self.contentView.addSubview(postBodyText)
        
        
        numRSVP = UILabel(frame: CGRect(x: UIScreen.mainScreen().bounds.width - 95, y: 10, width: 60, height: 30))
        numRSVP.font = UIFont.systemFontOfSize(10)
        numRSVP.textAlignment = .Right
        numRSVP.textColor = UIColor.lightGrayColor()
        self.contentView.addSubview(numRSVP)
        
        self.backgroundColor = UIColor.whiteColor()
        
        
    }
    
    
}
