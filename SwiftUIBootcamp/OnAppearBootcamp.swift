//
//  OnAppearBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/09.
//

import SwiftUI

struct OnAppearBootcamp: View {
	
	@State var myText: String = "Start text."
	@State var count: Int = 0
	
    var body: some View {
		NavigationStack {
			ScrollView {
				Text(myText)
				LazyVStack {
					ForEach(0..<50) { _ in
						RoundedRectangle(cornerRadius: 25)
							.frame(height: 200)
							.padding()
							.onAppear {
								count += 1
							}
					}
				}
			}
			.onAppear(perform: {
				DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
					myText = "This is the new text!"
				}
				
			})
			.onDisappear(perform: {
				myText = "Ending text."
			})
			.navigationTitle("On Appear: \(count)")
		}
    }
}

struct OnAppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootcamp()
    }
}
