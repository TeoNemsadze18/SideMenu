//
//  SideMenuHeaderView.swift
//  SideMenu
//
//  Created by teona nemsadze on 27.07.23.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack (alignment: .topTrailing) {
            Button(action: {
                withAnimation(.spring()) {
                isShowing.toggle()
                   }
                }, label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                    .padding()
            })
            
            VStack  (alignment: .leading) {
                Image("person")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(.bottom, 16)
                
                Text("Anna Dom")
                    .font(.system(size: 24, weight: .semibold))
                
                Text("@Annalina")
                    .font(.system(size: 14))
                    .padding(.bottom, 23)
                
                HStack (spacing: 12) {
                    HStack (spacing: 4) {
                    Text("273").bold()
                    Text("Following")
                }
                
                HStack (spacing:4) {
                    Text("603").bold()
                    Text("Followers")
                }
                Spacer()
            }
            Spacer()
            } .padding()
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
