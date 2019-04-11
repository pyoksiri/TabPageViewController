//
//  LimitedTabPageViewController.swift
//  TabPageViewController
//
//  Created by Tomoya Hayakawa on 2017/08/05.
//
//

import UIKit
import TabPageViewController

class LimitedTabPageViewController: TabPageViewController {

    override init() {
        super.init()
        let vc1 = UIViewController()
        vc1.view.backgroundColor = UIColor.white
        let vc2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ListViewController")
        let vc3 = UIViewController()
        let vc4 = UIViewController()
        let vc5 = UIViewController()

        tabItems = [(vc1, "First"), (vc2, "Second"), (vc3, "Third"), (vc4, "Fourth"), (vc5, "Fiveth")]
        option.tabWidth = view.frame.width / CGFloat(tabItems.count)
        option.hidesTopViewOnSwipeType = .all
        option.currentTabColor = UIColor.black
        option.currentBarHeight = 2.0
        option.tabHeight = 60.0
        option.isTranslucent = false
        self.view.backgroundColor = UIColor.red
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
