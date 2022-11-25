//
//  TabBarViewController.swift
//  PersonsList
//
//  Created by Анастасия Булдакова on 22.11.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let contactListVC = viewControllers?.first as? PersonViewController else { return }
        guard let sectionVC = viewControllers?.last as? PersonViewTwoController else { return }
        
        let persons = Person.getContactList()
        contactListVC.persons = persons
        sectionVC.persons = persons
        
        let tabBarAppearance = UITabBarAppearance() //UITabBarAppearance класс отвечающий за внешний вид TB, создали его экземпляр
        tabBarAppearance.configureWithOpaqueBackground()
        
        tabBar.standardAppearance = tabBarAppearance // standardAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance // scrollEdgeAppearance - внешний вид ТБ при скроллинге экрана
        
    }
}
