//
//  TopRoomCollectionViewCell.swift
//  Tro
//
//  Created by Chu Van Hung on 10/14/20.
//  Copyright © 2020 Chu Van Hung. All rights reserved.
//

import UIKit

class TopRoomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageTitle: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleRoom: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var smallAddress: UILabel!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var bigAddress: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imageTitle.clipsToBounds = true
        imageTitle.layer.cornerRadius = 10.0
        stackView.insertCustomizedViewIntoStack(background: .systemBackground, cornerRadius: 10.0, shadowColor: .init(srgbRed: 0, green: 0, blue: 0, alpha: 1), shadowOpacity: 0.5, shadowRadius: 0.5)
    }

}
