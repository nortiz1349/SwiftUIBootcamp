//
//  AnimationBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/05.
//

import SwiftUI

struct AnimationBootcamp: View {
	
	@State var isAnimated: Bool = false
	
	var body: some View {
		VStack {
			Button("Button") {
				withAnimation (
					Animation
						.default
						.repeatCount(3)
				) {
					isAnimated.toggle()
				}
			}
			
			Spacer()
			RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
				.fill(isAnimated ? .red : .green)
				.frame(
					width: isAnimated ? 100 : 300,
					height: isAnimated ? 100 : 300)
				.rotationEffect(Angle(degrees: isAnimated ? 180 : 0))
				.offset(y: isAnimated ? 300 : 0)
//				.animation(Animation.default, value: isAnimated)
			
			Spacer()
		}
	}
}

struct AnimationBootcamp_Previews: PreviewProvider {
	static var previews: some View {
		AnimationBootcamp()
	}
}
