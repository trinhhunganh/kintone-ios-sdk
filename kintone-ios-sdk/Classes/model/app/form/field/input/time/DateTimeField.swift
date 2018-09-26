//
//  DateTimeField.swift
//  kintone-ios-sdk
//
//  Created by Pham Anh Quoc Phien on 9/19/18.
//  Copyright © 2018 Cybozu. All rights reserved.
//

public class DateTimeField: AbstractInputField {
    internal var unique: Bool?
    internal var defaultValue: String?
    internal var defaultNowValue: Bool?
    
    enum DateTimeCodingKeys: CodingKey {
        case unique
        case defaultValue
        case defaultNowValue
    }
    /**
     * @param code
     */
    public init(_ code: String) {
        super.init()
        self.code = code
        self.type = FieldType.DATETIME
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: DateTimeCodingKeys.self)
        self.defaultValue = try container.decode(String.self, forKey: DateTimeCodingKeys.defaultValue)
        self.defaultNowValue = try container.decode(Bool.self, forKey: DateTimeCodingKeys.defaultNowValue)
        self.unique = try container.decode(Bool.self, forKey: DateTimeCodingKeys.unique)
        try super.init(from: decoder)
    }
    
    /**
     * @return the unique
     */
    public func getUnique() -> Bool? {
        return unique;
    }
    
    /**
     * @param unique the unique to set
     */
    public func setUnique(_ unique: Bool?) {
        self.unique = unique
    }
    
    public func getDefaultValue() -> String? {
        return self.defaultValue
    }
    
    /**
     * @param defaultValue
     */
    public func setDefaultValue(_ defaultValue: String?) {
        self.defaultValue = defaultValue
    }
    
    /**
     * @return
     */
    public func getDefaultNowValue() -> Bool? {
        return self.defaultNowValue
    }
    
    /**
     * @param defaultNowValue
     */
    public func setDefaultNowValue(_ defaultNowValue: Bool?) {
        self.defaultNowValue = defaultNowValue
    }
}
