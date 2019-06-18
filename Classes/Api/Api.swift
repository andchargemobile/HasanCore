//
//  Api.swift
//  HasanCores
//
//  Created by GoodieMac2 on 18/06/19.
//

import Foundation

class Api: Service{
    
    func base() -> String {
        return baseUrl;
    }
    
    func uri(_ route: Route) -> String {
        return "\(baseUrl)\(route.rawValue)"
    }
    
}
