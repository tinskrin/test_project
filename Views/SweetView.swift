//
//  SweetView.swift
//  testProject
//
//  Created by tinskrin on 15.08.2023.
//

import Foundation
import SwiftUI

struct SweetView: View {
	let sweet: DataSweet

	var body: some View {
		VStack {
			Image(sweet.imageName)
				.resizable()
				.scaledToFit()
				.cornerRadius(15)
			HStack {
			Text(sweet.text)
				.frame(alignment: .bottomLeading)
				.foregroundColor(Color.black)
				.font(.system(size: 12))
				.bold()
				.lineLimit(2)
				Button { } label: {
					Image(systemName: "basket")
						.frame(alignment: .bottomTrailing)
						.foregroundColor(.green)
				}
			}
		}
	}
}

struct SweetView_Previews: PreviewProvider {
	static var previews: some View {
		SweetView(sweet: DataSweet.example1())
	}
}
