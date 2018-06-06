//
//  PlazaPublicaModel.swift
//  mi-fi
//
//  Created by Rafael Rodriguez on 5/25/18.
//  Copyright © 2018 Rafael Rodriguez. All rights reserved.
//

import Foundation

struct PlazasPublicas {
    var plazaid: Int
    var name: String
    var municipality: String
    var coordinateLat: Float
    var coordinateLong: Float
}

extension PlazasPublicas {
    
    static var defaultData: PlazasPublicas {
        let plazaPublica = PlazasPublicas(
                            plazaid: 0,
                            name: "Name",
                            municipality: "Municipality",
                            coordinateLat: 0.0,
                            coordinateLong: 0.0)
        return plazaPublica
    }
    
    static var defaultDataArray: [PlazasPublicas] {
        var array = [PlazasPublicas]()
        for _ in 0..<10 {
            array.append(PlazasPublicas(
                            plazaid: 0,
                            name: "Name",
                            municipality: "Municipality",
                            coordinateLat: 0.0,
                            coordinateLong: 0.0))
        }
        return array
    }
    
}
