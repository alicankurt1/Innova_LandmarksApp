//
//  DetailsVC.swift
//  Innova_LandmarksApp
//
//  Created by Alican Kurt on 30.12.2021.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var landImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Detail"
        setLandDetails()
    }
    
    private func setLandDetails(){
        landImageView.layer.masksToBounds = true
        landImageView.layer.cornerRadius = CGFloat(30)
        landImageView.layer.borderWidth = 5
        landImageView.layer.borderColor = UIColor.black.cgColor
        landImageView.backgroundColor = .black
        
        nameLabel.layer.masksToBounds = true
        nameLabel.layer.cornerRadius = CGFloat(30)
        nameLabel.layer.borderWidth = 1
        nameLabel.layer.borderColor = UIColor.black.cgColor
        
        descriptionLabel.layer.masksToBounds = true
        descriptionLabel.layer.cornerRadius = CGFloat(30)
        descriptionLabel.layer.borderWidth = 1
        descriptionLabel.layer.borderColor = UIColor.black.cgColor
        
        
        
        
        
        guard let land = LandmarksSingleton.shared.land else{
            return
        }
        
        landImageView.image = land.landImage
        nameLabel.text = land.name
        descriptionLabel.text = "   \(land.description)"
    }
    



}
