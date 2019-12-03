# Source LOCL Test

*Source LOCL Test* is a special-purpose 12-font OpenType/CFF Collection (OTC) that is intended to be used to test the extent to which applications and other text-handling environments support the '[locl](https://docs.microsoft.com/en-us/typography/opentype/spec/features_ko#locl)' (*Localized Forms*) GSUB feature and language tagging, to include localized '[name](https://docs.microsoft.com/en-us/typography/opentype/spec/name)' table and named [Stylistic Set](https://docs.microsoft.com/en-us/typography/opentype/spec/features_pt#tag-39ss0139---39ss2039) 'GSUB' feature strings, in terms of supporting common East Asian regions/languages, specifically Japanese (JP), Korean (KR), Simplified Chinese (CN), Traditional Chinese for Taiwan (TW), Traditional Chinese for Hong Kong SAR (HK), and Traditional Chinese for Macao SAR (MO).

The OpenType/CFF Collection itself, *SourceLOCLTest-Regular.ttc*, is available as a pre-built and easily-downloadable binary in the [Latest Release](https://github.com/adobe-fonts/source-locl-test/releases/latest/) of this project.

The following are the characteristics of the OpenType/CFF Collection:

* The glyph set includes the mandatory *.notdef* glyph at CID+0, along *space* glyphs at CIDs 1 and 2, which map from U+0020/U+00A0 *(250-unit horizontal advance) and U+2003/U+3000 (1000-unit horizontal advance), respectively.

* CIDs 3 through 65534 are digraph glyphs with 1000-unit horizontal advances that correspond to the six supported East Asian regions/languages: "JP" for Japan, "KR" for South Korean (ROK), "CN" for China (PRC), "TW" for Taiwan (ROC), "HK" for Hong Kong SAR, and "MO" for Macao SAR. CIDs 3 through 32768 are in Sans Serif style, and CIDs 32769 through 65534 are in Serif style.

* The 'locl' GSUB feature can be used to substitute the glyphs that correspond to the default region/language of a font with the glyphs for one of the five other supported regions/languages. This requires using an app that supports language tagging at the character, paragraph, or document level.

* The named 'ss01' ("Serif") and 'ss02' ("Sans Serif") Stylistic Set GSUB features can be used to substitute between the two typeface styles, Serif and Sans Serif, and both include localized names for the six supported regions/languages.

* The English-language font menu names include two-letter region codes. The localized font menu names instead use the localized form of the style name that implies a language, and in some cases, a region.

* All 1,111,998 code points that are supported by the Format 12 (UTF-32) 'cmap' subtable map to one of the 12 digraphs, depending on the default region/language and style of the font.

* The 'vmtx' and 'VORG' tables specify overrides for CIDs 3 through 65534 so that the glyphs are centered in vertical writing mode.

* The following 'sfnt' tables are completely shared by the 12 fonts in the OpenType/CFF Collection: 'CFF ', 'VORG', 'hhea', 'hmtx', 'maxp', 'post', 'vhea', and 'vmtx'. The following 'sfnt' tables have more than one instance (the number of instances is provided in parentheses): 'BASE' (2), 'OS/2' (4), 'GSUB' (6), 'cmap' (12), 'head' (12), and 'name' (12).

* The 'CFF ' table includes three FDArray elements.

The table below provides additional technical details about the 12 fonts:

**Region/Language/Digraph** | **JP** | **KR** | **CN** | **TW** | **HK** | **MO**
--- | --- | --- | --- | --- | --- | ---
Sans Serif CIDs | 3&ndash;5463 | 5464&ndash;10924 | 10925&ndash;16385 | 16386&ndash;21846 | 21847&ndash;27307 | 27308&ndash;32768
Serif CIDs | 32769&ndash;38229 | 38230&ndash;43690 | 43691&ndash;49151 | 49152&ndash;54612 | 54613&ndash;60073 | 60074&ndash;65534
[Windows Language ID](https://docs.microsoft.com/en-us/typography/opentype/spec/name#windows-language-ids) | 0x0411 | 0x0412 | 0x0804 | 0x0404 | 0x0C04 | 0x1404
[Language System Tag](https://docs.microsoft.com/en-us/typography/opentype/spec/languagetags) | JAN | KOR | ZHS | ZHT | ZHH | ZHTM*
'ss01' String | &#x660E;&#x671D; | &#xBA85;&#xC870; | &#x5B8B;&#x4F53; | &#x5B8B;&#x9AD4; | &#x5B8B;&#x9AD4; &#x9999;&#x6E2F; | &#x5B8B;&#x9AD4; &#x6FB3;&#x9580;
'ss02' String | &#x89D2;&#x30B4;&#x30B7;&#x30C3;&#x30AF; | &#xACE0;&#xB515; | &#x9ED1;&#x4F53; | &#x9ED1;&#x9AD4; | &#x9ED1;&#x9AD4; &#x9999;&#x6E2F; | &#x9ED1;&#x9AD4; &#x6FB3;&#x9580;

\* *The 'ZHTM' Language System Tag is not yet registered, but is in the process of being registered.*

The image below illustrates the 12 functional glyphs that are present in the font, and for which 5,461 instances are included in order to fill all 65,535 CIDs:

![alt text](https://github.com/adobe-fonts/source-locl-test/raw/master/resources/locl-example.jpg "img-View")

The glyphs that are used in this font are derived from the Regular weight of [Source Han Sans](https://github.com/adobe-fonts/source-han-sans/) and [Source Han Serif](https://github.com/adobe-fonts/source-han-serif/).

## Building the font from source

### Requirements

To build the binary font file from source, you need to have installed the [Adobe Font Development Kit for OpenType](https://github.com/adobe-type-tools/afdko/) (AFDKO). The AFDKO tools are widely used for font development today, and are part of most font editor applications.

### Building the font

In this repository, all necessary files are in place for building the component OpenType/CFF fonts and the 12-font OpenType/CFF Collection, and the COMMANDS.sh script provides the command lines that are used.

## Getting Involved

For any suggestions for changes, please [create a new issue](https://github.com/adobe-fonts/source-locl-test/issues) for consideration.
