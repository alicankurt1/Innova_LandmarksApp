//
//  ViewController.swift
//  Innova_LandmarksApp
//
//  Created by Alican Kurt on 30.12.2021.
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet weak var landmarkCollectionView: UICollectionView!
    private var landMarks: [LandDetails] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Landmarks Book"
        
        landMarks = LandmarksSingleton.shared.landMarks
            
        landmarkCollectionView.delegate = self
        landmarkCollectionView.dataSource = self
    }


}


extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return landMarks.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! LandmarkCell
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = CGFloat(10)
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.black.cgColor
        let land = landMarks[indexPath.row]
        cell.landImageView.image = land.landImage
        cell.countryNameLabel.text = land.country
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        LandmarksSingleton.shared.land = landMarks[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
}

