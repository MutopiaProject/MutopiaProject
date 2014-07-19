%%--------------------------------------------------------------------
% The Mutopia Project
% LilyPond template for keyboard solo piece
%%--------------------------------------------------------------------
% TODO (prioritized):
% Add fingering
% Add ossia to bar 6 with alternate bass chord
% Add capped-brackets to tuplets
% Replace slur \shape overrides with
%     RE: https://github.com/openlilylib/openlilylib/blob/master/notation-snippets/shaping-bezier-curves/README.md
% Remove hard-coded breaks to increase horizontal spacing, also
%   allowing removal of TextScript'ed notations
% Improve voice assignment (i.e. bar 8 eigths should be 1st voice)
%%--------------------------------------------------------------------


\version "2.18.2"
%#(set-default-paper-size "letter")
#(set-global-staff-size 17.8)
\pointAndClickOff

%--------Definitions
\include "chopin-op23-ballade-1-defs.ly"

\paper {
    top-margin = 6\mm                              %-minimum top-margin: 8mm
    top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #5      %-dist. from header/title to first system
    top-system-spacing.basic-distance = #12         %-dist. from top margin to system in pages with no titles
    last-bottom-spacing.basic-distance = #12        %-pads music from copyright block
    bookTitleMarkup = \myTitles
    min-systems-per-page = 6
}

\header {
    title = "Première Ballade."
    composer = \markup "Fr.Chopin (1810-1849),Op.23"
    dedication = \markup \italic "à Mr. le Baron de Stockhausen."
    date = "1836"
    style = "Romantic"
    source = "Klindworth; Bote & Bock,n.d.[1880]"

    maintainer = "Javier Ruiz-Alma"
    maintainerEmail = "javier (at) ruiz-alma.com"
    license = "Creative Commons Attribution-ShareAlike 4.0"

    mutopiatitle = "Première Ballade"
    mutopiaopus = "Op.23"
    mutopiacomposer = "ChopinFF"
    mutopiainstrument = "Piano"

 footer = "Mutopia-2014/07/19-1959"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%------------Music

upperOne =  \relative c {
  \setRestDirUp \time 4/4 \tempoLargo \hideTempo \trebleToBass
  \stemNeutral \shpSlurB c2-\hideF(\(_~^\lentoLegend c8 ees aes bes                              | % 1
  \clef treble
  c8) \shpSlurD aes_( \posScriptBZ ees'_\dimTxtSm bes'c) \shpSlurA aes(ees'bes'                  | % 2
  c8) \shpSlurGK g( bes aes  g4 fis8)\) b,8\rest                                                 | % 3
  b8\rest \shpSlurE fis'(^\(-\hideP g fis  eis) fis( \times 2/3 { a g ees) }                     | % 4
  ees8. d16 \times 2/3 { f!8 ees d\) } d4 b\rest                                                 | % 5
  \stemNeutral b2\rest^\espressTxt \shpSlurG c4.\( g8                                            | % 6
\tempoMod
  \shpSlurF bes1~                                                                                | % 7
\time 6/4
  \posHairpinB bes2.^\moderatoLegend\> b8\rest\! \stemDown \hideNotes \shpSlurM c,8_~
     \unHideNotes \shiftOnn \moveNoteOne c2-\hideMF                                              | % 8
  \stemUp g'2.\) d'(                                                                             | % 9
  c2.) b8\rest \stemDown \hideNotes \shpSlurH c,8\(_~ \unHideNotes \moveNoteOne c2               | %10
  \stemUp g'2.\) \shpSlurJ e(                                                                    | %11
  fis2.) b8\rest \stemDown \hideNotes \shpSlurN c,8^(_~ \unHideNotes \moveNoteOne c2             | %12
  \stemUp g'2.) g'(                                                                              | %13
  f2.) \stemDown \shpSlurO ees,(                                                                 | %14
  \stemUp cis'2. \shpSlurP d)\(                                                                  | %15
  c2.\) b8\rest \stemDown \hideNotes \shpSlurN c,8_~^( \unHideNotes \moveNoteOne c2              | %16
  \stemUp g'2.) d'(                                                                              | %17
  c2.) b8\rest \stemDown \hideNotes \shpSlurN c,8_~^( \unHideNotes \moveNoteOne c2               | %18
  \stemUp g'2.) \shpSlurQ e(                                                                     | %19
  fis2.) b8\rest \stemDown \hideNotes \shpSlurR c,8_~^\( \unHideNotes \moveNoteOne c2            | %20
  \stemUp g'2. g'                                                                                | %21
  \shpSlurS g2.\)\( d                                                                            | %22
  c2. \shpSlurU g\)\(                                                                            | %23
  g'2. d                                                                                         | %24
  c2. g                                                                                          | %25
  \posScriptCB f2.\)-\tenutoTxt \shpSlurX d'~\(                                                  | %26
  d4 \slurDown \acciaccatura  { d8 } c4 \slurNeutral b c d ees                                   | %27
  ees2. d\)                                                                                      | %28
  d4\rest \acciaccatura {bes8} \shpSlurAA a4\( gis a bes c                                       | %29
  c2. bes                                                                                        | %30
%{ 31 %}
  \ritenSpanner \posDottedA a2.\startTextSpan \shpSlurAH a2~ a8 a                                | %31
\tempoModPr \hideTempo
  \shpSlurAI a2.\arpeggio ~ a2 \posScriptD a4->~                                                 | %32
  a16 bes a gis \stemDown a g'! e f  f g'f e \stemDown \cadenzaSizeOn \alignBeamOne
     \subdivideBeamOne \scaleDurations 2/3 {ees16[ c a bes d c bes g f d ees e f fis a g f!ees] }
     \cadenzaSizeOff \subdivideBeamOff                                                           | %33
  \stemNeutral cis8\) b8\rest \shpSlurAB d2->\(~ d4 c g                                          | %34
  bes2. fis                                                                                      | %35
\tempoModPr \hideTempo
  g4\)\stopTextSpan \stemUp \posScriptE bes'4^\aTempo s2 a4 s                                    | %36
  s4 bes4 s2 aes4 s                                                                              | %37
  s4 g s2 c,4 s                                                                                  | %38
\tempoModPrstis \hideTempo
  s4 ees s2 \shpSlurAJ \shortStemSix g,4^( \shortStemOne <a fis>                                 | %39
\tempoAgitato \hideTempo
  <bes g>4) \shortStemCin <bes bes'>2 s4 <a a'>2                                                 | %40
  s4 <bes bes'>2 s4 <aes aes'>2                                                                  | %41
  s4 <g'g,>2 s4 <c,c,>2  \slurUp                                                                 | %42
  s4 <ees ees,>2 s4 \shpSlurAS <fis,fis,>2 (                                                     | %43
  \posScriptJ g4-.) \shpSlurAQ \posScriptL c,8(^\sPiuMosso bes a g \posScriptK g'4-.)
     \shpSlurAT c,8\( bes a g                                                                    | %44
  f'!8_> c ees fis, \posHairpinJ c'\< ees fis_[ c' f! ees d c]                                   | %45
  g'4-.\)-\hideF c,8( bes a g  g'4-.) \shpSlurAX c,8\( bes a g                                   | %46
  \stemDown f'!8-> c ees fis, c' ees  fis c' f! ees d c                                          | %47
\tempoAgitPresto \hideTempo
  <bes-\hideMF g'>4-.\) b,8\rest \shpSlurAY <g''c>( bes d, <fis bes> a d, <bes fis> a d,)        | %48
  \shpSlurAZ <g c>8( bes d <g c> bes d,<fis bes> a d,<bes fis> a d,)                             | %49
  <g c>8( bes d <g c> bes d,<fis, bes> a d,<bes fis>a d,)                                        | %50
  \shpSlurAZ <c'g>8( bes d <g c> bes d, <fis bes> a d,<bes fis> a d,)                            | %51
  \shpSlurAZ <c'g>8( bes d <g c> bes d, <a'd,>g bes,<ees bes> d g,)                              | %52
  \stemNeutral \shpSlurBA <c g>8( bes d, <a'd,> g bes, \clef bass <bes ees>d g, <g c!> bes d,)   | %53
  \menoFSpanner \shpSlurBG <c'g>8\startTextSpan\( bes d, <d'g,> c ees, <c'g> bes d, <d'g,> c ees,| %54
  <c'g> bes d, <d'g,> c ees, <c'g> bes d, <d'g,> c ees,\)                                        | %55
  \clef treble
  \shpSlurBF g8\( \posHairpinM d'\< bes d g bes  d-> g bes \ottava #1 \posOttavaA d g d'\!       | %56
\tempoAgitPrestis \hideTempo
  \posHairpinN bes\> d g, d \ottava #0 bes g d bes g d bes\! \shpSlurBH \posHairpinO
     d,\)_(\<\stopTextSpan                                                                       | %57
  \nullSpanner \posHairpinP \shpSlurBI
     g8)\!\>(\startTextSpan d'\! bes d g d'bes d g, d bes \posHairpinQ \shpSlurBN d,)_(\<        | %58
  \shpSlurBI fis8)\!\>( d'\! bes d fis d' bes d fis, d bes\stopTextSpan
     \piuPianoSpanner \posHairpinQ \shpSlurBN d,)_(\<\startTextSpan                              | %59
  \shpSlurBJ g8)\!(\> d'\! bes d g bes d g bes \ottava #1 \posOttavaA d g d'                     | %60
  bes8 d g, d \ottava #0 bes g d bes g d bes \posHairpinQ \shpSlurBN d,)_(\<\stopTextSpan        | %61
  \calandoSpanner \shpSlurBO ges8)\!\>(\startTextSpan d'\!bes d ges d'bes d ges,d bes d,\<)_(    | %62
\tempoAgitPresto \hideTempo
  \shpSlurBO f8)\!\>( \posHairpinPrev d'\! bes d f_\dimTxt d'bes d f,d bes c,)_(\stopTextSpan    | %63
\tempoAgitato \hideTempo
  \shpSlurBO \posScriptP f8)(^\smorzTxt c'a c f a c f a c \ottava #1 \posOttavaB f a             | %64
\tempoPresto \hideTempo
  f'4) \ottava #0 b,,,\rest b\rest b2\rest b4\rest                                               | %65
  \restDownOne R1*6/4                                                                            | %66
  b2\rest b4\rest b\rest b\rest \shpSlurGP f->-\menoMosso~\(                                     | %67
  f2.( g2) g4(                                                                                   | %68
  ees2.)\)_~ ees4 \shpSlurGQ ees'4.\( d8                                                         | %69
  \stemUp c2.( d2) d4(                                                                           | %70
  bes2.)\) \stemNeutral \shpSlurBS bes'2\(^\< bes4                                               | %71
  bes2->\! aes4 aes g fis                                                                        | %72
  fis2 g\) aes4.( ees8                                                                           | %73
  g2 f) \shpSlurGU g4.\( d8                                                                      | %74
  f4 ees d \times 2/3 { c8[ d c] } b c d ees                                                     | %75
  f,2.\)(\( g2) g4(                                                                              | %76
  ees2.)\)_~ ees4 \shpSlurGQ ees'4.\( d8                                                         | %77
  \stemUp c2.( d2) d4(                                                                           | %78
  bes2.)\) \stemNeutral \shpSlurGY bes'2->\(\< bes4\!                                            | %79
  %-----------------------------------correction to source bar40: bes2->bes2.
  bes2.\> c,2\)\! d4\(                                                                           | %80
  \times 2/3 { ees8 f ees } d4 ees g\) \posScriptCD g_>(~ \times 2/3 { g8 f ees) }               | %81
\tempoModPrstis \hideTempo
  ees2. b4\rest g8[( aes] \times 2/3 { bes d c}                                                  | %82
  bes2.)~ bes4 g8([ aes] \times 2/3 { bes d c) }                                                 | %83
  bes2.~ bes4 f8([ aes] \times 2/3 { bes d c) }                                                  | %84
  \tupletSpan 4 \hideTupletBracket
  bes4~ \times 2/3 { bes8[ \shpSlurBT des,_\( ees] g[ c bes]} aes4_~ aes8 ces,ees f              | %85
  g2\) b4\rest b\rest g8([ aes] \times 2/3 { bes d c }                                           | %86
  bes4) bes'2.-> \times 2/3 { b,8\rest( g[ aes] bes d c }                                        | %87
  bes4) bes'2.-> \tupletDown \times 2/3 { b,8\rest f[( aes]  \tupletUp bes d c }                 | %88
  bes4)_~ \times 2/3 { bes8[ \shpSlurBT des,_\( ees] g[ c bes]} aes4_~ aes8 ces,ees f            | %89
  \semprePiuPSpanner g2.\)_~\startTextSpan g8\noBeam g( bes g'f ees                              | %90
  \shpSlurHG d2.)~ d8 \shpSlurHF bes( d bes' d,\stopTextSpan \eRallSpanner ees\startTextSpan     | %91
  e4 \shpSlurHG f2)~ f8 \shpSlurBU d\( f d'c bes\stopTextSpan                                    | %92
  gis8 a f'e d a \staffDown \posBeamD d,^[ \staffUp a f d e \slurDown \acciaccatura { g } f]     | %93
\tempoModPr \hideTempo \slurUp
  e,2.\) b''8\rest-\hidePP \stemDown \shpSlurN \hideNotes d,8_~^( \unHideNotes \moveNoteOne \shortStemCin d2 | %94
  \stemUp a'2.) e'2.(                                                                            | %95
  d2.) s8 \stemDown \shpSlurBZ \hideNotes d,8_~^\( \unHideNotes \moveNoteOne d2                  | %96
  \stemUp a'2.\) fis->(                                                                          | %97
  gis2.) b8\rest \stemDown \shpSlurN \hideNotes d,8_~^( \unHideNotes \moveNoteOne d2             | %98
  \stemUp a'2.) e'(                                                                              | %99
  fis2.) \stemDown s8 \shpSlurHJ c,2\(\pp s8                                                     | %100
  \stemUp a'2.\) \shpSlurHB fis'(                                                                | %101
  gis2. fis2) f8\rest gis                                                                        | %102
  gis2.( fis2) f8\rest gis                                                                       | %103
  gis2.( fis2) f8\rest gis                                                                       | %104
  a2.( \posHairpinU gis2_\< a4)                                                                  | %105
  \stemDown \shpSlurCC \shpSlurCE \shortStemCin \posScriptAA <b gis e d!b>2.(\(\ff
     \posScriptZ <cis gis e d>2)_\moltoCresc \shpSlurCD <cis gis e d>4(                          | %106
  <a cis,a>2.)\) \shpSlurCE <a'cis,a>2\( <gis cis,gis>4                                          | %107
  \shpSlurCC <fis cis fis,>2.( <gis dis b>2) \shpSlurCD <gis dis a>4(                            | %108
\setShortLedgers
  <e gis,e>2.)\) <e e,>2-^ <e e,>4-^                                                             | %109
\tempoModPrstis \hideTempo
  \squeezeNotation \tupletDown <e e,>2->(<d d,>4) \times 2/3 { <d d,>8([<e e,><d d,>] }
     <cis cis,><d d,><fis fis,><e e,>)                                                           | %110
\tempoPresto \hideTempo
  <d d,>2->( <cis cis,>4) \times 2/3 { <cis cis,>8([ <d d,> <cis cis,>] }
     <bis bis,> <cis cis,> <e e,> <d d,>)                                                        | %111
  \stemUp \tupletSpan 2. \tupletUp
  <cis cis,>4( <b b,>4. <ais ais,>8) \times 3/4 { 
     \posScriptCG \shpSlurHC \posHairpinAT <b b,>4(_\< <bis bis,> <cis cis,> <gis gis,>)\! }     | %112
\tempoAgitato \hideTempo
\tag #'printed {
  \tupletDown \posScriptCH <b b,>4(^\chordMarkupA a4. gis8 \grace { f16[ gis] }
  \moveNoteOct f4) eis8-.( f-. gis-. a-.)                                                        | %113-print
  \revShortLedgers
}
\tag #'played {
  \tupletDown <b b,>4( a4. gis8 \grace { fis16[ gis] } fis4) eis8-.( fis-. gis-. a-.)            | %113-midi
}
\tag #'printed {
  \shpSlurCH \posScriptCK <b,gis ees d>2.(\(^\naturalTxt <e cis gis ees>2) \shpSlurCG <e cis gis ees d>4(  | %114-print
}
\tag #'played {
  \shpSlurCH  <b gis e d>2.(\( <e cis gis e>2) \shpSlurCG <e cis gis e d>4(                      | %114-midi
}
  \stemNeutral \unSqueezeNotation
  <a,cis,a>4)\) b\rest \shpSlurCI <a'cis,a>\( <a'cis,a>2 <gis cis,gis>4                          | %115
  \shpSlurCC <fis cis fis,>2.(<gis dis b>2)<gis dis a>4(                                         | %116
  <e gis,e>2)\) b,4\rest \ottava #1 \setOttavaStyle <e''~e,_~>2 <e e,>8. <e e,>16                | %117
  <e e,>4-._\semprePiuF \ottava #0 b,,\rest b\rest \shortStemOne <fis'~ fis,_~>2.->-\tenTxt      | %118
