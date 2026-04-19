import CoreText
import Foundation

public enum Fonts {
    public static func registerAll() {
        guard let urls = Bundle.module.urls(forResourcesWithExtension: "ttf", subdirectory: nil) else { return }
        for url in urls {
            CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
        }
    }
}

// MARK: - Cormorant Garamond

public extension Fonts {
    enum CormorantGaramond {
        public static let familyName     = "Cormorant Garamond"

        public static let light          = "CormorantGaramond-Light"
        public static let lightItalic    = "CormorantGaramond-LightItalic"
        public static let regular        = "CormorantGaramond-Regular"
        public static let italic         = "CormorantGaramond-Italic"
        public static let medium         = "CormorantGaramond-Medium"
        public static let mediumItalic   = "CormorantGaramond-MediumItalic"
        public static let semiBold       = "CormorantGaramond-SemiBold"
        public static let semiBoldItalic = "CormorantGaramond-SemiBoldItalic"
        public static let bold           = "CormorantGaramond-Bold"
        public static let boldItalic     = "CormorantGaramond-BoldItalic"
    }
}

// MARK: - Inter

public extension Fonts {
    enum Inter {
        public static let familyName = "Inter"

        public enum Pt18 {
            public static let thin             = "Inter18pt-Thin"
            public static let thinItalic       = "Inter18pt-ThinItalic"
            public static let extraLight       = "Inter18pt-ExtraLight"
            public static let extraLightItalic = "Inter18pt-ExtraLightItalic"
            public static let light            = "Inter18pt-Light"
            public static let lightItalic      = "Inter18pt-LightItalic"
            public static let regular          = "Inter18pt-Regular"
            public static let italic           = "Inter18pt-Italic"
            public static let medium           = "Inter18pt-Medium"
            public static let mediumItalic     = "Inter18pt-MediumItalic"
            public static let semiBold         = "Inter18pt-SemiBold"
            public static let semiBoldItalic   = "Inter18pt-SemiBoldItalic"
            public static let bold             = "Inter18pt-Bold"
            public static let boldItalic       = "Inter18pt-BoldItalic"
            public static let extraBold        = "Inter18pt-ExtraBold"
            public static let extraBoldItalic  = "Inter18pt-ExtraBoldItalic"
            public static let black            = "Inter18pt-Black"
            public static let blackItalic      = "Inter18pt-BlackItalic"
        }

        public enum Pt24 {
            public static let thin             = "Inter24pt-Thin"
            public static let thinItalic       = "Inter24pt-ThinItalic"
            public static let extraLight       = "Inter24pt-ExtraLight"
            public static let extraLightItalic = "Inter24pt-ExtraLightItalic"
            public static let light            = "Inter24pt-Light"
            public static let lightItalic      = "Inter24pt-LightItalic"
            public static let regular          = "Inter24pt-Regular"
            public static let italic           = "Inter24pt-Italic"
            public static let medium           = "Inter24pt-Medium"
            public static let mediumItalic     = "Inter24pt-MediumItalic"
            public static let semiBold         = "Inter24pt-SemiBold"
            public static let semiBoldItalic   = "Inter24pt-SemiBoldItalic"
            public static let bold             = "Inter24pt-Bold"
            public static let boldItalic       = "Inter24pt-BoldItalic"
            public static let extraBold        = "Inter24pt-ExtraBold"
            public static let extraBoldItalic  = "Inter24pt-ExtraBoldItalic"
            public static let black            = "Inter24pt-Black"
            public static let blackItalic      = "Inter24pt-BlackItalic"
        }

        public enum Pt28 {
            public static let thin             = "Inter28pt-Thin"
            public static let thinItalic       = "Inter28pt-ThinItalic"
            public static let extraLight       = "Inter28pt-ExtraLight"
            public static let extraLightItalic = "Inter28pt-ExtraLightItalic"
            public static let light            = "Inter28pt-Light"
            public static let lightItalic      = "Inter28pt-LightItalic"
            public static let regular          = "Inter28pt-Regular"
            public static let italic           = "Inter28pt-Italic"
            public static let medium           = "Inter28pt-Medium"
            public static let mediumItalic     = "Inter28pt-MediumItalic"
            public static let semiBold         = "Inter28pt-SemiBold"
            public static let semiBoldItalic   = "Inter28pt-SemiBoldItalic"
            public static let bold             = "Inter28pt-Bold"
            public static let boldItalic       = "Inter28pt-BoldItalic"
            public static let extraBold        = "Inter28pt-ExtraBold"
            public static let extraBoldItalic  = "Inter28pt-ExtraBoldItalic"
            public static let black            = "Inter28pt-Black"
            public static let blackItalic      = "Inter28pt-BlackItalic"
        }
    }
}

// MARK: - JetBrains Mono

public extension Fonts {
    enum JetBrainsMono {
        public static let familyName     = "JetBrains Mono"

        public static let thin             = "JetBrainsMono-Thin"
        public static let thinItalic       = "JetBrainsMono-ThinItalic"
        public static let extraLight       = "JetBrainsMono-ExtraLight"
        public static let extraLightItalic = "JetBrainsMono-ExtraLightItalic"
        public static let light            = "JetBrainsMono-Light"
        public static let lightItalic      = "JetBrainsMono-LightItalic"
        public static let regular          = "JetBrainsMono-Regular"
        public static let italic           = "JetBrainsMono-Italic"
        public static let medium           = "JetBrainsMono-Medium"
        public static let mediumItalic     = "JetBrainsMono-MediumItalic"
        public static let semiBold         = "JetBrainsMono-SemiBold"
        public static let semiBoldItalic   = "JetBrainsMono-SemiBoldItalic"
        public static let bold             = "JetBrainsMono-Bold"
        public static let boldItalic       = "JetBrainsMono-BoldItalic"
        public static let extraBold        = "JetBrainsMono-ExtraBold"
        public static let extraBoldItalic  = "JetBrainsMono-ExtraBoldItalic"
    }
}
