//
//  ContentView.swift
//  Newspaper App
//
//  Created by Aleksandra Rusak on 2023-10-17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .center) {
                
                Text("today-news").bold().font(.title)
                
                CardComponentView().frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.25, alignment: .center).background(.black).cornerRadius(9)
                
                Button(action: {
                    
                }, label: {
                    Text("To Swedish")})
            
        }
        .position(x: geometry.size.width * 0.5, y: geometry.size.height * 0.2)
    }
    }
}

struct CardComponentView: View {
    var body: some View {
        
            
                AsyncImage(url: URL(string: "https://www.svtstatic.se/image/wide/992/41404046/1697528910"), content: { image in
                    image.resizable().overlay(content: {
                        
                        VStack{
                            
                            Text("Attentat i Bryssel").foregroundColor(.white).bold().font(.title)
                        }
                        
                    })
                    
                }, placeholder: {
                    Text("Loading...")
                
            })
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
