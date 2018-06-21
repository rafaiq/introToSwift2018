//
//  PlazaPublicaResponse.swift
//  mi-fi
//
//  Created by Rafael Rodriguez on 6/20/18.
//  Copyright © 2018 Rafael Rodriguez. All rights reserved.
//

import Foundation

struct PlazaPublicaResponse: Codable {
    var next: String = ""
    var results: [PlazaPublica] = []
}
