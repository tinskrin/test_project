//
//  DataBanners.swift
//  testProject
//
//  Created by tinskrin on 14.08.2023.
//

import Foundation

struct DataBanners: Identifiable {

	let imageName: String
//	let name: String
	let id = UUID()

	static func examples() -> [DataBanners] {

		[DataBanners(imageName: "banners"),
		 DataBanners(imageName: "bannerTwo"),
		 DataBanners(imageName: "banners"),
		 DataBanners(imageName: "bannerTwo")]
	}

	static func example1() -> DataBanners {
		DataBanners(imageName: "banners")
	}

	static func example2() -> DataBanners {
		DataBanners(imageName: "bannerTwo")
	}
}
