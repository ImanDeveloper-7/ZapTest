//
//  APIManager.swift
//  ZapTest
//
//  Created by Iman Zabihi on 25/06/2022.
//

import Foundation

class APIManager {
    
    static func getUsers(url: URL, completion: @escaping ([GithubUser]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                print(String(data: data, encoding: .ascii)!)
            }
        }
        .resume()
    }
}
