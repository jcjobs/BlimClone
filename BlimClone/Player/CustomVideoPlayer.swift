//
//  VideoPlayer.swift
//  BlimClone
//
//  Created by Juan Carlos Perez Delgadillo on 02/07/21.
//

import SwiftUI
import AVKit

struct CustomVideoPlayer: View {
    var url: URL
    
    private var player: AVPlayer {
        AVPlayer(url: url)
    }
    
    var body: some View {
        VideoPlayer(player: player)
            .onAppear(){
                player.play()
            }
    }
}

struct VideoPlayer_Previews: PreviewProvider {
    static var previews: some View {
        CustomVideoPlayer(url: randomExampleVideoURL)
    }
}
