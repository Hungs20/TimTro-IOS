//
//  ViewController.swift
//  Tro
//
//  Created by Chu Van Hung on 10/14/20.
//  Copyright © 2020 Chu Van Hung. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, TabCollectionView {
    func didSelectItem() {
        let vc = DetailRoomViewController()
        vc.modalPresentationStyle = .fullScreen //or .overFullScreen for transparency
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var contentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        initHeader()
        initTrendSearch()
        initTopRoom()
        initTrendSearch()
    }
    
    func initHeader(){
        let header = SearchHeader()
        stackView.addArrangedSubview(header)
        
//        contentView.addSubview(header)
//        header.translatesAutoresizingMaskIntoConstraints = false
//        header.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
//        header.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
//        header.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        
    }
    func initTrendSearch(){
        let trendView = TrendSearch()
        stackView.addArrangedSubview(trendView)
    }
    func initTopRoom(){
        let topRoom = TopRoomView()
        topRoom.delegate = self
        stackView.addArrangedSubview(topRoom)
    }

}

