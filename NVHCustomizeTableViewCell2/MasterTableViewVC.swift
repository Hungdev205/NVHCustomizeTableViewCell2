//
//  MasterTableViewVC.swift
//  NVHCustomizeTableViewCell2
//
//  Created by Hùng Nguyễn  on 8/3/16.
//  Copyright © 2016 MobileSoftware. All rights reserved.
//

import UIKit

class MasterTableViewVC: UITableViewController {
    var arrayClub: [ClubInformation]!
    var detailVC : DetailVC!

    override func viewDidLoad() {
        super.viewDidLoad()
        // registerNib for tableView with name file .xib with identifier "Cell"
        self.tableView.registerNib(UINib.init(nibName: "CustomizeTableView", bundle: nil), forCellReuseIdentifier: "Cell")
        
        let club1: ClubInformation = ClubInformation.init(nameFC: "Manchester United", nameStadium: "Old Trafford", imgLogo: "MU.png", imgRating: 5)
        let club2: ClubInformation = ClubInformation.init(nameFC: "Manchester City", nameStadium: "Etihad", imgLogo: "MC.png", imgRating: 3)
        let club3: ClubInformation = ClubInformation.init(nameFC: "Asernal", nameStadium: "Emirates", imgLogo: "Arsenal.png", imgRating: 4)
        let club4: ClubInformation = ClubInformation.init(nameFC: "Chelsea", nameStadium: "Stamford Bridge", imgLogo: "Chelsea.png", imgRating: 2)
        let club5: ClubInformation = ClubInformation.init(nameFC: "Liverpool", nameStadium: "Anfield", imgLogo: "Liverpool.png", imgRating: 3)
        
        arrayClub = [club1,club2,club3,club4,club5]
    }

   
    // MARK: - Table view data source

    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayClub.count
    }

   
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: ClubViewCell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! ClubViewCell
        
        let club: ClubInformation = arrayClub[indexPath.row]
        
        cell.nameSoccerClub.text = club.nameFootballClub
        cell.nameStudium.text = club.nameStadiumClub
        cell.imageClubCell.image = club.imageLogo
        cell.imageClubRating.image = club.imageStarRating

        return cell
    }
   
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if detailVC == nil
        {
            detailVC = self.storyboard?.instantiateViewControllerWithIdentifier("DetailView") as! DetailVC
        }
        let club: ClubInformation = arrayClub[indexPath.row]
        detailVC.stringTitle = club.nameStadiumClub
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
   
}
