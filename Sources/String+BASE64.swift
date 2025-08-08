/**
 *  Originally from Swifter by Damian Kołakowski (2014-2016)
 *  Modified by Thiago Campos (2025)
 *  All rights reserved.
 */

import Foundation

extension String {

    public static func toBase64(_ data: [UInt8]) -> String {
        return Data(data).base64EncodedString()
    }
}
