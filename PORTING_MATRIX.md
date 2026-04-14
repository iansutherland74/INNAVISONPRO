# IINA -> visionOS Porting Matrix

Generated: 2026-04-13 23:46:23 BST

## Scope Summary
- Swift files scanned: 179
- Files importing Cocoa: 92
- Files with AppKit/UI symbols: 75
- Files with mpv/FFmpeg markers: 15

## Phases
- Phase 0 (Bootstrap): new visionOS app shell + compile-safe core module extraction.
- Phase 1 (Core Reuse): carry over non-UI playback/domain logic and adapters.
- Phase 2 (Player UX): rebuild windowing, controls, playlist, settings in SwiftUI/UIKit-for-visionOS.
- Phase 3 (Plugins + Advanced): JS/plugin surfaces, overlays, subtitle ecosystem.

## File-by-File Matrix

| File | Category | Risk | Suggested Phase | Notes |
|---|---|---|---|---|
| iina/AboutWindowContributorAvatarItem.swift | Cocoa Utility | Medium | Phase 1 | Audit for hidden AppKit assumptions and replace selectively. |
| iina/AboutWindowController.swift | Playback + AppKit UI | High | Phase 2 | Split playback orchestration from NSWindow/NSView lifecycle. |
| iina/AccessibilityPreferences.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/AppData.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |
| iina/AppDelegate.swift | Plugin + UI | Very High | Phase 0 | Entry-point/windowing architecture file; requires new visionOS app model. |
| iina/Aspect.swift | Cocoa Utility | Medium | Phase 1 | Audit for hidden AppKit assumptions and replace selectively. |
| iina/AssrtSubtitle.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/Atomic.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/AutoFileMatcher.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/CacheManager.swift | Cocoa Utility | Medium | Phase 1 | Audit for hidden AppKit assumptions and replace selectively. |
| iina/CharEncoding.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/CollapseView.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/ControlBarView.swift | Cocoa Utility | Medium | Phase 1 | Audit for hidden AppKit assumptions and replace selectively. |
| iina/CropBoxView.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/CropBoxViewController.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/CropSettingsViewController.swift | Cocoa Utility | Medium | Phase 1 | Audit for hidden AppKit assumptions and replace selectively. |
| iina/Display.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/DisplayController.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/DraggingDetect.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/DurationDisplayTextField.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/Equalizations.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/EventController.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/ExtendedColors.swift | Cocoa Utility | Medium | Phase 1 | Audit for hidden AppKit assumptions and replace selectively. |
| iina/Extensions.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/FFmpegLogger.swift | Playback Core | Medium | Phase 1 | Reuse logic; add visionOS-safe rendering/input adapters. |
| iina/FileGroup.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/FilterPresets.swift | Playback Core | Medium | Phase 1 | Reuse logic; add visionOS-safe rendering/input adapters. |
| iina/FilterWindowController.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/FirstRunManager.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/FixedProgressBar.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/FlippedView.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/FloatingPointByteCountFormatter.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/FontPickerWindowController.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/FreeSelectingViewController.swift | Cocoa Utility | Medium | Phase 1 | Audit for hidden AppKit assumptions and replace selectively. |
| iina/GeometryDef.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/GuideWindowController.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/HardwareDecodeCapabilities.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/HistoryController.swift | Cocoa Utility | Medium | Phase 1 | Audit for hidden AppKit assumptions and replace selectively. |
| iina/HistoryWindowController.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/IINACommand.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/InfoDictionary.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/InitialWindowController.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/InspectorWindowController.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/ISO639Helper.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/JavascriptAPI.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |
| iina/JavascriptAPIConsole.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |
| iina/JavascriptAPICore.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |
| iina/JavascriptAPIEvent.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |
| iina/JavascriptAPIFile.swift | Plugin + UI | High | Phase 3 | Plugin UI contracts depend on AppKit; redesign plugin surface for visionOS. |
| iina/JavascriptAPIGlobal.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |
| iina/JavascriptAPIHttp.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |
| iina/JavascriptAPIInput.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |
| iina/JavascriptAPIMenu.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |
| iina/JavascriptAPIMpv.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |
| iina/JavascriptAPIOverlay.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |
| iina/JavascriptAPIPlaylist.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |
| iina/JavascriptAPIPreferences.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |
| iina/JavascriptAPISidebarView.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |
| iina/JavascriptAPIStandaloneWindow.swift | Plugin + UI | High | Phase 3 | Plugin UI contracts depend on AppKit; redesign plugin surface for visionOS. |
| iina/JavascriptAPISubtitle.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |
| iina/JavascriptAPIUtils.swift | Plugin + UI | High | Phase 3 | Plugin UI contracts depend on AppKit; redesign plugin surface for visionOS. |
| iina/JavascriptAPIWebSocket.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |
| iina/JavascriptDevTool.swift | Plugin + UI | High | Phase 3 | Plugin UI contracts depend on AppKit; redesign plugin surface for visionOS. |
| iina/JavascriptMessageHub.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |
| iina/JavascriptPlugin.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |
| iina/JavascriptPluginInstance.swift | Plugin + UI | High | Phase 3 | Plugin UI contracts depend on AppKit; redesign plugin surface for visionOS. |
| iina/JavascriptPluginMenuItem.swift | Plugin + UI | High | Phase 3 | Plugin UI contracts depend on AppKit; redesign plugin surface for visionOS. |
| iina/JavascriptPluginSubtitle.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |
| iina/JavascriptPluginSubtitleItem.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |
| iina/JavascriptPolyfill.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |
| iina/JustExtension.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/JustXMLRPC.swift | Cocoa Utility | Medium | Phase 1 | Audit for hidden AppKit assumptions and replace selectively. |
| iina/KeyBindingCriterion.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/KeyBindingDataLoader.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/KeyBindingItem.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/KeyBindingTranslator.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/KeychainAccess.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/KeyCodeHelper.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/KeyMapping.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/KeyRecordView.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/KeyRecordViewController.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/LanguageTokenField.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/LegacyMigration.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/Lock.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/Logger.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/LogWindowController.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/MainMenuActions.swift | Plugin + UI | High | Phase 3 | Plugin UI contracts depend on AppKit; redesign plugin surface for visionOS. |
| iina/MainWindow.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/MainWindowController.swift | Plugin + UI | Very High | Phase 0 | Entry-point/windowing architecture file; requires new visionOS app model. |
| iina/MainWindowMenuActions.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/MenuController.swift | Plugin + UI | Very High | Phase 0 | Entry-point/windowing architecture file; requires new visionOS app model. |
| iina/MiniPlayerWindow.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/MiniPlayerWindowController.swift | AppKit UI | Very High | Phase 0 | Entry-point/windowing architecture file; requires new visionOS app model. |
| iina/MiniPlayerWindowMenuActions.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/MiniPlaySlider.swift | Cocoa Utility | Medium | Phase 1 | Audit for hidden AppKit assumptions and replace selectively. |
| iina/MPVAudioDevice.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/MPVChapter.swift | Cocoa Utility | Medium | Phase 1 | Audit for hidden AppKit assumptions and replace selectively. |
| iina/MPVCommand.swift | Playback Core | Medium | Phase 1 | Reuse logic; add visionOS-safe rendering/input adapters. |
| iina/MPVCommandWrappers.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/MPVController.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |
| iina/MPVFilter.swift | Cocoa Utility | Medium | Phase 1 | Audit for hidden AppKit assumptions and replace selectively. |
| iina/MPVHook.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/MPVNode.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/MPVOption.swift | Playback Core | Medium | Phase 1 | Reuse logic; add visionOS-safe rendering/input adapters. |
| iina/MPVOptionDefaults.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/MPVPlaylistItem.swift | Cocoa Utility | Medium | Phase 1 | Audit for hidden AppKit assumptions and replace selectively. |
| iina/MPVProperty.swift | Playback Core | Medium | Phase 1 | Reuse logic; add visionOS-safe rendering/input adapters. |
| iina/MPVTrack.swift | Cocoa Utility | Medium | Phase 1 | Audit for hidden AppKit assumptions and replace selectively. |
| iina/NowPlayingInfoManager.swift | Playback Core | Medium | Phase 1 | Reuse logic; add visionOS-safe rendering/input adapters. |
| iina/OnlineSubtitle.swift | Plugin + UI | High | Phase 3 | Plugin UI contracts depend on AppKit; redesign plugin surface for visionOS. |
| iina/OpenSubClient.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/OpenSubSubtitle.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/OpenURLWindowController.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/OSCToolbarButton.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/OSDMessage.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/OutlineView.swift | Cocoa Utility | Medium | Phase 1 | Audit for hidden AppKit assumptions and replace selectively. |
| iina/PlaybackHistory.swift | Cocoa Utility | Medium | Phase 1 | Audit for hidden AppKit assumptions and replace selectively. |
| iina/PlaybackInfo.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/PlayerCore.swift | Plugin + UI | High | Phase 3 | Plugin UI contracts depend on AppKit; redesign plugin surface for visionOS. |
| iina/PlayerState.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/PlayerWindowController.swift | Plugin + UI | Very High | Phase 0 | Entry-point/windowing architecture file; requires new visionOS app model. |
| iina/PlaylistPlaybackProgressView.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/PlaylistViewController.swift | Plugin + UI | High | Phase 3 | Plugin UI contracts depend on AppKit; redesign plugin surface for visionOS. |
| iina/PlaySlider.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/PlaySliderCell.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/PlaySliderLoopKnob.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/PluginInputManager.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |
| iina/PluginOverlayView.swift | Plugin + UI | High | Phase 3 | Plugin UI contracts depend on AppKit; redesign plugin surface for visionOS. |
| iina/PluginSidebarView.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |
| iina/PluginStandaloneWindow.swift | Plugin + UI | High | Phase 3 | Plugin UI contracts depend on AppKit; redesign plugin surface for visionOS. |
| iina/PluginViewController.swift | Plugin + UI | High | Phase 3 | Plugin UI contracts depend on AppKit; redesign plugin surface for visionOS. |
| iina/PowerSource.swift | Cocoa Utility | Medium | Phase 1 | Audit for hidden AppKit assumptions and replace selectively. |
| iina/PrefAdvancedViewController.swift | Playback + AppKit UI | High | Phase 2 | Split playback orchestration from NSWindow/NSView lifecycle. |
| iina/PrefCodecViewController.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/PrefControlViewController.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/Preference.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |
| iina/PreferenceViewController.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/PreferenceWindowController.swift | Plugin + UI | Very High | Phase 0 | Entry-point/windowing architecture file; requires new visionOS app model. |
| iina/PrefGeneralViewController.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/PrefKeyBindingViewController.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/PrefNetworkViewController.swift | Plugin + UI | High | Phase 3 | Plugin UI contracts depend on AppKit; redesign plugin surface for visionOS. |
| iina/PrefOSCToolbarDraggingItemViewController.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/PrefOSCToolbarSettingsSheetController.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/PrefPluginPermissionListView.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |
| iina/PrefPluginPermissionView.swift | Plugin + UI | High | Phase 3 | Plugin UI contracts depend on AppKit; redesign plugin surface for visionOS. |
| iina/PrefPluginViewController.swift | Plugin + UI | High | Phase 3 | Plugin UI contracts depend on AppKit; redesign plugin surface for visionOS. |
| iina/PrefSubViewController.swift | Plugin + UI | High | Phase 3 | Plugin UI contracts depend on AppKit; redesign plugin surface for visionOS. |
| iina/PrefUIViewController.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/PrefUtilsViewController.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/QuickSettingViewController.swift | Playback + AppKit UI | High | Phase 2 | Split playback orchestration from NSWindow/NSView lifecycle. |
| iina/ReadWriteAtomic.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/ReadWriteLock.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/Regex.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/RoundedColorWell.swift | Cocoa Utility | Medium | Phase 1 | Audit for hidden AppKit assumptions and replace selectively. |
| iina/RoundedTextFieldCell.swift | Cocoa Utility | Medium | Phase 1 | Audit for hidden AppKit assumptions and replace selectively. |
| iina/SavedFilter.swift | Cocoa Utility | Medium | Phase 1 | Audit for hidden AppKit assumptions and replace selectively. |
| iina/ScreenshootOSDView.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/ScrollingTextField.swift | Cocoa Utility | Medium | Phase 1 | Audit for hidden AppKit assumptions and replace selectively. |
| iina/ShooterSubtitle.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/SidebarTabView.swift | Plugin + UI | High | Phase 3 | Plugin UI contracts depend on AppKit; redesign plugin surface for visionOS. |
| iina/SleepPreventer.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/StreamReader.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/StringEncodingName.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/SubChooseViewController.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/Sysctl.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/ThumbnailCache.swift | Cocoa Utility | Medium | Phase 1 | Audit for hidden AppKit assumptions and replace selectively. |
| iina/ThumbnailPeekView.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/TimeLabelOverflowedStackView.swift | Cocoa Utility | Medium | Phase 1 | Audit for hidden AppKit assumptions and replace selectively. |
| iina/TimeLabelOverflowedView.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/TouchBarSettings.swift | Core/Utility | Very High | Drop/Rewrite | Touch Bar APIs are macOS-only; remove feature or map to visionOS controls. |
| iina/TouchBarSupport.swift | AppKit UI | Very High | Drop/Rewrite | Touch Bar APIs are macOS-only; remove feature or map to visionOS controls. |
| iina/Utility.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/VideoPIPViewController.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/VideoTime.swift | Core/Utility | Low | Phase 1 | Likely reusable with minor API surface changes. |
| iina/VideoView.swift | AppKit UI | High | Phase 2 | Reimplement in SwiftUI/RealityKit-compatible interface layers. |
| iina/ViewLayer.swift | Playback Core | Medium | Phase 1 | Reuse logic; add visionOS-safe rendering/input adapters. |
| iina/VolumeSlider.swift | Cocoa Utility | Medium | Phase 1 | Audit for hidden AppKit assumptions and replace selectively. |
| iina/VolumeSliderCell.swift | Cocoa Utility | Medium | Phase 1 | Audit for hidden AppKit assumptions and replace selectively. |
| iina/WebSocketServer.swift | Plugin/Core | Medium | Phase 3 | Keep scripting core; replace host integration points. |

