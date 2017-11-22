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
        tabItems = [(vc1, "First"), (vc2, "Second")]
        option.tabWidth = view.frame.width / CGFloat(tabItems.count)
        option.hidesTopViewOnSwipeType = .all
        option.currentTabColor = UIColor.black
        option.currentBarHeight = 60.0
        option.tabHeight = 60.0
        option.isTranslucent = false
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
