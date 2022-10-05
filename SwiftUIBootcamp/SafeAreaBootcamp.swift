//
//  SafeAreaBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/05.
//

import SwiftUI

struct SafeAreaBootcamp: View {
	var body: some View {
		
		ScrollView {
			Text("Title goes here")
				.font(.largeTitle)
				.frame(maxWidth: .infinity, alignment: .leading)
			
			ForEach(0..<10) { index in
				RoundedRectangle(cornerRadius: 25)
					.fill(.white)
					.frame(height: 150)
					.shadow(radius: 10)
					.padding()
			}
		}
		.background(
			Color(uiColor: UIColor.secondarySystemBackground)
//				.ignoresSafeArea() // ios 14.3+
		)
		
		
//		ZStack {
//
//			// background
//			Color.blue
//				.edgesIgnoringSafeArea(.all)
//			// foreground
//			VStack {
//				Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//				Spacer()
//			}
//			.frame(maxWidth: .infinity, maxHeight: .infinity)
//			.background(.red)
//		}
	}
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
	static var previews: some View {
		SafeAreaBootcamp()
	}
}
