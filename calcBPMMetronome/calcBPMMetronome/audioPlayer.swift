//
//  audioPlayer.swift
//  calcBPMMetronome
//
//  Created by akrolayer on 2020/03/17.
//  Copyright © 2020 akrolayer. All rights reserved.
//

import AVFoundation
import Combine

class AudioPlayer: ObservableObject {
    var sound: AVAudioPlayer?
    /*
    func playSound(){
        var sound = AVAudioPlayer()
        if let path = Bundle.main.path(forResource: "clap-toilet-06", ofType: "mp3"){
            do{
                sound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                sound.play()
                //sound.stop()
            }catch{
                print("Could not file path")
            }
        }
    }
 */
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
    
    func playSound3(){
        
        var soundIdRing:SystemSoundID = 1000
         
        if let soundUrl = CFBundleCopyResourceURL(CFBundleGetMainBundle(), nil, nil, nil){
            AudioServicesCreateSystemSoundID(soundUrl, &soundIdRing)
            AudioServicesPlaySystemSound(soundIdRing)
        }
    }
    
    //@discardableResult
    func metronome(BPM: String, PlayCount: String) -> Bool{
        guard let bpm = Double(BPM)
            else { return false }
        guard let playcount = Int(PlayCount)
            else { return false }
        var i = 0
        while(i < playcount) {
            self.playSound4()
            Thread.sleep(forTimeInterval: 60 / bpm)
            i += 1
        }
            return true
        
        /*
        var i = 0
        while(i < 1){
            
            if(i % 4 == 0){
                playSound3()
                Thread.sleep(forTimeInterval: 60 / bpm)
                i += 1
            }else{
            DispatchQueue.main.asyncAfter(deadline: .now() + 60 / bpm, execute: {
                self.playSound2()
                i += 1
            })
                //Thread.sleep(forTimeInterval: 60 / bpm)
                
            //}
 
        }
 
        return true
 */
    }
}

