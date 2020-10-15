//
//  DetailRoomViewController.swift
//  Tro
//
//  Created by Chu Van Hung on 10/15/20.
//  Copyright © 2020 Chu Van Hung. All rights reserved.
//

import UIKit

class DetailRoomViewController: UIViewController {

    @IBOutlet weak var noteBarView: UIView!
    @IBOutlet weak var noteBar2View: UIView!
    @IBOutlet weak var noteBar3View: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = "Thông tin phòng trọ"
        noteBarView.clipsToBounds = true
        noteBarView.layer.cornerRadius = 5
        
        noteBar2View.clipsToBounds = true
        noteBar2View.layer.cornerRadius = 5
        
        
        noteBar3View.clipsToBounds = true
        noteBar3View.layer.cornerRadius = 5
    }

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
