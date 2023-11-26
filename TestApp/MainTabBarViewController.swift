//
//  MainTabBarViewController.swift
//  TestApp
//
//  Created by Александр Харлампов on 27.11.2023.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        
        
        viewControllers = [
            generateViewController(viewController: SearchTableViewController(), imageName: "searchSmall", title: "Search",largeTitle: true),
            generateViewController(viewController: ViewController(), imageName: "library", title: "Library",largeTitle: false)
        ]
        
    }
    
    //метод для генерации контроллеров
    private func generateViewController(
        viewController: UIViewController, imageName: String, title: String, largeTitle: Bool) -> UIViewController {
        //оборачиваем контроллер в навигешн контроллер
        let controller = UINavigationController(rootViewController: viewController)
        
        //добавляем на таббар иконку контроллера
        controller.tabBarItem.image = UIImage(named: imageName)
        
        //добавляем на таббар название контроллера
        controller.tabBarItem.title = title
        
        //добавляем на верхний колонтитут надпись
        viewController.navigationItem.title = title
         //указываем большой ли будет титул
        controller.navigationBar.prefersLargeTitles = largeTitle
        return controller
    }
   
}
#Preview{
    MainTabBarViewController()
}
