import UIKit

extension UIView {
    
    @resultBuilder
    public struct ConstraintsBuilder {
        static func buildBlock(_ components: NSLayoutConstraint...) -> [NSLayoutConstraint] {
            components
        }
    }
    
    @discardableResult
    public func createConstraints(@ConstraintsBuilder constraints: (() -> [NSLayoutConstraint])) -> [NSLayoutConstraint] {
        constraints()
    }
}
