//
//  FavoriteTableViewCell.swift
//  mi-fi
//
//  Created by Rafael Rodriguez on 5/27/18.
//  Copyright © 2018 Rafael Rodriguez. All rights reserved.
//

import UIKit

class FavoriteTableViewCell: UITableViewCell {
    
    //UI Controls
    @IBOutlet weak var favImage: UIImageView!
    @IBOutlet weak var favname: UILabel!
    @IBOutlet weak var favMunicipality: UILabel!
    @IBOutlet weak var favLongitud: UILabel!
    @IBOutlet weak var favLatitud: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
