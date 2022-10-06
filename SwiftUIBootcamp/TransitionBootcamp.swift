//
//  TransitionBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/06.
//

import SwiftUI

struct TransitionBootcamp: View {
	
	@State var showView: Bool = false
	
	var body: some View {
		ZStack(alignment: .bottom) {
			
			VStack {
				Button("Button") {
					withAnimation() {
						showView.toggle()
					}
				}
				Spacer()
			}
			
			if showView {
				RoundedRectangle(cornerRadius: 30)
					.frame(height: UIScreen.main.bounds.height * 0.5)
//					.transition(.slide)
//					.transition(.move(edge: .bottom))
//					.transition(.opacity)
//					.transition(.scale)
					.transition(.asymmetric(
						insertion: .move(edge: .bottom),
						removal: .opacity))
			}
			
			
		}
		.ignoresSafeArea(edges: .bottom)
	}
}

struct TransitionBootcamp_Previews: PreviewProvider {
	static var previews: some View {
		VStack {
			TransitionBootcamp()
		}
	}
}
