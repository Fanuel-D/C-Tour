//
//  PostCell.swift
//  C-Tour
//
//  Created by Maxwell Kumbong on 4/19/23.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var timePostedLabel: UILabel!
    @IBOutlet weak var imagedescriptionLabel: UILabel!
    @IBOutlet weak var PostImageView: UIImageView!
    @IBOutlet weak var profilePicImageView: UIImageView!
    @IBOutlet weak var schoolNameLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
