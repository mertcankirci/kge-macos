//
//  Font+Extension.swift
//  Extensions
//
//  Created by Mertcan Kırcı on 19.04.2026.
//

import SwiftUI
import Fonts

// MARK: - Cormorant Garamond

public extension Font {
    enum CormorantGaramond {
        public static func light(_ size: CGFloat)          -> Font { .custom(Fonts.CormorantGaramond.light, size: size) }
        public static func lightItalic(_ size: CGFloat)    -> Font { .custom(Fonts.CormorantGaramond.lightItalic, size: size) }
        public static func regular(_ size: CGFloat)        -> Font { .custom(Fonts.CormorantGaramond.regular, size: size) }
        public static func italic(_ size: CGFloat)         -> Font { .custom(Fonts.CormorantGaramond.italic, size: size) }
        public static func medium(_ size: CGFloat)         -> Font { .custom(Fonts.CormorantGaramond.medium, size: size) }
        public static func mediumItalic(_ size: CGFloat)   -> Font { .custom(Fonts.CormorantGaramond.mediumItalic, size: size) }
        public static func semiBold(_ size: CGFloat)       -> Font { .custom(Fonts.CormorantGaramond.semiBold, size: size) }
        public static func semiBoldItalic(_ size: CGFloat) -> Font { .custom(Fonts.CormorantGaramond.semiBoldItalic, size: size) }
        public static func bold(_ size: CGFloat)           -> Font { .custom(Fonts.CormorantGaramond.bold, size: size) }
        public static func boldItalic(_ size: CGFloat)     -> Font { .custom(Fonts.CormorantGaramond.boldItalic, size: size) }
    }
}

// MARK: - Inter

public extension Font {
    enum Inter {
        public enum Pt18 {
            public static func thin(_ size: CGFloat)             -> Font { .custom(Fonts.Inter.Pt18.thin, size: size) }
            public static func thinItalic(_ size: CGFloat)       -> Font { .custom(Fonts.Inter.Pt18.thinItalic, size: size) }
            public static func extraLight(_ size: CGFloat)       -> Font { .custom(Fonts.Inter.Pt18.extraLight, size: size) }
            public static func extraLightItalic(_ size: CGFloat) -> Font { .custom(Fonts.Inter.Pt18.extraLightItalic, size: size) }
            public static func light(_ size: CGFloat)            -> Font { .custom(Fonts.Inter.Pt18.light, size: size) }
            public static func lightItalic(_ size: CGFloat)      -> Font { .custom(Fonts.Inter.Pt18.lightItalic, size: size) }
            public static func regular(_ size: CGFloat)          -> Font { .custom(Fonts.Inter.Pt18.regular, size: size) }
            public static func italic(_ size: CGFloat)           -> Font { .custom(Fonts.Inter.Pt18.italic, size: size) }
            public static func medium(_ size: CGFloat)           -> Font { .custom(Fonts.Inter.Pt18.medium, size: size) }
            public static func mediumItalic(_ size: CGFloat)     -> Font { .custom(Fonts.Inter.Pt18.mediumItalic, size: size) }
            public static func semiBold(_ size: CGFloat)         -> Font { .custom(Fonts.Inter.Pt18.semiBold, size: size) }
            public static func semiBoldItalic(_ size: CGFloat)   -> Font { .custom(Fonts.Inter.Pt18.semiBoldItalic, size: size) }
            public static func bold(_ size: CGFloat)             -> Font { .custom(Fonts.Inter.Pt18.bold, size: size) }
            public static func boldItalic(_ size: CGFloat)       -> Font { .custom(Fonts.Inter.Pt18.boldItalic, size: size) }
            public static func extraBold(_ size: CGFloat)        -> Font { .custom(Fonts.Inter.Pt18.extraBold, size: size) }
            public static func extraBoldItalic(_ size: CGFloat)  -> Font { .custom(Fonts.Inter.Pt18.extraBoldItalic, size: size) }
            public static func black(_ size: CGFloat)            -> Font { .custom(Fonts.Inter.Pt18.black, size: size) }
            public static func blackItalic(_ size: CGFloat)      -> Font { .custom(Fonts.Inter.Pt18.blackItalic, size: size) }
        }
        
        public enum Pt24 {
            public static func thin(_ size: CGFloat)             -> Font { .custom(Fonts.Inter.Pt24.thin, size: size) }
            public static func thinItalic(_ size: CGFloat)       -> Font { .custom(Fonts.Inter.Pt24.thinItalic, size: size) }
            public static func extraLight(_ size: CGFloat)       -> Font { .custom(Fonts.Inter.Pt24.extraLight, size: size) }
            public static func extraLightItalic(_ size: CGFloat) -> Font { .custom(Fonts.Inter.Pt24.extraLightItalic, size: size) }
            public static func light(_ size: CGFloat)            -> Font { .custom(Fonts.Inter.Pt24.light, size: size) }
            public static func lightItalic(_ size: CGFloat)      -> Font { .custom(Fonts.Inter.Pt24.lightItalic, size: size) }
            public static func regular(_ size: CGFloat)          -> Font { .custom(Fonts.Inter.Pt24.regular, size: size) }
            public static func italic(_ size: CGFloat)           -> Font { .custom(Fonts.Inter.Pt24.italic, size: size) }
            public static func medium(_ size: CGFloat)           -> Font { .custom(Fonts.Inter.Pt24.medium, size: size) }
            public static func mediumItalic(_ size: CGFloat)     -> Font { .custom(Fonts.Inter.Pt24.mediumItalic, size: size) }
            public static func semiBold(_ size: CGFloat)         -> Font { .custom(Fonts.Inter.Pt24.semiBold, size: size) }
            public static func semiBoldItalic(_ size: CGFloat)   -> Font { .custom(Fonts.Inter.Pt24.semiBoldItalic, size: size) }
            public static func bold(_ size: CGFloat)             -> Font { .custom(Fonts.Inter.Pt24.bold, size: size) }
            public static func boldItalic(_ size: CGFloat)       -> Font { .custom(Fonts.Inter.Pt24.boldItalic, size: size) }
            public static func extraBold(_ size: CGFloat)        -> Font { .custom(Fonts.Inter.Pt24.extraBold, size: size) }
            public static func extraBoldItalic(_ size: CGFloat)  -> Font { .custom(Fonts.Inter.Pt24.extraBoldItalic, size: size) }
            public static func black(_ size: CGFloat)            -> Font { .custom(Fonts.Inter.Pt24.black, size: size) }
            public static func blackItalic(_ size: CGFloat)      -> Font { .custom(Fonts.Inter.Pt24.blackItalic, size: size) }
        }
        
