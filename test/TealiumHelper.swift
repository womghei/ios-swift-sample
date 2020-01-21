//
//  TealiumHelper.swift
//
//  Created by Christina S on 11/8/19.
//  Copyright © 2019 Tealium. All rights reserved.
//

import Foundation
import TealiumSwift

enum TealiumConfiguration {
    static let account = ""
    static let profile = ""
    static let environment = ""
}

let enableLogs = true

class TealiumHelper {

    static let shared = TealiumHelper()

    let config = TealiumConfig(account: TealiumConfiguration.account,
                               profile: TealiumConfiguration.profile,
                               environment: TealiumConfiguration.environment)
    
    var tealium: Tealium?
    
    // MARK: Tealium Initilization
    public init() {
        // Optional Config Settings
        if enableLogs { config.setLogLevel(.verbose) }
//        let list = TealiumModulesList(isWhitelist: true,
//                                      moduleNames: [
//                                                    "appdata",
//                                                    "tagmanagement",
//                                                    "lifecycle",
//                                                    "logger"])
//        config.setModulesList(list)
        config.setMemoryReportingEnabled(true)
        config.setDiskStorageEnabled(isEnabled: true)
        // To enable batching:
        // config.setBatchSize(5)
        // config.setIsEventBatchingEnabled(true)
        
        tealium = Tealium(config: config) { response in
            // Optional post init processing
            
        }
    }

    public func start() {
        _ = TealiumHelper.shared
        
    }

    class func trackView(title: String, data: [String: Any]?) {
        TealiumHelper.shared.tealium?.track(title: title, data: data, completion: nil)
    }

    class func trackEvent(title: String, data: [String: Any]?) {
        TealiumHelper.shared.tealium?.track(title: title, data: data, completion: nil)
    }
    
    class func joinTrace(_ traceID: String) {
        TealiumHelper.shared.tealium?.joinTrace(traceId: traceID)
        TealiumHelper.trackEvent(title: "trace_started", data: nil)
    }

    class func leaveTrace() {
        TealiumHelper.shared.tealium?.leaveTrace()
    }
    
}

//extension TealiumHelper: TealiumAppData {
//    func willDropTrackingCall(_ request: TealiumTrackRequest) {
//        // ...
//    }
//}







