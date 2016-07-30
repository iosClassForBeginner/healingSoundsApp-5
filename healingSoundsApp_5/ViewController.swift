//
//  ViewController.swift
//  healingSoundsApp_5
//
//  Created by Wataru Maeda on 7/30/16.
//  Copyright © 2016 wataru maeda. All rights reserved.
//

import UIKit
import AVFoundation // 👈オーディオプレイヤー使うとき、インポートしましょう

class ViewController: UIViewController
{
    var audioPlayer: AVAudioPlayer!
    
    // 👇画面が生成されると、まずこの関数が呼ばれます
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // 👇オーディオプレイヤーを初期化します。
        self.initAudioPlayer()
    }
    
    // MARK: - Init
    // 👇オーディオプレイヤーを初期化します。
    func initAudioPlayer()
    {
        // 👇BGMファイルを指定します
        let filePath = NSBundle.mainBundle().pathForResource("sound", ofType: "mp3")
        let audioPath = NSURL(fileURLWithPath: filePath!)
        
        // 👇オーディオプレイヤーの再生準備します
        do {
            audioPlayer = try AVAudioPlayer(contentsOfURL: audioPath)
            audioPlayer.prepareToPlay()
        } catch {
            print("Error")
        }
    }
    
    // MARK: - Action
    @IBAction func play(sender: AnyObject)
    {
        // 👇BGMを再生します
        audioPlayer.play()
    }
    
    @IBAction func stop(sender: AnyObject)
    {
        // 👇BGMを停止します
        audioPlayer.stop()
    }
    
    // MARK: - Support
    // 👇メモリが足りなくなったら呼ばれます
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}

