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
            plazaid: 1,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 1,
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
            properties__municipio: "Adjuntas",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["18.16237142281046","-66.72323681058734"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 2,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 2,
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
            properties__municipio: "Aguada",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["18.37964455585452","-67.1886038317915"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 3,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 3,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "Plaza Placido Acevedo",
            properties__id: 0,
            properties__municipio: "Aguadilla",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["18.41810717455046","-67.1553553989534"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 4,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 4,
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
            properties__municipio: "Aguadilla",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["18.42943206029809","-67.15446728846649"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 5,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 5,
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
            properties__municipio: "Aibonito",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["18.13940071343232","-66.26635064133625"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 6,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 6,
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
            properties__municipio: "Anasco",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["18.28269281457546","-67.14004808440212"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 7,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 7,
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
            properties__municipio: "Anasco",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["18.28213015369648","-67.14022556346742"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 8,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 8,
            properties__objectid: 0,
            properties__wifi: "String",
            properties__cnty: 0,
            properties__easting: ["coordinates":["0.0","0.0"]], //point
            properties__easting_zip: "String",
            properties__easting_address: "String",
            properties__easting_state: "String",
            properties__easting_city: "String",
            properties_nombre: "Parque Julio Rodriguez Olmo",
            properties__id: 0,
            properties__municipio: "Arecibo",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["18.47393037705134","-66.72901860556037"]], //point
            geometry__coordinates001_city: "String",
            geometry__coordinates002_address: "String",
            geometry__coordinates002_state: "String",
            geometry__coordinates002_zip: "String",
            geometry__coordinates002: ["coordinates":["0.0","0.0"]], //point
            geometry__coordinates002_city: "String",
            properties__municipi_1: "String"
        ));
        array.append(PlazaPublica(
            plazaid: 9,
            name: "Name",
            municipality: "Municipality",
            coordinateLat: 0.0,
            coordinateLong: 0.0,
            id: 9,
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
            properties__municipio: "Arecibo",
            properties__northing_state: "String",
            properties__northing_zip: "String",
            properties__northing: ["coordinates":["0.0","0.0"]], //point
            properties__northing_address: "String",
            properties__northing_city: "String",
            properties__coordinates001_zip: "String",
            properties__coordinates001_address: "String",
            properties__coordinates001_state: "String",
            geometry__coordinates001: ["coordinates":["18.47205412777932","-66.71599822514358"]], //point
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