\tempoAgitPresto \hideTempo
  <fis fis,>4 \posScriptAB <fis fis,>-\sharpPrall\( <eis eis,>8 <fis fis,> <gis gis,>
     <ais ais,> <b b,> <cis cis,> <d!d,!> <e e,>                                                 | %119
  <fis fis,>4-.\) b,,\rest b\rest <gis'gis,>2->-\tenTxt <gis gis,>4-^                            | %120
  \posScriptAC \shpSlurCJ gis,8-^\( gis'a gis <fisis fisis,> <gis gis,> <ais ais,> <bis bis,>
     <cis cis,> <dis dis,> <e e,> <fis fis,> \posScrpRevExOff                                    | %121
  <gis gis,>4-.\)b,,\rest b\rest<gis'gis,>2-^<gis gis,>4-^                                       | %122
  \posScriptAB <gis gis,>4-\sharpPrall\( <fisis fisis,>8 <gis gis,> <ais ais,> <b b,>
     <cis cis,> <dis dis,> <eis eis,> <fisis fisis,!> <gis gis,!> <ais ais,!>                    | %123
\squeezeNotationTre
  <b b,>4-.\) \noPadScript <b gis>8-^ eis,dis b <b gis> eis,dis b <b gis> eis,                   | %124
  \clef bass dis8 b <b gis> eis,dis b <b'gis>eis,dis b aes' f                                    | %125
