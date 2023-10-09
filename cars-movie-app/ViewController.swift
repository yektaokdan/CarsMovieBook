//
//  ViewController.swift
//  cars-movie-app
//
//  Created by yekta on 6.10.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var myCars = [Cars]()
    var chosenCar : Cars?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
        
        //Cars Objects
        
        let mcqueenn = Cars(name: "Lightning McQueenn", role: "Racer", image: UIImage(named: "mcqueenn")!)
        let mater = Cars(name: "Mater", role: "Recovery vehicle.", image: UIImage(named: "mater")!)
        let sally = Cars(name: "Sally Carrera", role: "Lawyer", image: UIImage(named: "sally")!)
        let flo = Cars(name: "Flo", role: "Petrol Station Owner", image: UIImage(named: "flo")!)
        let ramone = Cars(name: "Ramone", role: "Painter", image: UIImage(named: "ramone")!)
        let red = Cars(name: "Red", role: "Fireman", image: UIImage(named: "red")!)
        
        myCars.append(mcqueenn)
        myCars.append(mater)
        myCars.append(sally)
        myCars.append(flo) 
        myCars.append(ramone)
        myCars.append(red)

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = myCars[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenCar = myCars[indexPath.row]
        self.performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "toSecondVC"){
            var destinationVC = segue.destination as! SecondViewController
            destinationVC.selectedCar = chosenCar
        }
    }


}


