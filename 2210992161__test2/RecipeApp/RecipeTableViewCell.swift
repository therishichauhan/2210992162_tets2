import UIKit

class RecipeTableViewCell: UITableViewCell {
    
    
    
    
    

    
        @IBOutlet weak var recipeImageView: UIImageView!
        @IBOutlet weak var cookingTimeLabel: UILabel!
        @IBOutlet weak var difficultyLabel: UILabel!
        @IBOutlet weak var titleLabel: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    private func setupUI() {
        // Image view styling
        recipeImageView.layer.cornerRadius = 8
        recipeImageView.clipsToBounds = true
        
        // Content styling
        titleLabel.font = .systemFont(ofSize: 17, weight: .semibold)
        cookingTimeLabel.font = .systemFont(ofSize: 14)
        difficultyLabel.font = .systemFont(ofSize: 14)
        
        selectionStyle = .none
        
        // Add some spacing between cell content
        contentView.layoutMargins = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
    }
}