\tempoAgitPrestis \hideTempo
  \noPadTxtScrp bes!8\(-\piuAnimato aes ces f,bes aes ces f,bes aes ces f,                       | %126
  bes aes ces f,bes aes ces f, bes aes ces f,                                                    | %127
\unSqueezeNotation
  bes aes ces f,bes aes ces f, bes aes ces f,                                                    | %128
  \posHairpinW bes\< aes ces f,bes aes ces f, bes aes ces f,                                     | %129
\tempoPrestissimo \hideTempo
  bes4-.\!\) \clef treble \shpSlurCL bes8\( d ces d cis f d aes'e aes                            | %130
  f8_[ ces'g ces aes d] bes d ces! d cis f \stemDown                                             | %131
  d8 aes'e aes f ces'g ces aes d bes d                                                           | %132
  ces8 d cis \ottava #1 \setOttavaStyle \posOttavaC f d aes'e aes f ces'g ces                    | %133
  bes8 aes ces-. f,bes aes c-. f,bes aes cis-. f,                                                | %134
\setShortLedgers
  bes\< aes d-. f,bes aes ees'-. f,bes aes e'-. f,\!                                             | %135
\squeezeNotation
  f'->\> d cis e ees c b d cis bes a! c\!                                                        | %136
  b aes g bes aes \ottava #0 f d bes a! bes aes \posScriptCV bes\)^\animatoLegend                | %137
\tempoAgitato \hideTempo
  \shpSlurCN fis(\p g g'd ees b c g bes aes g f)                                                 | %138
  \revShortLedgers
  \shpSlurCN fis( g g'd ees b c g bes aes g f)                                                   | %139
  \unSqueezeNotation
  \shpSlurCO \noPadHairp fis\(\< g g'd ees b c g bes aes g f\!                                   | %140
  \noPadHairp ees\> aes f d aes' f c aes'f bes,aes'f\)\!                                         | %141
  \shpSlurCN fis(_\poco g g'd_\aTxt ees b_\poco c g bes aes g_\crescTwo f)                       | %142
  \shpSlurCN fis( g g'd ees b c g bes aes g f)                                                   | %143
  \shpSlurCP fis8\( g g'd ees b c g bes aes g f                                                  | %144
  \posHairpinAV fes8\< ees d des c ces bes a! c bes a aes\!\)                                    | %145
  \shpSlurCR \posHairpinY g\<( aes a bes c bes \posScriptAD aes-\crescTinyD bes b c des c\!)     | %146
  \shpSlurCQ \posHairpinY \alignBeamTre a!\<(bes b c d!c \posScriptCT bes-\crescTinyD c cis d
     ees d\!)                                                                                    | %147
  \shpSlurCS \posHairpinY b8\<\( c cis d ees d \posScriptAF c-\crescTinyD cis d ees e f\!        | %148
  \posHairpinZ g8->\> f e ees d des c b bes a!bes aes\!                                          | %149
  \stemUp \textSpannerDown \semprePiuCrescSpanner
  g4\)\startTextSpan \shpSlurCV bes,8\( bes' \shpSlurCW d,_( ces'bes,bes' ees,g e des'           | %150
  c,8 c') \shpSlurCY f,_( a! e des'  c, c'f,a fis ees'!                                          | %151
  d,8) d' \shpSlurDB g,_( b fis ees' d, d' g, b gis f'                                           | %152
  \squeezeNotationTwo
  \tag #'printed { \posScriptCO ees,8)_\naturalTxt } \tag #'played { e8) } 
     e' a, cis ais g' fis, fis' \shpSlurDC b,_( dis bis a'!\)\stopTextSpan                       | %153
  \setShortLedgers
  \squeezeNotation \stemDown \shortStemCin
  <cis a fis cis>4-.)\alignBeamQtr\shpSlurDD bis,8\(cis dis eis \alignBeamCin fis gis a b cis dis| %154
  eis fis gis a fis cis a fis cis a fis cis\)                                                    | %155
  \unSqueezeNotation \squeezeNotationTre
  \stemNeutral \shpSlurDE a8\( \posHairpinAB fis'\< dis a'a fis'dis a'a fis'dis a'\!             | %156
  \revShortLedgers
  fis\> a ees!\! a,fis a ees a, fis\< a ees a,                                                   | %157
\tempoAgitPrestis \hideTempo
  <bes'g ees bes>4-.\)\sf \shpSlurDF a,8(\p^\leggiero bes c d ees e g f g f                      | %158
  \setShortLedgers
  \alignBeamSix c'8 \shpSlurDG bes)( a bes c d ees e g \posScriptAH f_\crescTinyD g f            | %159
  c'8 bes) \shpSlurDI a( bes c d ees e g f g f                                                   | %160
\tempoPrestissimo \hideTempo
  bes4-.) \shpSlurDI a,!8(_\piuF bes c d ees e \posHairpinW g\< f g f                            | %161
  bes4-.) b,,\rest\! b\rest \ottava #1 \posOttavaD \stemUp \acciaccatura { 
    \posScriptAI \shpSlurDJ f''8_\fzSforzato } \stemDown \shpSlurDK f'\( e ees d c bes           | %162
  \ottava #0 a8 g f e ees d c bes a g \posScriptCR f_\bassClefTxt e                              | %163
  \revShortLedgers
  ees! des ces bes aes ges \stemUp f ees des ces bes \staffDown aes!\)                           | %164
  \unSqueezeNotation
  \shpSlurDL \alignBeamOct ges8\( f ees des ces bes \alignBeamSep aes ges f ees des
     \posScriptAM ces!\fz \hideNotes                                                             | %165
\tempoAgitPresto \hideTempo
  bes8\)-\hideF \unHideNotes \staffUp s8 s2 \shpSlurDM \noPadScript <g'''d bes>2-^_\(<g d aes>4( | %166
  <ees g,>)\) b'\rest \shpSlurDO <ees~ g,_~ees_~>->\( <ees g,ees>2 <d bes ees,>4                 | %167
\tempoAgitato \hideTempo
  <c bes ees,>2.( <d a! f>2) <d a ees>4( \stemNeutral                                            | %168
  <bes d,>4)\) b\rest b\rest <bes'bes,>2( <b b,>4)                                               | %169
  \tupletUp \times 3/5 { \shpSlurDS <c c,>4(<des bes><c e,><b bes!><c e,>) } \stemUp
     \shortStemRev \acciaccatura { \shpSlurDT <c aes>8 }
     \stemDown \posScrpRevPad <aes'aes,>4-. b,,\rest b8\rest <c'ees,>                            | %170
  \times 3/5 { \shortStemTre <bes d,>4(<c aes><bes d,><a aes!> <bes d,>) }
     \stemUp \acciaccatura { <bes g>8 } \stemDown <g'g,>4-. b,,\rest b8\rest <bes'd,>            | %171
  \times 3/5 { <aes c,>4(<bes ees,><aes c,><g ees> <aes c,>) }
     \stemUp \acciaccatura { <aes f>8 } \stemDown <f'f,>4-. b,,\rest <aes'f>(                    | %172
\tempoPresto \hideTempo
  <f g>4) \stemUp \slurDown \acciaccatura { bes!8 } \stemNeutral \slurNeutral
     \shpSlurHH <aes f>4.->( <g f>8) <g ees>4-.( <aes ees>-. <a ees>-.)                          | %173
  \shortStemTwo \shpSlurDY <f bes,aes>2.( \shortStemRev <g d bes aes>2) <g d bes aes>4           | %174
  \stemDown g,4 \stemNeutral b\rest b\rest \shpSlurEA <ees'g,ees>2->\( <d bes ees,>4             | %175
  <c bes ees,>2. <d a! f>2 <d a ees>4                                                            | %176
  <bes d,>4\) b,\rest b\rest \shpSlurEC <bes''bes,>2_>\( b,,8\rest <bes''bes,>8                  | %177
\tempoModPrstis \hideTempo
  <bes bes,>2 b,,4\rest \stemUp \slurUp \shpSlurEF c2->(d4                                       | %178
  \times 3/4 { \posScriptAO ees4\trill d ees g } \onceHideTuplet
    \times 3/4 { <g d>-.) \moveNoteCin \shpSlurED g2-^~( \times 2/3 { g8 f ees) } }              | %179
  \shortStemRev ees2\) b4\rest b\rest \stemNeutral \tupletSpan 4
     \times 2/3 { b8\rest(^\conForza g[ aes] bes d c }                                           | %180
  bes2.-\tenTxt) b4\rest \times 2/3 { \shpSlurEI b8\rest( g[ aes] bes d \posHairpinAE c\< }      | %181
  \posScriptAR bes2._\tenTxt) b4\rest \times 2/3 { \shpSlurEI b8\rest( f [aes] bes d c\! }       | %182
  bes4) \times 2/3 { b8\rest \shpSlurEK des,[_( ees] g c bes } aes4. \posBeamE ces,8 ees f       | %183
  g4) \posScriptAS b\rest_\sempreF b\rest b\rest \times 2/3 { b8\rest( g[ aes] bes d c }         | %184
  bes8-.)\noBeam bes'-. bes'4-. b,,\rest b\rest \times 2/3 { \shpSlurEI b8\rest( g[aes] bes d c }| %185
  bes8-.)\noBeam bes'-. bes'4-. b,,\rest b\rest \times 2/3 { \shpSlurEI b8\rest( f[aes] bes d c }| %186
  \phrasingSlurDown \tieDown 
  bes4) \times 2/3 { b8\rest \shpSlurEK des,[_( ees] g c bes } aes4. \posBeamE ces,8 ees f       | %187
  \shpSlurEN g2.)~ g8\noBeam \posHairpinAG \shpSlurEO g(\< bes g'f ees                           | %188
  \slurUp \phrasingSlurUp\tieUp \shpSlurEP bes2.)\(~bes8 g bes g'f ees\!                         | %189
\tempoModPr \hideTempo
  \shpSlurEQ d2.\)\(~ \posHairpinAH d8\> bes d bes'a g                                           | %190
\tempoMod \hideTempo
  \shpSlurER d2.\)\(~-\riten d8 bes d bes'a g\!                                                  | %191
  \dimPiuRallentSpanner d8\startTextSpan bes d bes'a g d bes d bes'a g                           | %192
  d8 a'c bes g ees bes g c,d f ees\stopTextSpan  \stemUp                                         | %193
  d,2.\)-\menoMossoLegend b''8\rest \hideNotes
\tempoModPr \hideTempo
     \stemDown \tieDown \shpSlurEU c,8(_~ \unHideNotes \moveNoteOne c2                           | %194
  \stemUp g'2.) d'(                                                                              | %195
  c2.) b8\rest \hideNotes \stemDown \shpSlurEU c,8(~ \unHideNotes \moveNoteOne c2                | %196
  \stemUp g'2.) e->(                                                                             | %197
  fis2.) b8\rest \hideNotes \stemDown \shpSlurH c,8\(~ \unHideNotes \moveNoteOne c2              | %198
  \stemUp g'2.\) d'(                                                                             | %199
  \posScriptAX e2.)_\f s8 \stemDown \shpSlurN \tweak Stem.transparent ##t bes,2( s8              | %200
  \stemUp g'2.) \shpSlurEX e'(                                                                   | %201
  fis2. e2) f8\rest fis                                                                          | %202
  fis2.( e2) f8\rest fis                                                                         | %203
\tempoModPrstis \hideTempo
  fis2.( e2) g8\rest fis                                                                         | %204
  \posScriptBC \shpSlurFB a2.->(-\moltoCresc g2 a4                                               | %205
\tempoPresto \hideTempo
  \stemDown <bes d,bes>4) b,8\rest \shpSlurFA <d'bes'>8-.\( <ees c'>-.
     <d bes'>-. <c a'>-.[ <bes g'>-.<a fis'>-.<bes g'>-. <a f'>-. a16\rest <g ees'>-.]           | %206
  <g ees'>8-.<fis d'>-.<ees c'>-.<d bes'>-.<c a'>-.<bes g'>-.
     \times 2/3 { \posScriptBB <a fis'!>-.[-\pocoRiten\< <c ees>-.<c d>-.] }
     \times 4/5 {<b d>16-.<bes d>-.<a d>-.<gis d'>-.<a d>-. } <d bes>-.<d a>-.<d c>-.<d bes>-.\! | %207
  \bar "||" \time 4/4
\tempoPrestissimo \hideTempo
  \posScriptBE <d g,>8-.^\ffz\) b\rest \shpSlurFC <bes''g d>->(\ff
     a,)^\prestoConFuoco b,\rest<g''d bes> \shpSlurFD <g d bes>->( fis,)                         | %208
  b,8\rest <d'bes g> \shpSlurFD <d bes g>->( cis,) b\rest <bes'g d> \shpSlurFD <bes g d>->( bes,)| %209
  b8\rest <c'g ees> \shpSlurFE <c g ees>->\( d, cis c <c'g ees>-> d,                             | %210
  cis c <c'fis,ees>-> d,cis c <a'fis d>-> \posScriptBD c,\)_\fzWhiteTxt                          | %211
  \shortStemCin <bes'g d bes>4-. \shpSlurFC <bes'g d>8->( a,)
     b,\rest <g''d bes> \shpSlurFD <g d bes>->( fis,)                                            | %212
  b,8\rest <d'bes g> \shpSlurFD <d bes g>->( cis,) b\rest <bes'g d> \shpSlurFD <bes g d>->( bes,)| %213
  b8\rest <c'g ees> \shpSlurFF <c g ees>->( d,) cis c \shpSlurFG <c'g ees>->\( d,                | %214
  cis8 c <c'fis,ees>-> d,cis c <a'fis d>-> c,\)                                                  | %215
  <bes'g d bes>4-. \shpSlurFH \posHairpinAL aes8\(^\< <aes'ees>
     \posBeamF aes, \posHairpinAM <aes ees>\!^\> g, ees'\!                                       | %216
  fis, <fis'a,!> fis <fis'a,!> \posBeamG g, <g'bes,> g, <g bes,>\)                               | %217
  \shpSlurFK aes,8\( <aes'ees> aes <aes'ees> aes, <aes ees> g,<g'ees>                            | %218
  fis,8 <fis'a,!>fis <fis'a,> g, <g'bes,>g,<g bes,>\)                                            | %219
  \shpSlurFL f,!8\( <f'!aes,> f <f'!aes,> f,<ees aes,> ees,<ees'aes,>                            | %220
  d,8 <d'aes> d <d'aes> d, <c aes> c, <c'aes>\)                                                  | %221
  \posHairpinAN \shpSlurFM c,8^\<\( <c'ees,> c\!<c'ees,> c,[<c'ees,>] bes,<bes'd,>\)             | %222
  bes,( <bes'd,> a, <a'c,> g, <g'bes,> fis, <fis'a,>)                                            | %223
  \shpSlurFQ <g bes,g>4-.\( aes8\< <aes'ees> aes,\! <aes ees>\> g, ees'\!                        | %224
  fis,8 <fis'a,!> fis <fis'a,!> g, <g'bes,> g, <g bes,>\)                                        | %225
  \shpSlurFS aes,8\( <aes'ees> aes <aes'ees> aes, <aes ees> g,<g'c,>                             | %226
  fis,8 <fis'a,!>fis <fis'a,!> g, <g'bes,>g,<g bes,>\)                                           | %227
  \shpSlurFT f,!8\( <f'!aes,> f <f'!aes,> f,<ees g,> ees,<ees'g,>                                | %228
  d,8 <d'fis,> d <d'fis,> \posBeamH d, <cis e,> cis, <cis'e,>                                    | %229
  c,!8 <c'!ees,!>\) \shpSlurFV c\( <c'ees,> b, <b'ees,> c, <c'ees,>                              | %230
  c,8<c'ees,>\) \shpSlurFU ees,\( <ees'!ges,>d,<d'ges,> ees,<ees'ges,>                           | %231
  ees,<ees'ges,>\) \shpSlurFW ges,\(<ges'bes,>f,<f'gis,!>fis,<fis'a,!>                           | %232
  fis,8 <fis'a,>\) a,( <a'c,> bes,<bes'd,>c,<c'ees,>)                                            | %233
  \shpSlurFX c,8(\( <c'ees,> \posHairpinToBlnF bes,\< <bes'd,>) bes,( <bes'd,> a, <a'c,>)        | %234
  a,8(\! <a'c,> g, <g'bes,>) \shpSlurFY g,( <g'bes,> d, <d'fis,>)\)                              | %235
  b,8\rest \posHairpinToBlnF \shpSlurFZ bes'\<(\( <bes'd,> bes,) 
     \shpSlurFF <bes'des,>->( bes,) \shpSlurFF <a'c,>->( a,)                                     | %236
  \shpSlurFF <a'c,>8->\!( a,) \shpSlurFF <g'bes,>->( g,)
     \shpSlurFF <g'bes,>->( g,) \shpSlurFF <d'fis,>->( d,)\)                                     | %237
  b8\rest \stemUp \ottava #1 \setOttavaStyle \shpSlurGA d'\( <d' bes g>-> 
     d, \ottava #0 \slurDown s4 <d bes g>8->( d,)                                                | %238
  s4 <d bes g>8->( d,) \staffDown s4 <d bes g>8->( d,)\)                                         | %239
  s4 \allowTextScriptInStaff <e'bes g>8->( d,) s4 <e'bes g>8->( d,)                              | %240
  s4 <e'bes g>8->( d,) s4 <e'bes g>8->( d,)                                                      | %241
  \tupletDown \staffUp b''2\rest \tuplet 6/4 2 { \shpSlurGB g,8\([ gis a bes b c]                | %242
  \stemNeutral cis8[ d ees e f fis] \tupletUp \posScriptBJ g[ gis a bes b c!]                    | %243
\setShortLedgers
  cis8[ d ees e f fis]  g[ gis a bes b c!]                                                       | %244
  cis8[ d ees e f fis] \ottava #1 \setOttavaStyle \posOttavaE
     g[ gis a bes b \posScriptBK cis]\)_\fzSforzato }                                            | %245
  \scaleDurations 16/13 { \posBeamM
     \shpSlurGC ees16[\( \cntBeamRtOne d
     \cntBeamLfOne f ees \cntBeamRtOne d
     \cntBeamLfOne c b d \cntBeamRtOne c
     \cntBeamLfOne bes a g \cntBeamRtOne fis] }                                                  | %246
  \bar "!"
  \posBeamL \cntBeamLfOne a16[ g f ees \cntBeamRtOne d \ottava #0
  \cntBeamLfOne ees \cntBeamRtOne d
  \cntBeamLfOne f! ees d c \cntBeamRtOne b
  \cntBeamLfOne d c bes \cntBeamRtOne a                                                          | %247
  \revShortLedgers
  \scaleDurations 16/19 {
     \cntBeamLfOne g16 fis a \cntBeamRtOne g
     \cntBeamLfOne fis  ees d ees \cntBeamRtOne d
     \cntBeamLfOne f ees d \cntBeamRtOne c
     \cntBeamLfOne b d c bes a \cntBeamRtOne g }                                                 | %248
  \bar "!"
  \scaleDurations 16/20 {
     \cntBeamLfOne fis16 ees d \staffDown c bes a g fis ees d c bes 
     a g fis ees d c bes a] }                                                                    | %249
  \hideNotes g1\) \unHideNotes \stemUp \slurUp                                                   | %250
  \scaleDurations 16/21 { d''16\rest \shpSlurGD a( bes c d e fis g a bes c
     \staffUp d e fis g a bes c d e \posScriptBL fis_\fzSforzatoHi }                             | %251
  \posScriptBU g8-.) \stemNeutral b,\rest b4\rest \clef bass<bes,g d>4.(-\ritenSm <bes g d>8     | %252
  \hideTupletBracket \tupletSpan 2 \tupletDown <bes g d>2)
     \tuplet 6/4 { \posScriptBV d,8\rest-\accel \shpSlurGI d[( g a c bes] }                      | %253
  bes8-.) d,\rest d4\rest \shpSlurGF  bes2~\(                                                    | %254
  \scaleDurations 16/28 { \posBeamJ bes16[ c d e fis g a bes 
     \clef treble c d e fis g a bes c \posHairpinAP d\< e fis g a bes c d e fis g a]}            | %255
  bes8-.\) \posScriptBO b,,\rest^\fzText \posScriptBP b4\rest^\pianoTxt
     \clef bass <d,bes g d>4.(-\ritenSm <d bes g d>8                                             | %256
  <d bes g d>2) \clef treble \tupletUp
     \tuplet 6/4 { \posScriptBR b'8\rest-\accel d,[(g bes ees d]\! }                             | %257
  d8-.) b\rest \posScriptBW b4\rest_\fff \tuplet 3/2 { \ottava #1 \setOttavaStyle
     \slurDown \posScriptBX \acciaccatura { \stemUp e''8 } \stemDown <e e,>4-^
     \pocoRitenSpanner \acciaccatura { \stemUp ees8\startTextSpan } \stemDown <ees ees,>4-^
     \acciaccatura { \stemUp d8 } \stemDown <d d,>4-^ }                                          | %258
  \hideTupletNumber
  \tuplet 3/2 {  \acciaccatura { \stemUp cis8 } \stemDown <cis cis,>4-^
     \acciaccatura { \stemUp c8 } \stemDown <c c,>4-^ \acciaccatura
     { \stemUp b8 } \stemDown <b b,>4-^ \acciaccatura {\stemUp bes8}
     \stemDown <bes bes,>4-. <a a,>-.\stopTextSpan <aes aes,>-. \ottava #0                       | %259
  <g g,>4-. <fis fis,>-. \posHairpinAQ <f f,>-.\<  <e e,>-. <ees ees,>-.<d d,>-.                 | %260
  <cis cis,>4-. <c c,>-. <b b,>-. <bes bes,>-.<a a,>-. <aes aes,>-.\! }                          | %261
  <g g,>2-. b,\rest                                                                              | %262
  \ottava #1 \setOttavaStyle <bes''g d bes>1-^ \ottava #0                                        | %263
  g,,,1\fermata                                                                                  | %264
  \bar "|."
}

upperTwo =  \relative c' {
  \time 4/4
  \repeat unfold 7 { s1 | }                                                                                             % 1-7
  \time 6/4 \mergeDifferentlyHeadedOn
  s2. s8 \stemUp c8-\hideP d fis bes a \stemDown                                                                      | % 8
  \shortStemTre b,4\rest \shpSlurGM \posScriptAP <d bes>-.(-\hidePP <d bes>-.) b\rest \shpSlurGM <g'd>-.( <g d>-.)    | % 9
  c,4\rest \shpSlurGM <g' ees>-.( <g ees>-.) \posScriptAPrev s8 \shortStemRev \stemUp c,8^> d fis bes a \stemDown     | %10
  b,4\rest <d bes>-.( <d bes>-.) g,\rest \shpSlurK <cis a g>-.( <cis a g>-.)                                          | %11
  a4\rest \shortStemTre <d a fis>-.( <d a fis>-.) \shortStemRev s8 \stemUp c^> d fis bes a \stemDown                  | %12
%------------ Schirmer, Breitkopf & Härtel, and Cortot: Bar13 5th and 6th beat:<des bes g>
  b,4\rest \shortStemTre \shpSlurI <d bes>-.( <d bes>-.)  g\rest \shpSlurI <des'bes g>-.( <des bes g>-.)              | %13
  g,4\rest \shpSlurK <bes c>-.( <bes c>-.) \shortStemRev \stemUp \posBeamA ees,8^>[ f a ees' d b16\rest cis]          | %14
  e,4\rest \stemDown \shpSlurL \shortStemTre <a f ees>-.( <a f ees>-.)
     e\rest \shpSlurI <bes' f d>-.( <bes f d>-.) \shortStemRev                                                        | %15
  e,4\rest \shortStemTre \shpSlurI <g ees>-.( <g ees>-.) \shortStemRev s8 c,^[^> d fis bes a]                         | %16
  a,4\rest \shpSlurI \shortStemTre <d bes>-.( <d bes>-.) c\rest \shpSlurI <g'd>-.( <g d>-.)                           | %17
  c,4\rest \shpSlurI <g'ees>-.(<g ees>-.) s8 \shortStemRev c,^[^> d fis bes a]                                        | %18
  a,4\rest \shortStemTre <d bes>-.(<d bes>-.) g,\rest \shpSlurK <cis a g>-.( <cis a g>-.)                             | %19
  a4\rest \shpSlurI <d a fis>-.( <d a fis>-.) \shortStemRev s8 c^>^[ d fis bes a]                                     | %20
  a,4\rest \shortStemTre \shpSlurI <f'd b>4-.( <f d b>-.) g\rest \shpSlurK <d'b g f>-.( <d b g f>-.)                  | %21
  \posHairpinE a4\rest <ees'c g>-.( <ees c g>-.) e,\rest \shpSlurI <g d>-.( \shpSlurI <g d>-.)                        | %22
  c,4\rest \shpSlurI <g'c,>-.( <g c,>-.) b,\rest \shpSlurI <d bes>-.( <d bes>-.)                                      | %23
  g4\rest \shpSlurI <ees'c g>-.( <ees c g>-.) d,\rest \shpSlurI <g d>-.( <g d>-.)                                     | %24
  d4\rest \shpSlurI <g c,>-.( <g c,>-.) a,\rest \shpSlurL <cis bes>-.( <cis bes>-.)                                   | %25
  a4\rest \shpSlurI <d bes>-.( <d bes>-.) e\rest \shpSlurI <bes'f d>-.( <bes f d>-.) \shortStemRev                    | %26
  \shortStemTre \posScriptC <a! ees>4 <a ees> <a ees> <a ees> <a ees> <a ees>                                         | %27
  g\rest <bes ees,> <bes ees,> <bes d,> <bes d,> <bes d,>                                                             | %28
  <fis c>\< <fis c> <fis c> <fis c> <fis c> <fis c>                                                                   | %29
  e\rest\> <g!c,> <g c,><g bes,>\!<g bes,><g bes,> \shortStemRev                                                      | %30
  <g ees> <g ees> <g ees> <fis d> <fis d> <fis d>                                                                     | %31
  \shortStemQtr <e a,>4\arpeggio\pp \posHairpinF s1\< s4                                                              | %32
  s2. s16\! \posScriptF s8.-\pocoCresc s2                                                                             | %33
  s1.                                                                                                                 | %34
  s1. \tieUp \slurUp                                                                                                  | %35
  s4 \posHairpinH \shpSlurAC bes'8\<( d\! \posHairpinI f\> \shpSlurAD ees\!~ ees4) \shpSlurAF a,8\<( cis\!
     \posHairpinI ees\> \shpSlurAE d\!~                                                                               | %36
  d4) \shpSlurAF bes8\<( d\! \posHairpinI f\> \shpSlurAD ees\!~ ees4) aes,8\<( cis\!\posHairpinI ees\> \shpSlurAG d\!~| %37
  \posHairpinHrvt d4) \shpSlurAM g,8( b d \shpSlurAN c~ c4) \shpSlurAO c,8( gis' bes a~                               | %38
  a4) \shpSlurAP ees8( b' d \shpSlurAN c~ c4) \alignBeamTwo  ees,8\< d cis c                                          | %39
  bes4_\f \shpSlurAK bes'8( \posScriptI d^\agitato f ees) b4\rest \shpSlurAL a8( cis ees d)                           | %40
  b4\rest \shpSlurAK bes8( d f ees) b4\rest \shpSlurAL aes8( cis ees d)                                               | %41
  b4\rest \posScriptG \shpSlurAL g8->( b d c) b4\rest \shpSlurAU c,8->( gis' bes a)                                   | %42
  b4\rest \posScriptG \shpSlurAV ees,8->( b' d c) b4\rest fis,8-> cis' ees d                                          | %43
  \posScriptM bes4-\f g-> s4 bes g-> s4                                                                               | %44
  s1.                                                                                                                 | %45
  bes'4 g-> s bes \noPadScript g-> s                                                                                  | %46
  \repeat unfold 3 { s1. | }                                                                                          | %47-49
  \repeat unfold 17 { s1. | }                                                                                         | %50-66
  s1 s4 \stemDown \ignoreClashOnce c,4_~                                                                              | %67
  \shpSlurGT c2._( d                                                                                                  | %68
  ees2.) s                                                                                                            | %69
  \shpSlurGT g2._( a                                                                                                  | %70
  bes2.) s                                                                                                            | %71
  \repeat unfold 4 { s1. | } \slurDown                                                                                  %72-75
  \shpSlurGT c,!2.( d                                                                                                 | %76
  ees2.) s                                                                                                            | %77
  \shpSlurGT g2.( a                                                                                                   | %78
  bes2.) s                                                                                                            | %79
  \repeat unfold 5 { s1. | }                                                                                            %80-84
  s4 \scaleDurations 2/3 { s8 des,4-> s4. } s4 s8 \posScriptR ces4-> s8                                               | %85
  \repeat unfold 3 { s1. | }                                                                                            %86-88
  s4 \scaleDurations 2/3 { s8 des4-> s4. } s4 s8 \posScriptR ces4-> s8                                                | %89
  \repeat unfold 4 { s1. | }                                                                                            %90-93
  s2. \stemUp s8 \noPadTxtScrp d8-\hidePP_\sottoVoce e^\aTempoMenoMosso gis c b                                       | %94
  c,4\rest-\hidePPP \stemDown \shpSlurI <e c>-.( <e c>-.) e\rest \shpSlurI a-.( a-.)                                  | %95
  e\rest \shpSlurI <a f>-.( <a f>-.) b8\rest \stemUp d, e_\semprePP gis c b \stemDown                                 | %96
  c,4\rest <e c>_.( <e c>)_.) a,\rest <e'c a>_.( <e c a>_.)                                                           | %97
  a,\rest <e'b>_.( \posHairpinR <e b>_.)\< s8 \stemUp d e! gis! c b                                                   | %98
  \stemDown c,4\rest\! \shpSlurHA \posScriptAP  <e c>_.( <e c>_.)
     \posScriptAPrev \posScriptT d\rest_\crescTiny \shpSlurI <c'a>_.(<c a>_.)                                         | %99
  \posScriptU g4\rest_\f \shpSlurI <c a e>_.( <c a e>_.) b8\rest-\hidePP \stemUp c,8 e gis b a                        | %100
  \stemDown \posScriptCE c,4\rest_\fzSforzato \shpSlurCB \posScriptY <e c>_.( <e c>_.) \posScriptYrev
     \posScriptV e\rest_\crescTinyB \shpSlurCB \shortStemTwo \posScriptY <c'a e>_.( <c a e>_.) \posScriptYrev         | %101
  \posHairpinS e,4\rest\< \sempreCrescSpanner \shpSlurCB \posScriptY
     \textSpannerDown <dis'c a>_.(\startTextSpan <dis c a>_.) \posScriptYrev g,\rest <dis'c a> \posHairpinT g,\rest\< | %102
  \posScriptW g4\rest_\sfSforzato\! <dis'c a> <dis c a> g,\rest <dis'c a> g,\rest                                     | %103
  \posScriptW g4\rest_\sfSforzato <dis'c a> <dis c a> g,\rest <dis'c a> g,\rest\stopTextSpan                          | %104
  g4\rest <fis'dis c><fis dis c> g,\rest <fis'dis c><fis dis c>                                                       | %105
  \repeat unfold 4 { s1. | }                                  | %106-109
\squeezeNotation
  \moveNoteTre a1.                                            | %110
  \moveNoteTre gis1.                                          | %111
  fis2. eis2 s4                                               | %112
\tag #'printed {
  \moveNoteNov <f cis>2. s4 <d b a>8<d b a><d b a><d b a>     | %113-print
}
\tag #'played {
  <fis cis>2. <dis b a>4 <dis b a>8<dis b a><dis b a><dis b a>| %113-played
}
  s1.                                                         | %114
  \unSqueezeNotation
  \repeat unfold 6 { s1. | }                                    %115-120
  \stemUp gis,2 s1                                            | %121
  \repeat unfold 2 { s1. | }                                    %122-123
  s4 \hideNotes \shpSlurCM b''8 ^\( \unHideNotes s8 s1        | %124
  s1 s4 ces,,,\)^(                                            | %125
  \hideNotes bes8) \unHideNotes s4. s1                        | %126
  \repeat unfold 10 { s1. | }                                   %127-136
  \squeezeNotation s1 a''4 aes \unSqueezeNotation             | %137
  \repeat unfold 3 { s1. | }                                    %138-140
  ees4. d c bes                                               | %141
  \repeat unfold 8 { s1. | }                                    %142-149
  \stemDown \slurUp \shiftOnn
  s2 \shpSlurCX d,4~ \smallNotehead \moveNoteQtr d4 ees
     \hideNotes \shpSlurCX e4~                            | %150
  \unHideNotes \smallNotehead \moveNoteTwo e4 f e~
     \smallNotehead \moveNoteQtr e f fis~                 | %151
  \smallNotehead \moveNoteTwo \hideAccidental fis4 g fis~
     \smallNotehead \moveNoteTwo fis g gis~               | %152
  \smallNotehead \moveNoteTwo gis4 a_( ais)~ 
     \smallNotehead \moveNoteQtr ais b bis                | %153
  \repeat unfold 12 { s1. | }                               %154-165
  b2.\rest s                                              | %166
  \repeat unfold 7 { s1. | }                                %167-173
  \stemUp \phrasingSlurUp \shpSlurDX bes'2.^^\( bes2 \shpSlurDZ bes4(    | %174
  ees,4)\) s4 s1 \stemDown \slurDown                                     | %175
  \repeat unfold 2 { s1. | }                                               %176-177
  s2. \posScriptAP \shpSlurEB c,4_.( c\rest d_.)                         | %178
  \onceHideTuplet \times 3/4 { \shpSlurEB ees_.( d_. ees_. g_.) }
     \hideTupletBracket \posScriptAQ \times 3/4 { \shpSlurEB 
     g_.( aes_. bes_. \moveNoteSep aes_.) }                              | %179
  g2_. s1   \posScriptAPrev                               | %180
  \repeat unfold 2 { s1. | }                                %181-182
  s4 \hideTupletNumber \times 2/3{s8 des4 } s4 s4. ces4 s8| %183
  \repeat unfold 3 { s1. | }                                %184-186
  s4 \times 2/3{s8 des4 } s4 s4. ces4 s8                  | %187
  \repeat unfold 6 { s1. | }                                %188-193
  s2. s8 \stemUp c8 d fis bes a                           | %194
  \stemDown \slurDown a,4\rest \posScriptAP \shpSlurEV <d bes>_.( <d bes>_.) e\rest \shpSlurEV g_.( g_.)              | %195
  e4\rest \shpSlurEV <g ees>_.(<g ees>_.) s8 \stemUp c, d fis bes a                                                   | %196
  \stemDown a,4\rest \shpSlurEV <d bes>_.(<d bes>_.) g,\rest \shpSlurEV <cis bes g>_.( <cis bes g>_.)                 | %197
  a4\rest \shpSlurEV <d a fis>_.(<d a fis>_.) \posScriptAPrev s8 \stemUp c d fis!bes a                                | %198
  \stemDown b,4\rest \posScriptAP \shpSlurEV <d bes>_.(<d bes>_.) \shpSlurEV e\rest <bes'g>_.(<bes g>_.)              | %199
  e,4\rest \posHairpinAJ <bes'g>_.(\< <bes g>_.) \posScriptAY b8\rest^\pianoTxt \stemUp bes, cis e a g\! \stemDown    | %200
  \posHairpinAI b,4\rest \shpSlurEZ <e cis bes>_.( <e cis bes>_.) e\rest <cis'bes g>_.( <cis bes g>_.)                | %201
  \posScriptAZ g4\rest_\sfSforzato <cis bes g>_.( \posScriptBA <cis bes g>_.)_\sempreCresc g\rest <cis bes g> g\rest  | %202
  g4\rest <cis bes g>_.(<cis bes g>_.) \posScriptAPrev g\rest <cis bes g> g\rest                                      | %203
  g4\rest <cis bes g><cis bes g> g\rest <cis bes g> g\rest                                                            | %204
  b4\rest <e cis bes><e cis bes> a,\rest \posHairpinAK <e'cis bes>\< d\rest                                           | %205
  s8 s16\! s16_\appassPiuForte s1 s4                      | %206
  s1.                                                     | %207
  \time 4/4
  \repeat unfold 8 { s1 | }                                 %208-215
  \stemUp s4 \shortStemRev aes'^^ s8 aes4^> g8            | %216
  fis,4^> s4 g' s                                         | %217
  aes,4^> aes' s g,^>                                     | %218
  fis4^> s g' s                                           | %219
  f,4^> s2 ees4^>                                         | %220
  d4^> d' s c,^>                                          | %221
  s4 c' c bes^>                                           | %222
  bes4^> a g fis                                          | %223
  s4 aes'^^ s8 aes4^> g8                                  | %224
  fis,4^> s g' s                                          | %225
  aes,4^> aes' s g,^>                                     | %226
  fis4^> s g' s                                           | %227
  f,4 s2 ees4                                             | %228
  d4 s2 cis4                                              | %229
  c4 c' b c                                               | %230
  c4 ees d ees                                            | %231
  ees4 ges f fis                                          | %232
  fis4 a bes c                                            | %233
  c4^> bes bes^> a                                        | %234
  a4^> g g^> d                                            | %235
  \repeat unfold 4 { s1 | }                                 %236-239
  \posScriptBI s1^\sempreFF                               | %240
  \repeat unfold 9 { s1 | }                                 %241-249
  \restDownOne R1                                         | %250
  \repeat unfold 14 { s1 | }                                %251-264
}

upperTre = \relative c' {
  \time 4/4 \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn \stemDown
  \repeat unfold 7 { s1 | } \time 6/4        % 1-7
  \time 6/4
  s1 \tweak Stem.transparent ##t d2-\hideP | % 8
  s1.                                      | % 9
  s1 \tweak Stem.transparent ##t d2        | %10
  s1.                                      | %11
  s1 \tweak Stem.transparent ##t d2        | %12
  s1.                                      | %13
  s1 a'2                                   | %14
  s1.                                      | %15
  s1 \tweak Stem.transparent ##t d,2       | %16
  s1.                                      | %17
  s1 \tweak Stem.transparent ##t d2        | %18
  s1.                                      | %19
  s1 \tweak Stem.transparent ##t d2        | %20
  \repeat unfold 73 { s1. | }                %21-93
  s1 \tweak Stem.transparent ##t e2        | %94
  s1.                                      | %95
  s1 \tweak Stem.transparent ##t e2        | %96
  s1.                                      | %97
  s1 \tweak Stem.transparent ##t e2        | %98
  s1.                                      | %99
  s1  e4. s8                               | %100
  \repeat unfold 12 { s1. | }                %101-112
\tag #'printed {
  s4 \posScriptCJ a2_\sharpTxt s2.         | %113-print
}
\tag #'played {
  s4 a2 <dis b a>4 s2                      | %113-midi
}
  \repeat unfold 80 { s1. | }                %114-193
  s1 \tweak Stem.transparent ##t d,2       | %194
  s1.                                      | %195
  s1 \tweak Stem.transparent ##t d2        | %196
  s1.                                      | %197
  s1 \tweak Stem.transparent ##t d2        | %198
  \repeat unfold 9 { s1. | }                 %199-207
  \time 4/4
  \repeat unfold 8 { s1 | }                  %208-215
  s2. \stemUp g4                           | %216
  \repeat unfold 33 { s1 | }                 %217-249
  \posHairpinAO s1^\<                      | %250
  s2 s4 s4\!                               | %251
}
upperQtr = \relative c' {
  \time 4/4
  \repeat unfold 7 { s1 | }                  % 1-7
  \time 6/4 \mergeDifferentlyDottedOn \stemDown
  s1 s8 fis4.-\hideP                       | % 8
  s1.                                      | % 9
  s1 s8 fis4.                              | %10
  s1.                                      | %11
  s1 s8 fis!4.                             | %12
  \repeat unfold 3 { s1. | }                 %13-15
  s1 s8 fis4.                              | %16
  s1.                                      | %17
  s1 s8 fis4.                              | %18
  s1.                                      | %19
  s1 s8 fis!4.                             | %20
  \repeat unfold 73 { s1. | }                %21-93
  s1 s8 gis4.-\hidePP                      | %94
  s1.                                      | %95
  s1 s8 gis4.                              | %96
  s1.                                      | %97
  s1 s8 gis4.                              | %98
  s1.                                      | %99
  s1 s8 gis4 s8                            | %100
  \repeat unfold 78 { s1. | }                %101-178
  \stemUp s2. \onceHideTuplet \times 3/4 { s4 
     \moveNoteSix \shortStemOne d'2. }     | %179
  \repeat unfold 14 { s1. | }                %180-193
  \stemDown s1 s8 fis,4.                   | %194
  s1.                                      | %195
  s1 s8 fis4.                              | %196
  s1.                                      | %197
  s1 s8 fis4.                              | %198
  s1.                                      | %199
  s1 cis4. s8                              | %200
  \repeat unfold 7 { s1. | }                 %201-207
  \time 4/4
  \repeat unfold 57 { s1 | }                 %208-264  
}

upperStaff =  <<
  { 
    \voiceOne \upperOne 
  } \\ 
  {
    \voiceTwo \upperTwo 
  } \\
  {
    \voiceThree \upperTre 
  } \\
  {
    \voiceFour \upperQtr 
  }
>>

lowerOne = \relative c, {
  \time 4/4
  \setRestDirUp
  \shpSlurC c2-\hideF\(_~ c8 ees aes bes                                                   | % 1
  c8_[ aes ees'bes'] \clef treble c aes \posHairpinA ees'\>bes'                            | % 2
  c8 g bes aes  g4 fis8\!\) b8\rest                                                        | % 3
  b8\rest fis8_\(-\hideP g fis  eis fis \tupletDown \times 2/3 { a g ees }                 | % 4
  ees8. d16 \tupletUp \times 2/3 { f!8 ees d\) } d4 \staffDown b'\rest                     | % 5
  \clef bass
  d,,2\rest \stemDown \shpSlurGL <c' g ees>2(^>                                            | % 6
  <ees g,d>1\arpeggio)\sustainOn                                                           | % 7
  \bar "||" \time 6/4 \stemNeutral
  d,2.\rest\sustainOff-\hidePP d,4_. \posScriptCA d'\rest^\pDolce d\rest                   | % 8
  d4\rest g,_._( g_.) d'\rest bes'-.( bes-.)                                               | % 9
  d,4\rest <c'a>-.( <c a>-.) d,\rest d,_._( d_.)                                           | %10
  d'4\rest g,_._( g_.) d'\rest a_._( a_.)                                                  | %11
  d4\rest \shpSlurI d,_._( d_.) d'\rest d-.(d-.)                                           | %12
  d4\rest \shpSlurI g,_._(g_.) d'\rest e'-.(e-.)                                           | %13
  d,4\rest f'-.(f-.)d,\rest \shpSlurI f,_._(f_.)                                           | %14
  d'4\rest bes_._( bes_.) d\rest bes'-.( bes-.)                                            | %15
  d,4\rest a'^.^( a^.) d,\rest \shpSlurI d,_._( d_.)                                       | %16
  d'4\rest g,_._( g_.) d'\rest bes'-.( bes-.)                                              | %17
  d,4\rest <c'a>-.( <c a>-.) d,\rest \shpSlurI d,_._( d_.)                                 | %18
  d'4\rest g,_._( g_.) d'\rest a_._( a_.)                                                  | %19
  d4\rest d,_._( d_.) d'\rest d-.( d-.)                                                    | %20
  d4\rest \posHairpinAR g-._\<( g-.) d\rest g,_._( g_.)\!                                  | %21
  d'4\rest \stemUp c2-\hidePP d4\rest d2                                                   | %22
  d4\rest ees2 d4\rest \shortStemCin d2 \stemDown                                          | %23
  b8->(^\> c d\! c g'4)  cis,8->( d ees d g4)-\hideP                                       | %24
  \posHairpinD d8->_\<( ees f ees g4) \stemUp
     \grace { \posBeamB \shpSlurV \shpSlurW dis16->_([_\( e]) \slashFlag f8 }
     \stemDown \posScriptB \afterGrace e2.\trill { \stemUp \posBeamB dis16[ e]\!\) }       | %25
  \stemDown \shpSlurY f2.^\p~_\( f4 \stemUp <e e,> <f f,>                                  | %26
  <fis~ fis,_~>2. <fis fis,>4 <eis eis,> <fis fis,>\)                                      | %27
  \shpSlurZ <g g,>1._\(                                                                    | %28
  <d d,>1.                                                                                 | %29
  <ees ees,>1.                                                                             | %30
  <c c,>2. <d d,>                                                                          | %31
  <cis cis,>4\)\arpeggio \stemNeutral \doubleSlursOff 
     <e' a, e>-.( <e a, e>-. <e a, e>-. <e a, e>-. <e a, e>-.)                             | %32
  <c,!c,!>4 \shpSlurGN <f'ees!a,f>-.(<f ees a,f>-.<f ees a,f>-.<f ees a,f>-.<f ees a,f>-.) | %33
  <bes,,bes,>4 <bes'f d>( <d bes f>) ees,,<c''g ees>( <ees c g>)                           | %34
  d,,4_. g'2 d2._(                                                                         | %35
  g,4_.) <bes'g>2 fis,4_. <a'fis>2                                                         | %36
  g,4_. <bes'g>2 f,!4_. <b'aes f!>2                                                        | %37
  ees,,4_. <ees'g>2 c,4_. ees'2                                                            | %38
  d,4_. <d'c'>2 d,4_. a''( d,)                                                             | %39
  <g g,>4_. g2 <fis fis,>4_. fis2                                                          | %40
  <g g,>4_. g2 <f! f,!>4_. f2                                                              | %41
  <ees ees,>4_. ees2 <c c,>4_. \stemDown c2                                                | %42
  \stemNeutral d,4_. <g'a,>( <fis c>) d,_. \shpSlurQ <ees'a,>( <d c>)                      | %43
  \stemDown g,4 \stemUp \shpSlurAR <g g,>2_(<d'g,>4_.) \stemDown g, d'\rest                | %44
  <ees c g>2._~ <ees c g>4 \stemUp <g g,> \stemNeutral <ees'ees,>                          | %45
  s4 <g,g,>2( <g d'>4-.) g d\rest                                                          | %46
  \clef treble
  b''4\rest \shpSlurGO a2->(~ a4 <g g,> <ees'ees,>                                         | %47
  \stemDown <d g,>4-.)-\hideMF b\rest b\rest \posScriptO <a fis ees>_._\fz s2              | %48
  s4 d,2_( \posScriptO <a'fis ees>4_.)_\fz s2                                              | %49
  s2. \clef bass <ees,fis a>4_._> s2                                                       | %50
  s4 \shpSlurBE d2_( <ees fis a>4_._>) s2                                                  | %51
  g,2 d'4\rest \stemNeutral <cis cis,>_( <d d,>) d\rest                                    | %52
  <g,g,>4( d') d\rest cis,_( d) d'\rest                                                    | %53
  <g,g,>4 d'\rest c,!( <g'g,>) d'\rest c,(                                                 | %54
  <g'g,>4) d'\rest c,( <g'g,>) d'\rest c,(                                                 | %55
  <g'g,>2.) d'4\rest <d'g>-.( <d g,>-.                                                     | %56
  <d g>2) d,4\rest d\rest d\rest d,_(                                                      | %57
  g2.)~ g2 \shpSlurBM d4_(                                                                 | %58
  fis2.)~ fis2 d4_(                                                                        | %59
  g2.) d'4\rest <d g>(-. <d g,>-.                                                          | %60
  <d g>2) d4\rest d\rest d\rest d,_(                                                       | %61
  ges2.)~ ges2 d4_(                                                                        | %62
  f2.)(~ f2 g4                                                                             | %63
  a!2) d4\rest d\rest \shpSlurBQ <c'f>(\( <c f,>-.                                         | %64
  \piuDimSpanner \shortStemRev <c_~ f~>2.)\startTextSpan <c f>2 <c f,>4(                   | %65
  <c_~ f~>2.) <c f>2 \shpSlurBR <c f,>4(                                                   | %66
  <c f>2 <c f,>4 <c f> <c f,>\stopTextSpan \staffUp \hideNotes \stemDown f)\) \unHideNotes | %67
  \staffDown \stemNeutral \shpSlurGR bes,,,4(_. bes' aes'f c'bes)                          | %68
  ees,,4( bes' ees g bes ees)                                                              | %69
  c( ees f, ees'g f)                                                                       | %70
  \shpSlurGS bes,,( f' bes d f bes)                                                        | %71
  c,4( ees f, bes d aes')                                                                  | %72
  bes,( d ees, aes c g')                                                                   | %73
  aes,( c d,g b f')                                                                        | %74
  g,( c c,f a! ees')                                                                       | %75
  f,4( aes bes,aes'c bes)                                                                  | %76
  ees,,4( bes'ees g bes ees)                                                               | %77
  c( ees f,ees'g f)                                                                        | %78
  \shpSlurGW bes,,4( f'bes d f bes)                                                        | %79
  c,,,4 \shpSlurGV e''( bes \stemUp g e' bes)                                              | %80
  f4 ees'!( a,) bes, \stemNeutral d'( aes)                                                 | %81
  \stemDown
  \shortStemQtr \shpSlurBW ees,8( bes'g'ees bes'g \shortStemRev ees'4) d,4\rest d\rest     | %82
  \shortStemQtr \shpSlurBW ees,8( bes'g'ees bes'g \shortStemRev ees'4) d,4\rest d\rest     | %83
  \shortStemQtr \shpSlurBX ees,8( bes' aes'f bes aes \shortStemRev d4) d,4\rest d\rest     | %84
  \shortStemQtr ees,8( bes' \shortStemRev g'4) d\rest \shpSlurBY \shortStemQtr ees,8(ces'
     \shortStemRev aes'4)d,\rest                                                           | %85
  \shortStemQtr \shpSlurBV ees,8( bes'g'ees bes'g \shortStemRev ees'4) d,\rest d\rest      | %86
  \shortStemQtr \shpSlurBW ees,8( bes'g'ees bes'g \shortStemRev ees'4) d,\rest d\rest      | %87
  \shortStemQtr \shpSlurBX ees,8( bes'aes'f bes aes \shortStemRev d4) d,\rest d\rest       | %88
  \shortStemQtr ees,8( bes' \shortStemRev g'4) d\rest \shpSlurBY \shortStemQtr  ees,8(ces'
     \shortStemRev aes'4)d,\rest                                                           | %89
  \shortStemQtr \shpSlurBV  ees,8( bes'g' ees bes'g \shortStemRev ees'4) d,\rest d\rest    | %90
  \shortStemQtr \shpSlurBW g,8( d'bes'g d'bes \shortStemRev g'4) d,\rest d\rest            | %91
  \shpSlurBW bes8( f'd'bes f'd bes'4) d,,\rest d\rest                                      | %92
  \ppSpanner \shortStemQtr d8(\startTextSpan a'f' 
     \clef treble d a'f \shortStemRev d'4) b\rest b\rest                                   | %93
  \clef bass \stemNeutral \slurDown
  d,,\rest\stopTextSpan \shpSlurI e,_.(-\hidePP e_.) d'\rest \shpSlurI e,_.( e_.)          | %94
  d'\rest \shpSlurI e,_.( e_.) b'\rest \shpSlurI <a'e>_.( <a e>_.)                         | %95
  b,\rest <a'e>_.( <a e>_.) b,\rest \stemDown \shpSlurI e,_.( e_.)                         | %96
  e4\rest e_.( e_.) e\rest e_.( e_.)                                                       | %97
  e4\rest e_.( e_.) e\rest e_.( e_.)                                                       | %98
  e4\rest e_.( e_.) b'\rest <c'a e>_.(<c a e>_.)                                           | %99
  b,4\rest<c'a e>_.(<c a e>_.)e,,\rest e_.( e_.)                                           | %100
  e4\rest \shpSlurCB \posScriptY e_.( e_.) d'\rest \shpSlurCB <c'a e>_.(<c a e>_.)         | %101
  d,4\rest \shpSlurCB  <c'a e>_.(<c a e>_.) \posScriptYrev d,\rest <c'a e> d,\rest         | %102
  d4\rest <c'a e><c a e> d,\rest <c'a e> d,\rest                                           | %103
  d4\rest <c'a e><c a e> d,\rest <c'a e> d,\rest                                           | %104
  \stemNeutral \slurUp d4\rest <c'a e><c a e> d,\rest <c'a e> <c a e>\arpeggio             | %105
  <e,,e,>4-\hideF\arpeggio <d''gis,e>( <e d gis,> <gis d b> <e d gis,> <d gis,e>)          | %106
  <a,a,>4 <cis'e,>(<e a,><a cis,><e a,><cis e,>)                                           | %107
  <b,b,>4 <b'fis>(<dis a><fis b,><dis a><b fis>)                                           | %108
  <e,e,>4 <b'e,>(<e gis,><gis b,><e gis,><b e,>)                                           | %109
\squeezeNotation
  <fis fis,>4 <d'fis,>( <a'a,>) <b,,b,> <d'~ fis,>( <a'd,b>)                               | %110
  <e,e,>4 <cis'e,>( <gis'gis,>) <a,,a,><cis'~e,>( <gis'cis,a>)                             | %111
\tag #'printed {
  <d,d,>4 <b'd,>(<fis'fis,>) <cis,cis,> \posScriptCL <cis'g>(_\sharpTxt <eis b>)           | %112-print
}
\tag #'played {
  <d,d,>4 <b'd,>(<fis'fis,>) <cis,cis,> <cis'gis>(<eis b>)                                 | %112-midi
}
\tag #'printed {
  \posScriptCF <fis,,fis,>4^> \posScriptCM f'2*127/128_\sharpTxt <bes,bes,>4*65/64 f'2         | %113-print
}
\tag #'played {
  \posScriptCF <fis,fis,>4^> fis'2 \posScriptCH <bes,bes,>4_\chordMarkupA fis'2            | %113-midi
}
  <e,e,>4
\tag #'printed { \posScriptCN <gis'bes,>4_\naturalTxt <b ees,><d gis,><b ees,><gis bes,> }
\tag #'played  {<gis b,>4 <b ees,><d gis,><b ees,><gis b,> }                               | %114
  <a,a,>4 <cis'e,> <e a,> <a cis, ><e a,><cis e,>                                          | %115
\unSqueezeNotation
  <b,b,>4 <b'fis ><dis a> <fis b, ><dis a><b fis>                                          | %116
  <e,e,>4 <b'e,> <e gis,> <gis b,><e gis,> <b e,>                                          | %117
  <e,e,>4 <ais e> <cis fis,> <e ais,!> <cis fis,> <ais e>                                  | %118
  <e,e,>4 <ais'e> <cis fis,> <e ais,!> <cis fis,> <ais e>                                  | %119
  <e e,>4 <bis'e,><dis gis,><fis bis,> <dis gis,><bis e,>                                  | %120
  <e,,e,>4<bis''e,><dis gis,><fis bis,!><dis gis,><bis e,>                                 | %121
  <e,e,>4<cis'e,><e gis,><dis,dis,><b'dis,><dis gis,>                                      | %122
  <cis,cis,>4<gis'cis,><cis e,><gis,gis,><gis'b,><b dis,>                                  | %123
  <eis,,eis,>4_. d'\rest d\rest <gis'dis b eis,>2->\arpeggio d,4\rest                      | %124
  \restDownOne R1*6/4 \slurDown \stemUp                                                    | %125
  bes,4( d') d\rest bes,( d') d\rest                                                       | %126
  bes,4( d') d\rest bes,( d') d\rest                                                       | %127
  \stemDown \slurUp \shpSlurCK d4_>( f') d,\rest \shpSlurCK d_>( f') d,\rest               | %128
  \shpSlurCK d4_>( f') d,\rest \shpSlurCK d_>( f') \posScriptAE d,\rest\sf                 | %129
  \stemNeutral \ottava #-1 \setOttavaStyle bes,,4 \ottava #0 
     d''\rest d\rest <aes'f bes,> d,\rest d\rest                                           | %130
  <d'aes f>4 d,\rest d\rest <f'd aes> d,\rest d\rest                                       | %131
  \clef treble
  <aes''f bes,>4 b\rest b\rest <d aes f> b\rest b\rest                                     | %132
  <f'd aes> b,\rest b\rest <aes'f bes,> b,\rest b\rest                                     | %133
  <d'~ aes~ f_~>1.(                                                                        | %134
  %--------------------- second chord, confirmed <c aes ees> in Cortot
  <d aes f>2. <c aes ees>)                                                                 | %135
  \doubleSlursOn \squeezeNotation
  <c aes~ ees>2.( <bes!aes d,>4) b,\rest b\rest                                            | %136
  \clef bass \doubleSlursOff \restDownOne R1*6/4 \stemDown                                 | %137
  ees,,4-. <g'ees>2 bes,,4-. a'!_( bes)                                                    | %138
  ees,4-. <g'ees>2 bes,,4-. a'!_( bes)                                                     | %139
\unSqueezeNotation
  ees,4-. <ees'bes>2 \shortStemCin aes,,4-. <c'aes>2                                       | %140
  bes,4-. <aes'f>2 bes,4-. <aes'f>2                                                        | %141
  ees4-. <g'ees>2 \shortStemCin bes,,4-. a'!_( bes)                                        | %142
  ees,4-. <g'ees>2 \shortStemCin bes,,4-. a'!_( bes)                                       | %143
  ees,4-. \clef treble <bes''g>2 \clef bass aes,,4-. <c'aes>2                              | %144
  \stemNeutral bes,4_. d\rest <d'aes f> <d aes f> <d aes f> <d aes f>                      | %145
  <des bes ees,>4-^ d,8\rest <ees ees,>8 <ees ees,>4_.<c'aes>-^ <g g,>_. <ges ges,>_.      | %146
  <ees'a,!>4-^ d,8\rest <f f,>8 <f f,>4_. <d'bes>-^ <a a,>-. <aes aes,>-.                  | %147
  <f'b,>4-^ d,8\rest <g g,>8<g g,>4_. \shpSlurCT <ees'c>-^( <c,c,>_>) d\rest               | %148
  \shpSlurCU <ees'aes,>4( ces,_>) d\rest \shpSlurCU <d'aes>( bes,_>) d\rest                | %149
  <ees ees,>4<g g,><aes aes,><g g,><ees ees,><bes'bes,>                                    | %150
  <a! a,!>4<f f,><bes bes,><a a,><f f,><c'c,>                                              | %151
\squeezeNotation
  <b b,>4 <g g,> <c c,> <b b,> <g g,> <d'd,>                                               | %152
  <cis cis,>4 <a a,> <e'e,><dis dis,><b b,><d d,>                                          | %153
  <cis,cis,>4_. d8\rest <a''fis cis a> \shpSlurDA <a fis cis a>4-.(
     <a fis cis a>-.<a fis cis a>-.<a fis cis a>-.)                                        | %154
  \posScriptAG <a fis cis a>2.-> d,,4\rest d\rest \shpSlurCZ <ais ais,>_(                  | %155
  <gis gis,>4) d'8\rest <dis'a fis> <dis a fis>4(_>
     <dis a fis>-.) d,\rest \shpSlurI <c! c,!>_(                                           | %156
  <ces ces,>4) d8\rest <ees'!a,fis><ees a,fis>4->( 
     <ees a,fis>-.) d,\rest \shpSlurI <ces ces,>_(                                         | %157
  \posHairpinAC <bes bes,>4_.) d\rest_\< d\rest d\rest <ees'c a>( <d bes aes>              | %158
  <ees bes g>4) d,\rest d\rest d\rest \clef treble <ees''c a>( <d bes aes>                 | %159
  <ees bes g>4) b\rest b\rest b\rest \shpSlurDH <ees'c a>( <d bes aes>\!                   | %160
  <ees bes g>4) b,\rest b\rest b\rest \shpSlurDH <ees'c a>( <d bes aes>                    | %161
  <ees bes g>4) b,\rest b\rest <a! f ees c>_. b\rest b\rest                                | %162
  \restDownOne R1*6/4 \hideClef \clef bass                                                 | %163
  \tag #'printed { \posScriptAJ <ees,aes, ees c>4-.\arpeggio }
     \tag #'played { <ees aes, ees ces>4\arpeggio }
     \posScriptAK d,\rest_\fz \posScriptCS d\rest_\flatTxt d2.\rest                        | %164
\unSqueezeNotation
  \stemDown ces,4_> c\rest c\rest c2.\rest                                                 | %165
  bes8 \shpSlurDN f'( bes d bes f bes, f'bes f'bes,f)                                      | %166
  \shpSlurDP ees8( bes'ees g ees bes ees,bes'ees bes'ees,bes)                              | %167
  \shpSlurDQ f8( c'ees bes'ees,c) \shpSlurDR f,( c'ees a! ees c)                           | %168
  \shpSlurDU bes8( f'bes d bes f) \shpSlurDQ bes,( f'bes f'bes,f)                          | %169
  \shpSlurDR bes,8( g'c e c g) \shpSlurDR bes,( aes'c f c aes)                             | %170
  \shpSlurDU bes,8( f'aes d aes f) \shpSlurDV bes,( ees g ees' g,ees)                      | %171
  \shpSlurDW bes8( ees aes c aes ees) \shpSlurDU bes( f'aes d aes f) | %172
  \shpSlurDU b,8( f'g d'g,f) \shpSlurDU c( ees g ees'ges, ees)       | %173
  \shpSlurDV d8( f aes f'bes,aes) \shpSlurDU bes,( f'aes d bes aes)  | %174
  ees,8( bes'ees g bes ees g ees bes g ees bes)                      | %175
  \shpSlurDQ f8( c'ees bes'ees,c) \shpSlurDU f,( c'ees a ees c)      | %176
  \grace { \posPedalI s16\sustainOn s16  } \shpSlurEG bes,8( bes'f'bes d f
     \clef treble d'bes f \clef bass d bes \posPedalJ f)\sustainOff  | %177
  \shpSlurDU bes,8( e g c g e) \shpSlurDU bes( e g c g e)            | %178
  \shpSlurDU bes8( f'a!c a f) \shpSlurDU bes,( f'aes d aes f)        | %179
  \shpSlurEH ees,8\(\sustainOn bes'ees g ees bes  ees,bes'ees bes'
     \posPedalM ees,\sustainOff bes                                  | %180
  ees,8 bes'ees g ees bes  ees,bes'ees bes'ees,bes\)                 | %181
  \shpSlurEJ ees,8\( bes'd aes'd,bes  ees,bes'd bes'd,bes            | %182
  ees,8 bes'ees g ees bes\) \shpSlurEL ees,( ces'ees aes ees ces)    | %183
  \shpSlurEH ees,8\( bes'ees g ees bes ees,bes'ees bes'ees,bes       | %184
  ees,8 bes'ees g ees bes  ees, bes'ees bes'ees,bes\)                | %185
  \shpSlurEJ ees,8\( bes'd aes'd,bes  ees,bes'd bes'd,bes            | %186
  ees,8 bes'ees g ees bes\) \shpSlurEL ees,( ces'ees aes ees ces)    | %187
  \shpSlurEM
  ees,8\( bes'ees g ees bes  ees,bes'ees bes'ees,bes                 | %188
  ees,8 bes'ees g ees bes  ees,bes'ees bes'ees,bes\)                 | %189
  \shpSlurES g8( d'g bes d bes g'd bes g d g,                        | %190
  g,8) \shpSlurET g'( d' g bes d bes'g d bes g d                     | %191
  g,8 d' d'4) d,\rest d2.\rest                                       | %192
  \restDownOne R1*6/4 \stemNeutral \slurDown                         | %193
  d4\rest \posScriptAT d,_.(^\pp d_.) d'\rest d,_.( d_.)             | %194
  d'4\rest d,_.( d_.) b'\rest <g'd>_.( <g d>_.)                      | %195
  b,4\rest <g'd>_.( <g d>_.) \posScriptAU d\rest-\semprePP d,_.( d_.)| %196
  d'4\rest d,_.( d_.) d'\rest d,_.( d_.)                             | %197
  d'4\rest d,_.( d_.) d'\rest \shpSlurI d,_.( d_.)                   | %198
  d'4\rest \posScriptAV d,_.(^\crescTinyD \posHairpinAI d_.)_\<
     b'\rest <bes'g d>_.(<bes g d>_.)                                | %199
  d,4\rest <bes'g d>_.(\! <bes g d>_.) g,\rest \stemDown d_.( d_.)   | %200
  f4\rest d_.( d_.) b'\rest <bes'g d>_.(<bes g d>_.)                 | %201
  d,4\rest <bes'g d>_.(<bes g d>_.) d,\rest <bes'g d> b,\rest | %202
  b4\rest <bes'g d>_.(<bes g d>_.) b,\rest <bes'g d> b,\rest  | %203
  d4\rest <bes'g d><bes g d> d,\rest <bes'g d> d,\rest        | %204
  d4\rest <e'cis bes><e cis bes> d,\rest <e'cis bes> d,\rest  | %205
  \stemNeutral \slurUp <d,d,>4\arpeggio <bes''d,>(
     <d g,> <g bes,> <d g,> <bes d,>)                 | %206
  <d,,d,> <c''fis,d>( <d c fis,> <fis c a>
     <d c fis,> <c fis,d>)                            | %207
  \time 4/4
  <g,g,>4 d'\rest <g'd bes> bes,,_.                   | %208
  <g''d bes> d,-. <g'd bes> g,-.                      | %209
  <g'c,a> a,,_. <g''ees c> a,-.                       | %210
  <fis'd c> d,-. <fis'd c> a,-.                       | %211
  <g'd g,>-. g,,_. <g''d bes> bes,,_.                 | %212
  <g''d bes> d,-. <g'd bes> g,-.                      | %213
  <g'c,a> a,,_. <g''ees c> a,-.                       | %214
  <fis'd c> d,-. <fis'd c> a,-.                       | %215
  <g'd g,>-. \stemDown \slurDown
     \posScriptBF \shpSlurFJ c,,2.(->                 | %216
  d4-.) s4 \posScriptBG g,-. s4                       | %217
  \shpSlurFO c1(                                      | %218
  d4-.) s \posScriptAP g,_. s \posScriptAPrev         | %219
  \phrasingSlurDown \shpSlurFN b2\( c                 | %220
  d2 ees                                              | %221
  \posScriptBM fis,4-.\) s2 \posScriptAP g4_.         | %222
  c4_. s d2(                                          | %223
  g4) \posScriptAPrev \shpSlurFP \posScriptBF c,2.(^> | %224
  \posScriptAP d4_.) \posScriptAPrev s \posScriptBG g,-. s | %225
  \shpSlurFR c2\( d4 ees                              | %226
  \posScriptO d4_.\) s \posScriptBG g,-. s            | %227
  <b b,>4-. s <c c,>-. s                              | %228
  <d d,>4-. s <e e,>-. s                              | %229
  <fis fis,>4-. s2 <g g,>4-.                          | %230
  <aes aes,>4-. s2 <a a,>4-.                          | %231
  <bes bes,>4-. s2 <b b,>4-.                          | %232
  <c c,>4-. s2.                                       | %233
  <bes bes,>4-. s <c c,>-. s                          | %234
  <d d,>4-. s <c c,>-. s                              | %235
  <bes bes,>4-. s <c c,>-. s                          | %236
  <d d,>4-. s <c c,>-. s                              | %237
  <bes bes,>4-. d,\rest \staffUp \slurUp
     \shpSlurFF <d'''bes g>8_>( d,) s4                | %238
  \shpSlurFF <d bes g>8_>( d,) s4 \staffDown
     \shpSlurFF <d bes g>8_>([ d,)] s4                | %239
  <fis,fis,>8->( <g g,>) s4 <cis cis,>8->( <d d,>) s4 | %240
  <fis,fis,>8->( <g g,>) s4 <cis cis,>8->( <d d,>) s4 | %241
\tempoAgitPrestis \hideTempo
  \stemNeutral <d, d,>2-> d'\rest                                    | %242
  d2\rest <e'cis bes!g>4. \posHairpinAF <e cis bes g>8\<             | %243
  <fis cis bes g>2_>\! <e cis bes g>4. \posHairpinAF <e cis bes g>8\<| %244
  <fis cis bes g>2_>\! <e cis bes g>_>                | %245
  <g~c,~a~d,_~>1\arpeggio                             | %246
  \shpSlurHD <g c,~a~d,_~>1(                          | %247
  <fis c a d,>1->)                                    | %248
  \restDownTwo R1                                     | %249
  \posScriptBM \shpSlurGE g,,,1^>_~\( \stemDown       | %250
  \scaleDurations 16/21 { \posBeamI g16 a bes c d e fis
     g a bes c d e!fis!g a bes c d e fis }            | %251
  \slurDown \tupletDown
  g8-.\) \stemUp d,\rest d4\rest \shpSlurGG <g,g,>4.( <g g,>8        | %252
  \hideTupletBracket
  <g g,>2) \tuplet 6/4 { \posScriptBN d'8\rest d,[( g a c bes] }     | %253
  bes8_.) d\rest d4\rest \shpSlurGJ g,,2_~\(                         | %254
  \scaleDurations 16/28 { \posBeamK g16[ a bes c d e fis g
     a bes c d e fis g a bes \clef treble c d e fis
     g a bes c d e fis] } \stemNeutral \shortStemRev                 | %255
  g8-.\) b,\rest b4\rest \clef bass <g,,g,>4.(<g g,>8                | %256
  <g g,>2) \tuplet 6/4 { \posScriptBS d'8\rest \posScriptBQ
     \shpSlurGH d^([_\forteTxt g bes ees d] }                        | %257
  d8-.) d,\rest d4\rest \tuplet 3/2 { \posScriptBY \acciaccatura 
     { \shpSlurHI bes,8} \posScriptCU <bes bes'>4_^ \acciaccatura { \shpSlurHI b8 } <b b'>4_^
     \acciaccatura { \shpSlurHI c8 } <c c'>4_^ }                     | %258
  \hideTupletNumber
  \tuplet 3/2 { \acciaccatura { \shpSlurHI cis8 } <cis cis'>4_^ 
     \acciaccatura { \shpSlurHI d8 } <d d'>4_^ \acciaccatura { \shpSlurHI dis8 } 
     <dis dis'>4_^ \acciaccatura { \shortStemTwo \shpSlurHI e8 }
     \tag #'printed { \posScriptCQ <e ees'>4_.^\naturalTxt } \tag #'played { <e e'>4_. }
     \undo \posScriptBS
     <f f'>_.  <fis fis'>_. }                                        | %259
  \tuplet 3/2 { <g g'>4_.<fis fis'>_.<f f'>_.<e e'>_.
     <ees ees'>_.<d d'>_.                                            | %260
  <cis cis'>4_.<c c'>_.<b b'>_.<bes bes'>_.<a a'>_. <aes aes'>_. }   | %261-end tuplets
  <g g'>2_. d''\rest                                                 | %262
  <g'd g,>1-^                                                        | %263
  <g,,g,>1\fermata                                                   | %264
}

lowerTwo = \relative c {
  \setRestDirDown
  \time 4/4
  \repeat unfold 7 { s1 | }                          % 1-7
  \time 6/4
  \repeat unfold 14 { s1. | }                        %8-21
  \stemDown \posHairpinAS s4^\> \shpSlurT c,-._( 
     g''-.)\! s \shpSlurT d,-._( g'-.)             | %22
  s4 \shpSlurT ees,4-._( g'-.) s^\<
     \shpSlurT d,-._( g'-.)\!                      | %23
  \repeat unfold 11 { s1. | }                        %24-34
  \stemUp \slurUp \tieUp
  s4 <bes ees>(^\> <d bes>2 <cis bes>4 <c a>)\!    | %35
  s4 f!( ees) s ees( d)                            | %36
  s4 f( ees) s ees( d)                             | %37
  s4 d( c) s bes( a)                               | %38
  s4 g( fis) s2.                                   | %39
  s4 \posScriptG f'^>( <ees bes>) s \posScriptH ees^>( <d a>)  | %40
  s4 \posScriptG f^>( <ees bes>) s \posScriptH ees^>(<d b aes>)| %41
  s4 d( <c g>) s bes( <a ees>)                     | %42
  s1.                                              | %43
  d,4 s2. ees8( d) s4                              | %44
  b'4\rest \posScriptG a2^>^\(~ a4 s2              | %45
  \stemDown <d d,>4^.\) s2. \stemUp \posBeamC \shpSlurAW ees8( d) s4 | %46
  \clef treble \stemDown \tieDown
  \shortStemTre <ees c g>2.~ <ees c g>4 \shortStemRev s2 \stemUp     | %47
  s2. ees'4^>( d d,                                | %48
  g,^.) \shpSlurBB d'( d' \posScriptCP ees^> d d,  | %49
  g,4) b'\rest \clef bass d,,( ees'd d,            | %50
  g,4-.)\shpSlurBD \posHairpinL d'(\< d'\! ees d d,| %51
  \shpSlurBC g,4)( <d'd'>) s1                      | %52
  \repeat unfold 5 { s1. | }                         %53-57
  \ignoreClash \shpSlurBL g,,2.~ g2 s4             | %58
  \shpSlurBK fis2.~ fis2 s4                        | %59
  g2. s                                            | %60
  s1.                                              | %61
  ges2.~ ges2 s4  \ignoreClashRev                  | %62
  \stemDown f1.~                                   | %63
  f2 s1                                            | %64
  s1.                                              | %65
  s1.                                              | %66
  s1 s4 d''\rest                                   | %67
  \repeat unfold 12 { s1. | }                      | %68-79
  s2. \shpSlurHE g_(                               | %80
  f2. bes,4) s2                                    | %81
  \repeat unfold 4 { s1. | }                         %82-85
  \stemUp s2 \posScriptQ bes'4^> s2.               | %86
  \repeat unfold 3 { s1. | }                         %87-89
  s2 \posScriptQ bes4^> s2.                        | %90
  \repeat unfold 4 { s1. | }                         %91-94
  s2. e2.(                                         | %95
  d2.) a2.\rest                                    | %96
  a2.\rest fis^>(                                  | %97
  gis2.) a2.\rest                                  | %98
  a2.\rest \shpSlurGZ e'(                          | %99
  fis2.)-\hideF a,2.\rest                          | %100
  a2.\rest \shpSlurCA fis'(                        | %101
  gis2. fis2) f8\rest gis                          | %102
  gis2.( fis2) f8\rest gis                         | %103
  gis2.( fis2) f8\rest gis                         | %104
  \shpSlurCF a2.( gis2 a4)\arpeggio                | %105
  \repeat unfold 7 { s1. | }                         %106-112
  \squeezeNotation
  s4 cis,( <fis a,>) s b,( <dis a>)                | %113
  \unSqueezeNotation
  \repeat unfold 24 { s1. | } \stemUp                %114-137
  \squeezeNotation
  s4 c'( bes) s <aes d,>2                          | %138
  s4 c( bes) s <aes d,>2                           | %139
  \unSqueezeNotation
  s4 aes( g) s g( f)                               | %140
  s4 ees( d) s c( bes)                             | %141
  s4 c'( bes) s <aes d,>2                          | %142
  s4 c( bes) s <aes d,>2                           | %143
  s4 \clef treble f'4( ees) \clef bass s g,( f)    | %144
  \repeat unfold 50 { s1. | }                        %145-194
  s2. \shpSlurEW d(                                | %195
  c2.) s                                           | %196
  \repeat unfold 2 { s1. | }                         %197-198
  s2. d(                                           | %199
  e2.) f,\rest                                     | %200
  \posScriptAW f2.\rest^\crescTinyB \shpSlurEY e'( | %201
  fis2. e2) c8\rest fis                            | %202
  fis2.( e2) c8\rest fis                           | %203
  fis2.( e2) e8\rest fis                           | %204
  \shpSlurHL 
  a2.^>( \shpSlurHK g2)_( \staffUp \stemDown a4)   | %205
  \repeat unfold 2 { s1. | }                         %206-207
  \repeat unfold 8 { s1  | }                         %208-215
  s2. \stemUp \staffDown \shpSlurFI <ees aes,>4(   | %216
  \hideNotes d,4) \unHideNotes <d'c a!> s <d bes g>| %217
  a4\rest <ees'aes,>2^>( <ees aes,>4)              | %218
  s4 <d c a!> s <d bes g>                          | %219
  s4 <d aes f> s <c aes ees>                       | %220
  s4 <b aes f> s aes                               | %221
  s4 <ees'c fis,>_( <d bes g>) s                   | %222
  s4 <g ees a,> s <d a>                            | %223
  <d bes>4 s2 <ees aes,>4(                         | %224
  \hideNotes d,4) \unHideNotes <d'c a!> s <d bes g>| %225
  a4\rest <ees'aes,>2.^>                           | %226
  s4 <d c a!> s <d bes g>                          | %227
  s4 <d aes f> s <c g ees>                         | %228
  s4 <a!fis> s <bes! g>                            | %229
  s4 <ees c fis,> <ees c g> s                      | %230
  s4 <ges ees aes,> <ges ees a,> s                 | %231
  s4 <ges ees bes> <a!dis,b> s                     | %232
  s4 <a fis d!c>2^>( <a fis d c>4)                 | %233
  s4 <g d g,> s <g ees a,>                         | %234
  s4 \posScriptBH <bes g d>^> s <a fis d c>        | %235
  s4 <g d g,> s <g ees a,>                         | %236
  s4 \posScriptBH <bes g d>^> s <a fis d c>        | %237
  
}
breaks = {
  \time 4/4
  \repeat unfold 3 { s1 | \mNoBreak } s1 | \mBreak        % line 1 ( 1- 4)
  \repeat unfold 3 { s1 | \mNoBreak }
  \time 6/4
     \repeat unfold 2 { s1.| \mNoBreak} s1. | \mBreak     % line 2 ( 5-10)
  \repeat unfold 4 { s1. | \mNoBreak } s1. | \mBreak      % line 3 (11-15)
  \repeat unfold 4 { s1. | \mNoBreak } s1. | \mBreak      % line 4 (16-20)
  \repeat unfold 4 { s1. | \mNoBreak } s1. | \mBreak      % line 5 (21-25)
  \repeat unfold 4 { s1. | \mNoBreak } s1. | \mBreak      % line 6 (26-30)
  \repeat unfold 2 { s1. | \mNoBreak } s1. | \mBreak      % line 7 (31-33)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 8 (34-37)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 9 (38-41)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 10 (42-45)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 11 (46-49)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 12 (50-53)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 13 (54-57)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 14 (58-61)
  \repeat unfold 4 { s1. | \mNoBreak } s1. | \mBreak      % line 15 (62-66)
  \repeat unfold 4 { s1. | \mNoBreak } s1. | \mBreak      % line 16 (67-71)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 17 (72-75)
  \repeat unfold 4 { s1. | \mNoBreak } s1. | \mBreak      % line 18 (76-80)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 19 (81-84)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 20 (85-88)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 21 (89-92)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 22 (93-96)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 23 (97-100)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 24 (101-104)
  \repeat unfold 4 { s1. | \mNoBreak } s1. | \mBreak      % line 25 (105-109)
  \repeat unfold 4 { s1. | \mNoBreak } s1. | \mBreak      % line 25 (110-114)
  \repeat unfold 4 { s1. | \mNoBreak } s1. | \mBreak      % line 26 (115-119)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 27 (120-123)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 28 (124-127)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 29 (128-131)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 30 (132-135)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 31 (136-139)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 32 (140-143)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 33 (144-147)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 34 (148-151)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 35 (152-155)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 36 (156-159)
  \repeat unfold 4 { s1. | \mNoBreak } s1. | \mBreak      % line 37 (160-164)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 38 (165-168)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 39 (169-172)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 40 (173-176)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 41 (177-180)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 42 (181-184)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 43 (185-188)
  \repeat unfold 4 { s1. | \mNoBreak } s1. | \mBreak      % line 44 (189-193)
  \repeat unfold 4 { s1. | \mNoBreak } s1. | \mBreak      % line 45 (194-198)
  \repeat unfold 4 { s1. | \mNoBreak } s1. | \mBreak      % line 46 (199-203)
  \repeat unfold 3 { s1. | \mNoBreak } s1. | \mBreak      % line 47 (204-207)
  \repeat unfold 4 { s1  | \mNoBreak } s1  | \mBreak      % line 48 (208-212)
  \repeat unfold 4 { s1  | \mNoBreak } s1  | \mBreak      % line 49 (213-217)
  \repeat unfold 4 { s1  | \mNoBreak } s1  | \mBreak      % line 50 (218-222)
  \repeat unfold 4 { s1  | \mNoBreak } s1  | \mBreak      % line 51 (223-227)
  \repeat unfold 4 { s1  | \mNoBreak } s1  | \mBreak      % line 52 (228-232)
  \repeat unfold 4 { s1  | \mNoBreak } s1  | \mBreak      % line 53 (233-237)
  \repeat unfold 4 { s1  | \mNoBreak } s1  | \mBreak      % line 54 (238-242)
  \repeat unfold 3 { s1  | \mNoBreak } s1  | \mBreak      % line 55 (243-246)
  \repeat unfold 2 { s1  | \mNoBreak } s1  | \mBreak      % line 56 (247-249)
  \repeat unfold 4 { s1  | \mNoBreak } s1  | \mBreak      % line 57 (250-254)
  \repeat unfold 2 { s1  | \mNoBreak } s1  | \mBreak      % line 58 (255-257)
  \repeat unfold 6 { s1  | \mNoBreak } s1                 % line 59 (258-263)
}

