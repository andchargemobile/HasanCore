//
//  AbstractResponse.swift
//  HasanCores
//
//  Created by GoodieMac2 on 18/06/19.
//

import Foundation

public struct AbstractResponse: Codable {
    public var responseStatus: String
    public var responseMessage: String
}
