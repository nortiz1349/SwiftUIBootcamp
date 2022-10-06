//
//  AnimationTimingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/06.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
	
	@State var isAnimating: Bool = false
	let timing: Double = 1
	
    var body: some View {
		VStack {
			Button("Button") {
				isAnimating.toggle()
			}
			
			RoundedRectangle(cornerRadius: 20)
				.frame(width: isAnimating ? 350 : 50, height: 100)
				.animation(.spring(
					response: 0.5,
					dampingFraction: 0.7,
					blendDuration: 1.0),
						   value: isAnimating)
//				.animation(.spring(), value: isAnimating)
//				.animation(.linear(duration: timing), value: isAnimating)
			
//			RoundedRectangle(cornerRadius: 20)
//				.frame(width: isAnimating ? 350 : 50, height: 100)
//				.animation(.easeIn(duration: timing), value: isAnimating)
//
//			RoundedRectangle(cornerRadius: 20)
//				.frame(width: isAnimating ? 350 : 50, height: 100)
//				.animation(.easeInOut(duration: timing), value: isAnimating)
//
//			RoundedRectangle(cornerRadius: 20)
//				.frame(width: isAnimating ? 350 : 50, height: 100)
//				.animation(.easeOut(duration: timing), value: isAnimating)
		}
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
