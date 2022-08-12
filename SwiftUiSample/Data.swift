//
//  Data.swift
//  SwiftUiSample
//
//  Created by Igor Khrupin on 8/11/22.
//

import Foundation
import SwiftUI

class Data {
    
    static let list: Array<DataItem> = [
        DataItem(id:"1", title:"British Shorthair", imageAssertName:"British_Shorthair", description:"Short description for British_Shorthair"),
        DataItem(id:"2", title:"Calico", imageAssertName:"Calico", description:"Short description for Calico"),
        DataItem(id:"3", title:"Gray_Tabby", imageAssertName:"Gray_Tabby", description:"Short description for Gray_Tabby"),
        DataItem(id:"4", title:"Japanese_Bobtail", imageAssertName:"Japanese_Bobtail", description:"Short description for Japanese_Bobtail"),
        DataItem(id:"5", title:"Norwegian_Forest_Cat", imageAssertName:"Norwegian_Forest_Cat", description:"Short description for Norwegian_Forest_Cat"),
        DataItem(id:"6", title:"Persian", imageAssertName:"Persian", description:"Short description for Persian"),
        DataItem(id:"7", title:"Polydactyl", imageAssertName:"Polydactyl", description:"Short description for Polydactyl"),
        DataItem(id:"8", title:"Scottish_Fold", imageAssertName:"Scottish_Fold", description:"Short description for Scottish_Fold"),
        DataItem(id:"9", title:"Siamese", imageAssertName:"Siamese", description:"Short description for Siamese"),
        DataItem(id:"10", title:"Snowshoe", imageAssertName:"Snowshoe", description:"Short description for Snowshoe"),
    ]
}

class DataItem: ObservableObject, Identifiable {
    @Published var id: String? = nil
    @Published var title: String? = nil
    @Published var imageAssertName: String? = nil
    @Published var description: String? = nil
    
    init(id: String, title: String, imageAssertName: String, description: String) {
        self.id = id
        self.title = title
        self.imageAssertName = imageAssertName
        self.description = description
    }
}
