//
//  CeldaMenuTableViewCell.swift
//  WerdaSkate
//
//  Created by Cristian Martinez Toledo on 15-03-16.
//  Copyright © 2016 Cristian Martinez Toledo. All rights reserved.
//

import UIKit

class CeldaMenuTableViewCell: UITableViewCell {

    @IBOutlet weak var txtTituloOp: UILabel!
    @IBOutlet weak var imgMenu: UIImageView!
    @IBOutlet var cardView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
