
//
// VentCap.swift
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
import RxSwift
import PromiseKit

// MARK: Constants

extension Constants {
  public static var ventNamespace: String = "vent"
  public static var ventName: String = "Vent"
}

// MARK: Attributes
fileprivate struct Attributes {
  static let ventVentstate: String = "vent:ventstate"
  static let ventLevel: String = "vent:level"
  static let ventAirpressure: String = "vent:airpressure"
  
}

public protocol ArcusVentCapability: class, RxArcusService {
  /** Reflects the current state of the vent.  Obstruction implying that something is preventing the opening or closing of the vent. */
  func getVentVentstate(_ model: DeviceModel) -> VentVentstate?
  /** Reflects the current level of openness, as a percentage. */
  func getVentLevel(_ model: DeviceModel) -> Int?
  /** Reflects the current level of openness, as a percentage. */
  func setVentLevel(_ level: Int, model: DeviceModel)
/** Air pressure in duct. */
  func getVentAirpressure(_ model: DeviceModel) -> Double?
  
  
}

extension ArcusVentCapability {
  public func getVentVentstate(_ model: DeviceModel) -> VentVentstate? {
    let attributes: [String: AnyObject] = model.get()
    guard let attribute = attributes[Attributes.ventVentstate] as? String,
      let enumAttr: VentVentstate = VentVentstate(rawValue: attribute) else { return nil }
    return enumAttr
  }
  
  public func getVentLevel(_ model: DeviceModel) -> Int? {
    let attributes: [String: AnyObject] = model.get()
    return attributes[Attributes.ventLevel] as? Int
  }
  
  public func setVentLevel(_ level: Int, model: DeviceModel) {
    model.set([Attributes.ventLevel: level as AnyObject])
  }
  public func getVentAirpressure(_ model: DeviceModel) -> Double? {
    let attributes: [String: AnyObject] = model.get()
    return attributes[Attributes.ventAirpressure] as? Double
  }
  
  
}
