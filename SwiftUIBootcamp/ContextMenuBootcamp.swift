//
//  ContextMenuBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/07.
//

import SwiftUI

struct ContextMenuBootcamp: View {
	
	@State var backgroundColor: Color = Color.blue
	
    var body: some View {
		VStack(alignment: .leading, spacing: 10.0) {
			Image(systemName: "house.fill")
				.font(.title)
			Text("Swiftful Thinking")
				.font(.headline)
			Text("How to use Context Menu")
				.font(.subheadline)
		}
		.foregroundColor(.white)
		.padding(30)
		.background(backgroundColor.cornerRadius(30))
		.contextMenu {
			Button {
				backgroundColor = .yellow
			} label: {
				Label("공유하기", systemImage: "flame.fill")
			}

			Button {
				backgroundColor = .green
			} label: {
				Text("리포트")
			}
			
			Button {
				backgroundColor = .red
			} label: {
				HStack {
					Text("좋아요")
					Image(systemName: "heart.fill")
				}
			}
		}
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
