//
//  TextEditorBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/07.
//

import SwiftUI

struct TextEditorBootcamp: View {
	
	@State var textEditorText: String = "기본값 텍스트"
	@State var savedText: String = ""
	
    var body: some View {
		NavigationStack {
			VStack {
				TextEditor(text: $textEditorText)
					.frame(height: 250)
					.colorMultiply(Color(.systemGray5))
					.cornerRadius(10)
				Button {
					savedText = textEditorText
				} label: {
					Text("저장")
						.font(.headline)
						.foregroundColor(.white)
						.padding()
						.frame(maxWidth: .infinity)
						.background(.blue)
						.cornerRadius(10)
				}
				Text(savedText)
				Spacer()
			}
			.padding()
//			.background(.green)
			.navigationTitle("Text Editor Bootcamp")
		}
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
