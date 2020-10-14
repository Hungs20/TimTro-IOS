//
//  TrendSearch.swift
//  Tro
//
//  Created by Chu Van Hung on 10/14/20.
//  Copyright © 2020 Chu Van Hung. All rights reserved.
//

import UIKit

class TrendSearch: BaseCustomView, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var trendCollectionView: UICollectionView!

    override func initViewWithNib() {
        super.initViewWithNib()
        initCollectionView()
    }
    
    private func initCollectionView(){
        let nib = UINib(nibName: "TrendCollectionViewCell", bundle: nil)
        trendCollectionView.register(nib, forCellWithReuseIdentifier: "TrendCollectionViewCell")
        trendCollectionView.dataSource = self
        trendCollectionView.delegate = self
    
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TrendCollectionViewCell", for: indexPath) as! TrendCollectionViewCell
        
        return cell
    }
}
