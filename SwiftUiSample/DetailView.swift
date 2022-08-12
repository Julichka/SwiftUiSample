

import SwiftUI

import AVKit

struct DetailView: View {
    let item: DataItem
    
    @State var audioPlayer: AVAudioPlayer!

    var body: some View {
        
        VStack{
            Text(item.title ?? "")
            Image(item.imageAssertName ?? "")
                .resizable()
                .frame(width: .infinity, height: 400, alignment: .center)
                .clipped()
                .aspectRatio(1, contentMode: .fill)
            Text(item.description ?? "")
            Spacer()
        }.onAppear(perform: {
            let sound = Bundle.main.path(forResource: "cat_purring", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        })
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(item: Data.list[0])
    }
}
