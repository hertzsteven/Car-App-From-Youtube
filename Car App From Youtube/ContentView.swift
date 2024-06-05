//
//  ContentView.swift
//  Car App From Youtube
//
//  Created by Steven Hertz on 6/2/24.
//

import SwiftUI

struct ContentView: View {
    let topGradient = [Color.gray, Color.blue]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    VStack {
                        LinearGradient(colors: topGradient, startPoint: .top, endPoint: .bottom)
                            .containerRelativeFrame(.horizontal)
                            .containerRelativeFrame(.vertical) { size, align in size/2 }
                    }
                    Spacer().frame(height: 150)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .padding(.leading)
                            Text("Search a car ...")
                                .font(.footnote)
                            Spacer()
                        }
                        .frame(height: 60)
                        .overlay {
                            Capsule()
                                .stroke(lineWidth: 0.5)
                                .foregroundStyle(Color(.systemGray4))
                                .shadow(color: .black.opacity(0.4), radius: 10)
                        }
                        .padding(.horizontal)
                    }).foregroundStyle(.white)
                }

                
            }
            .navigationStackModifier()
        }
        
    }
}


#Preview {
    ContentView()
}
