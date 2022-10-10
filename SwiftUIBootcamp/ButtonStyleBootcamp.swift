//
//  ButtonStyleBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/10.
//

import SwiftUI

struct ButtonStyleBootcamp: View {
    var body: some View {
		VStack {
			
			Button {
				
			} label: {
				Text("Button Title")
					.frame(height: 55)
					.frame(maxWidth: .infinity)
			}
			.buttonStyle(.bordered)
			.buttonBorderShape(.capsule)
//			.buttonBorderShape(.roundedRectangle(radius: 5))
			.controlSize(.large)

			
			Button("Button title") {
				
			}
			.frame(height: 55)
			.frame(maxWidth: .infinity)
			.buttonStyle(.plain)
			
			Button("Button title") {
				
			}
			.frame(height: 55)
			.frame(maxWidth: .infinity)
			.controlSize(.large)
			.buttonStyle(.bordered)
			
			Button("Button title") {
				
			}
			.frame(height: 55)
			.frame(maxWidth: .infinity)
			.controlSize(.regular)
			.buttonStyle(.bordered)
			
			Button("Button title") {
				
			}
			.frame(height: 55)
			.frame(maxWidth: .infinity)
			.controlSize(.small)
			.buttonStyle(.bordered)
			
			Button("Button title") {
				
			}
			.frame(height: 55)
			.frame(maxWidth: .infinity)
			.controlSize(.mini)
			.buttonStyle(.bordered)
			Button("Button title") {
				
			}
			.frame(height: 55)
			.frame(maxWidth: .infinity)
			.buttonStyle(.borderedProminent)
			
			Button("Button title") {
				
			}
			.frame(height: 55)
			.frame(maxWidth: .infinity)
			.buttonStyle(.borderless)
		}
		.padding()
    }
}

struct ButtonStyleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleBootcamp()
    }
}
