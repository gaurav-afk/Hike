//
//  CardView.swift
//  Hike
//
//  Created by Gaurav Rawat on 2024-01-31.
//

import SwiftUI

struct CardView: View {
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    
    func randomImage(){
        
        repeat{
            randomNumber = Int.random(in: 1...5)
        }while(randomNumber == imageNumber)
        imageNumber = randomNumber
    }
    
    
    var body: some View {
        //MARK: - MAIN
        
        ZStack {
            CustomBackgroundView()
            
            VStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        Color.customGrayLight,
                                        Color.customGrayMedium
                                    ],
                                    startPoint: .top,
                                endPoint: .bottom))
                        
                        Spacer()
                        
                        Button{
                        print("The button was pressed.")
                            isShowingSheet.toggle()
                        } label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet){
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium, .large])
                        }
                    }
                    
                    Text("Fun and outdoor activity for friends and family")
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal, 30)
                    ZStack {
                        CustomCircleView()
                        Image("image-\(imageNumber)")
                            .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                    }
                //MARK: - FOOTER
                
                Button{
                    print("The button pressed")
                    randomImage()
                }label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(colors: [
                                Color.customGreenLight,
                                Color.customGreenMedium
                            ],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.25), radius:0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientButton())
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
