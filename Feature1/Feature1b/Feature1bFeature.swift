//
//  Feature1bFeature.swift
//  Feature1
//
//  Created by Fernando Luiz Goulart on 01/06/22.
//

import RouterServiceInterface
import UIKit

public struct Feature1bFeature: Feature {

    @Dependency var routerService: RouterServiceProtocol

    public init() {}

    public func build(fromRoute route: Route?) -> UIViewController {
        return Feature1bViewController(routerService: routerService)
    }
}

// FeatureFlag
extension Feature1bFeature {
    public func isEnabled() -> Bool {
        // return false
        return true
    }

    public func fallback(forRoute route: Route?) -> Feature.Type? {
        return Feature1Feature.self
    }
}

