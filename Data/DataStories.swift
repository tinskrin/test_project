//
//  DataStories.swift
//  testProject
//
//  Created by tinskrin on 14.08.2023.
//

import Foundation

struct DataStories: Identifiable {

	let imageName: String
	let description: String
	let id = UUID()

	static func examples() -> [DataStories] {

		[DataStories(imageName: "heart.circle",
						   description: "Привилегии \"Мой Spar\""),
		 DataStories(imageName: "message.circle",
						   description: "Мы в соцсетях"),
		 DataStories(imageName: "waveform.circle",
					 description: "3 рецепта коктейлей"),
		 DataStories(imageName: "cursorarrow.click",
						   description: "Дегустации в SPAR"),
		 DataStories(imageName: "bag.circle", description: "Новинки недели")]
	}

	static func example1() -> DataStories {
		DataStories(imageName: "heart.circle",
						   description: "Привилегии \"Мой Spar\"")
	}

	static func example2() -> DataStories {
		DataStories(imageName: "message.circle",
						  description: "Мы в соцсетях")
	}
}
