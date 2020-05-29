//
//  ContentView.swift
//  Graph Tester
//
//  Created by Malcom Jones on 5/4/20.
//  Copyright © 2020 Malcom Jones. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    @State var index = 0
    
    var body: some View {
        VStack {
            VStack(spacing: 18) {
                HStack {
                    Text("Stats")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Text("USA")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }
                }
                .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 15)
                
                HStack {
                    Button(action: {
                        self.index = 0
                        
                    }) {
                        Text ("Country")
                            .foregroundColor(self.index == 0 ? .black : .white)
                            .padding(.vertical, 12)
                            .frame(width: (UIScreen.main.bounds.width / 2) - 30)
                    }
                    .background(self.index == 0 ? Color.white : Color.clear)
                    .clipShape(Capsule())
                    
                    Button(action: {
                        self.index = 1
                        
                    }) {
                        Text ("Global")
                            .foregroundColor(self.index == 1 ? .black : .white)
                            .padding(.vertical, 12)
                            .frame(width: (UIScreen.main.bounds.width / 2) - 30)
                    }
                    .background(self.index == 1 ? Color.white : Color.clear)
                    .clipShape(Capsule())
            }
                .background(Color.black.opacity(0.25))
                .clipShape(Capsule())
                .padding(.top, 10)
                
                HStack(spacing: 15) {
                    VStack (spacing: 12) {
                        Text ("Affected")
                        
                        Text ("12222000")
                    }
                }
            }
            .padding(.horizontal)
            .padding(.bottom, 45)
            .background(Color.red)
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
    }
}
