//
//  MyTableViewCell.swift
//  Deliciously
//
//  Created by AROUN Vassou on 18/04/2021.
//

import UIKit

protocol MyTableViewCellDelegate: AnyObject {
    func didTapButton(with restaurant: Restaurant)
}

class MyTableViewCell: UITableViewCell {
    
    weak var delegate: MyTableViewCellDelegate?
    
    static let identifier = "MyTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "MyTableViewCell", bundle: nil)
    }
    
    @IBOutlet var button: UIButton!
    private var title: String = ""
    private var restaurant: Restaurant!
    
    @IBAction func didTapButton() {
        delegate?.didTapButton(with: restaurant)
    }
    
    func configure(with restaurant: Restaurant) {
        self.title = restaurant.name
        self.restaurant = restaurant
        button.setTitle(title, for: .normal)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        button.setTitleColor(.link, for: .normal)
    }
    
}
