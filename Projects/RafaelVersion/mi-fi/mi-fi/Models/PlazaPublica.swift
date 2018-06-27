//
//  PlazaPublicaModel.swift
//  mi-fi
//
//  Created by Rafael Rodriguez on 5/25/18.
//  Copyright © 2018 Rafael Rodriguez. All rights reserved.
//

import Foundation

struct PlazaPublica: Codable {
    var plazaid: Int?
    var name: String?
    var municipality: String?
    var coordinateLat: Float?
    var coordinateLong: Float?
    //
    var id: Int?
    var properties__objectid: Int?
    var properties__wifi: String?
    var properties__cnty: Int?
    var properties__easting: [String: [String]]? //point
    var properties__easting_zip: String?
    var properties__easting_address: String?
    var properties__easting_state: String?
    var properties__easting_city: String?
    var properties_nombre: String?
    var properties__id: Int?
    var properties__municipio: String?
    var properties__northing_state: String?
    var properties__northing_zip: String?
    var properties__northing: [String: [String]]? //point
    var properties__northing_address: String?
    var properties__northing_city: String?
    var properties__coordinates001_zip: String?
    var properties__coordinates001_address: String?
    var properties__coordinates001_state: String?
    var geometry__coordinates001: [String: [String]]? //point
    var geometry__coordinates001_city: String?
    var geometry__coordinates002_address: String?
    var geometry__coordinates002_state: String?
    var geometry__coordinates002_zip: String?
    var geometry__coordinates002: [String: [String]]? //point
    var geometry__coordinates002_city: String?
    var properties__municipi_1: String?
    
    
    
}

extension PlazaPublica {
    
    static var defaultData: PlazaPublica {
        let plazaPublica = PlazaPublica(
                            plazaid: 0,
                            name: "Name",
                            municipality: "Municipality",
                            coordinateLat: 0.0,
                            coordinateLong: 0.0,
                            id: 0,
                            properties__objectid: 0,
                            properties__wifi: "String",
                            properties__cnty: 0,
                            properties__easting: ["coordinates":["0.0","0.0"]], //point
                            properties__easting_zip: "String",
                            properties__easting_address: "String",
                            properties__easting_state: "String",
                            properties__easting_city: "String",
                            properties_nombre: "String",
                            properties__id: 0,
                            properties__municipio: "String",
                            properties__northing_state: "String",
                            properties__northing_zip: "String",
                            properties__northing: ["coordinates":["0.0","0.0"]], //point
                            properties__northing_address: "String",
                            properties__northing_city: "String",
                            properties__coordinates001_zip: "String",
                            properties__coordinates001_address: "String",
                            properties__coordinates001_state: "String",
                            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
                            geometry__coordinates001_city: "String",
                            geometry__coordinates002_address: "String",
                            geometry__coordinates002_state: "String",
                            geometry__coordinates002_zip: "String",
                            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
                            geometry__coordinates002_city: "String",
                            properties__municipi_1: "String"
        )
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
                            coordinateLong: 0.0,
                            id: 0,
                            properties__objectid: 0,
                            properties__wifi: "String",
                            properties__cnty: 0,
                            properties__easting: ["coordinates":["0.0","0.0"]], //point
                            properties__easting_zip: "String",
                            properties__easting_address: "String",
                            properties__easting_state: "String",
                            properties__easting_city: "String",
                            properties_nombre: "String",
                            properties__id: 0,
                            properties__municipio: "String",
                            properties__northing_state: "String",
                            properties__northing_zip: "String",
                            properties__northing: ["coordinates":["0.0","0.0"]], //point
                            properties__northing_address: "String",
                            properties__northing_city: "String",
                            properties__coordinates001_zip: "String",
                            properties__coordinates001_address: "String",
                            properties__coordinates001_state: "String",
                            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
                            geometry__coordinates001_city: "String",
                            geometry__coordinates002_address: "String",
                            geometry__coordinates002_state: "String",
                            geometry__coordinates002_zip: "String",
                            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
                            geometry__coordinates002_city: "String",
                            properties__municipi_1: "String"
            ))
        }
        return array
    }
    
    static var defaultDataArrayStatic: [PlazaPublica] {
        var array = [PlazaPublica]()
        
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "Plaza de Recreo",
            properties__id: 0,
            properties__municipio: "Aguas Buenas",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["18.25666452137506","-66.10274727180112"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["18.25666452137506","-66.10274727180112"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 0,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 0,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "String",
            properties__id: 0,
            properties__municipio: "String",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));

        return array
    }
    
}
