//
//  Padding+SpacerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/04.
//

import SwiftUI

struct PaddingBootcamp: View {
	var body: some View {
		VStack {
			Text("Hello, World!")
				.font(.largeTitle)
				.fontWeight(.semibold)
				.frame(maxWidth: .infinity, alignment: .leading)
				.background(.red)
				.padding(.leading)
			
			Divider()
				.padding()
			
			VStack(alignment: .leading) {
				Text("Hello, World!")
					.font(.largeTitle)
					.fontWeight(.semibold)
				Text("This is the description of what we will do on this screen. It is multiple lines and we weill align the text to the leading edge.")
				//				.multilineTextAlignment(.center)
			}
			.padding()
			.padding(.vertical, 10)
			.background {
				Color.white
					.cornerRadius(10)
					.shadow(radius: 5, x: 0, y: 10)
			}
			.padding(.horizontal)
			
			Divider()
				.padding()
		}
		
	}
}

struct Padding_SpacerBootcamp_Previews: PreviewProvider {
	static var previews: some View {
		PaddingBootcamp()
	}
}
