//
//  SecondViewController.swift
//  cars-movie-app
//
//  Created by yekta on 6.10.2023.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var roleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var selectedCar : Cars?
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedCar?.name
        roleLabel.text = selectedCar?.role
        imageView.image = selectedCar?.image
    }
    
}
