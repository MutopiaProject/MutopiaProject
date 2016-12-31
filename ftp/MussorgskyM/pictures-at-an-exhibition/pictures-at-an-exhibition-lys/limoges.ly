%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.18.2"
\language "english"

\header {
  %title        = "Limoges. Le marché (La grande nouvelle)"
  composer     = "Modest Moussorgsky (1839 - 1881)"
  style        = "Romantic"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  date         = "1874"
  source       = "Pavel Lamm"

  mutopiatitle       = "Pictures at an Exhibition"
  mutopiacomposer    = "MussorgskyM"
  mutopiainstrument  = "Piano"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"

 footer = "Mutopia-2016/12/31-475"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

accel = \markup { \italic "poco accelerando" }
dimin = \markup { \italic "dim." }
attacca = \markup { \italic "attacca" }

forceShiftOn = \override NoteColumn.force-hshift = #1.2
forceShiftOnn = \override NoteColumn.force-hshift = #1.4
forceShiftOnnn = \override NoteColumn.force-hshift = #1.7
forceShiftOff = \override NoteColumn.force-hshift = #0

omitDynamics = {
  \once \omit Staff.DynamicText
}

su = \change Staff = "up"
sd = \change Staff = "down"

upper = \relative c'' {
  \tempo "Allegretto vivo, sempre scherzando."

  | bf16 \f ( a ) bf-. bf-. bf ( a ) bf-. _\dimin bf-.
    bf ( a ) bf-. bf-. bf ( a ) bf-. bf-.
  | bf16-. \mf a-. c-. bf-. ef-. d-. f-. ef-.
    fs-. g-. c \sf ( bf af g f ef )
  | cf'16-. f,-. bf \sf ( af ) cf-. f,-. bf \sf ( af ) 
    cf-. \sf f,-. bf-. \sf f-. a-. \sf d,-. af'-. \sf d,-.
  | bf16-. a-. c-. bf-. ef-. d-. f-. ef-.
    fs-. g-. c \sf ( bf af g f ef )
  | gf'16-. \sf ef-. df-. cf-. bf ( \sf df cf af )
    gf-. \sf ef-. df-. cf-. bf ( \sf df cf af )
  |
  <<
    { 
      \forceShiftOn bf4 \forceShiftOff a16 ( gf' f ef ) 
      \forceShiftOn bf4 \forceShiftOff a16 ( gf' f ef ) 
    }
    \\
    { 
      \forceShiftOff \omitDynamics <af, f>16 \mf \< q q q \forceShiftOn a4 \sf 
      \forceShiftOff \omitDynamics <af f>16 \mf \< q q q \forceShiftOn a4 \sf
    }
  >>
  |
  <<
    { 
      \forceShiftOn df4 \forceShiftOff c16 ( bff' af gf ) 
      \forceShiftOn ef4 \forceShiftOff d16 ( cf' bf af ) 
    }
    \\
    { 
      \forceShiftOff \omitDynamics <af, cf>16 \mf \< q q q \forceShiftOn c4 \sf
      \forceShiftOff \omitDynamics <bf df>16 \mf \< q q q \forceShiftOn d4 \sf
    }
  >>
  
  \barNumberCheck #8
  | r8 << { cf16 ( \f f ) } \\ { \forceShiftOn <af, cf>8 } >> 
    r8 << { cf16 ( \f f ) } \\ { \forceShiftOn <af, cf>8 } >> 
    cf16 ( bf ) cf ( bf ) cf ( bf ) cf ( f )
  | bf,16-. a-. c-. bf-. ef-. d-. f-. ef-.
    fs-. g-. c \sf ( bf af g f ef )
  | cf'16-. \sf f,-. bf ( af ) cf-. \sf f,-. bf ( af )
    ef'-. \sf d-. f-. ef-. b \sf ( d c af ) \pageBreak
  | g16 ( bf af \sf f ) ef-. d-. f-. \sf ef-. 
    \omitDynamics <g bf>-. \mf \< q-. q-. q-. q-. q-. q-. q-. \!
  \key c \major
  | <fs d'>8 \sf <d fs>16 [ q ] q q q q 
    <d e>8 ( \f <gs bf>16-. ) q-. <d e>8 ( \f <gs bf>16-. ) q-.
  | <d e>16 q q q \omitDynamics q \mf \< q q q 
    <cs e>-. q-. q-. q-. <cs a'>8 \sf r
  | <d fs d'>8 \sf <d fs>16 [ q ] q q q q 
    <e fs>8 ( \f <as c>16-. ) q-. <e fs>8 ( \f <as c>16-. ) q-.
  | <e fs>16 q q q \omitDynamics q \mf \< q q q 
    <ds fs>-. q-. q-. q-. <ds b'>8 \sf r 
  \bar "||"
  
  \barNumberCheck #16
  \time 3/4
  | <e e'>8 \sf ds16 [ e ] fs g as b <d, f d'>8 \sf
    << { af'16 ( g ) } \\ { <d f>8 } >>
  | <ef c'>8 \sf b16 [ c ] d ef fs g <bf, df bf'>8 \sf
    << { ff'16 ( ef ) } \\ { <bf df>8 } >>
  | <c ef af>8 \sf b16 [ c ] g af b c r8 << { cf16 \f ( f ) } \\ { af,8 } >>
  | <c ef af>8 \sf b16 [ c ] g af b c r8 << { cf16 \f ( f ) } \\ { af,8 } >>
  | <d e>8 ( \f <af' bf>16-. ) q-. <df, f df'>8-. \sf e16 f c df e f \pageBreak
  | r8 << { ff16 ( \f bf ) } \\ { df,8 } >> <d e>8 ( \f <af' bf>16-. ) q-.
    r8 << { ff16 ( \f bf ) } \\ { df,8 } >>
  | r8 << { e16 ( \f b' ) } \\ { d,8 } >> <d e>8 ( \f <gs bf>16-. ) q-.
    r8 << { e16 ( \f b' ) } \\ { d,8 } >> 
  | r8 << { g16 ( \f cs ) } \\ { e,8 } >> <e d>8 ( \f <gs bf>16-. ) q-.
    r8 << { g16 ( \f cs ) } \\ { e,8 } >>
  \bar "||"
  
  \barNumberCheck #24
  \time 4/4
  | r8 << { g16 ( \f cs ) } \\ { e,8 } >> r8 << { g16 ( \f cs ) } \\ { e,8 } >>
    r8 << { a16 ( e' ) a, ( e' ) a, ( e' ) } \\ { g,8 g g } >> 
  | d16-. \ff d-. d-. d-. d-. ef-. d-. f-. d-. d-. d-. d-. d-. e-. d-. a'-.
  | d,16-. d-. d-. d-. d _\dimin d d d d d d d d d d d 
  \bar "||"
  \key ef \major
  | bf16-. \mf a-. c-. bf-. ef-. d-. f-. ef-.
    fs-. g-. c \sf ( bf af g f ef )
  | cf'16-. f,-. bf \sf ( af ) cf-. f,-. bf \sf ( af ) 
    cf-. \sf f,-. bf-. \sf f-. a-. \sf d,-. af'-. \sf d,-. 
  | bf16-. a-. c-. bf-. ef-. d-. f-. ef-.
    fs-. g-. c \sf ( bf af g f ef )
  | gf'16-. \sf ef-. df-. cf-. bf ( \sf df cf af )
    gf-. \sf ef-. df-. cf-. bf ( \sf df cf af ) \pageBreak
  |
  <<
    { 
      \forceShiftOn bf4 \forceShiftOff a16 ( gf' f ef ) 
      \forceShiftOn bf4 \forceShiftOff a16 ( gf' f ef ) 
    }
    \\
    { 
      \forceShiftOff \omitDynamics <af, f>16 \mf \< q q q \forceShiftOn a4 \sf 
      \forceShiftOff \omitDynamics <af f>16 \mf \< q q q \forceShiftOn a4 \sf
    }
  >>
  
  \barNumberCheck #32
  |
  <<
    { 
      \forceShiftOn df4 \forceShiftOff c16 ( bff' af gf ) 
      \forceShiftOn ef4 \forceShiftOff d16 ( cf' bf af ) 
    }
    \\
    { 
      \forceShiftOff \omitDynamics <af, cf>16 \mf \< q q q \forceShiftOn c4 \sf
      \forceShiftOff \omitDynamics <bf df>16 \mf \< q q q \forceShiftOn d4 \sf
    }
  >>
  | r8 << { cf16 ( f ) } \\ { <af, cf>8 \f } >> 
    r8 << { cf16 ( f ) } \\ { <af, cf>8 \f } >>
    <d e>8 ( \f <af' bf>16-. ) q-. <d, e>8 ( \f <af' bf>16-. ) q-.
  | bf,16-. a-. c-. bf-. ef-. d-. f-. ef-. <d e>8 ( \f <af' bf>16-. ) q-.
    r8 << { cf,16 ( f ) } \\ { \forceShiftOn <af, cf>8 \f } >>
  | fs'16-. g-. c ( bf af g f ef ) <d e>8 \f ( <af' bf>16-. ) q-.
    r8 << { cf,16 ( f ) } \\ { \forceShiftOn <af, cf>8 \f } >>
  | r8 << { f''16 ( bf, ) } \\ { f8 \sf } >> 
    r8 << { f'16 ( bf, ) } \\ { f8 \sf } >>
    r8 << { f'16 ( bf, ) } \\ { f8 \sf } >> r4 \fermata
    
  \tempo "Meno mosso, sempre capriccioso."
  | \sd bf,,32 ^\ff \su <ef g bf> \sd c \su <ef g bf> \sd d \su <ef g bf> \sd ef \su <g bf c> 
    \sd d \su <g bf ef> \sd ef \su <g bf ef> \sd f \su <bf d ef> \sd g \su <bf d ef>
    \sd f \su <ef' af c> \sd c \su <ef f af> \sd af, \su <c ef f> \sd f, \su <af c ef>
    \sd ef \su <g bf c> \sd d \su <g bf d> \sd c, \su <g' bf ef> \sd bf, \su <g' bf g'> 
  | \sd bf,32 \su <ef g bf> \sd c \su <ef g bf> \sd d \su <ef g bf> \sd ef \su <g bf c> 
    \sd d \su <g bf ef> \sd ef \su <g bf ef> \sd f \su <bf d ef> \sd g \su <bf d ef>
    \sd f \su <ef' af c> \sd c \su <ef f af> \sd af, \su <c ef f> \sd f, \su <af c ef>
    \sd ef \su <g bf c> \sd d \su <g bf d> \sd c, \su <g' bf ef> \sd bf, \su <g' bf g'> 
  | \sd g32 \su <bf ef g> \sd d, \su <fs bf d> \sd ef \su <g bf ef> \sd b, \su <ef g b>
    \sd c \su <ef g c> \sd cs \su <ef g cs> \sd d \su <g bf d> \sd bf, \su <af' d f>
    \sd g \su <bf ef g> \sd d, \su <fs bf d> \sd ef \su <g bf ef> \sd b, \su <ef g b>
    \sd c \su <ef g c> \sd cs \su <ef g cs> \sd d \su <g bf d> \sd bf, \su <af' d f>
  | \sd ef32 \su g ^\accel \sd e \su <g c> \sd f \su a \sd fs \su <a d>
    \sd g \su bf \sd af \su <c f> \sd a \su cs \sd bf \su <d g>
    \sd c \su ef \sd cs \su <e a> \sd d \su fs \sd ef \su <g c>
    \sd e \su gs \sd f \su <a d> \sd fs _\attacca \su <bf d> \sd g \su <bf g'>
  \bar "|."
}

lower = \relative c' {
  | <ef g>16 ( bf ) <ef g>-. q-. q ( bf ) <ef g>-. q-.
    q ( bf ) <ef g>-. q-. q ( bf ) <ef g>-. q-.
  | <g ef>16-. q-. q-. q-. q-. q-. q-. q-. 
    <bf g>-. q-. q-. q-. q-. q-. q-. q-.
  | <cf af>16 q <ef cf> q <cf af>16 q <ef cf> q
    <d af> q q q <bf f> q q q
  | <g ef> q q q q q q q <bf g> q q q q q q q 
  |
  << 
    { gf'4 ff cf af } 
    \\ 
    { <ef' cf>16 q q q <cf af> q q q <gf ef> q q q <ff cf> q q q } 
  >>
  | bf,16 ( c df d ) <ef gf> q q q bf16 ( c df d ) <ef gf> q q q
  | df16 ( ef e f ) <gf a> q q q ef ( f fs g ) <af cf> q q q
  
  \barNumberCheck #8
  | bf,16 ( cf <ef f>8-. ) bf16 ( cf <ef f>8-. ) 
    r16 <f af>8 <ff aff> <ef gf> <d f>16
  | <g ef>16-. q-. q-. q-. q-. q-. q-. q-. 
    <bf g>-. q-. q-. q-. q-. q-. q-. q-.
  | <af cf>16 q <cf ef> q <af cf>16 q <cf ef> q
    << { <c ef>16 q q q <af c> q q q } \\ { af4 ef } >>
  | 
  <<
    { <ef af>16 q q q <c af> q q q g ( bf d ef g bf d ef ) }
    \\
    { c,4 af \forceShiftOnnn <g bf ef g>8 r r4 }
  >>
  \key c \major
  | <fs' a d>8 a,16 ( [ cs ] d e fs a ) 
    bf ( gs <d e>8-. ) bf'16 ( gs <d e>8-. )
  | bf4 ( a16 gs b bf ) a-. b-. bf-. cs-. fs ( e cs a )
  | <fs' a>8 a,16 ( [ cs ] d e fs a ) 
    c ( as <e fs>8-. ) c'16 ( as <e fs>8-. )
  | c4 ( b16 as cs c ) b-. cs-. css-. ds-. g ( fs ds b )
  
  \barNumberCheck #16
  \time 3/4
  | <e g b>8 <e g>16 [ q ] q q q q << { a16 a b b  } \\ { d,8 r } >>
  | <ef g c>8 <c ef>16 [ q ] q q q q << { f16 f g g } \\ { bf,8 r } >>
  | <c ef af>8 <ef af>16 [ q ] <c ef> q <af ef'> q
    << { r8 f' } \\ { bf,16 ( cf ef8 ) } >>
  | <c ef af>8 <ef af>16 [ q ] <c ef> q <af ef'> q
    << { r8 f' } \\ { bf,16 ( cf ef8 ) } >>
  | << { bf'16 ( af e8 ) } \\ { r8 d } >> 
    <df af' cf>8 <af' cf>16 q <f af> q <df af'> q
  | ef16 ( ff <af bf>8-. ) bf16 ( af <d, e>8-. ) ef16 ( ff <af bf>8-. )
  | ds,16 ( e <gs b>8-. ) bf16 ( gs <d e>8-. ) ds16 ( e <gs b>8-. )
  | ds16 ( e <a cs>8-. ) bf16 ( gs <d e>8-. ) ds16 ( e <a cs>8-. )
  \bar "||"
  
  \barNumberCheck #24
  \time 4/4
  | ds,16 ( e <a cs>8-. ) ds,16 ( e <a cs>8-. ) gs16 ( a <cs e>8 ) q q
  | d,16-. d-. d-. d-. d-. ef-. d-. f-. d-. d-. d-. d-. d-. e-. d-. a'-.
  | r4 r16 cs ( c b bf a af g fs f e ef )
  \bar "||"
  \key ef \major
  | <g ef>16-. q-. q-. q-. q-. q-. q-. q-. 
    <bf g>-. q-. q-. q-. q-. q-. q-. q-.
  | <cf af>16 q <ef cf> q <cf af>16 q <ef cf> q
    <d af> q q q <bf f> q q q
  | <g ef> q q q q q q q <bf g> q q q q q q q 
  |
  << 
    { gf'4 ff cf af } 
    \\ 
    { <ef' cf>16 q q q <cf af> q q q <gf ef> q q q <ff cf> q q q } 
  >>
  | bf,16 ( c df d ) <ef gf> q q q bf16 ( c df d ) <ef gf> q q q
  
  \barNumberCheck #32
  | df16 ( ef e f ) <gf a> q q q ef ( f fs g ) <af cf> q q q
  | bf,16 ( cf <ef f>8-. ) bf16 ( cf <ef f>8-. )
    bf'16 ( af <d, e>8-. ) bf'16 ( af <d, e>8-. )
  | <d f>16 q q q <ef g> q q q bf' ( af <d, e>8-. ) bf16 ( cf <ef f>8-. )
  | <ef g>16 q q q <g bf> q q q bf' ( af <d, e>8-. ) bf16 ( cf <ef f>8-. )
  |
  << 
    { cf16 ( bf ) d8 cf16 ( bf ) d8 cf16 ( bf ) d8 }
    \\
    { f,8 [ \sf d ] f [ \sf d ] f [ \sf d ] }
  >>
    r4 \fermata
  | s1 * 4
}

global = {
  \clef treble
  \key ef \major
  \time 4/4
  \accidentalStyle piano
}

\bookpart {
  \header {
    subtitle = "No. 7 Limoges. Le marché (La grande nouvelle)"
  }
  \score {
    \new PianoStaff <<
      \new Staff = "up" {
        \global
        \upper
      }
      \new Staff = "down" {
        \global
        \lower
      }
    >>
    \layout {
    }
    \midi {
      \tempo 4 = 108
    }
  }
}
