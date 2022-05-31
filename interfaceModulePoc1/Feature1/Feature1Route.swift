//
//  Feature1Route.swift
//  interfaceModulePoc1
//
//  Created by Fernando Luiz Goulart on 31/05/22.
//

import RouterServiceInterface

struct Feature1Route: Route {
    static let identifier: String = "feature1_mainroute"
    let someAnalyticsContext: String
}
