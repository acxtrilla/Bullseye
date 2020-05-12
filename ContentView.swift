//
//  ContentView.swift
//  Bullseye
//
//  Created by Callum on 07/05/2020.
//  Copyright © 2020 Callum. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
    //@State var whoIsThereVisible: Bool = false
    
    var body: some View {
        VStack {
            VStack {
                Spacer()
                // Target Row
                HStack {
                    Text("Put the Bullseye as close as you can to:")
                    Text(/*@START_MENU_TOKEN@*/"100"/*@END_MENU_TOKEN@*/)
                }
                Spacer()
                // Slider row
                HStack {
                   Text("1")
                    Slider(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(10)/*@END_MENU_TOKEN@*/)
                    Text("100")
                }
                Spacer()
                //Button row
                Button(action: {
                    print("Button pressed!")
                    self.alertIsVisible = true
                }) {
                    Text(/*@START_MENU_TOKEN@*/"Hit Me!"/*@END_MENU_TOKEN@*/)
                }
                .alert(isPresented: $alertIsVisible) { () -> Alert in
                    return Alert(title: Text("Hello There!"), message: Text("this is my first pop up!"), dismissButton: .default(Text("Awesome!")))
                }
                Spacer()
                // Score row
                HStack {
                    Button(action: {}) {
                    Text("Start Over")
                    }
                    Spacer()
                    Text("Score:")
                    Text("999999")
                    Spacer()
                    Text("Round:")
                    Text("999")
                    Spacer()
                    Button(action: {}) {
                    Text("Info")
                    }
                }
                .padding(.bottom, 20)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}

