//
//  EnvironmentObjectBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/09.
//

import SwiftUI



class EnvironmentViewModel: ObservableObject {
	
	@Published var dataArray: [String] = []
	
	init() {
		getData()
	}
	
	func getData() {
		self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
	}
	
}

struct EnvironmentObjectBootcamp: View {
	
	@StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
	
    var body: some View {
		NavigationStack {
			List {
				ForEach(viewModel.dataArray, id: \.self) { item in
					NavigationLink {
						DetailView(selectedItem: item)
					} label: {
						Text(item)
					}
				}
			}
			.navigationTitle("iOS Devices")
		}
		.environmentObject(viewModel)
    }
	
}

struct DetailView: View {
	
	let selectedItem: String
//	@ObservedObject var viewModel: EnvironmentViewModel
	
	var body: some View {
		ZStack {
			// background
			Color.orange.ignoresSafeArea()
			
			// foreground
			NavigationLink {
				FinalView()
			} label: {
				Text(selectedItem)
					.font(.headline)
					.foregroundColor(.orange)
					.padding()
					.padding(.horizontal)
					.background(.white)
					.cornerRadius(30)
			}
		}
	}
}

struct FinalView: View {
	
	@EnvironmentObject var viewModel: EnvironmentViewModel
	
	var body: some View {
		ZStack {
			// background
			LinearGradient(
				colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))],
				startPoint: .topLeading,
				endPoint: .bottomTrailing)
			.ignoresSafeArea()
			
			// foreground
			ScrollView {
				VStack(spacing: 20) {
					ForEach(viewModel.dataArray, id: \.self) { item in
						Text(item)
					}
				}
				.foregroundColor(.white)
				.font(.largeTitle)
			}
		}
	}
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {

        EnvironmentObjectBootcamp()
//		DetailView(selectedItem: "iPhone")
//		FinalView()
    }
}
