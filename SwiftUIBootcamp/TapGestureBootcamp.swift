//
//  TapGestureBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/09.
//

import SwiftUI

struct TapGestureBootcamp: View {
	
	@State var isSelected: Bool = false
	
    var body: some View {
		VStack(spacing: 40) {
			RoundedRectangle(cornerRadius: 25)
				.frame(height: 200)
				.foregroundColor(isSelected ? Color.green : Color.orange)
			
			Button {
				isSelected.toggle()
			} label: {
				Text("Button")
					.font(.headline)
					.foregroundColor(.white)
					.padding()
					.frame(maxWidth: .infinity)
					.background(.blue)
					.cornerRadius(25)
					
			}
			
			Text("TAP Gesture")
				.font(.headline)
				.foregroundColor(.white)
				.padding()
				.frame(maxWidth: .infinity)
				.background(.blue)
				.cornerRadius(25)
//				.onTapGesture {
//					isSelected.toggle()
//				}
				.onTapGesture(count: 2) {
					isSelected.toggle()
				}
			
			Spacer()

		}
		.padding(40)
    }
}

struct TapGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureBootcamp()
    }
}
