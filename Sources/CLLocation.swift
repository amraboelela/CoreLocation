//
//  CLLocation.swift
//  CoreLocation
//
//  Created by Amr Aboelela on 1/16/17.
//
//  Copyright © 2017 Amr Aboelela
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import Foundation

public typealias CLLocationDegrees = Double
public typealias CLLocationDistance = Double

public struct CLLocationCoordinate2D {
    public var latitude: CLLocationDegrees
    public var longitude: CLLocationDegrees
    
    public init(latitude: CLLocationDegrees, longitude: CLLocationDegrees) {
        self.latitude = latitude
        self.longitude = longitude
    }
}

open class CLLocation {
    var _coordinate: CLLocationCoordinate2D
    
    public init(latitude: CLLocationDegrees, longitude: CLLocationDegrees) {

        _coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    open var coordinate: CLLocationCoordinate2D {
        get {
            return _coordinate
        }
        set {
            _coordinate = newValue
        }
    }
    
    open func distance(from location: CLLocation) -> CLLocationDistance {
        return sqrt(pow((self.coordinate.latitude - location.coordinate.latitude), 2) + pow((self.coordinate.longitude - location.coordinate.longitude), 2))
    }
    

}
