//
//  XCGLogger+Logentries.swift
//
//  Created by Brian Batchelder on 1/7/16.
//  Copyright © 2016 Brian's Brain. All rights reserved.
//

import XCGLogger
import le

extension XCGLogger {
    
    public class XCGLogentriesLogDestination: XCGBaseLogDestination {
        public var leLog: LELog
        
        public init(leLog : LELog, owner: XCGLogger, identifier: String = "com.cerebralgardens.xcglogger.logdestination.logentries") {
            self.leLog = leLog
            super.init(owner: owner, identifier : identifier)
        }

        public override func output(logDetails: XCGLogDetails, text: String) {
            leLog.log(UIDevice.currentDevice().identifierForVendor!.UUIDString + ": " + text)
        }
    }
}