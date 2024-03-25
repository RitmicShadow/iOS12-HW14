//
//  TabBar.swift
//  iOS12-HW14
//
//  Created by Ден Майшев on 23.03.2024.
//

import UIKit

class TabBarController: UITabBarController {

    private var tabBarViewController: [UIViewController]?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
        setupTabBar()
    }

    private func setupViewController() {
        let first = MediaLibraryViewController()
        let firstIcon = UITabBarItem(title: "Медиатека",
                                     image: UIImage(systemName: "photo.on.rectangle"),
                                     selectedImage: UIImage(systemName: "photo.on.rectangle"))
        first.tabBarItem = firstIcon

        let second = ForYouViewController()
        let secondIcon = UITabBarItem(title: "Для вас",
                                      image: UIImage(systemName: "heart.text.square"),
                                      selectedImage: UIImage(systemName: "heart.text.square"))
        second.tabBarItem = secondIcon

        let third = AlbumsViewController()
        let thirdIcon = UITabBarItem(title: "Альбомы",
                                     image: UIImage(systemName: "rectangle.stack.fill"),
                                     selectedImage: UIImage(systemName: "rectangle.stack.fill"))
        third.tabBarItem = thirdIcon

        let four = SearchViewController()
        let fourIcon = UITabBarItem(title: "Поиск",
                                    image: UIImage(systemName: "magnifyingglass"),
                                    selectedImage: UIImage(systemName: "magnifyingglass"))
        four.tabBarItem = fourIcon

        tabBarViewController = [first, second, third, four].map { UINavigationController(rootViewController: $0) }
    }

    private func setupTabBar() {
        tabBar.backgroundColor = .white
        tabBar.tintColor = .black
        setViewControllers(tabBarViewController, animated: true)
    }
}
