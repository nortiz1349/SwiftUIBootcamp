//
//  DarkModeBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/08.
//

import SwiftUI

struct DarkModeBootcamp: View {
	
	@Environment(\.colorScheme) var colorScheme
	
    var body: some View {
		NavigationStack {
			ScrollView {
				VStack(spacing: 20) {
					Text("This text is PRIMARY")
						.foregroundColor(.primary)
					Text("This text is SECONDARY")
						.foregroundColor(.secondary)
					Text("This text is BLACK")
						.foregroundColor(.black)
					Text("This text is WHITE")
						.foregroundColor(.white)
					Text("This text is RED")
						.foregroundColor(.red)
					Text("This color is globally adaptive!")
						.foregroundColor(Color("AdaptiveColor"))
					Text("This color is locally adaptive!")
						.foregroundColor(colorScheme == .light ? .green : .yellow)
					
				}
			}
			.navigationTitle("Dark Mode Bootcamp")
		}
    }
}

struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
		DarkModeBootcamp()
    }
}
