//
//  AudioPlayer.swift
//  calcBPM
//
//  Created by akrolayer on 2020/03/14.
//  Copyright © 2020 akrolayer. All rights reserved.
//

import AVFoundation
import Combine

class AudioPlayer: ObservableObject {
    func playSound(){
        var sound = AVAudioPlayer()
        if let path = Bundle.main.path(forResource: "2_cymbal", ofType: "mp3"){
            do{
                sound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                print("Playing sound")
                sound.play()
            }catch{
                print("Could not file path")
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
    
    func playSound3(){
        
        var soundIdRing:SystemSoundID = 1000
         
        if let soundUrl = CFBundleCopyResourceURL(CFBundleGetMainBundle(), nil, nil, nil){
            AudioServicesCreateSystemSoundID(soundUrl, &soundIdRing)
            AudioServicesPlaySystemSound(soundIdRing)
        }
    }
    
    @discardableResult
    func metronome(BPM: String) -> Bool{
        guard let bpm = Double(BPM)
            else { return false }
        var i = 0
        
        while(i < 8){
            /*
            if(i % 4 == 0){
                playSound3()
                Thread.sleep(forTimeInterval: 60 / bpm)
                i += 1
            }else{*/
                playSound2()
                Thread.sleep(forTimeInterval: 60 / bpm)
                i += 1
            //}
        }
        return true
    }
}
