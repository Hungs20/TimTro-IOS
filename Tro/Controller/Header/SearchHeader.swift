//
//  SearchHeader.swift
//  Tro
//
//  Created by Chu Van Hung on 10/14/20.
//  Copyright © 2020 Chu Van Hung. All rights reserved.
//

import UIKit

class SearchHeader: BaseCustomView {

    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var itemButtonStackView: UIStackView!
    let listPoster : [UIImage?] = [
        UIImage(named: "poster-1"),
        UIImage(named: "poster-2"),
        UIImage(named: "poster-3")
    ]
    var indexPoster = 0
    override func initViewWithNib() {
        super.initViewWithNib()
        posterImage.image = listPoster[0]
        pageControl.numberOfPages = listPoster.count
        
        stackView.clipsToBounds = true
        stackView.insertCustomizedViewIntoStack(background: .systemBackground, cornerRadius: 10.0, shadowColor: .init(srgbRed: 0, green: 0, blue: 0, alpha: 1), shadowOpacity: 0.5	, shadowRadius: 10)
        searchView.clipsToBounds = true
        searchView.layer.cornerRadius = 10.0
        initSearchBar()
        autoChangeImage()
        initButtonItem()
        layoutIfNeeded()
        
    }
    
    func initButtonItem(){
        itemButtonStackView.isHidden = false
    }
    
    func initSearchBar(){
        searchBar.setImage(UIImage(), for: .search, state: .normal)
        searchBar.layer.borderColor = .none
        //searchBar.layer.cornerRadius = 10
    }
    func autoChangeImage(){
        let timer = Timer.scheduledTimer(withTimeInterval: 5, repeats: true){
            timer in
            self.indexPoster += 1
            if self.indexPoster >= self.listPoster.count {
                self.indexPoster = 0
            }
            self.pageControl.currentPage = self.indexPoster
            self.posterImage.image = self.listPoster[self.indexPoster]
        }
    }
    
    @IBAction func changePosition(_ sender: UIButton) {
        print("change position")
    }
    
}
extension UIStackView {
    func customize(backgroundColor: UIColor = .clear, radiusSize: CGFloat = 0) {
        let subView = UIView(frame: bounds)
        subView.backgroundColor = backgroundColor
        subView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        insertSubview(subView, at: 0)

        subView.layer.cornerRadius = radiusSize
        subView.layer.masksToBounds = true
        subView.clipsToBounds = true
    }
}
extension UIStackView {
func insertCustomizedViewIntoStack(background: UIColor, cornerRadius: CGFloat, shadowColor: CGColor, shadowOpacity: Float, shadowRadius: CGFloat) {
        let subView = UIView(frame: bounds)
        subView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        subView.layer.cornerRadius = cornerRadius
        subView.backgroundColor = background
        subView.layer.shadowColor = shadowColor
        subView.layer.shadowOpacity = shadowOpacity
        subView.layer.shadowOffset = .zero
        subView.layer.shadowRadius = shadowRadius
        insertSubview(subView, at: 0)
    }
}
