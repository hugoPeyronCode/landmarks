//
//  CircleImage.swift
//  Landmarks
//
//  Created by Hugo Peyron on 10/03/2023.
//
import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("TurtleRock")
            .resizable()
            .frame(width: 250, height: 250)
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
