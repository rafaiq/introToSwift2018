//
//  PlazaPublicaModel.swift
//  mi-fi
//
//  Created by Rafael Rodriguez on 5/25/18.
//  Copyright © 2018 Rafael Rodriguez. All rights reserved.
//

import Foundation

struct PlazaPublica: Codable {
    var plazaid: Int
    var name: String
    var municipality: String
    var coordinateLat: Float
    var coordinateLong: Float
}

extension PlazaPublica {
    
    static var defaultData: PlazaPublica {
        let plazaPublica = PlazaPublica(
                            plazaid: 0,
                            name: "Name",
                            municipality: "Municipality",
                            coordinateLat: 0.0,
                            coordinateLong: 0.0)
        return plazaPublica
    }
    
    static var defaultDataArray: [PlazaPublica] {
        var array = [PlazaPublica]()
        for _ in 0..<10 {
            array.append(PlazaPublica(
                            plazaid: 0,
                            name: "Name",
                            municipality: "Municipality",
                            coordinateLat: 0.0,
                            coordinateLong: 0.0))
        }
        return array
    }
    
}