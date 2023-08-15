//
//  BannersListView.swift
//  testProject
//
//  Created by tinskrin on 14.08.2023.
//

import Foundation
import SwiftUI

struct BannersListView: View {
	let banner: DataBanners

	var body: some View {
		Image(banner.imageName)
			.resizable()
			.scaledToFit()
			.cornerRadius(15)
	}
}

struct BannersListView_Previews: PreviewProvider {
	static var previews: some View {
		BannersListView(banner: DataBanners.example1())
	}
}
