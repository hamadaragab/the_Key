//
//  ButtonExtension.swift
//  The Key Discount
//
//  Created by Apple on 4/27/21.
//

import Foundation
import UIKit
extension String {
    
    var localized: String{
                return NSLocalizedString(self, comment: "")
            }
    var isPhoneNumber: Bool {
        if isAllDigits == true {
            let phoneRegex = "([0-9]{9})" // "^(05)([0-9]{8})"
            let predicate = NSPredicate(format: "SELF MATCHES %@", phoneRegex)
            return predicate.evaluate(with: self)
        } else {
            return false
        }
    }

    func isValidName() -> Bool {
        if hasSpecialCharacter || count > 60 || isEmpty || isAllSpaces() {
            return false
        }
        return true
    }

    func removeFirstZero() -> String {
        var newStr = self
        if newStr.count > 0, newStr.prefix(1) == "0" {
            newStr.removeFirst()
        }
        return newStr
    }

    var hasSpecialCharacter: Bool {
        let validString = CharacterSet(charactersIn: "!@#$%^&*()_+{}[]|\"<>,.~`/:;?-=\\¥'£•¢0123456789")
        if rangeOfCharacter(from: validString) != nil {
            return true
        } else {
            return false
        }
    }

    var isAllDigits: Bool {
        let charcterSet = NSCharacterSet(charactersIn: "0123456789").inverted
        let inputString = components(separatedBy: charcterSet)
        let filtered = inputString.joined(separator: "")
        return self == filtered
    }

    func convertToArray() -> [String] {
        let array = components(separatedBy: ",")
        return array
    }

    init(array: [String], separator: String = ",") {
        self = array.reduce("", { (res, obj) -> String in
            var separator = separator
            if res.isEmpty {
                separator = ""
            }
            return res + separator + obj
        })
    }

    func checkIfContainsUrl() -> Bool {
        let detector = try! NSDataDetector(types: NSTextCheckingResult.CheckingType.link.rawValue)
        let matches = detector.matches(in: self, options: [], range: NSRange(location: 0, length: utf16.count))
        var url = ""
        for match in matches {
            guard let range = Range(match.range, in: self) else { continue }
            url = String(self[range])
            print(url)
        }
        return !url.isEmpty
    }

    init(array: [Int]) {
        self = array.reduce("", { (res, obj) -> String in
            var separator = ","
            if res.isEmpty {
                separator = ""
            }
            return res + separator + "\(obj)"
        })
    }

    func isAllSpaces() -> Bool {
        let trimmed = trimmingCharacters(in: .whitespacesAndNewlines)
        return trimmed.count == 0
    }

    init(fromFile fileName: String, withExtension ext: String) {
        let fileUrl = Bundle.main.url(forResource: fileName, withExtension: ext)!
        do {
            self = try String(contentsOf: fileUrl, encoding: .utf8)
        } catch {
            self = ""
        }
    }
    
    var fourDigitNumber: String {
        var result = ""
        repeat {
            // Create a string with a random number 0...9999
            result = String(format:"%04d", arc4random_uniform(10000) )
        } while Set<Character>(result).count < 4
        return result
    }
    
    func estimatedTxtHight (text: String, width: Int) -> CGFloat
    {
        let size = CGSize(width: width, height: 1000)
        let attributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15)]
        let estimatedString = NSString(string: text).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
        return estimatedString.height
    }
    func estimatedTxtWidth (text: String, hight: Int) -> Int
    {
        let size = CGSize(width: 1000, height: hight)
        let attributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15)]
        let estimatedString = NSString(string: text).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
        return Int(estimatedString.width)
    }

}
