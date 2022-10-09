//
//  SheetsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/06.
//

import SwiftUI

struct SheetsBootcamp: View {
	
	@State var showSheet: Bool = false
	
    var body: some View {
		ZStack {
			Color.green
				.ignoresSafeArea()
			
			Button {
				showSheet.toggle()
			} label: {
				Text("Button")
					.foregroundColor(.green)
					.font(.headline)
					.padding(20)
					.background(Color.white.cornerRadius(10))
			}
//			.fullScreenCover(isPresented: $showSheet) {
//				SecondScreen()
//			}
			.sheet(isPresented: $showSheet) {
				// DO NOT ADD CONDITIONAL LOGIC
				RandomScreen()
			}

		}
    }
}

struct RandomScreen: View {
	
	@Environment(\.dismiss) private var dismiss
	
	var body: some View {
		ZStack(alignment: .topLeading) {
			Color.red
				.ignoresSafeArea()
			
			Button {
				dismiss()
			} label: {
				Image(systemName: "xmark")
					.foregroundColor(.white)
					.font(.largeTitle)
					.padding(20)
			}
		}
	}
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
    }
}
