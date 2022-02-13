//
//  ContentView.swift
//  WordScramble
//
//  Created by Jae Cho on 2/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		 List(0..<5){
				 Text("dynamic row \($0)$0")
		 }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
