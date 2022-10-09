//
//  ViewModelBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/09.
//

import SwiftUI

struct FruitModel: Identifiable {
	let id: String = UUID().uuidString
	let name: String
	let count: Int
}

class FruitViewModel: ObservableObject {
	
	@Published var fruitArray: [FruitModel] = []
	@Published var isLoading: Bool = false
	
	init() {
		getFruits()
	}
	
	func getFruits() {
		let fruit1 = FruitModel(name: "Orange", count: 1)
		let fruit2 = FruitModel(name: "Banana", count: 2)
		let fruit3 = FruitModel(name: "Watermelon", count: 55)
		
		isLoading = true
		DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
			self.fruitArray.append(fruit1)
			self.fruitArray.append(fruit2)
			self.fruitArray.append(fruit3)
			self.isLoading = false
		}
	}
	
	func deleteFruit(index: IndexSet) {
		fruitArray.remove(atOffsets: index)
	}
	
}

struct ViewModelBootcamp: View {
	
//	@ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel() // 뷰가 새로고침 되면 viewModel도 새로고침 된다.
	
	// @StateObject -> USE THIS ON CREATION / INIT
	// @ObservedObject -> USE THIS FOR SUBVIEW
	@StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
	
    var body: some View {
		NavigationStack {
			List {
				
				if fruitViewModel.isLoading {
					ProgressView()
				} else {
					ForEach(fruitViewModel.fruitArray) { fruit in
						HStack {
							Text("\(fruit.count)")
								.foregroundColor(.red)
							Text(fruit.name)
								.font(.headline)
							
						}
					}
					.onDelete(perform: fruitViewModel.deleteFruit)
				}
			}
			.listStyle(.grouped)
			.navigationTitle("Fruit List")
			.toolbar {
				NavigationLink(destination: ViewModelSubView(fruitViewModel: fruitViewModel)) {
					Image(systemName: "arrow.right")
						.font(.title)
				}
			}
//			.onAppear() {
//				fruitViewModel.getFruits()
//			}
		}
    }
	
}

struct ViewModelSubView: View {
	
	@Environment(\.dismiss) var dismiss
	@ObservedObject var fruitViewModel: FruitViewModel
	
	var body: some View {
		ZStack {
			Color.green.ignoresSafeArea()
			
			VStack {
				ForEach(fruitViewModel.fruitArray) { fruit in
					Text(fruit.name)
						.font(.headline)
						.foregroundColor(.white)
				}
			}

		}
	}
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
//		ViewModelSubView()
    }
}
