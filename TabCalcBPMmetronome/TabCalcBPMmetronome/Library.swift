//
//  Library.swift
//  TabCalcBPMmetronome
//
//  Created by akrolayer on 2020/03/23.
//  Copyright © 2020 akrolayer. All rights reserved.
//

import Foundation

class Library: ObservableObject {
    func BPMIntCheck (BPM: String)-> Bool{
        guard let bpm = Int(BPM) else{
            return false
        }
        return (10...1000).contains(bpm)
    }

    func NoteIntCheck (Note: String)-> Bool{
        guard let note = Int(Note) else{
            return false
        }
        let NotesList = [4, 8, 12, 16, 24, 32, 48, 64]
        return NotesList.contains(note)
    }
    
    func calcQuarterNotes(BPM: String, Notes: String)-> String{
        guard var bpm = Int(BPM) else { return "false" }
        guard var notes = Int(Notes) else { return "false" }
        if notes % 12 == 0{
            notes = notes / 3 * 4
            bpm = bpm / 4 * 3
            while(notes > 4){
                notes /= 2
                bpm *= 2
            }
            return String(bpm)
        }else{
            while(notes > 4){
                notes /= 2
                bpm *= 2
            }
            return String(bpm)
        }
    }
}
