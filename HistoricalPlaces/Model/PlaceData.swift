//
//  PlaceData.swift
//  HistoricalPlaces
//
//  Created by Firat on 22.12.2021.
//

import UIKit

struct PlaceData {
    var places = ["Colessium","Eiffel","Sumela Monastery"]
    var details = ["The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.","The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower.","Sumela Monastery is a Greek Orthodox monastery dedicated to the Virgin Mary located at Karadağ within the Pontic Mountains, in the Maçka district of Trabzon Province in modern Turkey."]
    
    var chosenPlace = ""
    var chosenImage = UIImage()
    var chosenDetail = ""
    
    var images: [UIImage] = [
        UIImage(named: "colessium")!,
        UIImage(named: "eiffel")!,
        UIImage(named: "sumela")!
    ]
    
}
