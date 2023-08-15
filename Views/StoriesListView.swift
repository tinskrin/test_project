//
//  StoriesListView.swift
//  testProject
//
//  Created by tinskrin on 14.08.2023.
//

import Foundation
import SwiftUI

struct StoriesListView: View {
	let stories: DataStories

	var body: some View {
		VStack {
			Image(systemName: stories.imageName)
				.resizable()
				.frame(width: 40, height: 40, alignment: .center)
				.foregroundColor(.green)
			Text(stories.description)
				.font(.caption2)
				.frame(width: 80, height: 30, alignment: .center)
				.lineLimit(2)
		}
	}
}

struct StoriesListView_Previews: PreviewProvider {
	static var previews: some View {
		StoriesListView(stories: DataStories.example1())
	}
}
