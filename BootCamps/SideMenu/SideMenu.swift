//
//  SideMenuView.swift
//  BootCamps
//
//  Created by Layton Dickerson III on 11/12/22.
//

import SwiftUI

struct SideMenu: View {
    
    //Mark: - Properties
    @State private var showMenu: Bool = false
    
    //Mark: - View Body
    var body: some View {
        NavigationView {
            
            ZStack {
                
                Color.mint.ignoresSafeArea(.all, edges: .all)
                
                VStack {
                    Text("Side Menu View")
                        .padding()
                        .font(.title)
                        .foregroundColor(.white)
                }
                GeometryReader { _ in
                    
                    HStack {
                        Spacer()
                        SideMenuView()
                            .offset(x: showMenu ? 0 : UIScreen.main.bounds.width)
                            .animation(.easeInOut(duration: 0.5), value: showMenu)
                    }
                }
                .background(Color.black.opacity(showMenu ? 0.5 : 0))
            }
            .navigationTitle("Side Menu Demo")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button {
                    self.showMenu.toggle()
                } label: {
                    
                    if showMenu {
                        Image(systemName: "xmark")
                            .font(.title)
                            .foregroundColor(.red)
                    } else {
                        Image(systemName: "text.justify")
                            .font(.title)
                            .foregroundColor(.red)
                    }
                }
            }
            
        }
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SideMenu()
    }
}
