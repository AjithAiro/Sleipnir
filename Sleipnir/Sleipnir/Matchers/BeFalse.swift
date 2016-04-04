//
//  BeFalse.swift
//  Sleipnir
//
//  Created by Artur Termenji on 6/24/14.
//  Copyright (c) 2014 railsware. All rights reserved.
//

import Foundation

public class BeFalse<T>: BaseMatcher<T> {
    
    override init() {
        super.init()
    }
    
    override func match(actual: T?) -> Bool {
        return !(actual as? Bool ?? true)
    }
    
    override func failureMessageEnd() -> String {
        return "evaluate to false"
    }
}

public func beFalse() -> BeFalse<Bool> {
    return BeFalse()
}