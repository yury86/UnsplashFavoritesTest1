//
//  ViewController.swift
//  UnsplashFavoritesTest
//
//  Created by Мак on 23.01.2022.
//

import UIKit

class ViewController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
        //Assign self for delegate for that ViewController can respond to UITabBarControllerDelegate methods
        self.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create Tab one
        let tabOne = UIViewController()
        
        tabOne.title = "Home"
        let tabOneBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))
        
        tabOne.tabBarItem = tabOneBarItem
   // url="https://api.unsplash.com/photos/?client_id=YourAPIKey&order_by=ORDER&per_page=30"
        
        // Create Tab two
        let tabTwo = UIViewController()
        tabTwo.title = "Favorites"
        let tabTwoBarItem2 = UITabBarItem(title: "Favorites", image: UIImage(systemName: "heart"), selectedImage: UIImage(systemName: "heart.fill"))
        
        tabTwo.tabBarItem = tabTwoBarItem2
        
        
        self.viewControllers = [tabOne, tabTwo]
    }
    
    // UITabBarControllerDelegate method
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected \(viewController.title!)")
    }
}
