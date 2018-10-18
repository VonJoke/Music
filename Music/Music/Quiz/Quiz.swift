//
//  Quiz.swift
//  Music
//
//  Created by Vladislav Sena on 18/10/2018.
//  Copyright © 2018 VladislavSena. All rights reserved.
//

import UIKit
import AVFoundation

class Quiz: UIViewController {

    var audioPlayer = AVAudioPlayer()
    @IBOutlet weak var playBtn: UIButton!
    
    @IBAction func playSound(_ sender: Any) {
        playBtn.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        
        UIView.animate(withDuration: 1.0,
                       delay: 0,
                       usingSpringWithDamping: 0.3,
                       initialSpringVelocity: 5.0,
                       options: .allowUserInteraction,
                       animations: { [weak self] in
                        self?.playBtn.transform = .identity
            },
                       completion: nil)
        
        audioPlayer.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let sound = Bundle.main.path(forResource: "C(Stretched)", ofType: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        } catch {
            print(error)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
