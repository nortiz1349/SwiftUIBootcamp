//
//  SliderBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/07.
//

import SwiftUI

struct SliderBootcamp: View {
	
	@State var sliderValue: Double = 3
	@State var color: Color = .red
	
    var body: some View {
		VStack {
			Text("Rating:")
			Text(
//				"\(sliderValue)"
				String(format: "%.1f", sliderValue)
			)
			.font(.title)
			.foregroundColor(color)
//			Slider(value: $sliderValue)
//			Slider(value: $sliderValue, in: 1...5)
//			Slider(value: $sliderValue, in: 1...5, step: 0.5)
			Slider(value: $sliderValue, in: 1...5) {
				Text("Title")
			} minimumValueLabel: {
				Text("1")
					.font(.largeTitle)
			} maximumValueLabel: {
				Text("5")
					.font(.largeTitle)
			} onEditingChanged: { _ in
				color = .green
			}

		}
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
