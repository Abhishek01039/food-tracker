//
//  ContentView.swift
//  FoodTracker
//
//  Created by abhishek on 02/01/21.
//

import SwiftUI


struct ContentView: View {
    @State private var sliderValue:Double = 40.0
    @State private var alertIsVisible:Bool=false
    
    
    var body: some View {
        VStack {
            VStack {
                Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO").kerning(2.0).bold().italic().multilineTextAlignment(.center).lineSpacing(4).font(.footnote)
                Text("89").kerning(-1).font(.largeTitle).fontWeight(.black)
                HStack {
                    Text("1").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Slider(value:self.$sliderValue, in: 0.0...100.0
                    )
                    Text("100").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
            }
            Button(action: {
                print("pressed!!")
                self.alertIsVisible=true
            }) {
                Text("Hit Me")
            }.alert(isPresented: $alertIsVisible, content: {
                return Alert(title: Text("Hello There!"), message: Text("The slider value is \(Int(sliderValue))"), dismissButton: .default(Text("Awesome!")))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewLayout(.fixed(width: 568, height: 320))
    }
}
