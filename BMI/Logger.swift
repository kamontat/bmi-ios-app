//
//  Logger.swift
//  BMI
//
//  Created by kamontat chantrachirathumrong on 18/1/18.
//  Copyright © 2018 kamontat. All rights reserved.
//

import Foundation

class Logger {
    static var log = "LOG"
    static var debug = "DEBUG"
    static var info = "INFO"
    static var warn = "WARNING"
    static var error = "ERROR"
    static var invalid = "INVALID"

    static func _log(title: String, obj: Any) {
        if let msg = Logger._cast(obj: obj) {
            NSLog("[%@] -- %@", title, msg)
        } else {
            NSLog("[%@] -- %@", invalid, "OBJECT CANNOT PRINT")
        }
    }

    static func _cast(obj: Any) -> NSObject? {
        return obj as? NSObject
    }

    static func log(obj: Any) {
        Logger._log(title: Logger.log, obj: obj)
    }

    static func debug(obj: Any) {
        Logger._log(title: Logger.debug, obj: obj)
    }

    static func info(obj: Any) {
        Logger._log(title: Logger.info, obj: obj)
    }

    static func warn(obj: Any) {
        Logger._log(title: Logger.warn, obj: obj)
    }

    static func error(obj: Any) {
        Logger._log(title: Logger.error, obj: obj)
    }
}
