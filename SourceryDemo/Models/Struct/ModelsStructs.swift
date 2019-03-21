//
//  ModelsStructs.swift
//  SourceryDemo
//
//  Created by Apple on 21/03/2019.
//  Copyright © 2019 Hassan. All rights reserved.
//

import Foundation

protocol DemoProtocol {
    
}
struct TestStruct: DemoProtocol {
    ///sourcery: jsonKey = "name"
    public let name: String!
    ///sourcery: jsonKey = "address"
    public let address: [String]
    ///sourcery: jsonKey = "s"
    public let someObject: AnotherStruct
    ///sourcery: jsonKey = "q"
    public let arrayObject: [AnotherStruct]
}

struct AnotherStruct: DemoProtocol {
    ///sourcery: jsonKey = "name"
    public let name: String!
    ///sourcery: jsonKey = "address"
    public let address: [String]
}
