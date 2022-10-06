//
//  PopoverBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/06.
//

// sheets
// animations
// transitions

import SwiftUI

struct PopoverBootcamp: View {
	
	@State var showNewScreen: Bool = false
	
    var body: some View {
		ZStack {
			Color.orange
				.ignoresSafeArea()
			
			VStack {
				Button("BUTTON") {
					withAnimation() {
						showNewScreen.toggle()
					}
					
				}
				.font(.largeTitle)
				Spacer()
			}
			// METHOD 1 - SHEET
//			.sheet(isPresented: $showNewScreen) {
//				NewScreen()
//			}
			
			// METHOD 1 - TRANSITION
//			ZStack {
//				if showNewScreen {
//					NewScreen(showNewScreen: $showNewScreen)
//						.padding(.top, 100)
//						.transition(.move(edge: .bottom))
//				}
//			}
//			.zIndex(2.0)
			
			// METHOD 3 - ANIMATION OFFSET
			
			NewScreen(showNewScreen: $showNewScreen)
				.padding(.top, 100)
				.offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
		}
    }
}

struct NewScreen: View {
	
//	@Environment(\.dismiss) private var dismiss
	@Binding var showNewScreen: Bool
	
	var body: some View {
		ZStack(alignment: .topLeading) {
			Color.purple
				.ignoresSafeArea()
			
			Button {
//				dismiss()
				showNewScreen.toggle()
			} label: {
				Image(systemName: "xmark")
					.foregroundColor(.white)
					.font(.largeTitle)
					.padding(20)
			}

		}
	}
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
		PopoverBootcamp()
		//		NewScreen()
    }
}
