import Foundation

/// visionOS-safe extraction of IINA mpv filter name constants (AppData.swift Constants.FilterName, Phase 3)
enum IINAFilterName: String, CaseIterable {
  case crop = "iina_crop"
  case flip = "iina_flip"
  case mirror = "iina_mirror"
  case audioEq = "iina_aeq"
  case delogo = "iina_delogo"
}
