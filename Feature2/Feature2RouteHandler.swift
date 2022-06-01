//
//  Feature2RouteHandler.swift
//  interfaceModulePoc1
//
//  Created by Fernando Luiz Goulart on 31/05/22.
//

import RouterServiceInterface
import Feature2Interface
import UIKit

public final class Feature2RouteHandler: RouteHandler {
    public var routes: [Route.Type] {
        return [Feature2Route.self]
    }

    public func destination(forRoute route: Route, fromViewController viewController: UIViewController) -> Feature.Type {
        guard route is Feature2Route else {
            preconditionFailure()
        }
        return Feature2Feature.self
    }

    public init() { }
}
