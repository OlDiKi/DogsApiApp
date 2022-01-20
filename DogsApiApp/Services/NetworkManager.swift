//
//  NetworkManager.swift
//  DogsApiApp
//
//  Created by Дмитрий Олейнер on 19.01.2022.
//

import UIKit

class NetworkManager {
    
    static let shared = NetworkManager()
    
    private init() {}
    
    func fetchImage(from url: String, complition: @escaping(_ image: UIImage) -> Void) {
        
        guard let url = URL(string: Link.dogsApi.rawValue) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            guard let image = UIImage(data: data) else { return }
            
            DispatchQueue.main.async {
                complition(image)
            }
        }.resume()
    }
}
