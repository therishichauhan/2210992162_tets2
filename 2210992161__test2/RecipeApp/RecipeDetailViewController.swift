
import UIKit

class RecipeDetailViewController: UIViewController {

    var recipe: Recipe?

    @IBOutlet weak var recipeImageView: UIImageView!
    @IBOutlet weak var recipeTitleLabel: UILabel!
    @IBOutlet weak var recipeDescriptionLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let recipe = recipe {
            recipeImageView.image = recipe.image
            recipeTitleLabel.text = recipe.title
            recipeDescriptionLabel.text = "Detailed description of the recipe goes here."
        }
    }
}
