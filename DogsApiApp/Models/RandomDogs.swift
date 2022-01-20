//
//  Dogs.swift
//  DogsApiApp
//
//  Created by Дмитрий Олейнер on 15.01.2022.
//

import Foundation

struct RandomDogs: Decodable {
    let message: String
    let status: String
}

enum Link: String {
    case dogsApi = "https://dog.ceo/api/breeds/image/random"
}
