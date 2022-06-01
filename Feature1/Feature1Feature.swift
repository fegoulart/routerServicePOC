//
//  Feature1Feature.swift
//  Feature1
//
//  Created by Fernando Luiz Goulart on 01/06/22.
//

import RouterServiceInterface
import UIKit

public struct Feature1Feature: Feature {

    @Dependency var routerService: RouterServiceProtocol

    public init() {}

    public func build(fromRoute route: Route?) -> UIViewController {
        return Feature1ViewController(routerService: routerService)
    }
}
