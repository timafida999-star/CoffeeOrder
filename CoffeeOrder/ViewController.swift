import UIKit

final class ViewController: UIViewController {
    @IBOutlet private weak var coffeeImageView: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var priceLabel: UILabel!
    @IBOutlet private weak var quantityLabel: UILabel!
    @IBOutlet private weak var quantityStepper: UIStepper!
    @IBOutlet private weak var orderButton: UIButton!

    private let coffee = Coffee.icedCaramelOatMilkLatte

    override func viewDidLoad() {
        super.viewDidLoad()
        coffeeImageView.image = UIImage(named: coffee.imageName)
        titleLabel.text = coffee.title
        priceLabel.text = coffee.formattedPrice
        updateQuantity()
    }

    @IBAction private func quantityChanged(_ sender: UIStepper) {
        updateQuantity()
    }

    private func updateQuantity() {
        let quantity = Int(quantityStepper.value)
        quantityLabel.text = "Quantity: \(quantity)"
        orderButton.setTitle("Order · \(coffee.formattedTotal(for: quantity))", for: .normal)
    }
}
