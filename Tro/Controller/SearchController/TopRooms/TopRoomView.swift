//
//  TopRoomView.swift
//  Tro
//
//  Created by Chu Van Hung on 10/14/20.
//  Copyright © 2020 Chu Van Hung. All rights reserved.
//

import UIKit

protocol TabCollectionView {
    func didSelectItem()
}

class TopRoomView: BaseCustomView, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    var delegate : TabCollectionView?
    override func initViewWithNib() {
        super.initViewWithNib()
        initCollectionView()
    }
    
    private func initCollectionView(){
           let nib = UINib(nibName: "TopRoomCollectionViewCell", bundle: nil)
           collectionView.register(nib, forCellWithReuseIdentifier: "TopRoomCell")
           collectionView.dataSource = self
           collectionView.delegate = self
       
       }
       func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return 12
       }
       
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopRoomCell", for: indexPath) as! TopRoomCollectionViewCell
        //cell.moneyLabel.text = "money"
           return cell
       }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.didSelectItem()
    }
}
