//
//  ContentView.swift
//  iTechNewsApp
//
//  Created by Christian Lorenzo on 5/20/20.
//  Copyright © 2020 Christian Lorenzo. All rights reserved.
//

import SwiftUI
import Foundation

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager() //This is a listener, and it comes from the @Publish on the NetworkManager
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView { // it adds the top navigation bar
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                            //.foregroundColor(.white)
                        Text(post.title)
                            //.foregroundColor(.white)
                    }
                }
                
            }
            .navigationBarTitle("iTechNews")
        }
            
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

