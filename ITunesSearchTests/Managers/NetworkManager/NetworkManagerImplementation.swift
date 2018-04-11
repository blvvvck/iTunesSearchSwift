//
//  NetworkManagerImplementation.swift
//  ITunesSearchTests
//
//  Created by BLVCK on 09/04/2018.
//  Copyright © 2018 BLVCK. All rights reserved.
//

import Foundation

class NetworkManagerImplementation: NetworkManager {
   
    let baseUrl = "https://itunes.apple.com/"
    let search = "search"
    
    func getMedia(query: String, limit: String, mediaType: String, deviceType: String, completionBlock: @escaping (SearchResultStruct) -> ()) {

        let original = "\(baseUrl)\(search)?term=\(query)&limit=\(limit)&media=\(mediaType)"
        guard let encoded = original.addingPercentEncoding(withAllowedCharacters: .urlFragmentAllowed),
            let url = URL(string: encoded) else { return }

        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            
            if  (error != nil ) {
                print("Error: \(String(describing: error?.localizedDescription))")
            } else {
                guard let data = data else { return }
                let dataString = String(data: data, encoding: .utf8)
                print(dataString)
                do {
                    let searchDictionary = try JSONDecoder().decode(SearchResultStruct.self, from: data)
                    print("Data \(String(describing: searchDictionary))")
                    completionBlock(searchDictionary)
                } catch let errorMessage {
                    print(errorMessage.localizedDescription)
                }
                
            }
            }.resume()
    }
}
