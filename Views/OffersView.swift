//
//  OffersView.swift
//  testProject
//
//  Created by tinskrin on 14.08.2023.
//

import Foundation
import SwiftUI

struct OffersView: View {
	let offers: DataOffers

	var body: some View {
		Image(offers.imageName)
			.resizable()
			.scaledToFit()
			.cornerRadius(15)
			.overlay(alignment: .topLeading, content: {
				Text(offers.text)
					.foregroundColor(Color.black)
					.font(.system(size: 12))
					.lineLimit(2)
					.padding()
			})
	}
}

struct OffersView_Previews: PreviewProvider {
	static var previews: some View {
		OffersView(offers: DataOffers.example1())
	}
}
