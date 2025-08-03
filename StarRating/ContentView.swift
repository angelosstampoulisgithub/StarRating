//
//  ContentView.swift
//  StarRating
//
//  Created by Angelos Staboulis on 3/8/25.
//

import SwiftUI

struct ContentView: View {
    @State var rating: Int
    var label = "Tap on the Star to rate"
    var maxRating = 5
    var offColor = Color.gray
    var onColor = Color.yellow
    var body: some View {
        VStack {
            Text(label)
                    .font(.system(size: 30))
            HStack{
                ForEach(0..<maxRating , id:\.self){number in
                    Image(systemName:number < rating ? "star" : "star.fill")
                        .font(.system(size: 45))
                        .foregroundColor(number<rating ? onColor : offColor)
                        .onTapGesture {
                                rating = number + 1
                        }
                }
                
            }
               
        }
    }
  
}

