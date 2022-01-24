//
//  ViewController.swift
//  UnsplashFavoritesTest
//
//  Created by Мак on 23.01.2022.
//

import UIKit

class ViewController: UITabBarController, UITabBarControllerDelegate {
    struct  ImageV : Decodable {
        let id: String
           let width: Int
           let height: Int
           let color: String
    }
    //let images = Bundle.main.decode([ImageV].self, from: "https://api.unsplash.com/photos/?client_id=bGd_Znl1q8m51QpF8w7-jzz6svspEKKwLK3ucpC6c-o&order_by=ORDER&per_page=30")
    let tabTwo = UIViewController()
    /*
    lazy var myCollectionView: UICollectionView = {
        let layout = UICollectionViewLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        layout.itemSize = CGSize(width: fullSize.width/2, height: fullSize.width/2)
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(CollectionViewCell.self)
        
    }
    let fullSize = UIScene.main.bounds*/
  /*  var pictureInfo = [ImageV]() {
            didSet{
                DispatchQueue.main.async {
                   // self.tabBarController.tabTwo.myCollectionView.reloadData()
                    print(self.pictureInfo[0].urls)
                }
            }
        }
    */
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
    /*let url1 = "https://api.unsplash.com/photos/?client_id=bGd_Znl1q8m51QpF8w7-jzz6svspEKKwLK3ucpC6c-o&order_by=ORDER&per_page=30"
        URLSession.shared.dataTask(with: url1) { data, response, error in
           if let data = data {
              if let jsonString = String(data: data, encoding: .utf8) {
                 print(jsonString)
              }
           }
        }.resume()
      */  // Create Tab two
        
        tabTwo.title = "Favorites"
        let tabTwoBarItem2 = UITabBarItem(title: "Favorites", image: UIImage(systemName: "heart"), selectedImage: UIImage(systemName: "heart.fill"))
        
        tabTwo.tabBarItem = tabTwoBarItem2
        let url: String
       /* URLSession.shared.dataTask(with: url) { (data, response, error) in
                        if let error = error {
                            print("Error: \(error)")
                        }else if let data = data {
                            if url == self.url{
                             let imageView = UIImageView(image: <#T##UIImage?#>)
                                self.selectedViewController.addSubview(<#T##UIView#>)
        */
        
       /* URLSession.shared.dataTask(with: urlRequest) { data, response, error in
           if let data = data {
              do {
                 let image = try JSONDecoder().decode(Image.self, from: data)
                 print(image)
              } catch let error {
                 print(error)
              }
           }
        }.resume() */
        self.viewControllers = [tabOne, tabTwo]
    }
    
    // UITabBarControllerDelegate method
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected \(viewController.title!)")
        self.fetchImages()
    }
    /*@objc func addImages() {
        DispatchQueue.main.async {
            self.fetchImages()
        }
        
    }*/
    
    func fetchImages() {
        let address = "https://api.unsplash.com/photos/?client_id=bGd_Znl1q8m51QpF8w7-jzz6svspEKKwLK3ucpC6c-o&order_by=ORDER&per_page=30"
        if let url = URL(string: address) {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let error = error {
                    print("Error: \(error)")
                }else if let response = response as? HTTPURLResponse, let data = data {
                    print("Status Code: \(response.statusCode)")
                    do{
                        let decoder = JSONDecoder()
                        let picInfo = try decoder.decode([ImageV].self, from: data)
                        print(picInfo)
                       // self.pictureInfo.append(contentsOf: picInfo)
                    }catch{
                        print(error)
                    }
                }
            }.resume()
        }
        
    }

}
