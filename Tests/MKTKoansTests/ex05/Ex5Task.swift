import MKTCore
import MKTUtils

/**
 * Exercise 5: Lazy and Delegate.
 *
 * Read About Lazy Properties https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Properties.html
 * It should be initialized by the invocation of 'initializer()' at the moment of the first access.
 */

struct LazyProperty {
    let value : Int = 0

    init(_ initializer:@escaping () -> Int) {
    }
}
