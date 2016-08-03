//
//  ClubViewCell.swift
//  NVHCustomizeTableViewCell2
//
//  Created by Hùng Nguyễn  on 8/3/16.
//  Copyright © 2016 MobileSoftware. All rights reserved.
//

import UIKit

class ClubViewCell: UITableViewCell {
    
    @IBOutlet weak var imageClubCell: UIImageView!
    @IBOutlet weak var nameSoccerClub: UILabel!
    @IBOutlet weak var nameStudium: UILabel!
    @IBOutlet weak var imageClubRating: UIImageView!
    
    override func awakeFromNib() {
    
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
