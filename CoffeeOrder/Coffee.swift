import Foundation

struct Coffee {
    let title: String
    let price: Decimal
    let imageName: String

    var formattedPrice: String {
        format(price)
    }

    func formattedTotal(for quantity: Int) -> String {
        format(price * Decimal(quantity))
    }

    private func format(_ amount: Decimal) -> String {
        amount.formatted(.currency(code: "USD").locale(Locale(identifier: "en_US")))
    }
}

extension Coffee {
    static let icedCaramelOatMilkLatte = Coffee(
        title: "Iced Caramel Oat Milk Latte",
        price: 4.5,
        imageName: "coffee"
    )
}
