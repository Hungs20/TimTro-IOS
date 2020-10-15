//
//  Room.swift
//  Tro
//
//  Created by Chu Van Hung on 10/15/20.
//  Copyright © 2020 Chu Van Hung. All rights reserved.
//

import Foundation
import SwiftUI

enum UnitCost : String {
    case vnd = "VND"
    case usd = "USD"
}
enum TypeRoom : String {
    case ktx = "Kí túc xá/Homestay"
    case phong_cho_thue = "Phòng cho thuê"
    case phong_o_ghep = "Phòng ở ghép"
    case nha_nguyen_can = "Nhà nguyên căn"
    case can_ho = "Căn hộ"
}
enum GenderRoom : String {
    case all = "Tất cả"
    case male = "Nam"
    case female = "Nữ"
}
struct RoomExtension {
    var title : String
    var icon : UIImage
}
struct Room {
    var images : [UIImage]
    var title : String
    var cost_room : Float
    var type_room : TypeRoom
    var gender_room : GenderRoom
    var max_person_room : Int
    var unit : UnitCost = .vnd
    var area : Float
    var preCost : Int
    var cost_electric : Float
    var haveRoom : Int
    var cost_water : Float
    var cost_internet : Float
    var active : Bool
    var detail : String
    var address : Address
    var phonenumber : String
    var create_date : Date = Date()
    var room_extension : [RoomExtension]
}
struct Address {
    var thanh_pho : String
    var quan_huyen : String
    var phuong_xa : String
    var ten_duong : String
    var so_nha : String
}
