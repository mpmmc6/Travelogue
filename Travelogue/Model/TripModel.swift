//
//  TripModel.swift
//  Travelogue
//
//  Created by Matthew McCarthy on 12/7/18.
//  Copyright © 2018 Matthew McCarthy. All rights reserved.
//

import Foundation

class TripModel{
    let id: UUID
    var title: String
    init(title: String){
        id=UUID()
        self.title=title
    }
}
