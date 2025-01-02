//
//  ContentView.swift
//  Lottie animation swiftui
//
//  Created by Bekkari meryem on 2/1/2025.
//

import SwiftUI

struct ContentView: View {
    @State var isPaused: Bool = false
    @State var speed: Float = 1

    var body: some View {
        ZStack {
            Color(red: 210/255, green: 180/255, blue: 200/255)
            VStack {
                Spacer()

                Spacer()
                LottieView(isPaused: isPaused, speed: speed)
                    .frame(width: 300, height: 300)

                Spacer()

                HStack(spacing: 40) {
                    Button(action: {
                        print("Rewind")
                        speed -= 0.1
                    }) {
                        ZStack {
                            Circle()
                                .frame(width: 80, height: 80)
                                .accentColor(.pink)
                                .shadow(radius: 10)
                            Image(systemName: "backward.fill")
                                .foregroundColor(.white)
                                .font(.system(.title))
                        }
                    }

                    Button(action: {
                 
                        isPaused.toggle()
                    }) {
                        ZStack {
                            Circle()
                                .frame(width: 80, height: 80)
                                .accentColor(.pink)
                                .shadow(radius: 10)
                            Image(systemName: isPaused ?  "play.fill" : "pause.fill")
                                .foregroundColor(.white)
                                .font(.system(.title))
                        }
                    }

                    Button(action: {
                        print("Skip")
                        speed += 0.1
                    }) {
                        ZStack {
                            Circle()
                                .frame(width: 80, height: 80)
                                .accentColor(.pink)
                                .shadow(radius: 10)
                            Image(systemName: "forward.fill")
                                .foregroundColor(.white)
                                .font(.system(.title))
                        }
                    }
                }
                .frame(width: 300, height: 20, alignment: .center)
                Spacer()
            }

        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
