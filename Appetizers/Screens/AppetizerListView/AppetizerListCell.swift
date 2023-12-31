//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Roman Smirnov on 03.07.2023.
//

import SwiftUI

struct AppetizerListCell: View {
    let appetizer: Appetizer
    var body: some View {
        HStack() {
            //Use AppetizerRemoteImage instead of AsyncImage if cache is needed
            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)
                    .cornerRadius(8)
            } placeholder: {
                Image("food-placeholder")
            }
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
            }
            .padding(.leading)
        }
    }
}

struct AppetizerListCell_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListCell(appetizer: MockData.sampleAppetizer)
    }
}
