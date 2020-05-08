//
//  방금그곡.swift
//  Algo
//
//  Created by Seokho on 2020/05/08.
//  Copyright © 2020 Seokho. All rights reserved.
//

import Foundation

struct Match {
    var melody: String
    var melodySize: Int {
        return melody.count
    }
    
    init(_ melody: String) {
        self.melody = melody
    }
}

func solution(_ m:String, _ musicinfos:[String]) -> String {
    let convertM = m.convertMelody()
    
    var match: Match?
    var dict = [String : String]()
    
    for info in musicinfos {
        let str = info.split(separator: ",").map { String($0) }
    
        var (start, end, title, sound) = (str[0], str[1], str[2], str[3])
        
        let covertStart = start.split(separator: ":").map { String($0) }
        
        let startHour: Int = Int(covertStart.first!)!
        let startMinute: Int = Int(covertStart.last!)!
        
        let convertEnd = end.split(separator: ":").map { String($0) }
        
        let endHour: Int = Int(convertEnd.first!)!
        let endMinute: Int = Int(convertEnd.last!)!
        
        let time = (endHour - startHour) * 60 + (endMinute - startMinute)
        
        
        sound = sound.convertMelody()
        
        let playedSound = String(repeating: sound, count: time / sound.count)
            + sound[sound.startIndex..<sound.index(sound.startIndex, offsetBy: time % sound.count)]
        
        dict[playedSound] = title
    }
    for song in dict.keys {
        if song.contains(convertM) {
            if match == nil {
                match = Match(song)
            } else {
                if match!.melodySize < song.count {
                    match = Match(song)
                }
            }
        }
    }
    if match == nil { return "(None)" }
    return dict[match!.melody]!
}
extension String {
    func convertMelody() -> String {
        return self.replacingOccurrences(of: "A#", with: "H")
        .replacingOccurrences(of: "C#", with: "I")
        .replacingOccurrences(of: "D#", with: "J")
        .replacingOccurrences(of: "F#", with: "K")
        .replacingOccurrences(of: "G#", with: "L")
    }
}
