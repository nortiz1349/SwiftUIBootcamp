//
//  TextFieldBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/07.
//

import SwiftUI

struct TextFieldBootcamp: View {
	
	@State var textFieldText: String = ""
	@State var dataArray: [String] = []
	
    var body: some View {
		NavigationStack {
			VStack {
				TextField("여기에 입력하세요...", text: $textFieldText)
//					.textFieldStyle(.roundedBorder)
//					.textFieldStyle(.plain)
					.padding()
					.background(Color.gray.opacity(0.3).cornerRadius(10))
					.foregroundColor(.red)
					.font(.headline)
				
				
				Button {
					if textIsAppropriate() {
						saveText()
					}
				} label: {
					Text("저장")
						.padding()
						.frame(maxWidth: .infinity)
						.foregroundColor(.white)
						.background(textIsAppropriate() ? Color.blue : Color.gray)
						.cornerRadius(10)
						.font(.headline)
				}
				.disabled(!textIsAppropriate())
				
				ForEach(dataArray, id: \.self) { data in
					Text(data)
				}
				Spacer()
			}
			.padding()
			.navigationTitle("TextField Bootcamp!")
		}
    }
	
	func textIsAppropriate() -> Bool {
		// check text
		if textFieldText.count >= 3 {
			return true
		}
		return false
	}
	
	func saveText() {
		dataArray.append(textFieldText)
		textFieldText = ""
	}
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
