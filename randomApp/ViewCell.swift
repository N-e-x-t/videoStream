//
//  ViewCell.swift
//  randomApp
//
//  Created by Jigar Parekh on 05/04/17.
//  Copyright © 2017 Next. All rights reserved.
//

import UIKit

class ViewCell: UITableViewCell {

    @IBOutlet weak var videoImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
