//
//  SceneDelegate.swift
//  InterfaceModuleTest2
//
//  Created by Fernando Luiz Goulart on 01/06/22.
//

import UIKit
import RouterService
import RouterServiceInterface
import Feature1
import Feature2

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    let routerService = RouterService()

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        routerServiceSetup()
        let nav = routerService.navigationController(
            withInitialFeature: Feature1Feature.self
        )

        window?.rootViewController = nav
        window?.makeKeyAndVisible()
    }

    private func routerServiceSetup() {
        routerService.register(routeHandler: Feature1RouteHandler())
        routerService.register(routeHandler: Feature2RouteHandler())
    }

}

