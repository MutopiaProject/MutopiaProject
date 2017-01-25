%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.18.2"
\language "english"

\header {
  title = "Prélude"
  composer = "Frederic Chopin (1810-1849)"
  opus = "Op 28, No 8"
  date = "1837"
  style = "Romantic"
  source = "CFEO, http://www.chopinonline.ac.uk/cfeo/browse/pageview/71896/"
  
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  
  mutopiatitle = "Prélude 8"
  mutopiaopus = "Op 28, No 8"
  mutopiacomposer = "ChopinFF"
  mutopiainstrument = "Piano"

 footer = "Mutopia-2017/01/25-2166"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2017 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

su = \sustainOn 
sd = \sustainOff 

global = {
  \key fs \minor
  \time 4/4
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \global
  \clef treble
  \teeny

  | cs'32 ( cs' gs b a fs d d'  
    cs, cs' gs b a gs fs fs'
    fs, fs' as, cs b gs es es'  
    a, a' bs, d cs b gs gs' )
  | cs,,32 ( cs' gs b a fs d d' 
    cs, cs' gs b a gs fs fs'
    fs, fs' as, cs b gs es es'  
    a, a' bs, d cs b gs gs' )
  | cs,32 ( cs' gs b a fs ds ds'
    cs, cs' es, gs fs ds bs bs'
    b, b' fs a g e cs cs'
    b, b' ds, fs e cs as as' )
  | a,32 ( a' d, fs ef c b b'
    a, a' cs, e d b gs gs'
    fs, fs' as, cs b gs es es'
    d, d' fss, a gs es cs cs' )
    
  \barNumberCheck 5
  | cs,32 ( cs' gs b a fs d d'  
    cs, cs' gs b a gs fs fs'
    fs, fs' as, cs b gs es es'  
    a, a' bs, d cs b gs gs' )
  | cs,,32 ( cs' gs b a fs d d'
    cs, cs' gs b a gs fs a'
    a, a' cs, e d b gs gs'
    cs, cs' ds, fs e d b b' )
  | e,32 ( e' b d c a fs fs'
    e, e' gs, b a fs ds ds'
    d, d' g, bf af f e e'
    d, d' fs, a gs e cs cs' )
  | c,32 ( c' f, af gf ef d d'
    c, c' e, g f d b b'
    cf, cf' ef, gf ff df bf bf'
    bf, bf' ef, gf ff df bf bf' )
    
  \barNumberCheck 9
  | bf,32 ( bf' e, g f d a a'
    bff, bff' df, ff eff cf af af'
    af, af' cs, ef d b g g'
    g, g' d f ef d c c' )
  | c,32 ( c' fs, af g ef b b'
    cf, cf' ef, fs e df bf bf'
    bf, bf' ds, f e cs a a'
    a, a' e g f e d d' )
  | d,32 ( d' e, g f ef c c'
    c, c' e, g f d bf bf'
    bf, bf' cs, ef d c a a'
    a, a' cs, ef d bf g g' )
  | g,32 ( g' a, c bf af f f'
    e, e' a, c bf af f f'
    f, f' a, cf bf af f f'
    gf, gf' d f ef bf gf gf' )
    
  \barNumberCheck 13
  | gf,32 ( gf' g, bf af gf ff ff'
    ff, ff' g, bf af ff af, af'
    cf, cf' f, af gf ef cf cf'
    bf, bf' f af gf ef cf cf' )
  | c,32 ( c' f, af gf ff c c'
    df, df' f, af gf ff d d'
    d, d' f, af gf ff d d'
    ef, ef' bf df cf gf ef ef' )
  | ef,32 ( ef' af, df cf af ef ef'
    d, d' af df cf af ef ef'
    f, f' bf, ef d bf f f'
    gf, gf' bf, ef d bf f f' )
  | ef,32 ( ef' af, df cf af ef ef'
    d, d' af df cf af ef ef'
    f, f' bf, ef d bf f f'
    bf, bf'e, gf f d bf bf' )
    
  \barNumberCheck 17
  | ef,,32 ( ef' af, df cf af ef ef'
    d, d' af df cf af ef ef'
    f, f' bf, ef d bf f f'
    gf, gf' bf, ef d bf f f' )
  | ef,32 ( ef' af, df cf af ef ef'
    d, d' af df cf af ef ef'
    f, f' bf, ef d bf f f'
    es, es' bs d cs b cs, cs' )
  | cs,32 ( cs' gs b a fs d d' 
    cs, cs' gs b a gs fs fs'
    fs, fs' as, cs b gs es es'  
    a, a' bs, d cs b gs gs' )
  | cs,,32 ( cs' gs b a fs d d' 
    cs, cs' gs b a gs fs fs'
    a, a' cs, e d b gs gs'
    cs, cs' ds, fs e d b b' )
    
  \barNumberCheck 21
  | b,32 ( b' ds, fs e ds as as'
    d, d' es, g fs e cs cs' )
    cs, ( cs' es, gs fs ds bs bs'
    es, es' gs, b a gs fs fs' )
  | gs,32 ( gs' d f ef c a a' 
    gs, gs' d f ef c a a'
    gs, gs' cs, e d c a a' 
    gs, gs' cs, e d c a a' )
  | a,32 ( a' es gs fs cs a a' 
    gs, gs' ds fs e cs gs gs' 
    e, e' b d cs a e e' 
    cs, cs' gs b a fs cs cs' )
  | gs,32 ( gs' ds fs e cs gs gs' 
    fs, fs' cs e d a fs fs' 
    e, e' b d cs a e e' 
    d, d' a cs b g d d' )
    
  \barNumberCheck 25
  | cs,32 ( cs' gs b a fs cs cs' 
    cs, cs' gs b a fs cs cs' 
    cs, cs' gs b a fs cs cs' 
    cs, cs' gs b a fs cs cs' )
  | cs,32 ( cs' fss, a gs fs cs cs'
    cs, cs' fss, a gs fs cs cs'
    cs, cs' fss, a gs es cs cs'
    cs, cs' fss, a gs es cs cs' )
  | cs,32 ( cs' gs b a fs cs cs' 
    cs, cs' gs b a fs cs cs' 
    cs, cs' gs b a fs cs cs' 
    cs, cs' gs b a fs cs cs' )
  | d,32 ( d' as cs b fs d d'
    d, d' as cs b fs d d'
    d, d' as cs b fs d d'
    fs, fs' as, cs b fs d d' )
    
  \barNumberCheck 29
  | cs,32 ( cs' gs b as fs cs cs' 
    cs, cs' gs b as fs cs cs' 
    cs, cs' gs b as fs cs cs' 
    cs, cs' gs b as fs cs cs' )
  | ds,32 ( ds' as cs b fs ds ds'
    ds, ds' as cs b fs ds ds'
    ds, ds' as cs b fs ds ds'
    fs, fs' as, cs b fs ds ds' )
  | cs,32 ( cs' gs b as fs cs cs' 
    cs, cs' gs b as fs cs cs' 
    cs, cs' gs b as fs cs cs' 
    cs, cs' gs b as fs cs cs' )
  | cs,32 ( cs' gs b a fs cs cs' 
    cs, cs' gs b a fs cs cs' 
    cs, cs' gs b a fs cs cs' 
    cs, cs' gs b a fs cs cs' 
    
  \barNumberCheck 33
  \normalsize
  | <cs, e cs'>2 <d g b>4 <b cs es> )
  | \grace { es4 } <cs fs>1 \arpeggio \fermata
  
  \bar "|."
}

rightHandLower = \relative {
  | cs'8. d16 cs8. fs16 fs8. es16 a8. gs16
  | cs,8. d16 cs8. fs16 fs8. es16 a8. gs16
  | cs8. ds16 cs8. bs16 b8. cs16 b8. as16
  | a8. b16 a8. gs16 fs8. es16 d8. cs16
  
  \barNumberCheck 5
  | cs8. d16 cs8. fs16 fs8. es16 a8. gs16
  | cs,8. d16 cs8. fs16 a8. gs16 cs8. b16
  | e8. fs16 e8. ds16 d8. e16 d8. cs16
  | c8. d16 c8. b16 cf8. bf16 bf8. bf16
  
  \barNumberCheck 9
  | bf8. a16 bff8. af16 af8. g16 g8. c16
  | c8. b16 cf8. bf16 bf8. a16 a8. d16
  | d8. c16 c8. bf16 bf8. a16 a8. g16
  | g8. f16 e8. f16 f8. f16 gf8. gf16
  
  \barNumberCheck 13
  | gf8. ff16 ff8. af,16 cf8. cf16 bf8. cf16
  | c8. c16 df8. d16 d8. d16 ef8. ef16
  | ef8. ef16 d8. ef16 f8. f16 gf8. f16
  | ef8. ef16 d8. ef16 f8. f16 bf8. bf16
  
  \barNumberCheck 17
  | ef,8. ef16 d8. ef16 f8. f16 gf8. f16
  | ef8. ef16 d8. ef16 f8. f16 es8. cs16
  | cs8. d16 cs8. fs16 fs8. es16 a8. gs16
  | cs,8. d16 cs8. fs16 a8. gs16 cs8. b16
  
  \barNumberCheck 21
  | b8. as16 d8. cs16 c8. bs16 es8. fs16
  | gs8. a16 gs8. a16 gs8. a16 gs8. a16
  | a8. a16 gs8. gs16 e8. e16 cs8. cs16
  | gs8. gs16 fs8. fs16 e8. e16 d8. d16
  
  \barNumberCheck 25
  | cs8. cs16 cs8. cs16 cs8. cs16 cs8. cs16
  | cs8. cs16 cs8. cs16 cs8. cs16 cs8. cs16
  | cs8. cs16 cs8. cs16 cs8. cs16 cs8. cs16
  | d8. d16 d8. d16 d8. d16 fs8. d16
  
  \barNumberCheck 29
  | cs8. cs16 cs8. cs16 cs8. cs16 cs8. cs16
  | ds8. ds16 ds8. ds16 ds8. ds16 fs8. ds16
  | cs8. cs16 cs8. cs16 cs8. cs16 cs8. cs16
  | cs8. cs16 cs8. cs16 cs8. cs16 cs8. cs16
}

rightHand = << { 
  \mergeDifferentlyDottedOn
  \rightHandUpper 
} \\ { 
  \rightHandLower 
} >>

leftHandNotes = \relative {
  \global
  \clef bass
  
  \stemDown \tupletDown
  | \tuplet 3/2 { a16-> ( cs, fs } fs,8 )
    \tuplet 3/2 { a'16-> ( cs, fs } a,8 )
    \tuplet 3/2 { d'16-> ( gs, b } d,8 )
    \tuplet 3/2 { cs'16-> ( es, b' } cs,8 )
  \omit TupletNumber \omit TupletBracket
  | \tuplet 3/2 { a'16 ( cs, fs } fs,8 )
    \tuplet 3/2 { a'16 ( cs, fs } a,8 )
    \tuplet 3/2 { d'16 ( gs, b } d,8 )
    \tuplet 3/2 { cs'16 ( es, b' } cs,8 )
  | \tuplet 3/2 { a''16 ( ds, fs } a,8 )
    \tuplet 3/2 { gs'16 ( ds fs } gs,8 )
    \tuplet 3/2 { g'16 ( cs, e } g,8 )
    \tuplet 3/2 { fs'16 ( cs e } fs,8 )
  | \tuplet 3/2 { f'16 ( c ef } f,8 )
    \tuplet 3/2 { f'16 ( b, d } f,8 )
    \tuplet 3/2 { d'16 ( gs, b } d,8 )
    \tuplet 3/2 { b'16 ( cs, es } cs,8 )
    
  \barNumberCheck 5
  | \tuplet 3/2 { a''16 ( cs, fs } fs,8 )
    \tuplet 3/2 { a'16 ( cs, fs } a,8 )
    \tuplet 3/2 { d'16 ( gs, b } d,8 )
    \tuplet 3/2 { cs'16 ( es, b' } cs,8 )
  | \tuplet 3/2 { a'16 ( cs, fs } fs,8 )
    \tuplet 3/2 { a'16 ( cs, fs } a,8 )
    \tuplet 3/2 { f''16 ( b, d } f,8 )
    \tuplet 3/2 { e'16 ( gs, d' } e,8 )
  \clef treble \stemUp \slurDown
  | \tuplet 3/2 { c''16 ( fs, a } c,8 )
    \tuplet 3/2 { b'16 ( fs a } b,8 )
    \tuplet 3/2 { bf'16 ( f af } bf,8 )
    \tuplet 3/2 { a'16 ( e g } a,8 )
  | \tuplet 3/2 { af'16 ( ef gf } af,8 )
    \tuplet 3/2 { g'16 ( d f } g,8 )
    \tuplet 3/2 { g'16 ( df ff } g,8 )
    \tuplet 3/2 { gf'16 ( df ff } gf,8 )
    
  \barNumberCheck 9
  \clef bass \stemDown \slurUp
  | \tuplet 3/2 { f'16 ( bf, d } f,8 )
    \tuplet 3/2 { f'16 ( b, d } f,8 )
    \tuplet 3/2 { f'16 ( g, b } f8 )
    \tuplet 3/2 { ef'16 ( g, c } f,8 )
  | \tuplet 3/2 { g'16 ( c, ef } f,8 )
    \tuplet 3/2 { g'16 ( df e } f,8 )
    \tuplet 3/2 { g'16 ( a, cs } f,8 )
    \tuplet 3/2 { f'16 ( a, df } f,8 )
  | \tuplet 3/2 { f'16 ( a, ef' } f,8 )
    \tuplet 3/2 { d'16 ( f, bf } bf,8 )
    \tuplet 3/2 { d'16 ( fs, c' } d,8 )
    \tuplet 3/2 { bf'16 ( d, g } g,8 )
  | \tuplet 3/2 { bf'16 ( d, af' } bf,8 )
    \tuplet 3/2 { bf'16 ( d, af' } bf,8 )
    \tuplet 3/2 { af'16 ( bf, d } ef,8 )
    \tuplet 3/2 { gf'16 ( bf, ef } ef,8 )
    
  \barNumberCheck 13
  | \tuplet 3/2 { af'16 ( af, df } ff,8 )
    \tuplet 3/2 { af'16 ( af, df } ff,8 )
    \tuplet 3/2 { gf'16 ( cf, ef } gf,8 )
    \tuplet 3/2 { gf'16 ( cf, ef } gf,8 )
  | \tuplet 3/2 { gf'16 ( bf, ff' } gf,8 )
    \tuplet 3/2 { gf'16 ( bf, ff' } gf,8 )
    \stemUp \slurDown
    \tuplet 3/2 { ff'16 ( gf, bf } cf,8 )
    \tuplet 3/2 { ef'16 ( gf, cf } cf,8 )
  \stemDown \slurUp
  | \tuplet 3/2 { af''16 ( cf, ef } f,8 )
    \tuplet 3/2 { af'16 ( cf, ef } f,8 )
    \tuplet 3/2 { d''16 ( f, bf } bf,8 )
    \tuplet 3/2 { d'16 ( f, bf } bf,8 )
  | \tuplet 3/2 { af'16 ( cf, ef } f,8 )
    \tuplet 3/2 { af'16 ( cf, ef } f,8 )
    \tuplet 3/2 { d''16 ( f, bf } bf,8 )
    \tuplet 3/2 { d'16 ( f, bf } bf,8 )
    
  \barNumberCheck 17
  | \tuplet 3/2 { af'16 ( cf, ef } f,8 )
    \tuplet 3/2 { af'16 ( cf, ef } f,8 )
    \tuplet 3/2 { d''16 ( f, bf } bf,8 )
    \tuplet 3/2 { d'16 ( f, bf } bf,8 )  
  | \tuplet 3/2 { af'16 ( cf, ef } f,8 )
    \tuplet 3/2 { af'16 ( cf, ef } f,8 )
    \tuplet 3/2 { d''16 ( f, bf } bf,8 )
    \tuplet 3/2 { b'16 ( cs, es } gs,8 )
  | \tuplet 3/2 { a'16 ( cs, fs } fs,8 )
    \tuplet 3/2 { a'16 ( cs, fs } a,8 )
    \tuplet 3/2 { d'16 ( gs, b } d,8 )
    \tuplet 3/2 { cs'16 ( es, b' } cs,8 )
  | \tuplet 3/2 { a'16 ( cs, fs } fs,8 )
    \tuplet 3/2 { a'16 ( cs, fs } a,8 )
    \tuplet 3/2 { f''16 ( b, d } f,8 )
    \tuplet 3/2 { e'16 ( g, d' } e,8 )
    
  \barNumberCheck 21
  | \tuplet 3/2 { g'16 ( cs, e } g,8 )
    \tuplet 3/2 { fs'16 ( as, e' } fs,8 )
    \tuplet 3/2 { a'16 ( ds, fs } a,8 )
    \clef treble \stemUp \slurDown
    \tuplet 3/2 { bs'16 ( fs a } bs,8 )
  | \tuplet 3/2 { fs''16 ( a, c } ef,8 )
    \tuplet 3/2 { fs'16 ( a, c } ef,8 )
    \tuplet 3/2 { fs'16 ( a, c } d,8 )
    \tuplet 3/2 { fs'16 ( a, c } d,8 )
  | \tuplet 3/2 { fs'16 ( a, cs } cs,8 )
    \tuplet 3/2 { e'16 ( gs, cs } cs,8 )
    \tuplet 3/2 { cs'16 ( e, a } a,8 )
    \tuplet 3/2 { a'16 ( cs, fs } fs,8 )
  \clef bass \stemDown \slurUp
  | \tuplet 3/2 { e'16 ( gs, cs } cs,8 )
    \tuplet 3/2 { d'16 ( fs, a } d,8 )
    \tuplet 3/2 { cs'16 ( e, a } a,8 )
    \tuplet 3/2 { b'16 ( d, g } b,8 )
    
  \barNumberCheck 25
  \stemUp \slurDown
  | \tuplet 3/2 { a'16-> ( a, cs } cs,8 )
    \tuplet 3/2 { a''16-> ( a, cs } cs,8 )
    \tuplet 3/2 { gs''16-> ( a, cs } cs,8 )
    \tuplet 3/2 { fs'16-> ( a, cs } cs,8 )
  | \tuplet 3/2 { fs'16-> ( gs, cs } cs,8 )
    \tuplet 3/2 { fs'16-> ( gs, cs } cs,8 )
    \tuplet 3/2 { es'16-> ( gs, cs } cs,8 )
    \tuplet 3/2 { es'16-> ( gs, cs } cs,8 )
  \stemDown \slurUp
  | \tuplet 3/2 { a''16 ( cs, fs } fs,8 )
    \tuplet 3/2 { a'16 ( cs, fs } fs,8 )
    \tuplet 3/2 { a'16 ( cs, fs } fs,8 )
    \tuplet 3/2 { a'16 ( cs, fs } fs,8 )
  \stemUp \slurDown
  | \tuplet 3/2 { fs'16 ( fs, b } b,8 )
    \tuplet 3/2 { fs''16 ( fs, b } b,8 )
    \tuplet 3/2 { fs''16 ( fs, b } b,8 )
    \tuplet 3/2 { fs''16 ( fs, b } b,8 )
  
  \barNumberCheck 29
  \stemDown \slurUp
  | \tuplet 3/2 { as''16 ( cs, fs } fs,8 )
    \tuplet 3/2 { as'16 ( cs, fs } fs,8 )
    \tuplet 3/2 { as'16 ( cs, fs } fs,8 )
    \tuplet 3/2 { as'16 ( cs, fs } fs,8 )
  \stemUp \slurDown
  | \tuplet 3/2 { fs'16 ( fs, b } b,8 )
    \tuplet 3/2 { fs''16 ( fs, b } b,8 )
    \tuplet 3/2 { fs''16 ( fs, b } b,8 )
    \tuplet 3/2 { fs''16 ( fs, b } b,8 )
  \stemUp \slurDown
  | \tuplet 3/2 { as''16 ( cs, fs } fs,8 )
    \tuplet 3/2 { as'16 ( cs, fs } fs,8 )
    \tuplet 3/2 { as'16 ( cs, fs } fs,8 )
    \tuplet 3/2 { as'16 ( cs, fs } fs,8 )
  | \tuplet 3/2 { a'16 ( cs, fs } fs,8 )
    \tuplet 3/2 { a'16 ( cs, fs } fs,8 )
    \tuplet 3/2 { a'16 ( cs, fs } fs,8 )
    \tuplet 3/2 { a'16 ( cs, fs } fs,8 )
    
  \barNumberCheck 33
  \stemDown
  | <a e' a>2 <b g'>4 <cs gs'>
  | < fs, cs' a'>1 \arpeggio \fermata
}

pedal = {
  \repeat unfold 24 { 
    | s8. \su s16 \sd s8. \su s16 \sd s8. \su s16 \sd s8. \su s16 \sd 
  }
  | s4 \su s8. s16 \sd s8. \su s16 \sd s8. \su s16 \sd 
  | s4 \su s8. s16 \sd s4 \su s8. s16 \sd 
  \repeat unfold 6 {
    | s2. \su s8. s16 \sd
  }
}

leftHand = << {
  \leftHandNotes
} \\ {
  \pedal
} >>

dyn = {
  | s4 \p s8. \< s16 \! s4 s8. \> s16 \!
  | s4 s8. \< s16 \! s4 s8. \> s16 \! 
  | s1
  | s1
  
  \barNumberCheck 5
  | s4 s8. \< s16 \! s4 s8. \> s16 \!
  | s4 s8. \< s16 \! s4 s8. \> s16 \!
  | s1
  | s1
  
  \barNumberCheck 9
  | s1 \cresc
  | s1
  | s1
  | s2 s2 \<
  
  \barNumberCheck 13
  | s1 \f
  | s2 s2 \<
  | s1 \ff
  | s1
  
  \barNumberCheck 17
  | s1 \p
  | s2 \p s2 -\markup{ \italic "poco riten." }
  | s4 -\markup{ \italic "molto agitato e stretto" } 
    s8. \< s16 \! s4 s8. \> s16 \!
  | s4 s2. \cresc
  
  \barNumberCheck 21
  | s1
  | s1 \ff
  | s2. \> s8. s16 \!
  | s2. \dim s4 \!
  
  \barNumberCheck 25
  | s1
  | s1
  | s1 \p
  | s4 s2 \< s4 \>
  
  \barNumberCheck 29
  | s1 \p
  | s2. \< s8. \> s16 \!
  | s2 s4 \< s8. s16 \!
  | s4 s2. \>
  
  \barNumberCheck 33
  | s2. \> s4 \!
}

\score {
  \new PianoStaff <<
    \set PianoStaff.connectArpeggios = ##t
    \set PianoStaff.instrumentName = #"VIII"
    \new Staff \rightHand
    \new Dynamics \dyn
    \new Staff \leftHand
  >>
  \layout {
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
  \midi {
    \tempo 4 = 80
  }
}
