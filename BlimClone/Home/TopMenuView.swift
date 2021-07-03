//
//  TopMenuView.swift
//  BlimClone
//
//  Created by Juan Carlos Perez Delgadillo on 01/07/21.
//

import SwiftUI

struct TopMenuView: View {
    var body: some View {
        HStack {
            
            Button(action: {
                //TODO: Action
            }, label: {
                Image("logo-image")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
            }).buttonStyle(PlainButtonStyle())
            
            
            Spacer()
            
            Button(action: {
                //TODO: Action
            }, label: {
                Text("TV Shows")
            }).buttonStyle(PlainButtonStyle())
            
            Spacer()
            Button(action: {
                //TODO: Action
            }, label: {
                Text("Movies")
            }).buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {
                //TODO: Action
            }, label: {
                Text("My List")
            }).buttonStyle(PlainButtonStyle())
        }
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
}
