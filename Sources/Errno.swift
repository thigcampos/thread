/**
 *  Originally from Swifter by Damian Kołakowski (2014-2016)
 *  Modified by Thiago Campos (2025)
 *  All rights reserved.
 */

import Foundation

public class Errno {

    public class func description() -> String {
        // https://forums.developer.apple.com/thread/113919
        return String(cString: strerror(errno))
    }
}
