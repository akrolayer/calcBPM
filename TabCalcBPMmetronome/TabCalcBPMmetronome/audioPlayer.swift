//
//  audioPlayer.swift
//  TabCalcBPMmetronome
//
//  Created by akrolayer on 2020/03/23.
//  Copyright © 2020 akrolayer. All rights reserved.
//

import AVFoundation
import Combine

class AudioPlayer: ObservableObject {
    var sound: AVAudioPlayer?
    func playSound4(){
        if let path = Bundle.main.path(forResource: "clap", ofType: "mp3") {
            do {
                sound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                print("Playing sound")
                sound?.play()
            } catch {
                print( "Could not find file")
            }
        }
    }
    
    func playSound2(){
        // dtmf-8.caf    TouchTone
        var soundIdRing:SystemSoundID = 1208
         
        if let soundUrl = CFBundleCopyResourceURL(CFBundleGetMainBundle(), nil, nil, nil){
            AudioServicesCreateSystemSoundID(soundUrl, &soundIdRing)
            AudioServicesPlaySystemSound(soundIdRing)
        }
    }
    
    @discardableResult
    func metronome(BPM: String, PlayCount: String) -> Bool{
        guard let bpm = Double(BPM)
            else { return false }
        guard let playcount = Int(PlayCount)
            else { return false }
        var i = 0
        while(i < playcount) {
            Thread.sleep(forTimeInterval: 60 / bpm)
            self.playSound4()
            i += 1
        }
            return true
    }
    @discardableResult
    func notSoundMetronome(BPM: String, PlayCount: String) -> Bool{
        guard let bpm = Double(BPM)
            else { return false }
        guard let playcount = Int(PlayCount)
            else { return false }
        var i = 0
        while(i < playcount) {
            Thread.sleep(forTimeInterval: 60 / bpm)
            i += 1
        }
            return true
    }
    
}