lowerStaff = <<
  {
    \voiceOne \lowerOne 
  } \\
  {
    \voiceTwo \lowerTwo 
  } \\
  {
    \breaks 
  }
>>

dynamics = {
  \posScriptA s4-\fPesante s8 s8 s2                   | % 1
  s1                                                  | % 2
  s2. s4                                              | % 3
  s8 \posScriptA s8-\pianoTxt s2.                     | % 4
  s1                                                  | % 5
  s4. s8-\pianoTxt s4. \posHairpinC s8\<              | % 6
  s2. s8 s8\!                                         | % 7
  s2. s8 s2 s8                                        | % 8
  \repeat unfold 12 { s1. | }                         | % 9-20
  s1.                                                 | %21
  s1.                                                 | %22
  s1.                                                 | %23
  s1.                                                 | %24
  s1.                                                 | %25
  s1.                                                 | %26
  \posHairpinC s1\< s4 s4\!                           | %27
  \posHairpinC s1\> s2\!                              | %28
  s1.                                                 | %29
  s2. s2.                                             | %30
  \posHairpinG s1\< s4 s16. s32\! s8                  | %31
  s1.                                                 | %32
  s1.                                                 | %33
  s1.                                                 | %34
  s1.                                                 | %35
  \posScriptU s1.\p                                   | %36
  s1.                                                 | %37
  s4 s16 \noPadTxtScrp s16-\crescTxt s4. s2.          | %38
  s1.                                                 | %39
  s1.                                                 | %40
  \repeat unfold 3 { s1. | }                          | %41-43
  s1.                                                 | %44
  s1.                                                 | %45
  \posScriptN s1.\f                                   | %46
  s1.                                                 | %47
  s1.-\piuF                                           | %48
  s4 \posHairpinK s8\< s4 s8\! s2.                    | %49
  \repeat unfold 18 { s1. | }                           %50-67
  \posScriptCC s1.\pp                                 | %68
  \repeat unfold 13 { s1. | }                           %69-81
  s1.-\semprePP                                       | %82
  \repeat unfold 7 { s1. | }                            %83-89
  s1.                                                 | %90
  s1 s4 s8 s8                                         | %91
  s1 s4 s8. s16                                       | %92
  s1 s4. s8                                           | %93
  s2. s8 s2 s8                                        | %94
  s1.                                                 | %95
  s1 s2  \stopStaff                                   | %96
  s1.                                                 | %97
  s1.                                                 | %98
  s2. s2.                                             | %99
  s2. s8 s8 s2                    \startStaff         | %100
  s2. s2.                                             | %101
  s4 s4 s2. s4                                        | %102
  s1.                                                 | %103
  s1 s4 s8. s16                                       | %104
  s2. s2.                                             | %105
  s1.                                                 | %106
  \repeat unfold 5 { s1. | }                            %107-111
  s2. s2.                                             | %112
  s2. s4 \posHairpinAU s2\<                           | %113
  s1.\ff                                              | %114
  \repeat unfold 3 { s1. | }                            %115-117
  s1.                                                 | %118
  s2 \posHairpinV s1\<                                | %119
  s16 s8.\! s4 s1                                     | %120
  s2 \posHairpinV s1\<                                | %121
  s16 s16\! s8 s1^\moltoCresc s4                      | %122
  s4 \posHairpinV s1\< s8 s8\!                        | %123
  \posScriptCI s1.^\ffz                               | %124
  s4^\dimTxt s4\> s1                                  | %125
  s2.\p \noPadSpanner \setDynTxtSpanStyle s2.\cresc   | %126
  \repeat unfold 3 { s1. | }                            %127-129
  s1.\f                                               | %130
  s1.                                                 | %131
  s1\dim s4 s8. s16\!                                 | %132
  s1.\>                                               | %133
  s1.\!                                               | %134
  s1.                                                 | %135
  s1.                                                 | %136
  s1.                                                 | %137
  s1.                                                 | %138
  \repeat unfold 11 { s1. | }                           %139-149
  s1.                                                 | %150
  \repeat unfold 2 { s1. | }                            %151-152
  s1.                                                 | %153
  s1.\ff                                              | %154
  \repeat unfold 8 { s1. | }                            %155-162
  s1 s4. s8
  \posHairpinAD s1.\<                                 | %164
  s1.                                                 | %165
  \posScriptAL s1.\ff                                 | %166
  \repeat unfold 3 { s1. | }                            %167-169
  s8 s8\< s4.. s16\! \posScriptAN s2.^>               | %170
  s8 s8\< s4.. s16\! \posScriptAN s2.^>               | %171
  s8 s8\< s4.. s16\! \posScriptAN s2.^>               | %172
  s4. s8\< s2. s4\!                                   | %173
  s1.\ff                                              | %174
  \repeat unfold 7 { s1. | }                            %175-181
  s2. s4 s2                                           | %182
  s2. s4 \posHairpinAF s2\>                           | %183
  s32 s32\! s8. s4 s1                                 | %184
  \repeat unfold 7 { s1. | }                            %185-191
  s1.                                                 | %192
  s1.                                                 | %193
  \repeat unfold 2 { s1. | }                            %194-195
  s2. s8 s8 s2                                        | %196
  \repeat unfold 2 { s1. | }                            %197-198
  s8 s4. s4 s2 s4                                     | %199
  s2. s8 s8 s2                                        | %200
  s8 s4. s4 s2 s4                                     | %201
  s1.                                                 | %202
  \sforzatoSpanner s1\startTextSpan s4.s8\stopTextSpan| %203
  s1\startTextSpan s4. s8\stopTextSpan                | %204
  \repeat unfold 3 { s1. | }                            %205-207
  \repeat unfold 22 { s1 | }                            %208-229
  s2 s2\cresc                                         | %230
  \repeat unfold 3 { s1 | }                             %231-233
  s4\ff s2.                                           | %234
  s16 s8. s2.                                         | %235
  s8 s4. s2                                           | %236
  s16 s8. s2.                                         | %237
  \repeat unfold 5 { s1 | }                             %238-242
  s2 s2\<                                             | %243
  s2 s64 s8...\cresc s4                               | %244
  s2 s4 s8\! s8                                       | %245
  \repeat unfold 4 { s1 | }                             %246-249
  s1-\conForza                                        | %250
  s8 s4. s4... s32                                    | %251
  s2 \posScriptBT s2-\pPesante                        | %252
  s2 s8 s4.-\forteTxt                                 | %253
  s2 s2-\fzSforzato                                   | %254
  s2 s4... s32                                        | %255
  s2 s8 s4.                                           | %256
  s2 s8 s4.                                           | %257
   s4 s4. s4.                                         | %258
  s2 s8 s4.                                           | %259
  s2 s2                                               | %260
  s1                                                  | %261
  s16 s4.. s2                                         | %262
} 

