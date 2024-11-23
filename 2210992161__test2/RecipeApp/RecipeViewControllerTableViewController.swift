
import UIKit

class RecipeViewControllerTableViewController: UITableViewController {
    
    private let recipes: [Recipe] = [
        Recipe(title: "Spaghetti Carbonara",
               cookingTime: "30 mins",
               difficulty: "Medium",
               image: UIImage(named: "pantry-recipes-2")),
        Recipe(title: "Caesar Salad",
               cookingTime: "15 mins",
               difficulty: "Easy",
               image: UIImage(named: "pantry-recipes-2")),
        Recipe(title: "Chicken Curry",
               cookingTime: "45 mins",
               difficulty: "Medium",
               image: UIImage(named: "pantry-recipes-2"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Recipes"
        tableView.backgroundColor = .systemGroupedBackground
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath) as? RecipeTableViewCell else {
            return UITableViewCell()
        }
        
        let recipe = recipes[indexPath.row]
        cell.titleLabel.text = recipe.title
        cell.cookingTimeLabel.text = "⏱ " + recipe.cookingTime
        cell.difficultyLabel.text = "📊 " + recipe.difficulty
        cell.recipeImageView.image = recipe.image
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showRecipeDetail", let destinationVC = segue.destination as? RecipeDetailViewController, let selectedIndex = tableView.indexPathForSelectedRow {
            let selectedRecipe = recipes[selectedIndex.row]
            destinationVC.recipe = selectedRecipe
        }
    }
}
