//
//  ViewController.swift
//  Deliciously
//
//  Created by AROUN Vassou on 17/04/2021.
//

import UIKit

class DumboViewController: UIViewController {
    
    // Déclaration du tableau d'images
    var imgArr = ["burger1", "burger2"]
    
    @IBOutlet weak var sliderCollectionView: UICollectionView!
    
    @IBOutlet weak var pageView: UIPageControl!
    
    // Button exit du Popup
    @IBAction func dismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

// Carousel des images
extension DumboViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        pageView.numberOfPages = imgArr.count
        pageView.currentPage = 0
        
        return imgArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? ImageCollectionViewCell
        cell?.img.image = UIImage(named: imgArr[indexPath.row])
        
        return cell!
    }
}
