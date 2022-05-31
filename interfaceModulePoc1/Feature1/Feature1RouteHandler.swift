//
//  Feature1RouteHandler.swift
//  interfaceModulePoc1
//
//  Created by Fernando Luiz Goulart on 31/05/22.
//

import RouterServiceInterface
import UIKit

public final class Feature1RouteHandler: RouteHandler {
    public var routes: [Route.Type] {
        return [Feature1Route.self]
    }

    public func destination(forRoute route: Route, fromViewController viewController: UIViewController) -> Feature.Type {
        guard route is Feature1Route else {
            preconditionFailure()
        }
        return Feature1Feature.self
    }
}
