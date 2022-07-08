//
//  ContentView.swift
//  WeekModule
//
//  Created by Jimi Knight on 02/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var weekNumber: Int = 1
    @State private var mouduleNumber: Array = [1,2,3,4,5,6,7,8]
    
    // Colours
    let cream = Color(red: 1.000, green: 0.929, blue: 0.855)
    let blue = Color(red: 0.239, green: 0.698, blue: 1.000)
    
    var body: some View {
        ZStack{
            blue
                .ignoresSafeArea()
            // Title
            VStack{
                Text("Week to Module")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                // Display box
                VStack{
                    Text("Week \(weekNumber + 1) is in Module (M)")
                        .font(.title2)
                    Text("Week Numbers go here")
                        .font(.headline.bold())
                }
                .frame(maxWidth: .infinity ,maxHeight: 250)
                .padding(.vertical, 20)
                .background(cream)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                // Week Number
                VStack{
                    Text("Enter a Week Number")
                        .font(.title2.bold())
                        .foregroundColor(.white)
                    
                    // Add Picker here
                    Picker("Week Number", selection: $weekNumber) {
                        ForEach(1..<43) {
                            Text("Week \($0)")
                                .font(.title)
                                .foregroundColor(.black)
                            //                                    .background(.blue)
                        }
                    }
                    .pickerStyle(.wheel)
                    .foregroundColor(.white)
                    
                    
                    VStack {
                        Text("Module Number")
                        
                        Picker("Module Number", selection: $mouduleNumber) {
                            ForEach(mouduleNumber, id: \.self) {
                                Text($0, format: .number)
                            }
                        }
                        .pickerStyle(.segmented)
                        .background(cream)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    
                }
                .padding()
                
            } // ZStack
            .padding()
            
            
            
        } // Body
    } // ContentView
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
