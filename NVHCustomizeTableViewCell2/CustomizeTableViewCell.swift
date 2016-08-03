//
//  CustomizeTableViewCell.swift
//  NVHCustomizeTableViewCell2
//
//  Created by Hùng Nguyễn  on 8/3/16.
//  Copyright © 2016 MobileSoftware. All rights reserved.
//

import UIKit

class CustomizeTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewFootballClubLogo: UIImageView!
    @IBOutlet weak var labelNameFootballClub: UILabel!
    @IBOutlet weak var labelNameClubStadium: UILabel!
    @IBOutlet weak var imageViewClubStarRating: UIImageView!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
