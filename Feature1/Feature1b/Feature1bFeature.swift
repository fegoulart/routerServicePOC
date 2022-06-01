//
//  Feature1bFeature.swift
//  interfaceModulePoc1
//
//  Created by Fernando Luiz Goulart on 31/05/22.
//

import RouterServiceInterface
import UIKit

struct Feature1bFeature: Feature {

    @Dependency var routerService: RouterServiceProtocol

    public init() {}

    func build(fromRoute route: Route?) -> UIViewController {
        return Feature1bViewController(routerService: routerService)
    }
}

// FeatureFlag
extension Feature1bFeature {
    func isEnabled() -> Bool {
        // return false
        return true
    }

    public func fallback(forRoute route: Route?) -> Feature.Type? {
        return Feature1Feature.self
    }
}
