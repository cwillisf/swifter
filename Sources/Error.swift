//
//  Error.swift
//  Swifter
//
//  Copyright © 2017 Damian Kołakowski. All rights reserved.
//

import Foundation

public enum SwifterError: Error {
    
    case async(String)
    case socketCreation(String)
    case setReUseAddr(String)
    case setNoSigPipeFailed(String)
    case setNonBlockFailed(String)
    case setReuseAddrFailed(String)
    case bindFailed(String)
    case listenFailed(String)
    case writeFailed(String)
    case getPeerNameFailed(String)
    case convertingPeerNameFailed
    case getNameInfoFailed(String)
    case acceptFailed(String)
    case readFailed(String)
    case httpError(String)
    case inetPtonFailed(String)
}

public class Errno {
    
    public class func description() -> String {
        return String(cString: UnsafePointer(strerror(errno)))
    }
}
