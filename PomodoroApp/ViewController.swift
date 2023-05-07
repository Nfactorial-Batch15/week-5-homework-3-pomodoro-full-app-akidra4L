//
//  ViewController.swift
//  PomodoroApp
//
//  Created by Alikhan Gubayev on 07.05.2023.
//

import UIKit

struct TabBarItem {
    var title: String
    var controller: UIViewController
    var icon: String
    
    public static var tabBarItems: [TabBarItem] = [
        TabBarItem(title: "Home", controller: MainViewController(), icon: "house.fill"),
        TabBarItem(title: "Settings", controller: SettingsViewController(), icon: "slider.horizontal.3"),
        TabBarItem(title: "History", controller: HistoryViewController(), icon: "doc"),
    ]
    
    public static var tabBarControllers: [UIViewController] = [
        MainViewController(), SettingsViewController(), HistoryViewController()
    ]
}

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setInitialSettings()
    }
    
    private func setInitialSettings() {
        self.setViewControllers(TabBarItem.tabBarControllers, animated: false)
        guard let items = self.tabBar.items else { return }
        for i in 0...2 {
            items[i].title = TabBarItem.tabBarItems[i].title
            items[i].image = UIImage(systemName: TabBarItem.tabBarItems[i].icon)
        }
    }
}

