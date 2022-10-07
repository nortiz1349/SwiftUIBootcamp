//
//  ToggleBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/07.
//

import SwiftUI

struct ToggleBootcamp: View {
	
	@State var toggleIsOn: Bool = true
	
    var body: some View {
		VStack {
			HStack {
				Text("Status:")
				Text(toggleIsOn ? "Online" : "Offline")
			}
			.font(.title)
			
//			Toggle(isOn: .constant(true)) {
//				Text("toggle default")
//			}
			
			Toggle(isOn: $toggleIsOn) {
				Text("Change status")
			}
			.padding(.horizontal, 90)
			.tint(.red)
			Spacer()
		}
		.padding()
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
