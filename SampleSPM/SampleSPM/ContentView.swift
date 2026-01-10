//
//  ContentView.swift
//  SampleSPM
//
//  Created by tichise on 2021年10月14日 21/10/14.
//

import SwiftUI
import MaterialDesignSymbol

struct ContentView: View {
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            MaterialSymbolListView()
                .tabItem {
                    Label("New Icons", systemImage: "star.fill")
                }
                .tag(0)

            LegacyIconListView()
                .tabItem {
                    Label("Legacy Icons", systemImage: "clock")
                }
                .tag(1)

            IconDemoView()
                .tabItem {
                    Label("Demo", systemImage: "paintbrush")
                }
                .tag(2)
        }
    }
}

// MARK: - Material Symbol List (New 4,102 icons)
struct MaterialSymbolListView: View {
    @State private var searchText = ""

    private let columns = [
        GridItem(.adaptive(minimum: 60))
    ]

    private var filteredIcons: [MaterialSymbolEnum] {
        if searchText.isEmpty {
            return Array(MaterialSymbolEnum.allCases.prefix(500)) // Limit for performance
        } else {
            return MaterialSymbolEnum.allCases.filter { icon in
                String(describing: icon).lowercased().contains(searchText.lowercased())
            }.prefix(100).map { $0 }
        }
    }

