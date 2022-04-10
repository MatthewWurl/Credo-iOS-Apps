//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Matt X on 4/8/22.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: - PROPERTIES
    let fruit: Fruit
    let nutrients = [
        "Energy", "Sugar", "Fat",
        "Protein", "Vitamins", "Minerals"
    ]
    
    // MARK: - BDOY
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { index in
                    Divider()
                        .padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[index])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.body.bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[index])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

// MARK: - PREVIEW
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
