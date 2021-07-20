//
//  ContentView.swift
//  BlimClone
//
//  Created by Juan Carlos Perez Delgadillo on 19/07/21.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = .black
    }
    
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }.tag(0)
            
            Text("TV EN VIVO")
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("TV EN VIVO")
                }.tag(1)
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }.tag(2)
            
            Text("Downloads")
                .tabItem {
                    Image(systemName: "arrow.down.to.line.alt")
                    Text("Downloads")
                }.tag(3)

            
            Text("More")
                .tabItem {
                    Image(systemName: "equal")
                    Text("More")
                }.tag(4)


        }.accentColor(.white)
        
    }
    
}

struct ContentView_Prview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
