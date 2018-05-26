//
//  PlazaPublicaModel.swift
//  mi-fi
//
//  Created by Rafael Rodriguez on 5/25/18.
//  Copyright © 2018 Rafael Rodriguez. All rights reserved.
//

import Foundation

struct PlazaPublicaModel {
    var plazaid: Int
    var name: String
    var municipality: String
    var coordinateLat: Float
    var coordinateLong: Float
}

extension PlazaPublicaModel {
    
    static var defaultData: PlazaPublicaModel {
        let plazaPublica = PlazaPublicaModel(
                            plazaid: 0,
                            name: "Name",
                            municipality: "Municipality",
                            coordinateLat: 0.0,
                            coordinateLong: 0.0)
        return plazaPublica
    }
    
    static var defaultDataArray: [PlazaPublicaModel] {
        var array = [PlazaPublicaModel]()
        for _ in 0..<1 {
            array.append(PlazaPublicaModel(
                            plazaid: 0,
                            name: "Name",
                            municipality: "Municipality",
                            coordinateLat: 0.0,
                            coordinateLong: 0.0))
        }
        return array
    }
    
}
