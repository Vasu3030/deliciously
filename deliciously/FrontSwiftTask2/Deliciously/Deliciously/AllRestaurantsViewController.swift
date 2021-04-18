//
//  AllRestaurantsViewController.swift
//  Deliciously
//
//  Created by AROUN Vassou on 18/04/2021.
//

import UIKit

class AllRestaurantsViewController: UIViewController, UITableViewDataSource, MyTableViewCellDelegate {
    var restaurants: [Restaurant] = []
    var restaurant: Restaurant!

    @IBOutlet var table: UITableView!
    
    func didTapButton(with restaurant: Restaurant) {
        print("\(restaurant)")
        self.restaurant = restaurant
        performSegue(withIdentifier: "showResto", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! RestaurantViewController
        vc.restaurant = self.restaurant
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.register(MyTableViewCell.nib(), forCellReuseIdentifier: MyTableViewCell.identifier)
        table.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier, for: indexPath) as! MyTableViewCell
        cell.configure(with: restaurants[indexPath.row])
        cell.delegate = self
        return cell
    }
}
