//
//  BindingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/05.
//

import SwiftUI

struct BindingBootcamp: View {
	
	@State var backgroundColor: Color = Color.green
	@State var title: String = "Title"
	
    var body: some View {
		ZStack {
			backgroundColor
				.ignoresSafeArea()
			
			VStack {
				Text(title)
					.foregroundColor(.white)
				ButtonView(backgroundColor: $backgroundColor, title: $title)
			}
		}
    }
}

struct ButtonView: View {
	
	@Binding var backgroundColor: Color
	@State var buttonColor: Color = Color.blue
	@Binding var title: String
	
	var body: some View {
		Button {
			backgroundColor = Color.orange
			buttonColor = Color.pink
			title = "New title!!"
		} label: {
			Text("Button")
				.foregroundColor(.white)
				.padding()
				.padding(.horizontal, 10)
				.background(buttonColor)
				.cornerRadius(10)
		}
	}
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
