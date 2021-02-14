//
//  TAppDelegate.swift
//  2shop
//
//  Created by INTECH on 3/6/20.
//  Copyright © 2020 INTECH. All rights reserved.
//

import UIKit

public let logger = Logging.shared

public var editableActiveView: UIView?

public var appInitializer: TAppInitializer = TAppInitializer.shared

open class TAppInitializer {
     
    open private(set) var window: UIWindow?
    
    public static let shared: TAppInitializer = TAppInitializer()
    
    public init() {
        
    }
    
    open func set(window: UIWindow) {
        self.window = window
    }
}
