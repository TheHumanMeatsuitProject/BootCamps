//
//  SideMenuView.swift
//  BootCamps
//
//  Created by Layton Dickerson III on 11/12/22.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack {
            Text("Settings")
                .font(.title)
                .foregroundColor(.white)
            Spacer()
        }
        .padding(32)
        .background(Color.black)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
