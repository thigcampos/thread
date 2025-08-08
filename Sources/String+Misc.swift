/**
 *  Originally from Swifter by Damian Kołakowski (2014-2016)
 *  Modified by Thiago Campos (2025)
 *  All rights reserved.
 */

import Foundation

extension String {

    public func unquote() -> String {
        var scalars = self.unicodeScalars
        if scalars.first == "\"" && scalars.last == "\"" && scalars.count >= 2 {
            scalars.removeFirst()
            scalars.removeLast()
            return String(scalars)
        }
        return self
    }
}

extension UnicodeScalar {

    public func asWhitespace() -> UInt8? {
        if self.value >= 9 && self.value <= 13 {
            return UInt8(self.value)
        }
        if self.value == 32 {
            return UInt8(self.value)
        }
        return nil
    }
}
