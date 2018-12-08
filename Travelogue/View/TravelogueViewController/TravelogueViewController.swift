//
//  TravelogueViewController.swift
//  Travelogue
//
//  Created by Matthew McCarthy on 12/7/18.
//  Copyright © 2018 Matthew McCarthy. All rights reserved.
//

import UIKit

class TravelogueViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var TravelogueTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TravelogueTableView.dataSource = self
        TripFunctions.readTrips (completion: { [weak self] in
            //completion
            self?.TravelogueTableView.reloadData()
        })
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.tripModels.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        if cell == nil {
            cell=UITableViewCell(style:UITableViewCell .CellStyle.default, reuseIdentifier: "cell")
        }
        cell!.textLabel?.text = Data.tripModels[indexPath.row].title
        
//        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
//        cell.textLabel?.text = Data.tripModels[indexPath.row].title
        return cell!
    }
}
