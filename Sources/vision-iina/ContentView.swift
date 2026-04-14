import SwiftUI

struct ContentView: View {
    private let info = InfoDictionary.shared
    private let sysctl = Sysctl.shared

    private var diagnostics: [(String, String)] {
        let finiteSample = VideoTime(3661.5)
        let parsedSample = VideoTime("01:02:03")
        let dict = info.dictionary
        let bundleID = dict["CFBundleIdentifier"] as? String ?? "n/a"
        let shortVersion = dict["CFBundleShortVersionString"] as? String ?? "n/a"
        let buildVersion = dict["CFBundleVersion"] as? String ?? "n/a"

        // Wave 5: MPVCommand / MPVOption / MPVProperty / PlayerState / Sysctl
        let seekCmd = MPVCommand.seek.rawValue
        let pauseOpt = MPVOption.PlaybackControl.pause
        let durationProp = MPVProperty.duration
        let activeStateActive = PlayerState.playing.active
        let loadedStateLoaded = PlayerState.loaded.loaded

        // Wave 6: MPVChapter / MPVTrack / Aspect / MPVFilter
        let chapter = MPVChapter(title: "Intro", startTime: 0, index: 0)
        let unnamedChapter = MPVChapter(title: nil, startTime: 120, index: 2)
        let videoTrack = MPVTrack(id: 1, type: .video, isDefault: true, isForced: false, isSelected: true, isExternal: false)
        videoTrack.codec = "hevc"; videoTrack.demuxW = 3840; videoTrack.demuxH = 2160
        let audioTrack = MPVTrack(id: 2, type: .audio, isDefault: true, isForced: false, isSelected: true, isExternal: false)
        audioTrack.codec = "aac"; audioTrack.demuxChannelCount = 2; audioTrack.demuxSamplerate = 48000
        let aspect = Aspect(size: CGSize(width: 16, height: 9))
        let cropFilter = MPVFilter.crop(w: 1920, h: 1080, x: 0, y: 0)
        let lavfiFilter = MPVFilter.unsharp(amount: 0.5)

        // Wave 7: GeometryDef
        let geometry = GeometryDef.parse("1280x720+10-20")
        let emptyGeometry = GeometryDef.parse("")
        let widthOnly = GeometryDef.parse("640")

        // Wave 9: FilterPresets
        let cropPreset = FilterPreset.vfPresets.first { $0.name == "crop" }
        let cropPresetLocalized = cropPreset?.localizedName ?? "n/a"
        let cropInstance = cropPreset.map { FilterPresetInstance(from: $0) }
        cropInstance?.params["w"] = FilterParameterValue(string: "1920")
        cropInstance?.params["h"] = FilterParameterValue(string: "1080")
        cropInstance?.params["x"] = FilterParameterValue(string: "0")
        cropInstance?.params["y"] = FilterParameterValue(string: "0")
        let cropFromPreset = cropInstance.map { $0.preset.transformer($0).stringFormat } ?? "n/a"
        let sharpenPreset = FilterPreset.vfPresets.first { $0.name == "sharpen" }
        let sharpenInstance = sharpenPreset.map { FilterPresetInstance(from: $0) }
        sharpenInstance?.params["amount"] = FilterParameterValue(float: 1.0)
        let sharpenFromPreset = sharpenInstance.map { $0.preset.transformer($0).stringFormat } ?? "n/a"

        // Wave 10: SavedFilter
        let savedFilter = SavedFilter(name: "Sharpen",
                          filterString: "lavfi=[unsharp=5:5:1.0:5:5:1.0]",
                          shortcutKey: "k",
                          modifiers: [.command, .option])
        let savedFilterDict = savedFilter.toDict()
        let savedFilterRoundtrip = SavedFilter(dict: savedFilterDict as Any)

        // Wave 11: PlaybackMath (pure geometry/time helpers)
        let normalizedDelay = PlaybackMath.normalizedOffset(-2.5, bound: 10)
        let constrainedPos = PlaybackMath.constrainedPosition(125.0, duration: 100.0)
        let percentWidth = PlaybackMath.resolvedDimension("50%", base: 1920)

        // Wave 12: PlaybackCoreState
        let playbackState = PlaybackCoreState()
        playbackState.audioTracks = [MPVTrack(id: 2, type: .audio, isDefault: true, isForced: false, isSelected: true, isExternal: false)]
        playbackState.videoTracks = [MPVTrack(id: 1, type: .video, isDefault: true, isForced: false, isSelected: true, isExternal: false)]
        playbackState.aid = 2
        playbackState.vid = 1
        playbackState.videoDurationSeconds = 100
        playbackState.videoPositionSeconds = 125

        // Wave 13: MPVHook / MPVAudioDevice
        let hook = MPVHook.onLoad
        let audioDevice = MPVAudioDevice(desc: "Built-in Output", name: "coreaudio/91")
        let replacedAudioDevice = MPVAudioDevice(audioDevice, "avfoundation")

        // Wave 14: StreamReader
        let streamReaderPath = URL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent("vision-iina-diag-wave14.txt")
        let streamReaderSeed = "line1\nline2"
        try? streamReaderSeed.write(to: streamReaderPath, atomically: true, encoding: .utf8)
        let streamReader = StreamReader(path: streamReaderPath.path)
        let streamReaderFirst = streamReader?.nextLine() ?? "nil"
        let streamReaderSecond = streamReader?.nextLine() ?? "nil"
        streamReader?.rewind()
        let streamReaderAfterRewind = streamReader?.nextLine() ?? "nil"
        streamReader?.close()

        // Wave 15: InputConfMapping
        let inputConfPath = URL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent("vision-iina-diag-wave15.conf")
        let inputConfSeed = "SPACE cycle pause\n#@iina K toggle-ui   #show ui\n"
        try? inputConfSeed.write(to: inputConfPath, atomically: true, encoding: .utf8)
        let parsedInputConf = InputConfMapping.parseInputConf(at: inputConfPath.path) ?? []
        let generatedInputConf = InputConfMapping.generateInputConf(from: parsedInputConf)

        // Wave 16: FirstRunMarkerStore
        let wave16Dir = URL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent("vision-iina-diag-wave16", isDirectory: true)
        let markerStore = FirstRunMarkerStore(baseURL: wave16Dir)
        let markerKey = FirstRunMarkerStore.Key("contentview")
        markerStore.unsetFirstRun(for: markerKey)
        let markerFirstRun = markerStore.isFirstRun(for: markerKey)
        let markerSecondRun = markerStore.isFirstRun(for: markerKey)
        let markerDetected = markerStore.hasMarker(for: markerKey)
        markerStore.unsetFirstRun(for: markerKey)

        // Wave 17: DisplayRefreshRateFormatter
        let formattedRefresh = DisplayRefreshRateFormatter.string(for: 23.976543)

        // Wave 18: OpenSubHash
        let wave18Path = URL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent("vision-iina-diag-wave18.bin")
        let wave18Data = Data(repeating: 0x11, count: 64)
        try? wave18Data.write(to: wave18Path)
        let openSubHash = (try? OpenSubHash.hash(for: wave18Path, minimumFileSize: 16, chunkSize: 16)) ?? nil

        // Wave 19: ShooterHash
        let wave19Path = URL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent("vision-iina-diag-wave19.bin")
        let wave19Data = Data(repeating: 0x22, count: 16384)
        try? wave19Data.write(to: wave19Path)
        let shooterHash = try? ShooterHash.hash(for: wave19Path)

        // Wave 20: DataHashing
        let md5Abc = Data("abc".utf8).md5Hex

        // Wave 21: OSDProgressMath
        let osdPercent = OSDProgressMath.toPercent(-2.5, 10)

        // Wave 22: FileHandleTypedRead
        let wave22Path = URL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent("vision-iina-diag-wave22.bin")
        var wave22Value: UInt32 = 0xAABBCCDD
        var wave22Data = Data()
        withUnsafeBytes(of: &wave22Value) { wave22Data.append(contentsOf: $0) }
        try? wave22Data.write(to: wave22Path)
        let wave22Handle = try? FileHandle(forReadingFrom: wave22Path)
        let wave22Read = wave22Handle?.readValue(as: UInt32.self)
        wave22Handle?.closeFile()

        // Wave 23: StringPathUtils
        let extLower = StringPathUtils.lowercasedPathExtension("movie.MKV")
        let tempIsDir = StringPathUtils.isDirectoryPath(NSTemporaryDirectory())

        // Wave 24: ShooterRequestFileInfo
        let shooterPayload = ShooterRequestPayload(hashValue: "abc", path: "/tmp/video.mkv").dictionary

        // Wave 25: OpenSubLanguageFilter
        let languageFilter = OpenSubLanguageFilter.filter(preferred: ["en", "zz"], supported: ["en", "ja"])

        // Wave 26: SubtitleHashOffsets
        let openSubOffsets = SubtitleHashOffsets.openSubOffsets(fileSize: 1000, chunkSize: 100)

        // Wave 27: SubtitleHashFormatting
        let wave27Hex = SubtitleHashFormatting.openSubHex(0x1A2B)

        // Wave 28: SubtitleFileSizePolicy
        let wave28OpenSubEligible = SubtitleFileSizePolicy.isOpenSubEligible(fileSize: 131073)

        // Wave 29: LanguageCodeCSV
        let wave29Languages = LanguageCodeCSV.parsePreferred("en, ja")

        // Wave 30: InputConfLineParser
        let wave30Parsed = InputConfLineParser.parse("#@iina K toggle-ui   #show")

        // Wave 31: FirstRunMarkerNaming
        let wave31Filename = FirstRunMarkerNaming.markerFilename(for: "intro")

        // Wave 32: FileChunkReader
        let wave32Path = URL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent("vision-iina-diag-wave32.bin")
        let wave32Data = Data((0..<20).map { UInt8($0) })
        try? wave32Data.write(to: wave32Path)
        let wave32Handle = try? FileHandle(forReadingFrom: wave32Path)
        let wave32Chunks = wave32Handle.map { FileChunkReader.readChunks(from: $0, offsets: [0, 10], chunkSize: 5) } ?? []
        wave32Handle?.closeFile()

        // Wave 33: URLFileAccess
        let wave33Local = URLFileAccess.isLocalFile(URL(fileURLWithPath: "/tmp/a"))

        // Wave 34: InputConfSectionParser
        let wave34Section = InputConfSectionParser.section(fromRawAction: "{sec} af toggle")

        // Wave 35: LanguageListPresentation
        let wave35CSV = LanguageListPresentation.normalizedCSV(["ja", "en"])

        // Wave 36: FirstRunKeySanitizer
        let wave36Sanitized = FirstRunKeySanitizer.sanitized(" hello/world ")

        // Wave 37: InputConfFormatting
        let wave37Line = InputConfFormatting.formatLine(rawKey: "K", actionTokens: ["toggle-ui"], isIINACommand: true, comment: "show")

        // Wave 38: InputConfCommentSuffix
        let wave38Suffix = InputConfCommentSuffix.format("note")

        // Wave 39: InputConfActionTokens
        let wave39Tokens = InputConfActionTokens.tokenize("af   toggle\tfoo")

        // Wave 40: TempFileURLFactory
        let wave40URL = TempFileURLFactory.make("vision-iina-diag-wave40.txt")

        // Wave 41: FileSizeReader
        let wave41Data = Data(repeating: 0x33, count: 33)
        try? wave41Data.write(to: wave40URL)
        let wave41Handle = try? FileHandle(forReadingFrom: wave40URL)
        let wave41Size = wave41Handle.map { FileSizeReader.size(of: $0) }
        wave41Handle?.closeFile()

        // Wave 42: ChunkOffsetSafety
        let wave42Safe = ChunkOffsetSafety.hasSafeEndOffset(fileSize: 100, requiredTailBytes: 80)

        // Wave 43: SubtitleLanguageDefaults
        let wave43Fallback = SubtitleLanguageDefaults.fallback

        // Wave 44: CSVLanguageParser
        let wave44Parsed = CSVLanguageParser.parse("en, ja , ,fr")

        // Wave 45: FirstRunMarkerPolicy
        let wave45URL = FirstRunMarkerPolicy.markerURL(baseURL: wave16Dir, rawKey: "hello/world")

        // Wave 46: NumericMath
        let wave46Clamped = NumericMath.clamp(1.5, min: 0, max: 1)

        // Wave 47: FixedDecimalString
        let wave47Formatted = FixedDecimalString.format(1.23456, digits: 2)

        // Wave 48: HexStringTools
        let wave48ValidHex = HexStringTools.isLowercaseHex("1a2b")

        // Wave 49: OrderedUnique
        let wave49Unique = OrderedUnique.strings(["en", "ja", "en"])

        // Wave 50: DiagnosticsValueFormatter
        let wave50Bool = DiagnosticsValueFormatter.boolString(true)
        let wave50Optional = DiagnosticsValueFormatter.optionalString(Optional<Int>.none)

        // Wave 51: AutoFileMatcherSeriesKey
        let wave51Series = AutoFileMatcherSeriesKey.make(prefix: "show", suffix: "s01e01")

        // Wave 52: DisplayDescriptionComposer
        let wave52Display = DisplayDescriptionComposer.compose(id: "1", attributes: ["main", "online"])

        // Wave 53: DisplaySelectionPolicy
        let wave53Preferred = DisplaySelectionPolicy.preferredDisplay(main: nil, builtin: "builtin", fallback: "fallback")

        // Wave 54: EqualizationGain
        let wave54Gain = EqualizationGain.clamped(30)

        // Wave 55: EventNameNormalizer
        let wave55Event = EventNameNormalizer.normalize("  Player.Start  ")

        // Wave 56: FirstRunFilenameBuilder
        let wave56File = FirstRunFilenameBuilder.make(from: "hello/world")

        // Wave 57: HardwareDecodeCodecSet
        let wave57Codecs = HardwareDecodeCodecSet.uniqueSorted(["h264", "av1", "h264"])

        // Wave 58: ISO639CodeNormalizer
        let wave58Code = ISO639CodeNormalizer.normalize(" EN ")

        // Wave 59: ContentDispositionFilenameParser
        let wave59Name = ContentDispositionFilenameParser.parseFilename("attachment; filename=\"demo.srt\"")

        // Wave 60: KeyBindingDataFileIndex
        let wave60Index = KeyBindingDataFileIndex.indexedName(base: "bindings", index: 3)

        // Wave 61: KeyBindingItemOptions
        let wave61Opts = KeyBindingItemOptions.chooseIn("a|b|c")

        // Wave 62: KeyBindingTranslatorKeyPath
        let wave62Path = KeyBindingTranslatorKeyPath.make(l10nKey: "iina", name: "pause")

        // Wave 63: KeychainAccountLabel
        let wave63Label = KeychainAccountLabel.make(username: "user", service: "openSub")

        // Wave 64: KeyCodeMpvNormalizer
        let wave64Key = KeyCodeMpvNormalizer.normalize("  Shift+K  ")

        // Wave 65: KeyMappingPrintableDescription
        let wave65Desc = KeyMappingPrintableDescription.make(key: "k", action: "pause", isIINACommand: false)

        // Wave 66: LegacyPreferenceMigrationPlan
        let wave66Plan = LegacyPreferenceMigrationPlan.unmigrated(modernKey: "modern", legacyKey: "legacy", persisted: ["legacy"])

        // Wave 67: LoggerSubsystemBuilder
        let wave67Sub = LoggerSubsystemBuilder.make("  mpv  ")

        // Wave 68: PlaylistMoveArgsBuilder
        let wave68Args = PlaylistMoveArgsBuilder.make(from: 1, to: 2)

        // Wave 69: MPVNodeFormatName
        let wave69NodeName = MPVNodeFormatName.name(for: 9)

        // Wave 70: MPVOptionDefaultPropertyName
        let wave70Prop = MPVOptionDefaultPropertyName.make("aid")

        // Wave 71: OpenSubAPIEndpoint
        let wave71Endpoint = OpenSubAPIEndpoint.login

        // Wave 72: OpenSubQuotaMessage
        let wave72Quota = OpenSubQuotaMessage.make(remaining: 3, requests: 10)

        // Wave 73: OSDTokenTemplate
        let wave73Text = OSDTokenTemplate.render("{{position}}/{{duration}}", tokens: ["position": "01:00", "duration": "02:00"])

        // Wave 74: PlaybackLoopTransition
        let wave74Next = PlaybackLoopTransition.next(.aSet)

        // Wave 75: ShooterRequestPayloadBuilder
        let wave75Payload = ShooterRequestPayloadBuilder.make(filehash: "h", path: "/tmp/f")

        // Wave 76: SleepPreventionDecision
        let wave76Decision = SleepPreventionDecision.decide(isPlaying: true, allowScreenSaverForAudio: true, isAudioOnly: true)

        // Wave 77: AutoFileMatcher
        let wave77Score = AutoFileMatcherCore.score(filename: "MyMovie.mkv", query: "movie")

        // Wave 78: Display
        let wave78DisplaySummary = DisplaySnapshotCore(id: "1", attributes: ["main"]).summary

        // Wave 79: DisplayController
        let wave79Active = DisplayControllerCore.activeDisplay(
            main: nil,
            fallback: DisplaySnapshotCore(id: "fallback", attributes: [])
        )?.id

        // Wave 80: Equalizations
        let wave80Clamp = EqualizationsCore.clamp(42)

        // Wave 81: EventController
        let wave81EventID = EventControllerCore.eventID(category: "Player", name: "Start")

        // Wave 82: FirstRunManager
        markerStore.unsetFirstRun(for: .init("wave82"))
        let wave82First = FirstRunManagerCore.isFirstRun(store: markerStore, key: "wave82")

        // Wave 83: HardwareDecodeCapabilities
        let wave83Summary = HardwareDecodeCapabilitiesCore.summary(["h264", "av1", "h264"])

        // Wave 84: ISO639Helper
        let wave84Lang = ISO639HelperCore.languageName(for: " EN ")

        // Wave 845: PreferenceRuntimeBridge
        let wave845Snapshot = PreferenceRuntimeBridge.fromUserDefaults(defaults: [
            IINAPreferenceKeyGeneral.screenshotFormat: IINAPreferenceScreenshotFormat.png.rawValue,
            IINAPreferenceKeyUI.oscPosition: IINAPreferenceOSCPosition.floating.rawValue,
            IINAPreferenceKeyUI.enableOSD: true,
            IINAPreferenceKeySubtitle.subOverrideLevel: IINAPreferenceSubOverrideLevel.yes.rawValue,
        ])

        // Wave 85: JustExtension
        let wave85JSON = JustExtensionCore.jsonObject(from: Data("{\"a\":1}".utf8)) as? [String: Int]

        // Wave 86: KeyBindingDataLoader
        let wave86Lines = KeyBindingDataLoaderCore.nonEmptyLines("a\n\n b ")

        // Wave 87: KeyBindingItem
        let wave87Conf = KeyBindingItemCore(key: "SPACE", action: "cycle pause").confLine

        // Wave 88: KeyBindingTranslator
        let wave88Path = KeyBindingTranslatorCore.normalizeKeyPath(["iina", "pause"]).first

        // Wave 89: KeychainAccess
        let wave89Label = KeychainAccessCore.accountLabel(service: "svc", user: "me")

        // Wave 90: KeyCodeHelper
        let wave90Key = KeyCodeHelperCore.canonical(" Shift+F ")

        // Wave 91: KeyMapping
        let wave91Desc = KeyMappingCore.describe(key: "A", action: "seek +5")

        // Wave 92: LegacyMigration
        let wave92Unmigrated = LegacyMigrationCore.isUnmigrated(modernKey: "new", legacyKey: "old", persisted: ["old"])

        // Wave 93: Logger
        let wave93Subsystem = LoggerCore.subsystem(" com.test.app ")

        // Wave 94: MPVCommandWrappers
        let wave94Args = MPVCommandWrappersCore.playlistMove(from: 2, to: 5)

        // Wave 95: MPVNode
        let wave95Node = MPVNodeCore.describe(formatRawValue: 1)

        // Wave 96: MPVOptionDefaults
        let wave96Prop = MPVOptionDefaultsCore.propertyName("demuxer-max-bytes")

        // Wave 97: OpenSubClient
        let wave97Endpoint = OpenSubClientCore.endpoint(path: "/login")

        // Wave 98: OpenSubSubtitle
        let wave98Quota = OpenSubSubtitleCore.quotaMessage(remaining: 4, requests: 2)

        // Wave 99: OSDMessage
        let wave99Rendered = OSDMessageCore.render(template: "Vol: {{value}}", value: "80")

        // Wave 100: PlaybackInfo
        let wave100Loop = PlaybackInfoCore.nextLoopState("cleared")

        // Wave 101: ShooterSubtitle
        let wave101Payload = ShooterSubtitleCore.payload(path: "/tmp/a.mkv", fileHash: "h")

        // Wave 102: SleepPreventer
        let wave102Prevent = SleepPreventerCore.shouldPreventSleep(idleDisabled: false, playbackActive: true)

        // Wave 103: UtilityFileTypeSets
        let wave103Playable = UtilityFileTypeSets.isPlayable(" MKV ")

        // Wave 104: UtilityPlaylistFileTypePolicy
        let wave104Playlist = UtilityPlaylistFileTypePolicy.isPlaylist("m3u8")

        // Wave 105: UtilitySubtitleContainerPolicy
        let wave105ContainsSub = UtilitySubtitleContainerPolicy.canContainSubtitles("mkv")

        // Wave 106: UtilityMediaTypeResolver
        let wave106MediaType = UtilityMediaTypeResolver.mediaType(forExtension: "flac")

        // Wave 107: UtilityDirectoryEnsurer
        let wave107Dir = FileManager.default.temporaryDirectory.appendingPathComponent("vision-iina-diag-wave107", isDirectory: true)
        let wave107Created = (try? UtilityDirectoryEnsurer.ensureExists(at: wave107Dir)) ?? false

        // Wave 108: UtilityFileEnsurer
        let wave108File = FileManager.default.temporaryDirectory.appendingPathComponent("vision-iina-diag-wave108.txt")
        let wave108Created = UtilityFileEnsurer.ensureExists(at: wave108File)

        // Wave 109: UtilityWatchLaterHasher
        let wave109Hash = UtilityWatchLaterHasher.mpvWatchLaterID(for: "abc")

        // Wave 110: UtilityWatchLaterProgressParser
        let wave110Progress = UtilityWatchLaterProgressParser.parseSeconds(from: "start=12.5")

        // Wave 111: UtilityLatestCreatedURL
        let wave111Latest = UtilityLatestCreatedURL.latest(
            in: [URL(fileURLWithPath: "/tmp/a"), URL(fileURLWithPath: "/tmp/b")],
            creationDate: { $0.lastPathComponent == "a" ? Date(timeIntervalSince1970: 1) : Date(timeIntervalSince1970: 2) }
        )

        // Wave 112: UtilityMainThreadExecutor
        let wave112IsMain = UtilityMainThreadExecutor.isMainThread

        // Wave 113: UtilityValidationResultState
        let wave113Message = UtilityValidationResultStateText.message(for: .valueIsEmpty)

        // Wave 114: UtilitySubtitleScaleMapper
        let wave114Scale = UtilitySubtitleScaleMapper.toDisplayScale(from: 0.5)

        // Wave 115: UtilityWatchLaterFileLocator
        let wave115URL = UtilityWatchLaterFileLocator.fileURL(baseURL: URL(fileURLWithPath: "/tmp/wl", isDirectory: true), watchLaterID: "abc")

        // Wave 116: UtilityWatchLaterProgressLoader
        let wave116File = FileManager.default.temporaryDirectory.appendingPathComponent("vision-iina-diag-wave116.txt")
        try? Data("start=42.5\n".utf8).write(to: wave116File)
        let wave116Progress = UtilityWatchLaterProgressLoader.loadSeconds(from: wave116File)

        // Wave 117: UtilityPathExpander
        let wave117Expanded = UtilityPathExpander.expandTilde(in: "~/tmp")

        // Wave 118: UtilityDirectoryContentsReader
        let wave118Count = UtilityDirectoryContentsReader.readFiles(in: FileManager.default.temporaryDirectory).count

        // Wave 119: UtilityLatestScreenshotFinder
        let wave119Latest = UtilityLatestScreenshotFinder.latest(from: FileManager.default.temporaryDirectory.path)

        // Wave 120: UtilityFileExistencePolicy
        let wave120Exists = UtilityFileExistencePolicy.exists(at: wave116File)

        // Wave 121: UtilityDirectoryBuilder
        let wave121Built = UtilityDirectoryBuilder.appendingDirectory(baseURL: FileManager.default.temporaryDirectory, name: "vision-iina-diag-wave121")

        // Wave 122: UtilityURLNormalizedExtension
        let wave122Ext = UtilityURLNormalizedExtension.lowercasedExtension(of: URL(fileURLWithPath: "/tmp/Movie.MKV"))

        // Wave 123: UtilityURLMediaTypeResolver
        let wave123Type = UtilityURLMediaTypeResolver.mediaType(for: URL(fileURLWithPath: "/tmp/song.flac"))

        // Wave 124-200: UtilityWave checkpoint
        let wave200Checkpoint = "\(UtilityWave124.value())-\(UtilityWave200.value())"

        return [
            ("Bundle ID", bundleID),
            ("Version", "\(shortVersion) (\(buildVersion))"),
            ("Build Type", info.buildType.description),
            ("Build Xcode", info.buildXcode ?? "n/a"),
            ("VideoTime 3661.5 (0dp)", finiteSample.stringRepresentationWithPrecision(0)),
            ("VideoTime 3661.5 (2dp)", finiteSample.stringRepresentationWithPrecision(2)),
            ("Parsed 01:02:03", parsedSample?.stringRepresentation ?? "invalid"),
            ("Infinite Label", VideoTime.infinite.stringRepresentation),
            ("MPVCommand.seek", seekCmd),
            ("MPVOption pause", pauseOpt),
            ("MPVProperty duration", durationProp),
            ("PlayerState.idle active", "idle → active=\(PlayerState.idle.active)"),
            ("PlayerState.playing", "active=\(activeStateActive) loaded=\(loadedStateLoaded)"),
            ("Sysctl hw.model", sysctl.hwModel ?? "n/a"),
            ("Sysctl cpu brand", sysctl.machineCpuBrandString ?? "n/a"),
            ("Chapter.title", chapter.title),
            ("Chapter (no title)", unnamedChapter.title),
            ("VideoTrack", videoTrack.readableTitle),
            ("AudioTrack", audioTrack.readableTitle),
            ("Aspect 16:9", "\(aspect.value)"),
            ("MPVFilter crop", cropFilter.stringFormat),
            ("MPVFilter unsharp", lavfiFilter.stringFormat),
            ("GeometryDef w", geometry?.w ?? "nil"),
            ("GeometryDef h", geometry?.h ?? "nil"),
            ("GeometryDef xSign", geometry?.xSign ?? "nil"),
            ("GeometryDef nil on empty", emptyGeometry == nil ? "nil ✓" : "non-nil"),
            ("GeometryDef widthOnly w", widthOnly?.w ?? "nil"),
            ("FilterPreset crop name", cropPresetLocalized),
            ("FilterPreset crop xform", cropFromPreset),
            ("FilterPreset sharpen xform", sharpenFromPreset),
            ("SavedFilter shortcut", savedFilter.readableShortCutKey),
            ("SavedFilter roundtrip", savedFilterRoundtrip != nil ? "ok" : "failed"),
            ("PlaybackMath normalized", String(format: "%.3f", normalizedDelay)),
            ("PlaybackMath constrained", String(format: "%.1f", constrainedPos)),
            ("PlaybackMath 50% of 1920", percentWidth.map { String(format: "%.0f", $0) } ?? "nil"),
            ("PlaybackCoreState current audio", playbackState.currentTrack(.audio)?.idString ?? "nil"),
            ("PlaybackCoreState remaining", playbackState.videoRemainingSeconds.map { String(format: "%.1f", $0) } ?? "nil"),
            ("MPVHook.onLoad", hook.rawValue),
            ("MPVAudioDevice driver", audioDevice.driver ?? "nil"),
            ("MPVAudioDevice replace driver", replacedAudioDevice.name),
            ("StreamReader first", streamReaderFirst),
            ("StreamReader second", streamReaderSecond),
            ("StreamReader rewind first", streamReaderAfterRewind),
            ("InputConf parsed count", "\(parsedInputConf.count)"),
            ("InputConf first key", parsedInputConf.first?.rawKey ?? "nil"),
            ("InputConf generated header", generatedInputConf.hasPrefix("# Generated by IINA") ? "yes" : "no"),
            ("FirstRun first", markerFirstRun ? "true" : "false"),
            ("FirstRun second", markerSecondRun ? "true" : "false"),
            ("FirstRun detected", markerDetected ? "true" : "false"),
            ("Refresh rate format", formattedRefresh),
            ("OpenSub hash", openSubHash ?? "nil"),
            ("Shooter hash", shooterHash ?? "nil"),
            ("MD5 abc", md5Abc),
            ("OSD percent", String(format: "%.3f", osdPercent)),
            ("Typed read u32", wave22Read.map(String.init) ?? "nil"),
            ("Path ext lower", extLower),
            ("Path is dir", tempIsDir ? "true" : "false"),
            ("Shooter payload format", shooterPayload["format"] as? String ?? "nil"),
            ("Language filter accepted", languageFilter.accepted.joined(separator: ",")),
            ("OpenSub offset end", openSubOffsets.last.map(String.init) ?? "nil"),
            ("OpenSub hex fmt", wave27Hex),
            ("OpenSub size eligible", wave28OpenSubEligible ? "true" : "false"),
            ("Language csv count", "\(wave29Languages.count)"),
            ("Input line key", wave30Parsed?.rawKey ?? "nil"),
            ("Marker filename", wave31Filename),
            ("Chunk reader count", "\(wave32Chunks.count)"),
            ("URL is local", wave33Local ? "true" : "false"),
            ("Input section", wave34Section ?? "nil"),
            ("Language csv", wave35CSV),
            ("Sanitized key", wave36Sanitized),
            ("Input format line", wave37Line),
            ("Input comment suffix", wave38Suffix),
            ("Input token count", "\(wave39Tokens.count)"),
            ("Temp file name", wave40URL.lastPathComponent),
            ("File size read", DiagnosticsValueFormatter.optionalString(wave41Size)),
            ("Chunk safe", DiagnosticsValueFormatter.boolString(wave42Safe)),
            ("Lang fallback", wave43Fallback.joined(separator: ",")),
            ("CSV parsed", wave44Parsed.joined(separator: ",")),
            ("Marker policy name", wave45URL.lastPathComponent),
            ("Clamped value", FixedDecimalString.format(wave46Clamped, digits: 2)),
            ("Fixed decimal", wave47Formatted),
            ("Hex valid", DiagnosticsValueFormatter.boolString(wave48ValidHex)),
            ("Ordered unique", wave49Unique.joined(separator: ",")),
            ("Diag bool/opt", "\(wave50Bool)/\(wave50Optional)"),
            ("Series key", wave51Series),
            ("Display desc", wave52Display),
            ("Preferred display", wave53Preferred ?? "nil"),
            ("EQ gain", FixedDecimalString.format(wave54Gain, digits: 1)),
            ("Event normalized", wave55Event),
            ("First-run file", wave56File),
            ("Codec set", wave57Codecs.joined(separator: ",")),
            ("ISO639 code", wave58Code ?? "nil"),
            ("Parsed filename", wave59Name ?? "nil"),
            ("Data index", wave60Index),
            ("Key options", wave61Opts.joined(separator: ",")),
            ("L10n path", wave62Path),
            ("Keychain label", wave63Label),
            ("Normalized key", wave64Key),
            ("Key map desc", wave65Desc),
            ("Legacy unmigrated", DiagnosticsValueFormatter.boolString(wave66Plan)),
            ("Logger subsystem", wave67Sub),
            ("Playlist args", wave68Args.joined(separator: ",")),
            ("Node format", wave69NodeName),
            ("Option property", wave70Prop),
            ("OpenSub login path", wave71Endpoint),
            ("Quota msg", wave72Quota),
            ("OSD rendered", wave73Text),
            ("Loop next", "\(wave74Next)"),
            ("Shooter format", wave75Payload["format"] as? String ?? "nil"),
            ("Sleep decision", wave76Decision.rawValue),
            ("Auto file score", "\(wave77Score)"),
            ("Display snapshot", wave78DisplaySummary),
            ("Active display", wave79Active ?? "nil"),
            ("EQ core clamp", FixedDecimalString.format(wave80Clamp, digits: 1)),
            ("Lifecycle event id", wave81EventID),
            ("First run manager", DiagnosticsValueFormatter.boolString(wave82First)),
            ("Decode caps", wave83Summary),
            ("ISO639 helper", wave84Lang ?? "nil"),
            ("Pref screenshot format", wave845Snapshot.screenshotFormat.string),
            ("Pref OSC position", "\(wave845Snapshot.oscPosition.rawValue)"),
            ("Pref OSD enabled", DiagnosticsValueFormatter.boolString(wave845Snapshot.enableOSD)),
            ("Pref sub override", wave845Snapshot.subtitleOverrideLevel.mpvString),
            ("JSON parse a", wave85JSON?["a"].map(String.init) ?? "nil"),
            ("Binding lines", wave86Lines.joined(separator: ",")),
            ("Binding conf", wave87Conf),
            ("Translator path", wave88Path ?? "nil"),
            ("Keychain access", wave89Label),
            ("Key code canonical", wave90Key),
            ("Key mapping core", wave91Desc),
            ("Legacy unmigrated core", DiagnosticsValueFormatter.boolString(wave92Unmigrated)),
            ("Logger core", wave93Subsystem),
            ("Playlist move core", wave94Args.joined(separator: ",")),
            ("Node core", wave95Node),
            ("Option default core", wave96Prop ?? "nil"),
            ("OpenSub client", wave97Endpoint),
            ("OpenSub quota core", wave98Quota),
            ("OSD message core", wave99Rendered),
            ("Playback loop core", wave100Loop),
            ("Shooter subtitle core", wave101Payload["format"] as? String ?? "nil"),
            ("Sleep preventer core", DiagnosticsValueFormatter.boolString(wave102Prevent)),
            ("Playable ext core", DiagnosticsValueFormatter.boolString(wave103Playable)),
            ("Playlist ext core", DiagnosticsValueFormatter.boolString(wave104Playlist)),
            ("Contains sub core", DiagnosticsValueFormatter.boolString(wave105ContainsSub)),
            ("Media type core", wave106MediaType?.rawValue ?? "nil"),
            ("Ensure dir core", DiagnosticsValueFormatter.boolString(wave107Created)),
            ("Ensure file core", DiagnosticsValueFormatter.boolString(wave108Created)),
            ("Watch later hash", wave109Hash),
            ("Watch later progress", wave110Progress.map { String(format: "%.1f", $0) } ?? "nil"),
            ("Latest created core", wave111Latest?.lastPathComponent ?? "nil"),
            ("Main thread flag", DiagnosticsValueFormatter.boolString(wave112IsMain)),
            ("Validation state msg", wave113Message ?? "nil"),
            ("Display scale core", String(format: "%.1f", wave114Scale)),
            ("WatchLater file URL", wave115URL.path),
            ("WatchLater load", wave116Progress.map { String(format: "%.1f", $0) } ?? "nil"),
            ("Expanded path", wave117Expanded),
            ("Directory read count", "\(wave118Count)"),
            ("Latest screenshot", wave119Latest?.lastPathComponent ?? "nil"),
            ("File exists core", DiagnosticsValueFormatter.boolString(wave120Exists)),
            ("Built directory", wave121Built.lastPathComponent),
            ("URL ext core", wave122Ext),
            ("URL media type", wave123Type?.rawValue ?? "nil"),
            ("Wave range checkpoint", wave200Checkpoint),
        ]
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                Text("VisionIINA")
                    .font(.largeTitle)
                    .bold()

                Text("Phase 0 shell for a visionOS port of IINA.")
                    .font(.title3)

                VStack(alignment: .leading, spacing: 10) {
                    Label("Project scaffolding complete", systemImage: "checkmark.circle.fill")
                    Label("Window scene running", systemImage: "checkmark.circle.fill")
                    Label("Playback core bridge placeholder", systemImage: "wrench.and.screwdriver.fill")
                    Label("Core diagnostics integrated", systemImage: "checkmark.circle.fill")
                }
                .font(.headline)

                VStack(alignment: .leading, spacing: 12) {
                    Text("Core Diagnostics")
                        .font(.title2)
                        .bold()

                    ForEach(Array(diagnostics.enumerated()), id: \.offset) { _, item in
                        HStack(alignment: .top) {
                            Text(item.0 + ":")
                                .fontWeight(.semibold)
                                .frame(width: 210, alignment: .leading)
                            Text(item.1)
                                .foregroundStyle(.secondary)
                            Spacer(minLength: 0)
                        }
                    }
                }
                .padding(20)
                .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
            }
            .padding(32)
            }
            .navigationTitle("Port Bootstrap")
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
