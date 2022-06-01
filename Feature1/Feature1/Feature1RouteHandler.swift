//
//  Feature1RouteHandler.swift
//  interfaceModulePoc1
//
//  Created by Fernando Luiz Goulart on 31/05/22.
//

import RouterServiceInterface
import Feature1Interface
import UIKit

public final class Feature1RouteHandler: RouteHandler {
    public var routes: [Route.Type] {
        return [Feature1Route.self, Feature1bRoute.self]
    }

    public func destination(forRoute route: Route, fromViewController viewController: UIViewController) -> Feature.Type {
        if route is Feature1Route {
            return Feature1Feature.self
        }
        if route is Feature1bRoute {
            return Feature1bFeature.self
        }
        preconditionFailure()
    }

    public init() {}
}
