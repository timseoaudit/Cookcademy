//
//  RecipeData.swift
//  Cookcademy
//
//  Created by Ben Stone on 4/19/21.
//

import Foundation

class RecipeData: ObservableObject {
    @Published var recipes = Recipe.testRecipes
    
    var favoriteRecipes: [Recipe] {
        recipes.filter {$0.isFavorite}
    }
    
    func recipes(for category: MainInformation.Category) -> [Recipe] {
        var filteredRecipes = [Recipe]()
        for recipe in recipes {
            if recipe.mainInformation.category == category {
                filteredRecipes.append(recipe)
            }
        }
        return filteredRecipes
    }
    
    func add(recipe: Recipe) {
        if recipe.isValid {
            recipes.append(recipe)
        }
    }
    
    func index(of recipe:Recipe) -> Int? {
        for i in recipes.indices {
            if recipes[i].id == recipe.id {
                return i
            }
        }
        return nil
    }
    
}
