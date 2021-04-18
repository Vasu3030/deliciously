//
//  Api.swift
//  Deliciously
//
//  Created by AROUN Vassou on 18/04/2021.
//

import Foundation

struct Restaurant: Codable {
    var id: Int
    var name: String
    var description: String
    var adress: String
}

struct Image: Codable {
    var id: Int
    var image_url: String
    var restaurant_id: Int
}

struct Tag: Codable {
    var id: Int
    var image_url: String
    var restaurant_id: Int
}

class Api {
    
    func getAllRestaurant(completion: @escaping ([Restaurant]) -> ()) {
        guard let url = URL(string: "http://localhost:3030/restaurant") else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        URLSession.shared.dataTask(with: request) { (data, _, _) in
            let result = try! JSONDecoder().decode([Restaurant].self, from: data!)
            DispatchQueue.main.async{
                completion(result)
            }
        }
        .resume()
    }
    
    func getRestaurant(id: Int, completion: @escaping ([Restaurant]) -> ()) {
        guard let url = URL(string: "http://localhost:3030/restaurant/\(id)") else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        URLSession.shared.dataTask(with: request) { (data, _, _) in
            let result = try! JSONDecoder().decode([Restaurant].self, from: data!)
            DispatchQueue.main.async{
                completion(result)
            }
        }
        .resume()
    }
    
    func getRestaurantTags(id: Int, completion: @escaping ([Tag]) -> ()) {
        guard let url = URL(string: "http://localhost:3030/restaurant/\(id)/tags") else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        URLSession.shared.dataTask(with: request) { (data, _, _) in
            let result = try! JSONDecoder().decode([Tag].self, from: data!)
            DispatchQueue.main.async{
                completion(result)
            }
        }
        .resume()
    }
    
    func getRestaurantImages(id: Int, completion: @escaping ([Image]) -> ()) {
        guard let url = URL(string: "http://localhost:3030/restaurant/\(id)/tags") else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        URLSession.shared.dataTask(with: request) { (data, _, _) in
            let result = try! JSONDecoder().decode([Image].self, from: data!)
            DispatchQueue.main.async{
                completion(result)
            }
        }
        .resume()
    }
}