## Highest Priority Files (Immediate Architecture Decisions)

- iina/MainWindowController.swift (UI ref hits: 43)
- iina/MenuController.swift (UI ref hits: 36)
- iina/PlaylistViewController.swift (UI ref hits: 20)
- iina/PreferenceWindowController.swift (UI ref hits: 17)
- iina/PrefPluginViewController.swift (UI ref hits: 16)
- iina/Utility.swift (UI ref hits: 15)
- iina/AppDelegate.swift (UI ref hits: 12)
- iina/QuickSettingViewController.swift (UI ref hits: 11)
- iina/PrefUIViewController.swift (UI ref hits: 11)
- iina/PrefSubViewController.swift (UI ref hits: 11)
- iina/PrefCodecViewController.swift (UI ref hits: 11)
- iina/MiniPlayerWindowController.swift (UI ref hits: 11)
- iina/FilterWindowController.swift (UI ref hits: 11)
- iina/PrefOSCToolbarSettingsSheetController.swift (UI ref hits: 10)
- iina/Extensions.swift (UI ref hits: 10)
- iina/PrefUtilsViewController.swift (UI ref hits: 9)
- iina/PlayerCore.swift (UI ref hits: 9)
- iina/TouchBarSupport.swift (UI ref hits: 8)
- iina/InitialWindowController.swift (UI ref hits: 8)
- iina/PrefAdvancedViewController.swift (UI ref hits: 7)

## Critical Gaps To Resolve Before Coding
- Replace macOS window lifecycle with visionOS scene model.
- Decide rendering path for mpv output in visionOS (Metal texture bridge vs alternate player core).
- Replace Sparkle updater flow with TestFlight/App Store-compatible distribution.
- Define plugin policy for visionOS sandbox/security model.
