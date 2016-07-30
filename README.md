  
  
# 第5回: １時間でiPhoneアプリを作ろう (2016/07/31)

  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/healingSoundsApp-5/blob/master/Assets/img.png" /></div>
  
  当アカウントへ訪れていただき、誠にありがとうございます。第5回アプリ教室では、サウンドアプリを作ります。以下、アプリを作る上で、重要となるポイントをまとめました。自分のペースで勉強したい、勉強前に復習したい、内容を復習したい場合、ご利用ください。

## オーディオプレイヤーの再生  
  
  1. *AVFoundation*をインポートしましょう  
  `import AVFoundation`  
  
  2. *AVAudioPlayer*を宣言しましょう  
  `var audioPlayer: AVAudioPlayer!`
  
  3. オーディオプレイヤーの再生準備をしましょう (音源ファイルを指定し、オーディオプレイヤーの再生準備を行います)  
  `let filePath = NSBundle.mainBundle().pathForResource("sound", ofType: "mp3")`  
  `let audioPath = NSURL(fileURLWithPath: filePath!)`  
  `do {`  
  `  audioPlayer = try AVAudioPlayer(contentsOfURL: audioPath)`  
  `  audioPlayer.prepareToPlay()`  
  `} catch {`  
  `  print("Error")`  
  `}`  
  
  4. オーディオプレイヤーの再生/停止を追加しましょう  
  `audioPlayer.play()`  
  `audioPlayer.stop()`  
  
## アプリ教室に興味ある方、歓迎します。  
  Meetup  
  http://www.meetup.com/ios-dev-in-namba/events/232838288/  
  
## 別途アプリ教室(有料)も開いております  
  http://learning-ios-dev.esy.es/  
  
  

