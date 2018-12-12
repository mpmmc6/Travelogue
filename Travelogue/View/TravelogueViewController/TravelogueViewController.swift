//
//  TravelogueViewController.swift
//  Travelogue
//
//  Created by Matthew McCarthy on 12/7/18.
//  Copyright © 2018 Matthew McCarthy. All rights reserved.
//

import UIKit

class TravelogueViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var TravelogueTableView: UITableView!
    
    @IBOutlet weak var addButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TravelogueTableView.dataSource = self
        TravelogueTableView.delegate = self
        TripFunctions.readTrips (completion: { [weak self] in
            //completion
            self?.TravelogueTableView.reloadData()
        })
            }
//addButton.createFloatingActionButton()
    

override func prepare(for segue: UIStoryboardSegue , sender: Any?){
    if segue.identifier == "toAddTripSegue"{
        let popup = segue.destination as! AddTripViewController
        popup.doneSaving = { [weak self] in
            self?.TravelogueTableView.reloadData()
        }
    }
    
}
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.tripModels.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TravelogueTableViewCell
        
        cell.setup(tripModel: Data.tripModels[indexPath.row])
 
        return cell
    }
   
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }

    func tableView(_ tableView: UITableView,trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath)-> UISwipeActionsConfiguration?{
        let delete = UIContextualAction(style: .destructive, title: "Delete"){(contextualAction, view, actionPerformed: (Bool) ->()) in
            TripFunctions.deleteTrip(index: indexPath.row)
            self.TravelogueTableView.deleteRows(at: [indexPath], with: .automatic)
            actionPerformed(true)
        }
       
        return UISwipeActionsConfiguration(actions: [delete])
    }
}
