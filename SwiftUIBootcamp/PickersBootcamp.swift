//
//  PickersBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/07.
//

import SwiftUI

struct PickersBootcamp: View {
	
	@State var selection: String = "Most Recent"
	let filterOptions: [String] = [
	 "Most Recent", "Most Popular", "Most Liked"
	]
	
	init() {
		UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
		
		let attributes: [NSAttributedString.Key: Any] = [
			.foregroundColor : UIColor.white
		]
		UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
	}
	
    var body: some View {
		
		VStack {
			List {
				Picker(selection: $selection) {
					ForEach(filterOptions, id: \.self) { option in
						Text(option)
							.tag(option)
					}
				} label: {
					Text("Filter")
				}
				.pickerStyle(.inline)
			}
			
			List {
				Picker(selection: $selection) {
					ForEach(filterOptions, id: \.self) { option in
						Text(option)
							.tag(option)
					}
				} label: {
					Text("Filter")
				}
				.pickerStyle(.automatic)
			}
			
			List {
				Picker(selection: $selection) {
					ForEach(filterOptions, id: \.self) { option in
						Text(option)
							.tag(option)
					}
				} label: {
					Text("Filter")
				}
				.pickerStyle(.segmented)
			}
		}

		
//		VStack {
//			HStack {
//				Text("Age:")
//				Text(selection)
//			}
//
//			Picker(selection: $selection) {
//				ForEach(18..<100) { number in
//					Text("\(number)")
//						.tag("\(number)")
//						.font(.headline)
//						.foregroundColor(.red)
//				}
//			} label: {
//				Text("Picker")
//			}
//			.pickerStyle(.inline)
//			.background(Color.gray.opacity(0.2))
//			.pickerStyle(.segmented)
//		}
		


    }
}

struct PickersBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickersBootcamp()
    }
}
