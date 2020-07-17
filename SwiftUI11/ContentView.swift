//
//  ContentView.swift
//  SwiftUI11
//
//  Created by Rohit Saini on 17/07/20.
//  Copyright © 2020 AccessDenied. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    @State var currentPage = 0
    var body: some View {
        VStack{
            Picker(selection: $currentPage, label: Text("")){
                Image(systemName: "house.fill").tag(0)
                Image(systemName: "flame.fill").tag(1)
                Image(systemName: "paperplane.fill").tag(2)
            }.pickerStyle(SegmentedPickerStyle())
            Spacer()
            if currentPage == 0{
                page1()
            }
            if currentPage == 1{
                page2()
            }
            if currentPage == 2{
                page3()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct page1:View{
    var body: some View{
        Text("Page1")
    }
}

struct page2:View{
    var body: some View{
        Text("Page2")
    }
}

struct page3:View{
    var body: some View{
        Text("Page3")
    }
}


