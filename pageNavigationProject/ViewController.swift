//
//  ViewController.swift
//  pageNavigationProject
//
//  Created by aziz omar boudi  on 12/9/15.
//  Copyright © 2015 jogabo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

  @IBOutlet weak var headerView: UIView!
  @IBOutlet weak var scrollView: UIScrollView!

  @IBOutlet weak var triangle: UIImageView!
  @IBOutlet weak var triangleTrailerConstraint: NSLayoutConstraint!


  override func viewDidLoad() {
    super.viewDidLoad()
    print(triangle.frame.origin.x)
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

extension ViewController {

  func scrollViewDidScroll(scrollView: UIScrollView) {
//    print(scrollView.contentOffset.x)
    triangle.frame.origin.x = 80 + scrollView.contentOffset.x / 4
    view.layoutIfNeeded()
  }



}
