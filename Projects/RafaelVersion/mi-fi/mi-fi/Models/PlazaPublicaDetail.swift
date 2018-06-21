//
//  PlazaPublicaDetail.swift
//  mi-fi
//
//  Created by Rafael Rodriguez on 6/20/18.
//  Copyright © 2018 Rafael Rodriguez. All rights reserved.
//

import Foundation
//TODO: change in relation of his use
struct PlazaPublicaDetail: Codable {
    var frontShiny: String = ""
    
    private enum CodingKeys: String, CodingKey {
        case frontShiny = "front_shiny"
    }
}
