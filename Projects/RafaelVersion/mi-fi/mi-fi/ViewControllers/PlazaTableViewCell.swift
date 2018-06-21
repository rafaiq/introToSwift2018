//
//  PlazaTableViewCell.swift
//  mi-fi
//
//  Created by Rafael Rodriguez on 6/20/18.
//  Copyright © 2018 Rafael Rodriguez. All rights reserved.
//

import UIKit

class PlazaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var plazaImage: UIImageView!
    @IBOutlet weak var plazaName: UILabel!
    @IBOutlet weak var plazaMunicipality: UILabel!
    @IBOutlet weak var plazaLatitud: UILabel!
    @IBOutlet weak var plazaLongitud: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
