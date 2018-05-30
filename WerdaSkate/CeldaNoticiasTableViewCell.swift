//
//  CeldaNoticiasTableViewCell.swift
//  WerdaSkate
//
//  Created by Cristian Martinez Toledo on 29-05-18.
//  Copyright © 2018 Cristian Martinez Toledo. All rights reserved.
//

import UIKit

class CeldaNoticiasTableViewCell: UITableViewCell {

    
    @IBOutlet var cardView: UIView!
    @IBOutlet var imgNoticia: UIImageView!
    @IBOutlet var txtNoticia: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
