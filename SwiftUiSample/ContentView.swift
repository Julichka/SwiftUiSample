//
//  ContentView.swift
//  SwiftUiSample
//
//  Created by Igor Khrupin on 8/11/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            List {
                
                ForEach(Data.list) { item in
                    
                    NavigationLink {
                        DetailView(item: item)
                    } label: {
                        HStack {
                            Image(item.imageAssertName ?? "")
                                .resizable()
                                .frame(width: 50, height: 50, alignment: .center)
                                .clipped()
                                .aspectRatio(1, contentMode: .fill)
                            Text(item.title ?? "")
                        }
                    }
                }
            }.navigationBarTitle("Cats")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
