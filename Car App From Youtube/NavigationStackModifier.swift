//
//  NavigationStackModifier.swift
//  Car App From Youtube
//
//  Created by Steven Hertz on 6/2/24.
//

import SwiftUI

struct NavigationStackModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .scrollIndicators(.hidden)
            .background(Color(.systemGray6))
            .ignoresSafeArea()
        
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Circle()
                        .fill(.white.opacity(0.2))
                        .frame(width: 45, height: 45)
                        .overlay {
                            Image(systemName: "bell.badge")
                                .foregroundStyle(.white)
                        }
                    
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(.stud01)
                        .resizable()
                        .frame(width: 45, height: 45)
                        .scaledToFill()
                        .clipShape(Circle())
                    
                }
            }
    }
}

extension View {
    func navigationStackModifier() -> some View {
        return modifier(NavigationStackModifier())
    }
}
