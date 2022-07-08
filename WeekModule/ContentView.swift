//
//  ContentView.swift
//  WeekModule
//
//  Created by Jimi Knight on 02/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var weekNumber: Int = 1
    
    
    var body: some View {
        ZStack{
            Color(red: 0.239, green: 0.698, blue: 1.000)
                .ignoresSafeArea()
            // Title
            VStack{
                Text("Week to Module")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
            // Display box
                VStack{
                    Text("Week (nm) is in Module (M)")
                        .font(.headline)
                    Text("""
                            Week 1
                            Week 2
                            Week 3
                            Week 4
                            Week 5
                        """)
                    .font(.title)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(Color(red: 1.000, green: 0.929, blue: 0.855))
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                // Week Number
                VStack{
                    Text("Enter a Week Number")
                        .font(.title2.bold())
                        .foregroundColor(.white)
                    
                    // Add Picker here
                    
                }
            }
            .padding()
        
        } // ZStack
        
        
        
    } // Body
} // ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
