//
//  MainTabBarController.swift
//  UnsplashFavoritesTest
//
//  Created by Мак on 24.01.2022.
//

import UIKit
class MainTabBarController: UITabBarController, UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
      //  self.delegate = self
            //view.backgroundColor = .systemBackground
           //UITabBar.appearance().barTintColor = .systemBackground
           //tabBar.tintColor = .label
            // setupVCs()
    }

fileprivate func createNavController(for rootViewController: UIViewController,
                                                  title: String,
                                                  image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        return navController
    }


   /* func setupVCs() {
           viewControllers = [
               createNavController(for: ViewController(), title: NSLocalizedString("Home", comment: ""), image: UIImage(systemName: "house")!),
               createNavController(for: ViewController(), title: NSLocalizedString("Favorites", comment: ""), image: UIImage(systemName: "heart")!)
           ]
       }
}*/
/* class MainTabBarController: UITabBarController, UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
            //var homeVC = ViewController()
            //homeVC.title = "Home"
        let homeVC = UITabBarItem.init(title: "Home", image: UIImage(systemName: "house.fill"), tag: 0)
         
    let favoritesVC = UITabBarItem.init(title: "Favorites", image: UIImage(systemName: "heart.fill"), tag: 1)
             
        // let controllerArray = [homeVC, favoritesVC]
        
    let item1 = ViewController()
    //let icon1 = UITabBarItem(title: "Title", image: UIImage(named: "someImage.png"), selectedImage: UIImage(named: "otherImage.png"))
      //  item1.tabBarItem = homeVC
        let controllers = [homeVC, favoritesVC]  //array of the root view controllers displayed by the tab bar interface
        self.viewControllers = controllers
    }

    //Delegate methods
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        print("Should select viewController: \(viewController.title ?? "") ?")
        return true;
    }*/

}
