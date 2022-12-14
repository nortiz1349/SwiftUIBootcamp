//
//  ListBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Nortiz M1 on 2022/10/06.
//

import SwiftUI

struct ListBootcamp: View {
	
	@State var fruits: [String] = [
		"apple", "orange", "banana", "peach"
	]
	
	@State var veggies: [String] = [
		"tomato", "potato", "carrot"
	]
	
	var body: some View {
		NavigationStack {
			List {
				Section {
					ForEach(fruits, id: \.self) { fruit in
						Text(fruit.capitalized)
					}
					.onDelete(perform: delete)
					.onMove(perform: move)
				} header: {
					HStack {
						Text("Fruits π")
							.font(.title)
							.foregroundColor(.red)
					}
				}
				Section {
					ForEach(veggies, id: \.self) { veggie in
						Text(veggie.capitalized)
							.font(.caption)
							.foregroundColor(.white)
							.padding(.vertical)
					}
					.listRowBackground(Color.pink) // λ¦¬μ€νΈ λ°°κ²½ μμ
				} header: {
					Text("Vegatables")
				}
				
			}
			// λ¦¬μ€νΈ μ€νμΌμ λλ°μ΄μ€μ λ°λΌ ννλλ λ°©λ²μ΄ λ€λ₯΄λ€
//			.listStyle(InsetListStyle())
//			.listStyle(SidebarListStyle())
//			.listStyle(PlainListStyle())
//			.listStyle(GroupedListStyle())
			.navigationTitle("Grocery List")
			.toolbar {
				ToolbarItem(placement: .navigationBarLeading) {
					EditButton()
				}
				ToolbarItem(placement: .navigationBarTrailing) {
					addButton
				}
			}
		}
		.tint(.red)
    }
	
	var addButton: some View {
		Button("Add") {
			add()
		}
	}
	
	fileprivate func add() {
		fruits.append("Coconut")
	}
	
	fileprivate func move(_ indices: IndexSet, _ newOffset: Int) {
		fruits.move(fromOffsets: indices, toOffset: newOffset)
	}
	
	fileprivate func delete(_ indexSet: IndexSet) {
		fruits.remove(atOffsets: indexSet)
	}
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
