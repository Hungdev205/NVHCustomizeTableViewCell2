//
//  DetailVC.swift
//  NVHCustomizeTableViewCell2
//
//  Created by Hùng Nguyễn  on 8/3/16.
//  Copyright © 2016 MobileSoftware. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var stringTitle: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blackColor()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        self.title = stringTitle
        self.imageView.image = UIImage(named: "\(stringTitle).jpg")
        self.imageView.contentMode = .ScaleAspectFit
    }
}