pedal = {
 \repeat unfold 6 { s1 | }                                % 1-6
 s1                                                     | % 7
 s2. s2\sustainOn s8 s8\sustainOff                      | % 8
 \repeat unfold 23 { s1. | }                              % 9-31
 s4 \posPedalA s1\sustainOn  s16 s8.\sustainOff         | %32
 s16 s8.\sustainOn s1 s8 s16. s32\sustainOff            | %33
 s4\sustainOn s s\sustainOff s\sustainOn s s\sustainOff            | %34
 s4\sustainOn s4. s4\sustainOff s8 s2                              | %35
 s4..\sustainOn s4\sustainOff s16 s4..\sustainOn s4\sustainOff s16 | %36
 s4..\sustainOn s4\sustainOff s16 s4..\sustainOn s4\sustainOff s16 | %37
 \repeat unfold 2 { s1. | }                                          %38-39
 s2\sustainOn s4\sustainOff s4..\sustainOn s4\sustainOff s16       | %40
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff             | %41
 \posPedalB s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %42
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %43
 s1.                                                    | %44
 s2.\sustainOn s8 s8\sustainOff s2 \posPedalRev         | %45
 s1.                                                    | %46
 \posPedalC s2\sustainOn s4 s8 s8\sustainOff s2         | %47
 s1.                                                    | %48
 s2\sustainOn s8 s8\sustainOff s2. \posPedalRev         | %49
 s1.                                                    | %50
 s2\sustainOn s8. s16\sustainOff s2.                    | %51
 s16 s8.\sustainOn s4 s1\sustainOff                     | %52
 s1.                                                    | %53
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %54
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %55
 s1.\sustainOn                                          | %56
 s1 s4 s4\sustainOff \posPedalD                         | %57
 s1\sustainOn s4 s4\sustainOff                          | %58
 s4\sustainOn s2. s4 s4\sustainOff                      | %59
 s4\sustainOn s1 s4                                     | %60
 s1 s4 s4\sustainOff \posPedalE                         | %61
 s1\sustainOn s4 s4\sustainOff                          | %62
 s1\sustainOn s4 s4\sustainOff                          | %63
 s1.\sustainOn                                          | %64
 s1.                                                    | %65
 s1.                                                    | %66
 s1 s4 \posPedalC s4\sustainOff                         | %67
 s1\sustainOn s2\sustainOff                             | %68
 s1\sustainOn s4. s8\sustainOff                         | %69
 s1\sustainOn s2\sustainOff                             | %70
 s1\sustainOn s4 s4\sustainOff                          | %71
 s1\sustainOn s4 s4\sustainOff                          | %72
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %73
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %74
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %75
 s1\sustainOn s2\sustainOff                             | %76
 s1\sustainOn s4 s4\sustainOff                          | %77
 %---------------------------------- the SustainOff prior to 6th beat (bar 78) pulls
 %---------------------------------- the note column unexpectedly to left..why?
 s1\sustainOn s8. s16\sustainOff s4                     | %78
 s1\sustainOn s4. s8\sustainOff \posPedalRev            | %79
 %---------------------------------- can't get this one to land on 4th beat
 %---------------------------------- ...trying results in notecolumn shifts
 s2.\sustainOn s8 s8\sustainOff s2                      | %80
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %81
 s1\sustainOn s4 s4\sustainOff                          | %82
 s1\sustainOn s4 s4\sustainOff                          | %83
 s1\sustainOn s4 s4\sustainOff                          | %84
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %85
 s1\sustainOn s4 s4\sustainOff                          | %86
 s1\sustainOn s4 s4\sustainOff                          | %87
 s1\sustainOn s4 s4\sustainOff                          | %88
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %89
 s1\sustainOn s4 s4\sustainOff                          | %90
 s1\sustainOn s4 s4\sustainOff                          | %91
 s4\sustainOn s8\sustainOff s8 s2.\sustainOn s4\sustainOff | %92
 s1\sustainOn s4 s4\sustainOff                          | %93
 s1\sustainOn s4 s16 s8.\sustainOff                     | %94
 s1\sustainOn s4.. s16\sustainOff                       | %95
 s16 s8.\sustainOn s4 s4\sustainOff s2\sustainOn s8 s8\sustainOff | %96
 s2\sustainOn s16 s8.\sustainOff s2\sustainOn s16 s8.\sustainOff  | %97
 s1\sustainOn s4. s16\sustainOff s16                    | %98
 s1.\sustainOn                                          | %99
 s2 s4\sustainOff s4\sustainOn s4. s16\sustainOff s16   | %100
 \posPedalF s1\sustainOn s4 s4\sustainOff               | %101
 s2\sustainOn s4\sustainOff s2\sustainOn s8 s8\sustainOff| %102
 s2\sustainOn s4\sustainOff s2\sustainOn s8 s8\sustainOff| %103
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %104
 \posPedalRev
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %105
 \repeat unfold 4 { s1. | }                               %106-109
 s2\sustainOn s4\sustainOff s16 s4\sustainOn s8 s8.\sustainOff s8  | %110
 s2\sustainOn s4\sustainOff s16 s4\sustainOn s8 s8.\sustainOff s8  | %111
 s2\sustainOn s4\sustainOff s2\sustainOn s8. s16\sustainOff        | %112
 \repeat unfold 2 { s1. | }                               %113-114
 s1\sustainOn s4 s4\sustainOff                          | %115
 s16.. s64\sustainOn s4. s2. s4\sustainOff              | %116
 s1\sustainOn s4 s4\sustainOff                          | %117
 s1\sustainOn s4 s4\sustainOff                          | %118
 \hideNextPedal s2\sustainOn s8. s16\sustainOff s2.     | %119
 s16.. s64\sustainOn s8 s2. s8. \posPedalH s16\sustainOff s4                   | %120
 s1.                                                                           | %121
 s16.. s64\sustainOn s8 s4 s4\sustainOff s16. s32\sustainOn s4. s4\sustainOff  | %122
 s16.. s64\sustainOn s4. s4\sustainOff s2.              | %123
 \grace { s8\sustainOn s16 } s1.                        | %124
 s1 s4. s8\sustainOff                                   | %125
 \repeat unfold 4 { s1. | }                               %126-129
 s16.. \noPadPedal s64\sustainOn s4. s1                 | %130
 \repeat unfold 7 { s1. | }                               %131-137
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %138
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %139
 s2\sustainOn s4\sustainOff \noPadPedal s2\sustainOn s4\sustainOff  | %140
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff              | %141
 s2\sustainOn s4\sustainOff \noPadPedal s2\sustainOn s4\sustainOff  | %142
 s2\sustainOn s4\sustainOff \noPadPedal s2\sustainOn s4\sustainOff  | %143
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff              | %144
 s2\sustainOn s4 s32 s8..\sustainOff s2                             | %145
 s4.\sustainOn s8\sustainOff s4 s\sustainOn s\sustainOff s          | %146
 s4.\sustainOn s8\sustainOff s4 s\sustainOn s\sustainOff s          | %147
 s4.\sustainOn s8\sustainOff s4 s4..\sustainOn s16\sustainOff s4    | %148
 s2. s4..\sustainOn s16\sustainOff s4                               | %149
 s4.\sustainOn s8\sustainOff s1                                     | %150
 \repeat unfold 3 { s1. | }                                           %151-153
 s16.. s64\sustainOn \posHairpinAA s8\< s2. s4 s8\! s16 s16         | %154
 s1 s4 s32 s16.\sustainOff s8                                       | %155
 \posPedalB s16. s32\sustainOn s8 s4 s2 s4 s32 s16.\sustainOff s8   | %156
 s16.. s64\sustainOn s8 s4 s2 s4 s16 s16\sustainOff s8 \posPedalRev | %157
 \repeat unfold 4 { s1. | }                               %159-161
 s2. s16.. \noPadPedal s64\sustainOn s8 s2              | %162
 s2 s8 s4.\sustainOff s2                                | %163
 s16. s32\sustainOn s4 s2 s4.\sustainOff  s4            | %164
 \repeat unfold 3 { s1. | }                               %165-167
 s2\sustainOn s8 s8\sustainOff s16 s4..\sustainOn s8. s16\sustainOff         | %168
 s2.\sustainOn s2 s8. s16\sustainOff                                         | %169
 s16 s4..\sustainOn s8. s16\sustainOff s2\sustainOn s8. s16\sustainOff       | %170
 s16 s4..\sustainOn s8. s16\sustainOff s16 s4..\sustainOn s8. s16\sustainOff | %171
 s16 s4..\sustainOn s8. s16\sustainOff s16 s4..\sustainOn s8. s16\sustainOff | %172
 s2\sustainOn s8 s8.\sustainOff s16\sustainOn s2 s16 s16\sustainOff | %173
 s2\sustainOn s8 s8.\sustainOff s16\sustainOn s2 s16 s16\sustainOff | %174
 \repeat unfold 2 { s1. | }                                           %175-176
 s1.                                                                | %177
 s16 s2.\sustainOn s8. s4.. s16\sustainOff                          | %178
 s16 s4..\sustainOn s8 s4\sustainOff s2\sustainOn s8\sustainOff     | %179
 s1.                                                                | %180
 s1\sustainOn s4. s8\sustainOff                                     | %181
 s1\sustainOn s4. s8\sustainOff                                     | %182
 s16 s4..\sustainOn s8 s4\sustainOff s2\sustainOn s16 s16\sustainOff| %183
 s16 s8.\sustainOn s2. s8. s8.\sustainOff s8                        | %184
 s2.\sustainOn s4. s8\sustainOff s4                                 | %185
 s2.\sustainOn s4. s8\sustainOff s4                                 | %186
 s16 s4..\sustainOn s8 s4\sustainOff s2\sustainOn s16 s16\sustainOff| %187
 s16 s4..\sustainOn s1                                  | %188
 s1 s4. s8\sustainOff                                   | %189
 s16 s4..\sustainOn s1                                  | %190
 s1.                                                    | %191
 s2. s2.\sustainOff                                     | %192
 s1.                                                    | %193
 s1\sustainOn s4.. s16\sustainOff                       | %194
 s16 s8.\sustainOn s2 s4 s4.. s16\sustainOff            | %195
 s16 s8.\sustainOn s4 s4\sustainOff s16 s8.\sustainOn s4.. s16\sustainOff  | %196 
 s16 s8.\sustainOn s4. s8\sustainOff s16 s8.\sustainOn s4.. s16\sustainOff | %197
 s16 s8.\sustainOn s2.. s4.\sustainOff                  | %198
 s1.\sustainOn                                          | %199
 s2 s4\sustainOff s2\sustainOn s8 s8\sustainOff         | %200
 s1\sustainOn s4 s16 s8.\sustainOff                     | %201
 s2\sustainOn s16 s8.\sustainOff s16 s8.\sustainOn s4 s16 s8.\sustainOff | %202
 s2\sustainOn s16 s8.\sustainOff s16 s8.\sustainOn s4 s16 s8.\sustainOff | %203
 s2\sustainOn s16 s8.\sustainOff s16 s8.\sustainOn s4 s16 s8.\sustainOff | %204
 s2\sustainOn s16 s8.\sustainOff s16 s8.\sustainOn s4 s16 s8.\sustainOff | %205
 \repeat unfold 2 { s1. | }                                                %206-207
 s1                                                                      | %208
 s4.\sustainOn s8\sustainOff s16 s16\sustainOn s4 s8\sustainOff          | %209
 s4.\sustainOn s16 s16\sustainOff s2                                     | %210
 s1                                                                      | %211
 s2.\sustainOn s8. s16\sustainOff                                        | %212
 s4.\sustainOn s8\sustainOff s16 s16\sustainOn s4 s8\sustainOff          | %213
 s2\sustainOn s2\sustainOff                                              | %214
 s1                                                                      | %215
 s4 s2\sustainOn s8. s16\sustainOff                                      | %216
 s4.\sustainOn s8\sustainOff s4.\sustainOn s8\sustainOff                 | %217
 s2.\sustainOn s8. s16\sustainOff                                        | %218
 s4\sustainOn s16 s8.\sustainOff s4.\sustainOn s8\sustainOff             | %219
 s4\sustainOn s16 s8.\sustainOff s4.\sustainOn s8\sustainOff             | %220
 s1                                                                      | %221
 s16 s8.\sustainOn s8 s8\sustainOff s2                                   | %222
 s2\sustainOn s2\sustainOff                                          | %223
 s4 s2\sustainOn s8 s8\sustainOff                                    | %224
 s4\sustainOn s16 s8.\sustainOff s4\sustainOn s8. s16\sustainOff     | %225
 s4..\sustainOn s16\sustainOff s2                                    | %226
 s16 s4\sustainOn s16 s8\sustainOff s16 s4.\sustainOn s16\sustainOff | %227
 \repeat unfold 3 { s1 | }                                             %228-230
 s16 s8.\sustainOn s4 s32 s8..\sustainOff s4                         | %231
 s16 s8.\sustainOn s4 s32 s8..\sustainOff s4                         | %232
 s2.\sustainOn s16 s8.\sustainOff                                    | %233
 s16 s8.\sustainOn s16 s8.\sustainOff s4.\sustainOn s8\sustainOff    | %234
 s16 s8.\sustainOn s16 s8.\sustainOff s4.\sustainOn s8\sustainOff    | %235
 s16 s8.\sustainOn s16 s8.\sustainOff s4..\sustainOn s16\sustainOff  | %236
 s16 s8.\sustainOn s16 s8.\sustainOff s4..\sustainOn s16\sustainOff  | %237
 s1\sustainOn                                                        | %238
 s2. s8 s32 s16.\sustainOff                                          | %239
 \repeat unfold 6 { s1 | }                                             %240-245
 s1\sustainOn                                                        | %246
 s1                                                                  | %247
 s4... s32\sustainOff s2                                             | %248
 \repeat unfold 3 { s1 | }                                             %249-251
 s4.. s16\sustainOn s2                                               | %252
 s2 s128\sustainOff s4.....                                          | %253
 s1                                                                  | %254
 s1                                                                  | %255
 s4.. s16\sustainOn s2                                               | %256
 s2\sustainOff s2                                                    | %257
 \repeat unfold 4 { s1 | }                                             %258-261
 s64 s4....\sustainOn s2                                             | %262
 s1                                                                  | %263
 s2. s4\sustainOff                                                   | %264
}

