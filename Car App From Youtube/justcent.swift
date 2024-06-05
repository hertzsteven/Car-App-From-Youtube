    //
    //  justcent.swift
    //  Car App From Youtube
    //
    //  Created by Steven Hertz on 6/2/24.
    //

import SwiftUI

struct justcent: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .border(.red)
            .containerRelativeFrame(.horizontal, { siz, _ in
                siz/2
            })
            .containerRelativeFrame(.vertical, { siz, _ in
                siz/2
            })
                //        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .padding(.horizontal,60)
            .padding(.vertical,60)
            .border(.black)
            
            .toolbar {
                trailingNavItm()
                downloadToolbarButton
                ToolbarItem(placement: .topBarLeading) {
                    Text("Hello")
                }
            }
        }
    }
}

extension justcent {
    @ToolbarContentBuilder
    private func trailingNavItm() -> some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Button("Button") { }
        }
    }
    
    @ToolbarContentBuilder
    private var downloadToolbarButton: some ToolbarContent {
        ToolbarItem(placement: .navigationBarTrailing) {
            Button("Download") {
                    // downloading...
            }
        }
    }
}


#Preview {
    justcent()
}
