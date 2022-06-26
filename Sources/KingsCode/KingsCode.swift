import UIKit

@resultBuilder
public struct ConstraintsBuilder {
    public static func buildBlock(_ components: NSLayoutConstraint...) -> [NSLayoutConstraint] {
        components
    }
}

public extension UIView {
    
    @discardableResult
    func createConstraints(@ConstraintsBuilder constraints: (() -> [NSLayoutConstraint])) -> [NSLayoutConstraint] {
        constraints()
    }
}
