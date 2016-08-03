//
//  ClubInformation.swift
//  NVHCustomizeTableViewCell2
//
//  Created by Hùng Nguyễn  on 8/3/16.
//  Copyright © 2016 MobileSoftware. All rights reserved.
//

import UIKit

class ClubInformation {
    
    var imageLogo: UIImage!
    var nameFootballClub: String!
    var nameStadiumClub: String!
    var imageStarRating: UIImage!
    
    init(nameFC: String, nameStadium: String,imgLogo: String, imgRating: Int)
    {
        self.imageLogo = UIImage(named: imgLogo)
        self.imageStarRating = UIImage(named: "\(imgRating)stars.png")
        self.nameFootballClub = nameFC
        self.nameStadiumClub = nameStadium
        
    }

}
