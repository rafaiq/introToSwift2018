//
//  AppData.swift
//  mi-fi
//
//  Created by Rafael Rodriguez on 6/20/18.
//  Copyright © 2018 Rafael Rodriguez. All rights reserved.
//

final class AppData {
    
    static let shared = AppData()
    private init() {}
    
    private var plazapublica: [PlazaPublica] = []
}

// MARK: - Public getters

extension AppData {
    var plazapublicaList: [PlazaPublica] {
        return plazapublica
    }
}

// MARK: - Mutating functions

extension AppData {
    
    func updatePlazaPublicaList(with plazaPublicaResponse: PlazaPublicaResponse?) {
        guard let response = plazaPublicaResponse else { return }
        self.plazapublica.append(contentsOf: response.results)
    }
    
    func updatePlazaPublicaImage(with plazaPublicaDetailResponse: PlazaPublicaDetailResponse?) {
        guard let response = plazaPublicaDetailResponse else { return }
        guard let indexOfPlazaPublica = plazapublica.index(where: { $0.plazaid == response.id }) else { return }
        
        var plazapublicaToUpdate = plazapublica[indexOfPlazaPublica]
        //plazapublicaToUpdate.imageURLString = response.sprites.frontShiny//TODO: fix to include default image
        plazapublica[indexOfPlazaPublica] = plazapublicaToUpdate
    }
}
