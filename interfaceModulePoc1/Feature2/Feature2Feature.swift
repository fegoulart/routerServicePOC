//
//  Feature2Feature.swift
//  interfaceModulePoc1
//
//  Created by Fernando Luiz Goulart on 31/05/22.
//

import RouterServiceInterface
import UIKit

struct Feature2Feature: Feature {

    @Dependency var routerService: RouterServiceProtocol

    func build(fromRoute route: Route?) -> UIViewController {
        return Feature2ViewController(routerService: routerService)
    }
}
