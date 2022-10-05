//
//  TernaryBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/05.
//

import SwiftUI

struct TernaryBootcamp: View {
	
	@State var isStartingState: Bool = false
	
	var body: some View {
		VStack {
			Button("Button: \(isStartingState.description)") {
				isStartingState.toggle()
			}
			
			Text(isStartingState ? "Starting state!" : "Ending state!")
			
			RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
				.fill(isStartingState ? .red : .blue)
				.frame(
					width: isStartingState ? 200 : 50,
					height: isStartingState ? 400 : 50)
			
			Spacer()
		}
	}
}

struct TernaryBootcamp_Previews: PreviewProvider {
	static var previews: some View {
		TernaryBootcamp()
	}
}
