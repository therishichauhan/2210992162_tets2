import UIKit

// Recipe struct to hold recipe details
struct Recipe {
    let title: String
    let cookingTime: String
    let difficulty: String
    let image: UIImage?
    
    // You can optionally add an initializer if you want to initialize these values programmatically.
    init(title: String, cookingTime: String, difficulty: String, image: UIImage?) {
        self.title = title
        self.cookingTime = cookingTime
        self.difficulty = difficulty
        self.image = image
    }
}