        public enum Pt28 {
            public static func thin(_ size: CGFloat)             -> Font { .custom(Fonts.Inter.Pt28.thin, size: size) }
            public static func thinItalic(_ size: CGFloat)       -> Font { .custom(Fonts.Inter.Pt28.thinItalic, size: size) }
            public static func extraLight(_ size: CGFloat)       -> Font { .custom(Fonts.Inter.Pt28.extraLight, size: size) }
            public static func extraLightItalic(_ size: CGFloat) -> Font { .custom(Fonts.Inter.Pt28.extraLightItalic, size: size) }
            public static func light(_ size: CGFloat)            -> Font { .custom(Fonts.Inter.Pt28.light, size: size) }
            public static func lightItalic(_ size: CGFloat)      -> Font { .custom(Fonts.Inter.Pt28.lightItalic, size: size) }
            public static func regular(_ size: CGFloat)          -> Font { .custom(Fonts.Inter.Pt28.regular, size: size) }
            public static func italic(_ size: CGFloat)           -> Font { .custom(Fonts.Inter.Pt28.italic, size: size) }
            public static func medium(_ size: CGFloat)           -> Font { .custom(Fonts.Inter.Pt28.medium, size: size) }
            public static func mediumItalic(_ size: CGFloat)     -> Font { .custom(Fonts.Inter.Pt28.mediumItalic, size: size) }
            public static func semiBold(_ size: CGFloat)         -> Font { .custom(Fonts.Inter.Pt28.semiBold, size: size) }
            public static func semiBoldItalic(_ size: CGFloat)   -> Font { .custom(Fonts.Inter.Pt28.semiBoldItalic, size: size) }
            public static func bold(_ size: CGFloat)             -> Font { .custom(Fonts.Inter.Pt28.bold, size: size) }
            public static func boldItalic(_ size: CGFloat)       -> Font { .custom(Fonts.Inter.Pt28.boldItalic, size: size) }
            public static func extraBold(_ size: CGFloat)        -> Font { .custom(Fonts.Inter.Pt28.extraBold, size: size) }
            public static func extraBoldItalic(_ size: CGFloat)  -> Font { .custom(Fonts.Inter.Pt28.extraBoldItalic, size: size) }
            public static func black(_ size: CGFloat)            -> Font { .custom(Fonts.Inter.Pt28.black, size: size) }
            public static func blackItalic(_ size: CGFloat)      -> Font { .custom(Fonts.Inter.Pt28.blackItalic, size: size) }
        }
    }
}

// MARK: - JetBrains Mono

public extension Font {
    enum JetBrainsMono {
        public static func thin(_ size: CGFloat)             -> Font { .custom(Fonts.JetBrainsMono.thin, size: size) }
        public static func thinItalic(_ size: CGFloat)       -> Font { .custom(Fonts.JetBrainsMono.thinItalic, size: size) }
        public static func extraLight(_ size: CGFloat)       -> Font { .custom(Fonts.JetBrainsMono.extraLight, size: size) }
        public static func extraLightItalic(_ size: CGFloat) -> Font { .custom(Fonts.JetBrainsMono.extraLightItalic, size: size) }
        public static func light(_ size: CGFloat)            -> Font { .custom(Fonts.JetBrainsMono.light, size: size) }
        public static func lightItalic(_ size: CGFloat)      -> Font { .custom(Fonts.JetBrainsMono.lightItalic, size: size) }
        public static func regular(_ size: CGFloat)          -> Font { .custom(Fonts.JetBrainsMono.regular, size: size) }
        public static func italic(_ size: CGFloat)           -> Font { .custom(Fonts.JetBrainsMono.italic, size: size) }
        public static func medium(_ size: CGFloat)           -> Font { .custom(Fonts.JetBrainsMono.medium, size: size) }
        public static func mediumItalic(_ size: CGFloat)     -> Font { .custom(Fonts.JetBrainsMono.mediumItalic, size: size) }
        public static func semiBold(_ size: CGFloat)         -> Font { .custom(Fonts.JetBrainsMono.semiBold, size: size) }
        public static func semiBoldItalic(_ size: CGFloat)   -> Font { .custom(Fonts.JetBrainsMono.semiBoldItalic, size: size) }
        public static func bold(_ size: CGFloat)             -> Font { .custom(Fonts.JetBrainsMono.bold, size: size) }
        public static func boldItalic(_ size: CGFloat)       -> Font { .custom(Fonts.JetBrainsMono.boldItalic, size: size) }
        public static func extraBold(_ size: CGFloat)        -> Font { .custom(Fonts.JetBrainsMono.extraBold, size: size) }
        public static func extraBoldItalic(_ size: CGFloat)  -> Font { .custom(Fonts.JetBrainsMono.extraBoldItalic, size: size) }
    }
}
