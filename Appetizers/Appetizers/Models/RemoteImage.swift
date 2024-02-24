//
//  RemoteImage.swift
//  Appetizers
//
//  Created by Kody Buss on 2/24/24.
//

import SwiftUI

struct RemoteImage: View {
	var image: Image?
	var body: some View {
		image?.resizable() ?? Image("food-placeholder").resizable()
	}
}
