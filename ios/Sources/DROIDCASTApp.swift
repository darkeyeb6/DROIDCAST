import SwiftUI

@main
struct DROIDCASTApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var connected = false

    var body: some View {
        ZStack {
            Color(red: 0.035, green: 0.045, blue: 0.075)
                .ignoresSafeArea()

            VStack(spacing: 24) {
                Spacer()

                Image(systemName: "airplayvideo")
                    .font(.system(size: 65))
                    .foregroundColor(.cyan)

                Text("DROIDCAST")
                    .font(.system(size: 34, weight: .bold))
                    .foregroundColor(.white)

                Text("ANDROID TO IPHONE")
                    .font(.caption)
                    .tracking(4)
                    .foregroundColor(.gray)

                Spacer()

                RoundedRectangle(cornerRadius: 24)
                    .fill(Color.white.opacity(0.06))
                    .frame(height: 230)
                    .overlay {
                        VStack(spacing: 15) {
                            Image(systemName: "display")
                                .font(.system(size: 48))
                                .foregroundColor(.gray)

                            Text("No device connected")
                                .foregroundColor(.white)

                            Text("Open DROIDCAST on your Android")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }

                Button {
                    connected.toggle()
                } label: {
                    Text("SEARCH FOR ANDROID")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.cyan)
                        .cornerRadius(16)
                }

                Text("VIDEO ONLY • NO ACCOUNTS")
                    .font(.caption2)
                    .foregroundColor(.gray)

                Spacer()
            }
            .padding(24)
        }
        .preferredColorScheme(.dark)
    }
}
