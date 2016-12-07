%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.18.2"
\language "english"
\include "shape-tie-column.ily"
\include "multi-mark-engraver.ily"

pocoCresc = \markup { \whiteout { \italic "poco a poco più cresc." } }
senza = \markup \large \italic "senza espressione"
fener = \markup { \dynamic "f" \italic "energico" }

forceShiftBack = \override NoteColumn.force-hshift = #-9.5
forceShiftOn = \override NoteColumn.force-hshift = #1.2
tieAdjust = \once \override Tie.Y-offset = #0.5
ignoreClash = \override NoteColumn.ignore-collision = ##t
omitDynamics = \once \omit Staff.DynamicText
noDash = \override DynamicTextSpanner #'dash-period = #-1.0

staffUp = \change Staff = "up"
staffDown = \change Staff = "down"

adjustOctaveTie =
\shapeTieColumn #'(
                    ( () )
                    ( ((-0.5 . -0.5) (0 . -1) (0 . -1.5) (.7 . -1.7)) ) )

markDown =
#(define-music-function (parser location text) (markup?)
   (make-music 'MarkEvent
     'direction DOWN
     'label text))

lastFermatUp = {
  \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
  \mark \markup { \musicglyph #"scripts.ufermata" }
}

lastFermataDown = {
  \markDown \markup { \musicglyph #"scripts.dfermata" }
}

allegroUpper = \relative c' {
  \tempo "Allegro alla breve.  Maestoso.  Con grandezza."

  | \acciaccatura { s8 } <ef g bf ef>1 \f
  | <f bf d f>1
  | <g bf ef g>2 <ef g c ef>4 ( <g g'> )
  | <f bf d f>2 <bf, bf'>
  | << { s2 bf' } \\ { \slurUp <g bf ef g>4 ( <bf bf'> <f f'> <ef ef'> ) } >>
  | <d bf' d>2 <bf g' bf>
  | << { s2 bf' } \\ { \slurUp <g bf ef g>4 ( <bf bf'> <f f'> <ef ef'> ) } >>

  \barNumberCheck #8
  | <d bf' d>2 <bf g' bf>
  | <ef g bf ef>1
  | <f bf d f>1
  | <g bf ef g>2 <ef g c ef>4 ( <g g'> )
  | <f bf d f>2 <bf, bf'>
  |
  <<
    { af''2 af | ef1 }
    \\
    { <ef ef'>4 q <d d'> ( <bf bf'> | <c c'> ) q <af af'> <c c'> }
  >>
  |
  <<
    { ef2. r4 }
    \\
    { <bf bf'>2 ( <af af'>4 <g g'> ) }
  >>

  \barNumberCheck #16
  | <f af c f>1 \mf
  | <bf d f bf>2 ( <c ef g c> )
  |
  <<
    { <ef, ef'>4 q <d d'> ( <c c'> ) }
    \\
    { s2 af' }
  >>
  |
  <<
    { <bf, bf'>2 ( <af af'>4 <g g'> ) }
    \\
    { \voiceFour ef'2. r4 }
  >>
  | <f, c' ef f>1 \cresc
  | <bf d g bf>1
  | \acciaccatura { ef,8 } <ef ef' g bf ef>1 \ff
  | \acciaccatura { ef8 } <ef f' bf d f>1

  \barNumberCheck #24
  |
  <<
    {
      \ignoreClash <g' bf ef g>2 <ef g c ef>4 ( <g g'> )
      | <f bf d f>2 <bf, bf'>
    }
    \\
    { \shiftOff \acciaccatura { \stemUp ef,8 } ef1 ~ | ef1 }
  >>
  |
  <<
    {
      <<
        { <g' bf ef g>4 ( <bf bf'> <f f'> <ef ef'> ) | <d bf' d>2 <bf g' bf> }
        \\
        { s2 \shiftOff bf' | s1 }
      >>
    }
    \\
    { \shiftOff \acciaccatura { \stemUp ef,,8 } ef1 ~ | ef1 }
  >>
  <<
    {
      <<
        { <g' bf ef g>4 ( <bf bf'> <f f'> <ef ef'> ) | <d bf' d>2 <bf g' bf> }
        \\
        { s2 \shiftOff bf' | s1 }
      >>
    }
    \\
    { \shiftOff \acciaccatura { \stemUp ef,,8 } ef1 ~ | ef1 }
  >>
  \break
  | <cf' ef>1 ( \p ^\senza
  | q2 q2

  \barNumberCheck #32
  | <df ff>2 <ef gf>
  | <ff af>1
  | <ef gf>1 )
  | <ff af>2 ( <gf bff>
  | <af cf>2 q
  | <gf bff>2 <af cf>
  | <bff df>1
  | <gf eff'>2 <bff df>

  \barNumberCheck #40
  | <af cf>1 \> )
  | <ff df'>2 -\omit \pp \! ( <af cf>
  | <df, bff'>2 \dim <ff af>
  | <ef gf>1
  | <df ff>1 )
  | <af ef'>1
  | q2 q \!
  \ottava #1
  | <g''' g'>8 -\omit \f _\fener <f f'> <ef ef'> <d d'> <c c'> <bf bf'> <af af'> <g g'>
  \ottava #0
  | <f f'>8 <ef ef'> <d d'> <c c'> <bf bf'> <af af'> <g g'> <f f'>
  | <ef ef'>8 <d d'> <c c'> <bf bf'> \clef bass <af af'> <g g'> <f f'> <ef ef'>
  | <d d'>8 <c c'> <bf bf'> <af af'> <g g'> <f f'> <ef ef'> <d d'>
  | ef'8 f g af bf c d ef
  \clef treble
  | <f, f'>8 <g g'> <af af'> <bf bf'> <c c'> <d d'> <ef ef'> <f f'>
  | <g g'> <af af'> <bf bf'> <c c'> <d d'> <ef ef'> <f f'> <g g'>
  | <f f'> <ef ef'> <d d'> <c c'> <bf bf'> <af af'> <g g'> <f f'>
  | <ef g bf ef>1

  \barNumberCheck #56
  | <f bf d f>1
  | <g bf ef g>2 <ef g c ef>4 <g bf ef g>
  | <f bf d f>2 <bf, bf'>
  | << { <af'' c>2 <g bf> } \\ { <ef ef'>4 q <d d'> <bf bf'> } >>
  | << { <ef af>1 } \\ { <c c'>4 q <af af'> <c c'> } >>
  | <bf d g bf>2 << { c2 } \\ { <af af'>4 <g g'> } >>
  | <f c' ef f>1
  | <bf d g bf>4 ~ q8 r r2

  \barNumberCheck #64
  | <gf bf>1 \ff ^\senza (
  | q2 q2
  | <af cf>2 <bf df>
  | <cf ef>1
  | <bf df>1 )
  | <cf ef>2 \< ( <df ff>
  | <ef gf>2 q
  | <df ff>2 <ef gf> \!

  \barNumberCheck #72
  | <ff af>1
  | <df bff'>2 <ff af>
  | <ef gf>1 )
  | <cf af'>2 ( <ef gf>
  | <af, ff'>2 <cf ef> \dim
  | <bf df>1
  | <af cf>1
  | <ef bf'>1 )

  \barNumberCheck #80
  | q2 q -\omit \p
  \clef bass
  | <f, ef'>1-^ \sf
  | <ff ef'>1-^
  | <f ef'>1-^
  | <ff ef'>1-^
  \clef treble
  \tupletUp
  | \tuplet 3/2 2 { \omitDynamics <af' ef' f>4 \p f <af ef' f> f <af ef' f> f }
  | \tuplet 3/2 2 { <af cf ef>4 ff <af cf ef> ff <af cf ef> ff }
  | \tuplet 3/2 2 { <af ef' f>4 f <af ef' f> f <af ef' f> f }
  
  \barNumberCheck #88
  | \tuplet 3/2 2 { <af cf ef>4 ff <af cf ef> ff <af cf ef> ff }
  \ottava #1
  | <ef''' f>8 f, <ef f> f, <ef' f> f <ef' f> f,
  | <cf' ef>8 ff, <cf ef> ff, <cf' ef> ff <cf' ef> ff,
  | <ef' f>8 f, <ef f> f, <ef' f> f <ef' f> f,
  | <cf' ef>8 ff, <cf ef> ff, <cf' ef> ff <cf' ef> ff,
  | <af c ef>8 \cresc f <af, c ef> f <af c ef> f' <af c ef> f  
  | <g bf d>8 ef <g, bf d> ef <g bf d> ef' <g bf d> ef
  \ottava #0
  | <ef af bf>8 cf <ef, af bf> cf <ef af bf> cf' <ef af bf> cf
  
  \barNumberCheck #96
  | <d g>8 bf <d, g> bf <d g> bf' <d g> bf
  | <g c>8 \f ef <g c> ef <f' bf> d <f, bf> d
  | <bf' ef>8 g <bf, ef> g <bf' d f> f <d' f bf> bf
  | <c ef g>8 bf <c, ef g> bf <bf' d f> f <d' f bf> bf 
  | <d ef g>8 c <d, ef g> c <bf' c ef> g <bf, c ef> g
  | <c' ef f>8 af <c, ef f> af <f' af c> ef <f, af c> ef
  | <f af bf>8 d <af' bf d> f <bf d f> af <d f bf> bf
  | <bf' ef>8 \cresc g <bf, ef> g <bf' d f> f <d' f bf> bf
  
  \barNumberCheck #104
  | <c ef g>8 bf <c, ef g> bf <bf' d f> f <d' f bf> \omitDynamics bf \ff
  | <g, af c>8 \mf f \cresc <bf d ef> g <c d f> af <d f af> c
  | <d ef g>8 b <ef g af> c <g' af c> f <c' d f> \omitDynamics af \f
  
  <<
    \new Staff \with { 
      \remove Time_signature_engraver 
      alignAboveContext = "up"
    } {
      \key ef \major
      \ottava #1
      | <ef' af>8 \f <af, bf'> <ef' af>8 <af, bf'> 
        <ef' af>8 <af, bf'> <ef' af>8 <af, bf'>
      | <ef' af>8 _\pocoCresc <af, bf'> <ef' af>8 <af, bf'> 
        <ef' af>8 <af, bf'> <ef' af>8 <af, bf'> 
      | <ef' f>8 <af, bf'> <ef' f>8 <af, bf'>
        <ef' f>8 <af, bf'> <ef' f>8 <af, bf'>
      | <ef' f>8 <af, bf'> <ef' f>8 <af, bf'>
        <ef' f>8 <af, bf'> <ef' f>8 <af, bf'>
    }
    \\
    {
      | <bf,, ef f bf>2. ~ q8 r
      | <bf ef f bf>2. ~ q8 r
      | <bf ef f bf>2. ~ q8 r
      | <bf ef f bf>2. ~ q8 r
    }
  >>
  \ottava #1
  | af''''16 g f ef d c bf af \ottava #0 g f ef d c bf af g
  
  \barNumberCheck #112
  | f16 ef d c bf af g f \clef bass ef d c bf af g f ef
  | d16 c bf af g f ef d c bf af g f ef d c
  \bar "||"
  \lastFermatUp
  \numericTimeSignature
  \time 2/2
  \clef treble
}

allegroLower = \relative c {
  | \acciaccatura { g8 } <g bf ef g>1
  | \acciaccatura { f8 } <f bf d f>1
  | \acciaccatura { ef8 } <ef g bf ef>2 \acciaccatura { c8 } <c ef g c>2
  | \acciaccatura { d8 } <d f bf d>2 bf'
  |
  <<
    { \acciaccatura { \slurDown ef,8 } <ef bf' ef>2 ( <d d'>4 <c c'> ) }
    \\
    { s2 bf' }
  >>
  | <bf, f' bf>2 <g ef' g>
  <<
    { \acciaccatura { \slurDown ef'8 } <ef bf' ef>2 ( <d d'>4 <c c'> ) }
    \\
    { s2 bf' }
  >>

  \barNumberCheck #8
  | <bf, f' bf>2 <g ef' g>
  | \acciaccatura { g'8 } <g bf ef g>1
  | \acciaccatura { f8 } <f bf d f>1
  | \acciaccatura { ef8 } <ef g bf ef>2 \acciaccatura { c8 } <c ef g c>2
  | \acciaccatura { d8 } <d f bf d>2 bf'
  |
  <<
    { af'2 ef | ef1 }
    \\
    { <c c'>4 q <bf bf'> ( <g g'> | <af af'> ) q <f f'> <af af'> }
  >>
  |
  <<
    { ef'2. r4 }
    \\
    { <g, g'>2 ( <f f'>4 <ef ef'> ) }
  >>

  \barNumberCheck #16
  | <f' af c>1
  | <d f bf d>2 ( <c ef g ef'> )
  |
  <<
    { s2 ef }
    \\
    { \acciaccatura { \stemUp af,,8 } \stemDown <c' c'>4 q <bf bf'> ( <af af'> ) }
  >>
  |
  <<
    { ef'2. r4 }
    \\
    { <g, g'>2 ( <f f'>4 <ef ef'> ) }
  >>
  | <af af'>1
  | <g g'>1
  | \acciaccatura { \tieAdjust <ef, ef' ~>8 } <ef ef' g bf ef g>1
  | \acciaccatura { \tieAdjust <ef ef' ~>8 } <ef ef' f bf d f>1

  \barNumberCheck #24
  |
  <<
    { \ignoreClash <ef' g bf ef>2 <c ef g c> | <d f bf d>2 <bf bf'>  }
    \\
    { \shiftOff \acciaccatura { \stemUp ef,8 } ef1 ~ | ef1 }
  >>
  |
  <<
    \new Voice {
      <<
        \new Voice {
          \voiceOne \once \ignoreClash <g' g'>2 ( <d d'>4 <c c'> )
          | <bf g' bf>2 <d bf' d>
        }
        \new Voice { \voiceTwo s2 bf'2 | s1 }
      >>
    }
    \new Voice {
      \voiceThree \tieAdjust \acciaccatura { \slurDown \tieDown <ef,, ef' ~>8 }
      \shiftOff <ef ef'>1 ~ \adjustOctaveTie | \shiftOn q1
    }
  >>
  <<
    \new Voice {
      <<
        \new Voice {
          \voiceOne \once \ignoreClash <g' g'>2 ( <d d'>4 <c c'> )
          | <bf g' bf>2 <d bf' d>
        }
        \new Voice { \voiceTwo s2 bf'2 | s1 }
      >>
    }
    \new Voice {
      \voiceThree \tieAdjust \acciaccatura { \slurDown \tieDown <ef,, ef' ~>8 }
      \shiftOff <ef ef'>1 ~ \adjustOctaveTie | \shiftOn q1
    }
  >>
  \break
  | <af' ef'>1 (
  | q2 <cf af'>2

  \barNumberCheck #32
  | <df af'>2 <cf cf'>
  | <ff cf'>1
  | cf'1 )
  | <af cf>2 ( <gf df'>
  | <ff ff'>2 q
  | <bff ff'>2 <ff ff'>
  | <bff ff'>1
  | <cf eff>2 <bff ff'>

  \barNumberCheck #40
  | <ff ff'>1 )
  | <bff df>2 ( <ff cf'>
  | <gf bff>2 <df af'>
  | <ef gf>1
  | <ff af>1 )
  | <af, ef'>1
  | q2 q
  | \acciaccatura { ef8 } <ef g bf ef>1

  \barNumberCheck #48
  | \acciaccatura { f8 } <f bf d f>1
  | \acciaccatura { g8 } <g bf ef g>2 \acciaccatura { ef8 } <ef bf' ef>4
  \acciaccatura { g8 } <g bf g'>4
  | \acciaccatura { f8 } <f bf f'>2 \acciaccatura { bf,8 } <bf d bf'>2
  | <g' bf g'>4 <bf ef bf'> << { <f f'>4 <ef ef'> } \\ { bf'2  } >>
  | \acciaccatura { d,8 } <d bf' d>2 \acciaccatura { bf8 } <bf g' bf>2
  | << { <g' g'>4 <bf bf'> <f f'> <ef ef'> } \\ { ef'2 bf  } >>
  | \acciaccatura { d,8 } <d bf' d>2 \acciaccatura { bf8 } <bf g' bf>2
  | \staffUp <ef''' ef,>8 \staffDown \clef treble <d, d'> <c c'> <bf bf'>
  \clef bass <af af'> <g g'> <f f'> <ef ef'>

  \barNumberCheck #56
  | <d d'>8 <c c'> <bf bf'> <af af'> <g g'> <f f'> <ef ef'> <d d'>
  | <c c'>8 <bf bf'> <af af'> <g g'> <f f'> <ef ef'> <d d'> <c c'>
  | <d d'>8 <ef ef'> <f f'> <g g'> <a a'> <bf bf'> <c c'> <d d'>
  | <ef ef'>8 <f f'> <g g'> <af af'> <bf bf'> <c c'> <d d'> <bf bf'>
  | <af af'>8 <g g'> <f f'> <ef ef'> <d d'> <c c'> <bf bf'> <af af'>
  | <g g'>8 <f f'> <ef ef'> <d d'> <ef ef'> <e e'> <f f'> <g g'>
  | <af af'>8 <bf bf'> <c c'> <d d'> <ef ef'> <f f'> <g g'> <af af'>
  | <bf bf'> <c c'> <d d'> <ef ef'>
  \clef treble <f f'> <g g'> <af af'> <bf bf'>

  \barNumberCheck #64
  \clef bass
  | <ef, bf'>1 (
  | q2 <gf ef'>
  | <af ef'>2 <gf gf'>
  \clef treble
  | <cf gf'>1
  | gf'1 )
  | <ef gf>2 ( <df af'>
  | <cf cf'>2 q
  | <ff cf'>2 <cf cf'>

  \barNumberCheck #72
  | <ff cf'>1
  | <gf bff>2 <ff cf'>
  | <cf cf'>1 )
  | <ff af>2 ( <cf gf'>
  | <df ff>2 \clef bass <af ef'>2
  | <bf df>1
  | <cf ef>1
  | <ef, bf'>1 )

  \barNumberCheck #80
  | q2 q
  | << { cf'1-^ } \\ { r2 \tag #'layout { af,2 \sf \sustainOn } 
                          \tag #'midi   { af2 \sf } } >>
  | << { af'1-^ } \\ { r2 \tag #'layout { cf,,2 \sf \sustainOn }
                          \tag #'midi   { cf2 \sf } } >>
  | << { cf''1-^ } \\ { r2 \tag #'layout { af,2 \sf \sustainOn }
                           \tag #'midi   { af2 \sf } } >>
  | << { af'1-^ } \\ { r2 \tag #'layout { cf,,2 \sf \sustainOn } 
                          \tag #'midi   { cf2 \sf } } >>
  | << { <f' cf' ef>1 } \\ { r2 af,2 } >>
  | << { <ff' af ef'>1 } \\ { r2 cf,2 } >>
  | << { <f' cf' ef>1 } \\ { r2 af,2 } >>
  
  \barNumberCheck #88
  | << { <ff' af ef'>1 } \\ { r2 cf,2 } >>
  | << { <f' cf' ef>1 } \\ { r2 af,2 } >>
  | << { <ff' af ef'>1 } \\ { r2 cf,2 } >>
  | << { <f' cf' ef>1 } \\ { r2 af,2 } >>
  | << { <ff' af ef'>1 } \\ { r2 cf,2 } >>
  | \repeat unfold 8 { << { ef''1 } \\ { r2 bf,,2 } >> } % bar 96
  | ef''1
  | bf,,1
  | << { ef''1 } \\ { r2 bf,,2 } >>
  
  \barNumberCheck #104
  | << { ef''1 } \\ { r2 bf,,2 } >>
  | ef''2 bf,,2
  | ef''2 bf,,2
  | r2 <ef, ef'>
  | r2 <ef ef'>
  | r2 <ef ef'>
  | r2 <ef ef'>
  \clef treble
  | af'''''16 g f ef d c bf af g f ef d c bf af g
  
  \barNumberCheck #112
  \clef bass
  | f16 ef d c bf af g f ef d c bf af g f ef
  | d16 c bf af g f ef d c r r8 r4
  \lastFermataDown
}

allegroGlobal = {
  \time 2/2
  \key ef \major
  \accidentalStyle piano
  \partial 4
  \skip 4
  \noDash
}
