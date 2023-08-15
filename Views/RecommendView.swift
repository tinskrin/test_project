//
//  RecommendView.swift
//  testProject
//
//  Created by tinskrin on 14.08.2023.
//

import Foundation
import SwiftUI

struct RecommendView: View {
	let recommend: DataRecommend

	var body: some View {
		VStack {
			Image(recommend.imageName)
				.resizable()
				.scaledToFit()
				.cornerRadius(15)
			HStack {
			Text(recommend.text)
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

struct RecommendView_Previews: PreviewProvider {
	static var previews: some View {
		RecommendView(recommend: DataRecommend.example1())
	}
}
