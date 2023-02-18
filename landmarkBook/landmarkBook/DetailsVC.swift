//
//  DetailsVC.swift
//  landmarkBook
//
//  Created by kerem on 18.02.2023.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var landmarkLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        landmarkLabel.text = selectedLandmarkName
        imageView.image = selectedLandmarkImage
    }
    


}
