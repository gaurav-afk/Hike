//
//  SettingsView.swift
//  Hike
//
//  Created by Gaurav Rawat on 2024-01-31.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            // MARK: - SECTION: HEADER
            Section{
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editor's Choice")
                            .fontWeight(.medium)
                        
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            Color.customGreenLight,
                            Color.customGreenMedium,
                            Color.customGreenDark
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .padding(.top, 8)
                
                VStack(spacing: 8){
                    
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike which looks georgeous in photos but is even better once you are actually there. The hike that you hope to do it again someday. \nFind the best hikes in th app.")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! It's time for a wal.k")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
            } //: HEADER
            .listRowSeparator(.hidden)
            
            // MARK: - SECTION: ICONS
            
            
            // MARK: - SECTION: ABOUT
            Section(
                header: Text("ABOUT THE APP"),
                footer: HStack{
                    Spacer()
                    Text("Copyright © All right reserved.")
                    Spacer()
                }
                    .padding(.vertical, 8)
            ){
                
                CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "HIKE", rowTintColor: .blue)
                CustomListRowView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS, iPadOS", rowTintColor: .red)
                CustomListRowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "swift", rowTintColor: .orange)
                CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "John Doe", rowTintColor: .mint)
                CustomListRowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "John Doe", rowTintColor: .pink)
                CustomListRowView(rowLabel: "Website", rowIcon: "globe", rowContent: "https://github.com/gaurav-afk", rowTintColor: .indigo)
               
            }
            
        }
    }
}

#Preview {
    SettingsView()
}
