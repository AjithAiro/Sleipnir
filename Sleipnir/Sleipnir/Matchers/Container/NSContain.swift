//
//  NSContain.swift
//  Sleipnir
//
//  Created by Artur Termenji on 7/23/14.
//  Copyright (c) 2014 railsware. All rights reserved.
//

import Foundation

public class NSContain<T: AnyObject, S: SleipnirContainer> : BaseMatcher<S> {
    
    var item: T
    
    init(item: T) {
        self.item = item
        super.init()
    }
    
    override func match(actual: S?) -> Bool {
        return actual!.containsObject(item)
    }
    
    override func failureMessageEnd() -> String {
        return "contain <\(item)>"
    }
}

public func contain<S: SleipnirContainer>(item: AnyObject) -> NSContain<AnyObject, S> {
    return NSContain(item: item)
}