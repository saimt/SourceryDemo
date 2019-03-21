// Generated using Sourcery 0.16.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


import Foundation


public class DemoAnotherStruct: NSObject, NSCoding {
public var name: String?
public var address: [String]?

/**
* Instantiate the instance using the passed dictionary values to set the properties values
*/
init(fromDictionary dictionary: [String: Any]) {
    self.name = dictionary["name"] as? String!
    self.address = dictionary["address"] as? [String]
}

/**
* Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
*/
func toDictionary() -> [String:Any] {
    var dictionary = [String:Any]()

    dictionary["name"] = name
    dictionary["address"] = address

    return dictionary
}

/**
* NSCoding required method.
* Encodes mode properties into the decoder
*/
@objc public func encode(with aCoder: NSCoder) {
    if self.name != nil {
        aCoder.encode(name, forKey:"name")
    }
    if self.address != nil {
        aCoder.encode(address, forKey:"address")
    }
}

/**
* NSCoding required initializer.
* Fills the data from the passed decoder
*/
required public init(coder aDecoder: NSCoder) {
    self.name = aDecoder.decodeObject(forKey: "name") as? String!
    self.address = aDecoder.decodeObject(forKey: "address") as? [String]
}

}

public class DemoTestStruct: NSObject, NSCoding {
public var name: String?
public var address: [String]?
public var someObject: DemoAnotherStruct?
public var arrayObject: [DemoAnotherStruct]!

/**
* Instantiate the instance using the passed dictionary values to set the properties values
*/
init(fromDictionary dictionary: [String: Any]) {
    self.name = dictionary["name"] as? String!
    self.address = dictionary["address"] as? [String]
    if let someObjectJson = dictionary["s"] as? [String: Any] {
        self.someObject = DemoAnotherStruct(fromDictionary: someObjectJson)
    } else {
        self.someObject = nil
    }

    self.arrayObject = [DemoAnotherStruct]()
    if let arrayObjectArray = dictionary["q"] as? [[String: Any]] {
        for dict in arrayObjectArray {
            let value = DemoAnotherStruct(fromDictionary: dict)
            self.arrayObject.append(value)
        }
    }

}

/**
* Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
*/
func toDictionary() -> [String:Any] {
    var dictionary = [String:Any]()

    dictionary["name"] = name
    dictionary["address"] = address
    if let dict = self.someObject?.toDictionary() {
        dictionary["s"] = dict
    }
    if arrayObject != nil {
        var dictionaryElements = [[String:Any]]()
        for element in arrayObject {
            dictionaryElements.append(element.toDictionary())
        }
        dictionary["q"] = dictionaryElements
    }

    return dictionary
}

/**
* NSCoding required method.
* Encodes mode properties into the decoder
*/
@objc public func encode(with aCoder: NSCoder) {
    if self.name != nil {
        aCoder.encode(name, forKey:"name")
    }
    if self.address != nil {
        aCoder.encode(address, forKey:"address")
    }
    if self.someObject != nil {
        aCoder.encode(someObject, forKey:"someObject")
    }
    if self.arrayObject != nil {
        aCoder.encode(arrayObject, forKey:"arrayObject")
    }
}

/**
* NSCoding required initializer.
* Fills the data from the passed decoder
*/
required public init(coder aDecoder: NSCoder) {
    self.name = aDecoder.decodeObject(forKey: "name") as? String!
    self.address = aDecoder.decodeObject(forKey: "address") as? [String]
    self.someObject = aDecoder.decodeObject(forKey: "someObject") as? DemoAnotherStruct
    self.arrayObject = aDecoder.decodeObject(forKey: "arrayObject") as? [DemoAnotherStruct] ?? []
}

}
