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
	
	func loadFile(){
		if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt"){
			if let fileContenst = try? String(contentsOf: fileURL){
				//fileContents
			}
		}
	}
	
	func test(){
		let input = """
a
b
c
"""
		let letters = input.components(separatedBy: "\n")
		let letter = letters.randomElement()
		let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
		
		let word = "swift"
		let checker = UITextChecker()
		
		let range = NSRange(location: 0, length: word.utf16.count)
		let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
		
		let allGood = misspelledRange.location == NSNotFound
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
