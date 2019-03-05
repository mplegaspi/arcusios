
//
// AlarmServiceLegacy.swift
//
// Generated on 20/09/18
/*
 * Copyright 2019 Arcus Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import Foundation
import PromiseKit
import RxSwift

// MARK: Legacy Support

public class AlarmServiceLegacy: NSObject, ArcusAlarmService, ArcusPromiseConverter {
  public var disposeBag: DisposeBag = DisposeBag()
  private static let service: AlarmServiceLegacy = AlarmServiceLegacy()
  
  
  public static func addAlarm(_ alarm: String, alarms: [String], triggers: [Any]) -> PMKPromise {
  
    
    
    
    
    do {
      return try service.promiseForObservable(service.requestAlarmServiceAddAlarm(alarm, alarms: alarms, triggers: triggers))
    } catch {
      return PMKPromise.new { (_: PMKFulfiller?, rejecter: PMKRejecter?) in
        rejecter?(error)
      }
    }
  }
  
  public static func cancelAlert(_ method: String, alarms: [String]) -> PMKPromise {
  
    
    
    
    do {
      return try service.promiseForObservable(service.requestAlarmServiceCancelAlert(method, alarms: alarms))
    } catch {
      return PMKPromise.new { (_: PMKFulfiller?, rejecter: PMKRejecter?) in
        rejecter?(error)
      }
    }
  }
  
}