    var body: some View {
        NavigationView {
            VStack {
                Text("Material Symbols Outlined - 4,102 icons")
                    .font(.caption)
                    .foregroundColor(.secondary)

                SearchBar(text: $searchText, placeholder: "Search icons...")

                ScrollView {
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(filteredIcons, id: \.self) { icon in
                            IconCell(
                                iconText: icon.rawValue,
                                iconName: String(describing: icon)
                            )
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("Material Symbols")
        }
    }
}

// MARK: - Legacy Icon List (1,661 icons)
struct LegacyIconListView: View {
    @State private var searchText = ""

    private let columns = [
        GridItem(.adaptive(minimum: 60))
    ]

    // Sample of legacy icons for display
    private var sampleIcons: [(name: String, icon: MaterialDesignIconEnum)] {
        [
            ("home", .home24px),
            ("search", .search24px),
            ("settings", .settings24px),
            ("menu", .menu24px),
            ("close", .close24px),
            ("add", .add24px),
            ("delete", .delete24px),
            ("edit", .edit24px),
            ("share", .share24px),
            ("favorite", .favorite24px),
            ("star", .star24px),
            ("person", .person24px),
            ("email", .email24px),
            ("phone", .phone24px),
            ("camera", .camera24px),
            ("photo", .photo24px),
            ("album", .album24px),
            ("music", .musicNote24px),
            ("video", .videocam24px),
            ("play", .playArrow24px),
            ("pause", .pause24px),
            ("stop", .stop24px),
            ("forward", .forward24px),
            ("replay", .replay24px),
            ("volume", .volumeUp24px),
            ("mute", .volumeOff24px),
            ("brightness", .brightnessHigh24px),
            ("bluetooth", .bluetooth24px),
            ("wifi", .wifi24px),
            ("gps", .gpsFixed24px),
            ("lock", .lock24px),
            ("unlock", .lockOpen24px),
            ("visibility", .visibility24px),
            ("download", .fileDownload24px),
            ("upload", .fileUpload24px),
            ("cloud", .cloud24px),
            ("folder", .folder24px),
            ("file", .insertDriveFile24px),
            ("attach", .attachFile24px),
            ("link", .link24px),
            ("send", .send24px),
            ("chat", .chat24px),
            ("forum", .forum24px),
            ("notification", .notifications24px),
            ("alarm", .alarm24px),
            ("schedule", .schedule24px),
            ("event", .event24px),
            ("today", .today24px),
            ("location", .locationOn24px),
            ("map", .map24px),
            ("navigate", .navigation24px),
            ("directions", .directions24px),
            ("car", .directionsCar24px),
            ("bus", .directionsBus24px),
            ("train", .train24px),
            ("flight", .flight24px),
            ("hotel", .hotel24px),
            ("restaurant", .restaurant24px),
            ("shopping", .shoppingCart24px),
            ("payment", .payment24px),
        ]
    }

    var body: some View {
        NavigationView {
            VStack {
                Text("Legacy MaterialDesignIconEnum - 1,661 icons")
                    .font(.caption)
                    .foregroundColor(.secondary)

                Text("(Showing sample icons)")
                    .font(.caption2)
                    .foregroundColor(.secondary)

                ScrollView {
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(sampleIcons, id: \.name) { item in
                            IconCell(
                                iconText: item.icon.rawValue,
                                iconName: item.name
                            )
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("Legacy Icons")
        }
    }
}

// MARK: - Demo View
struct IconDemoView: View {
    @State private var iconSize: CGFloat = 48
    @State private var selectedColor: Color = .blue

    var body: some View {
        NavigationView {
            VStack(spacing: 24) {
                Text("Icon Customization Demo")
                    .font(.headline)

                // Icon display
                HStack(spacing: 20) {
                    Image(uiImage: createIcon(icon: .home, color: UIColor(selectedColor), size: iconSize))
                    Image(uiImage: createIcon(icon: .search, color: UIColor(selectedColor), size: iconSize))
                    Image(uiImage: createIcon(icon: .settings, color: UIColor(selectedColor), size: iconSize))
                    Image(uiImage: createIcon(icon: .favorite, color: UIColor(selectedColor), size: iconSize))
                }

                Divider()

                // Size slider
                VStack {
                    Text("Size: \(Int(iconSize))px")
                    Slider(value: $iconSize, in: 16...96, step: 4)
                        .padding(.horizontal)
                }

                // Color picker
                VStack {
                    Text("Color")
                    HStack(spacing: 16) {
                        ForEach([Color.blue, .red, .green, .orange, .purple, .black], id: \.self) { color in
                            Circle()
                                .fill(color)
                                .frame(width: 40, height: 40)
                                .overlay(
                                    Circle()
                                        .stroke(selectedColor == color ? Color.primary : Color.clear, lineWidth: 3)
                                )
                                .onTapGesture {
                                    selectedColor = color
                                }
                        }
                    }
                }

                Divider()

                // Code example
                VStack(alignment: .leading, spacing: 8) {
                    Text("Usage Example:")
                        .font(.headline)

                    Text("""
                    // New API (Recommended)
                    MaterialSymbolEnum.home

                    // Legacy API (Still works)
                    MaterialDesignIconEnum.home24px
                    """)
                    .font(.system(.caption, design: .monospaced))
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                }
                .padding()

                Spacer()
            }
            .padding()
            .navigationTitle("Demo")
        }
    }

    private func createIcon(icon: MaterialSymbolEnum, color: UIColor, size: CGFloat) -> UIImage {
        let symbol = MaterialDesignSymbol(text: icon.rawValue, size: size)
        symbol.addAttribute(foregroundColor: color)
        return symbol.image()
    }
}

// MARK: - Supporting Views
struct IconCell: View {
    let iconText: String
    let iconName: String
    @State private var isCopied = false

    var body: some View {
        VStack(spacing: 4) {
            Image(uiImage: createIconImage())
                .resizable()
                .frame(width: 32, height: 32)

            Text(iconName.prefix(8) + (iconName.count > 8 ? "..." : ""))
                .font(.system(size: 8))
                .foregroundColor(.secondary)
                .lineLimit(1)
        }
        .frame(width: 60, height: 60)
        .background(isCopied ? Color.green.opacity(0.2) : Color(.systemGray6))
        .cornerRadius(8)
        .onTapGesture {
            UIPasteboard.general.string = iconName
            withAnimation {
                isCopied = true
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                withAnimation {
                    isCopied = false
                }
            }
        }
    }

    private func createIconImage() -> UIImage {
        let symbol = MaterialDesignSymbol(text: iconText, size: 32)
        return symbol.image()
    }
}

struct SearchBar: View {
    @Binding var text: String
    let placeholder: String

    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.secondary)

            TextField(placeholder, text: $text)
                .textFieldStyle(PlainTextFieldStyle())

            if !text.isEmpty {
                Button(action: { text = "" }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.secondary)
                }
            }
        }
        .padding(8)
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
