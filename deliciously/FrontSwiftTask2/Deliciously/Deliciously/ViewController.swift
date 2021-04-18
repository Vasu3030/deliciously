//
//  ViewController.swift
//  Deliciously
//
//  Created by AROUN Vassou on 18/04/2021.
//

import UIKit

class ViewController: UIViewController {
    var allRestaurants: [Restaurant] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        Api().getAllRestaurant { (allrestaurants) in
            self.allRestaurants = allrestaurants
        }
    }

    @IBAction func enter(_ sender: Any) {
        performSegue(withIdentifier: "enter", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! AllRestaurantsViewController
        vc.restaurants = self.allRestaurants
    }
}

