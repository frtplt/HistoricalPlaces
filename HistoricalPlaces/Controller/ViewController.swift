//
//  ViewController.swift
//  HistoricalPlaces
//
//  Created by Firat on 22.12.2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var placesTable: UITableView!
    
    var placeData = PlaceData()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        placesTable.delegate = self
        placesTable.dataSource = self
        
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            placeData.places.remove(at: indexPath.row)
            placeData.images.remove(at: indexPath.row)
            placesTable.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
    }

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = placeData.places[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placeData.places.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        placeData.chosenPlace = placeData.places[indexPath.row]
        placeData.chosenImage = placeData.images[indexPath.row]
        placeData.chosenDetail = placeData.details[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedName = placeData.chosenPlace
            destinationVC.selectedImage = placeData.chosenImage
            destinationVC.selectedDetail = placeData.chosenDetail
            
            
        }
    }
    
    


}

