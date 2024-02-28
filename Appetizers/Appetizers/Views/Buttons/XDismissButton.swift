//
//  XDismissButton.swift
//  Appetizers
//
//  Created by Kody Buss on 2/27/24.
//

import SwiftUI

struct XDismissButton: View {
	
    var body: some View {
		ZStack{
			Circle()
				.frame(width: 30, height: 30)
				.foregroundColor(.white)
				.opacity(0.6)
			
			Image(systemName: "xmark")
				.imageScale(.small)
				.frame(width: 44, height: 44)
				.foregroundColor(.black)
		}
    }
}

#Preview {
	Group{
		VStack{
			XDismissButton()
				.background(.gray)
			
			XDismissButton()
				.background(.black)
		}
	}
}
