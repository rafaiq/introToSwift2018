//
//  QueryService.swift
//  mi-fi
//
//  Created by Rafael Rodriguez on 5/26/18.
//  Copyright © 2018 Rafael Rodriguez. All rights reserved.
//

import Foundation
import Alamofire

enum APIResourceURL: String {
    case plaza
    //case pokenmon
    //case berries
    
    static let baseURL = "https://data.pr.gov/resource/mvs4-khyb.json"
    
    var url: String {
        return APIResourceURL.baseURL// + self.rawValue
    }
}

class QueryService {
    typealias JSONDictionary = [String: Any]
    typealias SuccessResult = (Bool, String) -> ()
    
    let appData = AppData.shared
    let defaultSession = URLSession(configuration: .default)
    var dataTask: URLSessionDataTask?
    var dataTasks = [URLSessionDataTask]()
    
    var nextPageURL: String?
    var errorMessage = ""
    
    var nextURLString: String {
        return (nextPageURL != nil) ? nextPageURL! : APIResourceURL.plaza.url
    }
}

extension QueryService {
    
    func fetchOriginalPlazaPublica(completion: @escaping SuccessResult) {
        Alamofire.request(nextURLString).responseJSON { (response) in
            
            let didUpdatePlazaPublica = self.updatePlazaPublicaResults(response)
            completion(didUpdatePlazaPublica, self.errorMessage)
        }
    }
    
    func fetchPlazaPublicaDetailsWith(_ urlString: String, completion: @escaping SuccessResult) {
        
        Alamofire.request(urlString).responseJSON { (response) in
            let didUpdateDetails = self.updatePlazaPublicaDetails(response)
            completion(didUpdateDetails, self.errorMessage)
        }
    }
}

extension QueryService {
    
    private func updatePlazaPublicaResults(_ response: DataResponse<Any>) -> Bool {
        guard let data = response.data else { return false }
        
        if let plazaPublicaResponse = convertData(to: PlazaPublicaResponse.self, data) {
            appData.updatePlazaPublicaList(with: plazaPublicaResponse)
            return true
        } else {
            return false
        }
    }
    
    private func updatePlazaPublicaDetails(_ response: DataResponse<Any>) -> Bool {
        guard let data = response.data else { return false }
        
        if let plazaPublicaDetailResponse = convertData(to: PlazaPublicaDetailResponse.self, data) {
            appData.updatePlazaPublicaImage(with: plazaPublicaDetailResponse)
            return true
        } else {
            return false
        }
    }
}

extension QueryService {
    private func convertData<T:Decodable>(to type: T.Type, _ data: Data) -> T? {
        let decoder = JSONDecoder()
        return try? decoder.decode(type, from: data)
    }
}

