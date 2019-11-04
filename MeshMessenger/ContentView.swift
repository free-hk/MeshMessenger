//
//  ContentView.swift
//  MeshMessenger
//
//  Created by For HK on 3/11/2019.
//  Copyright © 2019 FreeHK. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            Text("First View 2")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("first")
                        Text("First")
                    }
                }
                .tag(0)
            List{
                Text("Hello World")
            }.tabItem {
                    VStack {
                        Image("first")
                        Text("First")
                    }
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
