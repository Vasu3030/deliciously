//
//  ViewController.swift
//  Deliciously
//
//  Created by AROUN Vassou on 17/04/2021.
//

import UIKit

class ViewController: UIViewController {
//    var Dumbo = ["burger1", "burger2"]
//    var Bouillon = ["ok", "test"]
//    var imgArr = ["burger1", "burger2"]
//    var imgArr = [String]()
//    var timer = Timer()
//    var counter = 0
//
//
//    @IBOutlet weak var sliderCollectionView: UICollectionView!
//
//    @IBOutlet weak var pageView: UIPageControl!
//
//    @IBAction func dismiss(_ sender: Any) {
//        dismiss(animated: true, completion: nil)
//    }
//
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

//extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        pageView.numberOfPages = imgArr.count
//        pageView.currentPage = 0
//        
//        return imgArr.count
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? ImageCollectionViewCell
//        cell?.img.image = UIImage(named: imgArr[indexPath.row])
//        
//        return cell!
//    }
//    
//    @objc func changeImage(){
//        let index = IndexPath.init(item: counter, section: 0)
//        if counter < imgArr.count {
//            self.sliderCollectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
//            pageView.currentPage = counter
//            counter += 1
//        } else {
//            counter = 0
//            self.sliderCollectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: false)
//            pageView.currentPage = counter
//        }
//    }
//    
//}
