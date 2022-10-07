//
//  ColorPickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/07.
//

import SwiftUI

struct ColorPickerBootcamp: View {
	
	@State var backgroundColor: Color = Color.green
	
	var body: some View {
		ZStack {
			backgroundColor
				.ignoresSafeArea()
			
			ColorPicker("Select a color",
						selection: $backgroundColor,
						supportsOpacity: true)
			.padding()
			.background(.black)
			.cornerRadius(10)
			.foregroundColor(.white)
			.font(.headline)
			.padding(50)
		}
	}
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
	static var previews: some View {
		ColorPickerBootcamp()
	}
}