pedalTwo = {
 \repeat unfold 7 { s1 | }                                %1-7
 \repeat unfold 30 { s1. | }                              %8-37
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %38
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %39
 \repeat unfold 10 { s1. | }                              %40-49
 s2\sustainOn s8 s32\sustainOff s16. s2.                | %50
 \repeat unfold 2 { s1. | }                               %51-52
 s2\sustainOn s1\sustainOff                             | %53
 \repeat unfold 52 { s1. | }                             %54-105
 s4 \posPedalL s2.\sustainOn s4 \posPedalG s4\sustainOff| %106
 s1\sustainOn s4 s4\sustainOff                          | %107
 s1\sustainOn s4 s4\sustainOff                          | %108
 s1\sustainOn s4 s4\sustainOff \posPedalRev             | %109
 \repeat unfold 3 { s1. | }                               %110-112
 s16 s8.\sustainOn s4 s8 s8\sustainOff \posPedalN s2\sustainOn s16 s8.\sustainOff  | %113
 s16.. s64\sustainOn s8 s2. s4. s16\sustainOff s16                      | %114
 \repeat unfold 4 { s1. | }                                               %115-118
 s16. s32\sustainOn s4. s8. \hideNextPedal s16\sustainOff s2.           | %119
 s1 s4.... \posPedalH s64\sustainOn                                     | %120
 s2 s8. s16\sustainOff s2.                                              | %121
 s1.                                                    | %122
 s2. s16. s32\sustainOn s4. s4\sustainOff               | %123
 \repeat unfold 42 { s1. | }                              %124-165
 s16. s32\sustainOn s8 s1 s4\sustainOff                 | %166
 s16. s32\sustainOn s8 s1 s4\sustainOff                 | %167
 \repeat unfold 7 { s1. | }                               %168-174
 s1\sustainOn s4.. s16\sustainOff                                   | %175
 s2\sustainOn s8 s8.\sustainOff s16\sustainOn s2 s16 s16\sustainOff | %176
 s1.                                                                | %177
 s1.                                                                | %178
 s1.                                                                | %179
 \repeat unfold 26 { s1. | }                                          %180-205
 s1\sustainOn s4. s8\sustainOff                                     | %206
 s2.\sustainOn s8. s16\sustainOff s2                                | %207
 s2.\sustainOn s8 \posPedalK s8\sustainOff                          | %208
 \repeat unfold 19 { s1 | }                                           %209-227
 s4\sustainOn s16 s8.\sustainOff s4..\sustainOn s16\sustainOff      | %228
 s16 s8.\sustainOn s16 s8.\sustainOff s4..\sustainOn s16\sustainOff | %229
 s16 s8.\sustainOn s4 s32 s8..\sustainOff s4                        | %230
 \repeat unfold 2 { s1 | }                                            %231-232
}

%-------Typeset music 
\score {
    \keepWithTag #'printed
    \new PianoStaff <<
        \new Staff = "upper" \with { \consists "Span_arpeggio_engraver" }
           { \clef treble \global \connectArpeggio \upperStaff }
        \new Dynamics = "dyns" { \dynamics }
        \new Staff = "lower" \with { \consists "Span_arpeggio_engraver" }
           { \clef bass \global \connectArpeggio \lowerStaff }
        \new Dynamics = "pedOne" { \pedal }
        \new Dynamics = "pedTwo" { \pedalTwo }
    >>
    \layout{ } 
}

%-------generate Midi
\score {
    \keepWithTag #'played
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "acoustic grand"
        \new Staff = "upper" { \clef treble \global \upperStaff }
        \new Staff = "lower" { \clef bass \global \lowerStaff }
    >>
    \midi  { }
}
