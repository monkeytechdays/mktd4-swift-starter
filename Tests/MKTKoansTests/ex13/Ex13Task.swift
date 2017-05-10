import MKTCore
import MKTUtils

/**
 * Exercise 13: Dictionaries
 *
 * Read about https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html
 */

 /**
  * Create an empty Dictionary
  */
func getEmptyDictionaryOfScores() throws -> [String:Int] {
    return [String:Int]()
}

/**
 * Filter a dictionary selecting scores in a given range
 */
func getScoresInRange(_ scores:[String:Int], _ range:ClosedRange<Int>) throws -> [(key:String,value:Int)] {
    return scores.filter{ (key,value) in range.contains(value) }
}

/**
 * Write the extension used to create a dictionary from an array of dictionary pair element
 */
extension Array {
    func dictionary<K: Hashable, V>() throws -> [K: V] where Element == Dictionary<K, V>.Element {
        var dictionary = [K: V]()
        for element in self {
            dictionary[element.key] = element.value
        }
        return dictionary
    }
}

/**
 * Filter a dictionnary selecting scores in a given range
 */
func getDictionaryScoresInRange(_ scores:[String:Int], _ range:ClosedRange<Int>) throws -> [String:Int] {
    return try scores.filter{ (key,value) in range.contains(value) }.dictionary()
}
