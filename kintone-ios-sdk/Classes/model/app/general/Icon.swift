//
//  Icon.swift
//  kintone-ios-sdk
//
//  Created by Trinh Hung Anh on 9/19/18.
//  Copyright © 2018 Cybozu. All rights reserved.
//

class Icon: NSObject {
    private var file: IconFile?
    private var key: String?
    private var iconType: IconType?
    
    public enum IconType: String {
        case FILE
        case PRESET
    }
    
    public func getFile() -> IconFile? {
        return self.file
    }
    public func setFile(_ file: IconFile) {
        self.file = file
    }
    public func getKey() -> String? {
        return self.key
    }
    public func setKey(_ key: String) {
        self.key = key
    }
}
