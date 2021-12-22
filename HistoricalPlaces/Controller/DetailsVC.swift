//
//  DetailsVC.swift
//  HistoricalPlaces
//
//  Created by Firat on 22.12.2021.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var placeImages: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    var selectedImage = UIImage()
    var selectedDetail = ""
    var selectedName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabel.text = selectedDetail
        placeImages.image = selectedImage
        nameLabel.text = selectedName
        
    }
    

}
