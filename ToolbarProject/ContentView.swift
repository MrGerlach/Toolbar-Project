//
//  ContentView.swift
//  ToolbarProject
//
//  Created by Michał Gerlach on 24/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State var isPresenting: Bool = false
    @State var love: Double = 0.0
    
    var body: some View {
    
            NavigationView {
                Text("Punto is awesome cat ♥️")
                    .font(.title)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button(action: {
                                isPresenting = true
                            }, label: {
                                Image(systemName: "gear")
                            })
                        }
                    }
                    .sheet(isPresented: $isPresenting) {
                        NavigationView {
                            VStack{
                            Text("Punto loves cuddles ♥️")
                                .font(.title)
                                Image("punto")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(love)
                                .toolbar {
                                    Button("Love") {
                                        love = 1.0
                                    }
                                        .toolbar {
                                    ToolbarItem(placement: .navigationBarLeading) {
                                    Button("Back") {
                                            isPresenting = false
                                        love = 0.0
                                        }
                                    }
                                }
                                }
                        }
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
