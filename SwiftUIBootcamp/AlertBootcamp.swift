//
//  AlertBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/06.
//

import SwiftUI

struct AlertBootcamp: View {
	
	@State var showAlert: Bool = false
	@State var backgroundColor: Color = Color.yellow
	
	var body: some View {
		
		ZStack {
			
			backgroundColor.ignoresSafeArea()
			
			Button("Click here") {
				showAlert.toggle()
			}
			.alert("title", isPresented: $showAlert) {
				AlertButton(backgroundColor: $backgroundColor)
			} message: {
				Text("additional messages here")
			}
		}
	}
}

struct AlertButton: View {
	
	@Binding var backgroundColor: Color
	
	var body: some View {
		Button(role: .destructive) {
			backgroundColor = Color.yellow
		} label: {
			Text("Delete!")
		}
		Button {
			backgroundColor = Color.pink
		} label: {
			Text("Color change")
		}
	}
}

struct AlertBootcamp_Previews: PreviewProvider {
	static var previews: some View {
		AlertBootcamp()
	}
}
