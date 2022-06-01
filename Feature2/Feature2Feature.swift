//
//  Feature2Feature.swift
//  interfaceModulePoc1
//
//  Created by Fernando Luiz Goulart on 31/05/22.
//

import RouterServiceInterface
import UIKit
import Feature2Interface

struct Feature2Feature: Feature {

    @Dependency var routerService: RouterServiceProtocol

    public init() {}

    func build(fromRoute route: Route?) -> UIViewController {
        return Feature2ViewController(routerService: routerService)
    }
}
