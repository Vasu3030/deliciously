//
//  RestaurantViewController.swift
//  Deliciously
//
//  Created by AROUN Vassou on 18/04/2021.
//

import UIKit

class RestaurantViewController: UIViewController {
    
    var restaurant: Restaurant!
    
    @IBOutlet weak var restaurantName: UILabel!
    @IBOutlet weak var restaurantDesc: UITextField!
    @IBOutlet weak var restaurantAdress: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        restaurantName.text = restaurant.name
        restaurantDesc.text = restaurant.description
        restaurantAdress.text = restaurant.adress
    }
}
