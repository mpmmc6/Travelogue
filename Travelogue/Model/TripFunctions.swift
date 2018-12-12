//
//  TripFunctions.swift
//  Travelogue
//
//  Created by Matthew McCarthy on 12/7/18.
//  Copyright © 2018 Matthew McCarthy. All rights reserved.
//

import Foundation

class TripFunctions{
    static func createTrip(tripModel: TripModel){
        Data.tripModels.append(tripModel)
    }
    static func readTrips(completion: @escaping () -> ()) {
        DispatchQueue.global(qos: .userInitiated).async {
            if Data.tripModels.count==0 {
            Data.tripModels.append(TripModel(title: "trip to bali"))
            Data.tripModels.append(TripModel(title: "Mexico"))
            Data.tripModels.append(TripModel(title: "Russia"))
           
            }
            DispatchQueue.main.async {
                completion()
                
            }

        }
        
            
        
    }
    static func updateTrip(tripModel: TripModel){
        
        
        
    }
    static func deleteTrip(index: Int){
        Data.tripModels.remove(at: index)
        
        
    }
}

