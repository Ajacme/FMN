//
//  HomeViewController.swift
//  FriendsMobileNetwork
//
//  Created by ACME_MAC_SSD on 12/14/17.
//  Copyright © 2017 ACME iOS TEAM. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var tableView: UITableView!
//    @IBOutlet var contentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        scrollView.autoresizingMask = .flexibleWidth//UIViewAutoresizing.FlexibleWidth
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        //setup content size for scroll view
//        let contentSizeheight:CGFloat = //(thumbNailWidth + padding) * (CGFloat(imageStrings.count))
        
        
        scrollView.contentSize = CGSize(width: contentView.frame.width, height: contentView.frame.width)
        
        self.tableView.delegate = self
        self.tableView.delegate = self
        
       
        
        self.tableView.estimatedRowHeight = 80
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.scrollView.contentSize.height = 3000
    }

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    // MARK: -- tableview delegate
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        let view:UIView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.bounds.size.width, height: 10))
        view.backgroundColor = .clear
        
        return view
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:FriendlyPlanTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! FriendlyPlanTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10.0
    }
   
}

/*extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell:PointsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PointsCollectionViewCell
        cell.labelPoints.text = "45"
        cell.labelTitle.text = "Referral Points"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        var collectionViewSize = collectionView.frame.size
        collectionViewSize.width = collectionViewSize.width/2.3 //Display Three elements in a row.
        collectionViewSize.height = collectionViewSize.height/1.3
        
        
        return collectionViewSize
    }
}*/



public class FriendlyPlanTableViewCell : UITableViewCell {
    
    @IBOutlet weak var labelPlanName: UILabel!
    @IBOutlet weak var buttonSeePlan: UIButton!
    @IBOutlet weak var labelPrice: UILabel!
    
}

public class PointsCollectionViewCell : UICollectionViewCell {
    
    @IBOutlet var labelTitle: UILabel!
    @IBOutlet var labelPoints: UILabel!
}
