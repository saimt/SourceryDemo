// Generated using Sourcery 0.16.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


import Foundation


public class DemoTestStruct: NSObject, NSCoding {
public var name: String?

/**
* Instantiate the instance using the passed dictionary values to set the properties values
*/
init(fromDictionary dictionary: [String: Any]) {
self.name = dictionary["name"] as? String!
}

/**
* Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
*/
func toDictionary() -> [String:Any] {
var dictionary = [String:Any]()

dictionary["name"] = name

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
}

/**
* NSCoding required initializer.
* Fills the data from the passed decoder
*/
required public init(coder aDecoder: NSCoder) {
self.name = aDecoder.decodeObject(forKey: "name") as? String!
}

