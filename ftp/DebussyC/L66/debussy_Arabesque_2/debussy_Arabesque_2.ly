%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.18.2"
\language "english"

\header {
  title = "Deuxième Arabesque"
  composer = "Claude Debussy"
  source = "Paris: Durand et Schoenewerk, n.d.[1891]. Plates D.S. 4395-96"
  style = "Modern"
  mutopiacomposer = "DebussyC"
  mutopiaopus = "L66 No.2"
  mutopiainstrument = "Piano"
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  maintainerWeb = "http://musicwithknute.com"
  license = "Creative Commons Attribution-ShareAlike 4.0"

 footer = "Mutopia-2014/12/14-1994"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

pLeger = #(make-dynamic-script #{ 
  \markup { \dynamic "p" \normal-text { \italic "et très léger" } }
#} )

piuFMarkup = \markup { \normal-text { \italic "più" } \dynamic "f" }
piuF = #(make-dynamic-script #{ \piuFMarkup #} )

#(define (myDynamics dynamic)
    (if (equal? dynamic piuFMarkup )
      0.77
      (default-dynamic-absolute-volume dynamic)))

moltoDim = \markup \italic "molto dim." 
dimMolto = \markup \italic "dim. molto"
enDim = \markup \italic "en diminuant"
piuDim = \markup \italic "più dim."
impliedRit = \markup \italic "[rit]"
ppArm = \markup { \dynamic "pp" \normal-text \italic "armonioso" }
piuCresc = \markup \italic "più cresc."
moltoCresc = \markup \italic "molto cresc."
rit = \markup \italic "rit."
cres = \markup \italic "cresc."
fermataAligned = \markup { \halign #-15 \musicglyph #"scripts.ufermata" }

noDash = \override DynamicTextSpanner #'dash-period = #-1.0
noDynamic = \once \omit DynamicText
tupletOff = {
  \omit TupletNumber
  \omit TupletBracket
}
tupletOn = \undo \omit TupletNumber
slurShape = \shape #'((0 . 0) (0 . 5) (0 . 5) (2.5 . 5)) Slur

staffUp = \change Staff = "up"
staffDown = \change Staff = "down"

upper = \relative c'' {
  \tempo "Allegretto Schezando" 
  \tupletUp
  \omit TupletBracket
  \noDash 
  
  | \tuplet 3/2 { e16 \pLeger ( fs e ) } a,8-. 
    \tuplet 3/2 { a'16 ( b a ) } d,8-.
    \tuplet 3/2 { e16 ( fs e ) } a,8-. 
    \tuplet 3/2 { a'16 ( b a ) } d,8-.
  | \tuplet 3/2 { e16 ( fs e ) } b8-. \tuplet 3/2 { b'16 \dim ( c b ) } d,8-.
    \tuplet 3/2 { e16 ( fs e ) } b8-. \tuplet 3/2 { b'16 ( c b ) } d,8-.
  \tupletOff
  | \tuplet 3/2 { e16 ( fs e ) } c8-. \tuplet 3/2 { c'16 ( d c ) } d,8-.
    \tuplet 3/2 { e16 ( fs e ) } c8-. \tuplet 3/2 { c'16 ( d c ) } d,8-.
  | \tuplet 3/2 { e16 ( fs e ) } c8-. \tuplet 3/2 { c'16 ( d c ) } d,8-.
    \tuplet 3/2 { e16 ( fs e ) } c8-. \tuplet 3/2 { c'16 ( d c ) } d,8-.
  | \tuplet 3/2 { e16 \pp ( fs e ) } b8-. \tuplet 3/2 { d16 ( e d ) } g,8-.
    \tuplet 3/2 { b16 ( c b ) } d,8-. \tuplet 3/2 { a'16 ( b a ) } e8-. 
  | \tuplet 3/2 { e'16 ( fs e ) } b8-. \tuplet 3/2 { d16 ( e d ) } g,8-.
    \tuplet 3/2 { b16 ( c b ) } d,8-. \tuplet 3/2 { a'16 ( b a ) } e8-.
  | \tuplet 3/2 { g16 \< ( a g ) } d8-. 
    \tupletOn \tupletDown \tuplet 3/2 { e8-. g-. b-. \! }
    \tupletOff \tuplet 3/2 { g16 \< ( a g ) } d8-. 
    \tupletOn \tupletDown \tuplet 3/2 { e8-. g-. b-. \! }
  
  \barNumberCheck #8
  | 
  << 
    { 
      \tupletOff \tuplet 3/2 { \noDynamic a16 \mp \< ( b a ) } 
      e8-. e'8 ( \noDynamic d \sf ) \! 
    } 
    \\ 
    { s4 <a c>8 s } 
  >>
  \once \set Staff.connectArpeggios = ##t
  << 
    { b'8 \arpeggio \sf \> ( [ a ] ) fs8-. d-. \! } 
    \\ 
    { <d fs>8 \arpeggio s s4 } 
  >> 
  \tupletOff
  | \tuplet 3/2 { e16 \pp ( fs e ) } b8-. \tuplet 3/2 { d16 ( e d ) } g,8-.
    \tuplet 3/2 { b16 ( c b ) } d,8-. \tuplet 3/2 { a'16 ( b a ) } e8-.
  | \tuplet 3/2 { e'16 ( fs e ) } b8-. \tuplet 3/2 { d16 ( e d ) } g,8-.
    \tuplet 3/2 { b16 ( c b ) } d,8-. \tuplet 3/2 { a'16 ( b a ) } e8-.
  | \tuplet 3/2 { g16 \< ( a g ) } d8-. 
    \tupletOn \tupletDown \tuplet 3/2 { e8-. g-. b-. \! } <e, a>8-> r r s 
  | \tupletOff \tuplet 3/2 { g16 \p ( a \< g ) } d8-. 
    \tupletOn \tupletDown \tuplet 3/2 { e8-. g-. b-. \! } <e, a>8-> r r s
  \tupletOff 
  | \tuplet 3/2 { a'16 \mf ( b a ) } fs8-. \tuplet 3/2 { d16 ( e d ) } b8-.
    \tuplet 3/2 { a16 \> ( b a ) } fs8-. \tuplet 3/2 { d16 ( e d ) } b8-. \!
  | a8-. \p \> d-. b-. <cs fs>-. <a d>-. \! r r4
  \clef bass
  | \tuplet 3/2 { g16 ( a g ) } e8-. \clef treble
    << 
      { 
        \tupletOff 
        \tuplet 3/2 { g'16 \mf ( a g ) } e8 ~ e8 fs_. \> g_. a_. \!
      } 
      \\ 
      { c,4 ~ c8 s } 
    >>
    
  \barNumberCheck #16
  | <c d fs b>8-. \arpeggio c'-. d-. \< e-. 
    <b d fs>-> \acciaccatura { fs'8-. } a8-. \> g-. d-. \!
  \clef bass
  | \tuplet 3/2 { g,,16 ( a g ) } e8-. \clef treble
    << 
      { 
        \tupletOff 
        \tuplet 3/2 { g'16 \mf ( a g ) } e8 ~ e8 fs_. \> g_. a_. \!
      } 
      \\ 
      { c,4 ~ c8 s } 
    >>
  | <c d fs b>8-. \arpeggio \< c'-. d-. e-. 
    <b d fs>-- \> \acciaccatura { fs'8 } a8-. g-. d-. \!
  | << { a'4 ( g ) a ( g ) } \\ { <b, d>2 \p q } >>
  | << { a'4 ( g2 d4 ) } \\ { <b d>1 } >>
  | << { b'4 ( a ) \noDash b \cresc ( a ) \! } \\ { <cs, e>2 <cs e> } >>
  | << { b'4 ( a2 e4 ) } \\ { <cs e>2 s2 } >>
  | \tuplet 3/2 { d'16 \f ( e d ) } b8-. \tuplet 3/2 { g16 ( a g ) } e8-.
    \tuplet 3/2 { d16 ( e d ) } b8-. \tuplet 3/2 { g16 ( a g ) } e8-.
    
  \barNumberCheck #24
  | \tuplet 3/2 { d''16 ( e d ) } b8-. \tuplet 3/2 { g16 ( a g ) } e8-.
    \tuplet 3/2 { d16 ( e d ) } b8-. \tuplet 3/2 { g16 ( a g ) } e8-.
  | \tuplet 3/2 { d16 \dim ( e d ) } b8-. r8 r4 
    \clef bass \tuplet 3/2 { d,16 ( e d ) } b8-. r8
  | r2 _\moltoDim d8-. e-. g-. b-. 
  \clef treble
  | d8-. \p r r4 <d fs as d>8 \arpeggio \pp r r4
  | <g b d g>8-> \sf \tuplet 3/2 { fs16 \f [ ( g fs ) ] }
    e8-> \tuplet 3/2 { d16 ( e d ) } b8-> d-> e4-> ~
  | e8 a-. c-. e-. fs,-. a-. d-. fs-.
  | <g, b d g>8-> \sf \tuplet 3/2 { fs16 \f [ ( g fs ) ] }
    e8-> \tuplet 3/2 { d16 ( e d ) } b8-> d-> e4-> ~
  | e8 a-. c-. e-. r8 a,-. \< e'-. fs-.
  
  \barNumberCheck #32
  | <b, ds fs b>8-> \piuF \tuplet 3/2 { as'16 [ ( b as ) ] } 
    gs8-. \tuplet 3/2 { fs16 ( gs fs ) } ds8-. fs-. <b, ds gs>4->
  | <ds fs b>8-> \tuplet 3/2 { as'16 [ ( b as ) ] } 
    gs8-. \tuplet 3/2 { fs16 ( gs fs ) } ds8-. fs-. <b, ds gs>4->
  | <ds fs b>8-> r q-> r r4 <c e a c>8 \dim r
  | <d fs a d>8 r q r r \tuplet 3/2 { c,16 \p ( d c ) } 
    b8-. \tuplet 3/2 { a16 ( b a ) } 
  | g8-. \pp r g8-. r r4 <g' b d g>8 \arpeggio r 
  | r2 r4
  \clef bass
  <<
    { 
      \stemDown g,4-- \p ~ ( \stemUp 
      | \tuplet 3/2 { g8 a b } a4 ) ~ a8 c-. b-. d-. 
      | c8-. \< e-. d-. f-. e g f \noDynamic a \mf 
      
      \barNumberCheck #40
      | g8 \> e f d e c d b
      | a8 \p [ ( c ) ] b-.
    } 
    \\
    {  
      s4 
      | g2. g4 ~
      | g4 g2 g4 ~
      
      \barNumberCheck #40
      | g4 g2 g4 ~
      | g4 g8
    }
  >>
    r8 <g b>2--
  \clef treble
  | \tuplet 3/2 { b8 \< ( c d ) } c4 ~ c8 \> ( g'-. ) e-. c-.
  | \tuplet 3/2 { b8 \< ( c d ) } c4 ~ c8 \> ( g'-. ) e-. c-. \!
  | <a d>8-. <b e>-. <c f>-. <d g>-. <e a>-. \cresc <f b>-. <g c>-. <a d>-.
  | <b e>8-. <c fs>-. q-. q-. <b ds b'>-. \sf \noDynamic q-. \p q-. q-.
  <<
    {  
      | \tupletOff \tuplet 3/2 { g'8 ( a b } a4 ) ~ a8 c-. b-. d-. 
      | c8-. e-. d-. \< f-. e-. g-. f-. a-.
      
      \barNumberCheck #48
      | \noDynamic g8 ( \mf e ) f ( \> d ) e ( c ) d ( b )
      | a8 \p [ ( c ) ] <f, b>-.
    }
    \\
    { 
      | b,4 c2 d4
      | e4 f g a
      
      \barNumberCheck #48
      | g4 f e d
      | c4 b8
    }
  >>
  r8
  <<
    {  
      b'2--
      | \tupletOff \tuplet 3/2 { b,,8 ( \< cs ds } cs4 ~ cs8 \! fs ds cs )
      | \tuplet 3/2 { b8 ( cs ds } cs4 ~ cs8 fs ds cs ) \!
    }
    \\
    { 
      b'2
      | s2 a,4 as
      | s2 a4 as
    }
  >>
  <<
    {
      | \slurDown b8 ( ^\< e ) cs ( fs ) ds ( gs ) e ( a )
      | fs8 ( b ) gs ( cs ) a8 ( ds ) cs ( ds ) \!
    } 
    \\ 
    { | s1 | s2 a4 as } 
  >>
  <<
    {
      | \tupletOff \tuplet 3/2 { b,8 ( \p cs ds } cs4 ~ cs8 fs ds cs )
      | \tuplet 3/2 { b8 ( cs ds } cs4 ~ cs8 fs ds a )
    }
    \\
    { 
      | s2 a4 as
      | s2 a4 s
    }
  >>
  
  \barNumberCheck #56
  | bf8 ( ef  c  f  d  g  ef  af )
  | f8 \< ( bf  g  c   af  d  c  f ) \!
  | \tuplet 3/2 { ef16 _\dimMolto ( f ef ) } bf8-. df-. g,-. 
    ef'-. bf-. df-. g,-.
  \repeat unfold 3 {
    | \tuplet 3/2 { ef'16 ( f ef ) } bf8-. df-. g,-. ef'-. bf-. df-. g,-.
  }
  \tempo "A tempo"
  | \tuplet 3/2 { e'16 ( fs e ) } b8-. d-. g,-.
    \tuplet 3/2 { b16 ( c b ) } d,8-. a'-. e-.
  | \tuplet 3/2 { e'16 ( fs e ) } b8-. d-. g,-.
    \tuplet 3/2 { b16 ( c b ) } d,8-. a'-. e-.
    
  \barNumberCheck #64
  | \tuplet 3/2 { g16 ( a g ) } d8-. \tuplet 3/2 { e8-. g-. b-. }
    \tuplet 3/2 { g16 ( a g ) } d8-. \tuplet 3/2 { e8-. g-. b-. }
  |
  << 
    { 
      \tupletOff \tuplet 3/2 { \noDynamic a16 \mp \< ( b a ) } 
      e8-. e'8 ( \noDynamic d \sf ) \! 
    } 
    \\ 
    { s4 <a c>8 s } 
  >>
  \once \set Staff.connectArpeggios = ##t
  << 
    { b'8 \arpeggio \sf \> ( [ a ] ) fs8-. d-. \! } 
    \\ 
    { <d fs>8 \arpeggio s s4 } 
  >> 
  | \tuplet 3/2 { e16 ( fs e ) } b8-. d-. g,-.
    \tuplet 3/2 { b16 ( c b ) } d,8-. a'-. e-.
  | \tuplet 3/2 { e'16 ( fs e ) } b8-. d-. g,-.
    \tuplet 3/2 { b16 ( c b ) } d,8-. a'-. e-.
  | \tuplet 3/2 { g16 ( a g ) } d8-. 
    \tupletDown \tuplet 3/2 { e8-. g-. b-. } <e, a>8-> r r s
  | \tuplet 3/2 { g16 \p ( a g ) } d8-. 
    \tupletDown \tuplet 3/2 { e8-. g-. b-. } <e, a>8^> \< r r \! s
  | \tuplet 3/2 { a'16 ( b a ) } fs8-. d-. b-. 
    \tuplet 3/2 { a16 ( b a ) } fs8-. d-. b-. 
  | a8 \> d b <cs fs> <d a> \! r r4 
  
  \barNumberCheck #72
  \clef bass
  | \tuplet 3/2 { a16 \mf ( b a ) } d,8 \clef treble
    \tuplet 3/2 { a''16 ( b a ) } d,8 ~ d \p e f g
  | a8 \< ( b c e ) d ^> ( e f a ) \!
  \clef bass
  | \tuplet 3/2 { a,,16 ( b a ) } d,8 \clef treble
    \tuplet 3/2 { a''16 ( b a ) } d,8 ~ d \< e f g 
  | a8-. b-. c-. e-. \! d-. e-. f-. a-.
  | \tuplet 3/2 { a16 _\enDim ( [ b a ) } e8-. ] 
    \staffDown c-. <e, g>-. <ds fs>-. b'-. \staffUp ds-. fs-.
  | \tuplet 3/2 { a16 [ ( b a ) } e8-.  
    \staffDown c-. <e, g>-. ] <ds fs>-. b'-. \staffUp ds-. fs-.
  | \tuplet 3/2 { e16 [ ( fs e ) } c8-. \staffDown
    a-. <c, e>-. ] <b d>-. gs'-. \staffUp b-. d-.
  | \tuplet 3/2 { e16 [ ( fs e ) } c8-. \staffDown
    a-. <c, e>-. ] <b d>-. g'-. \staffUp b-. d-.
    
  \barNumberCheck #80
  | s1 ^\piuDim
  | s1
  \tempo "Meno mosso" 
  | \tuplet 3/2 { e'16 _\ppArm ( fs e ) } b8 ~ b r 
    \tuplet 3/2 { d16 ( e d ) } g,8 ~ g r
    | \tuplet 3/2 { b16 ( c b ) } d,8 ~ d r
    \tuplet 3/2 { a'16 ( b a ) } e8 ~ e r
  | \tuplet 3/2 { e'16 ( fs e ) } b8 ~ b r 
    \tuplet 3/2 { d16 ( e d ) } g,8 ~ g r
  | r4 d8-. r g-. r b-. r 
  | \tuplet 3/2 { d16 ( e d ) } a8 ~ a r  
    \tuplet 3/2 { c16 ( d c ) } f,8 ~ f r 
  | \tuplet 3/2 { a16 ( b a ) } d,8 ~ d r 
    \tuplet 3/2 { g16 ( a g ) } d8 ~ d r 
    
  \barNumberCheck #88
  | \tuplet 3/2 { d'16 ( e d ) } a8 ~ a r  
    \tuplet 3/2 { c16 ( d c ) } f,8 ~ f r 
  | r4 c8-. r f-. r a-. r ^\fermata
  \tempo "A tempo"
  | R1
  \clef bass
  | r8 a,,,=,-. \pp f-. bf-. g-. c-. a-. d-.
  | \tuplet 3/2 { c8 ( d e ) } d4 ~ d8 g-. e-. d-.
  | c8-. f-. d-. g-. e-. a-. f-. bf-.
  | \clef treble
  <<
    { \tuplet 3/2 { c8 _\cres ( d e ) } d4 ~ d8 g e d \! } 
    \\
    { g,4 a bf b }
  >>
  | \tuplet 3/2 { c8 ( d e ) } d4 ~ d8 g e a
  
  \barNumberCheck #96
  | fs8 -\piuCresc b g c a d b e
  | g,8 c a d b e c fs
  | <<
    { d8 _\moltoCresc ( [ fs ] ) e ( [ g ] ) fs ( [ a ] ) g ( [ b ] ) }
    \\
    { <a, fs>4 <g b> <c a> <d b> }
  >>
  | <<
    { a'8 ( [ c ] ) b _\rit ( [ d ] ) c ( [ e ] ) d ( [ fs ] ) }
    \\
    { <e, c>4 <fs d> <g e> <a fs> }
  >>
  | <g' d b g>8 \f \tempo "A tempo" \tuplet 3/2 { fs,,16 [ ( g fs ) ] } e8-> 
    \tuplet 3/2 { d16 ( e d ) } b8-. d-. e4-> ~
  | e8 a-. c-. e-. fs,-. a-. d-. fs-.
  | <g d b g>8 \tuplet 3/2 { fs,16 [ ( g fs ) ] } e8-> 
    \tuplet 3/2 { d16 ( e d ) } b8-. d-. e4-> ~
  | e8 a-. c-. e-. r a,-. e'-. fs-.
  
  \barNumberCheck #104
  | <b fs ds b>8 \f \tuplet 3/2 { as16 [ ( b as ) ] } gs8
    \tuplet 3/2 { fs16 ( gs fs ) } ds8-> fs-> <gs ds b>4-> 
  | <b fs ds>8-> _\piuF \tuplet 3/2 { as16 [ ( b as ) ] } gs8
    \tuplet 3/2 { fs16 ( gs fs ) } ds8 fs <gs ds b>4-> 
  | <b fs ds>8-> r q4-> r <c a e c>4 \dim
  | <d a fs d>8 r q r r \tuplet 3/2 { c,,16 \p ( d c } b8 )
    \tuplet 3/2 { a16 ( b a }
  | g8 ) \pp r g r r4 <g'' d b g>8 \arpeggio r
  | <g d b g>8 r r4 g,,8 \ppp r r4 
  | g8 r r4 r2
  | \bar "|."
}

lower = \relative c' {
  | <c d fs>1 \(
  | <b d fs>1
  | <a d fs>1
  \clef bass
  | d,1 \)
  | <g, d' b'>4 ~ q8 r r4 <c g'>8-. r
  | <g d' b'>4 ~ q8 r r4 <c g'>8-. r
  | <b g'>8-. r <c g'>-. r <b g'>-. r <c g'>-. r
  
  \barNumberCheck #8
  | <cs g' a>8 r <d c' fs> \arpeggio r \clef treble <d' a' c> \arpeggio r r4
  \clef bass
  | <g,, d' b'>4 ~ q8 r r4 <c g'>8 r
  | <g d' b'>4 ~ q8 r r4 <c g'>8 r
  | <b g'>8-. r <c g'>-. r <cs g' a> \arpeggio \clef treble
    e'-. [ a-. \staffUp <e' a>-> ] \arpeggio \staffDown \clef bass \pageBreak
  | <b,, g'>8-. r <c g'>-. r <cs g' a> \arpeggio \clef treble
    e'-. \< [ a-. \staffUp <e' a>-> ] \! \arpeggio \staffDown 
  | <fs, a d>8 r <e g b> r \clef bass <fs, a d>8 r <e g b> r
  | << { fs4 g8 a } \\ { a,2 } >> fs'8-. d-. a-. d,-.
  | <a a'>8 r <a' e'>4 ~ q8 r r4
  
  \barNumberCheck #16
  | <d, d'>8 r r4 <g, g'>8 r <d'' g b d> r
  | <a, a'>8 r <a' e'>4 ~ q8 r r4
  | <d, d'>8 r r4 <g, g'>8 r <d'' g b d> r
  \clef treble \tupletOff
  | \tuplet 3/2 { f'16 ( g f ) } d8-.  f8-. e-.
    \tuplet 3/2 { f16 ( g f ) } d8-.  f8-. e-.
  | \tuplet 3/2 { f16 ( g f ) } d8-.  f8-. e-. f8-. d-. e-. f-.
  | \tuplet 3/2 { g16 ( a g ) } e8-. g-. fs-.
    \tuplet 3/2 { g16 ( a g ) } e8-. g-. fs-.
  | \tuplet 3/2 { g16 ( a g ) } e8-. g-. fs-. g-. a-. b-. cs-.
  | <d, g b d>8 r r4 r4 \clef bass <d, g a cs>8 \arpeggio r
  
  \barNumberCheck #24
  \clef treble
  | <d' g b d>8 r r4 r4 \clef bass <d, g a cs>8 \arpeggio r
  | r4 \tuplet 3/2 { g16 ( a g ) } e8-. r4 \tuplet 3/2 { g,16 ( a g ) } e8-. 
  | d8-. e-. g-. b-. r2
  | r2 <d c'>8 \arpeggio r r4
  | <g,, g'>8 r r4
  <<
    { g''2 ( | <g a c>2 <a c d> ) }
    \\
    { d,2 ~ | d1 }
  >>
  | <g,, g'>8 r r4
  <<
    { g''2 ( | <g a c>2 <e' fs> ) }
    \\
    { d,2 ~ | d2 c'2 }
  >>
  
  \barNumberCheck #32
  \clef treble
  | <b ds fs>4-> r r <gs b ds gs>->
  | <b ds fs b>4-> r r <gs b ds gs>->
  | <b ds fs b>8-> r q-> r r4 <a c e a>8 r
  | <d fs a c>8 r q r r \clef bass <c,, c'>-. <b b'>-. <a a'>-.
  | <g g'>8-. r q-. r r4 <d'' g b d>8 \arpeggio r 
  | r4 <g,, g'>8 r r2
  <<
    { 
      | f''2. f4 
      | f4 f2 f4 ~
      
      \barNumberCheck #40
      | f4 f2 f4 ~
      | f4 f8 
    }
    \\
    {
      | d4 e2 d4
      | c4 b a g
      
      \barNumberCheck #40
      | a4 b c d
      | e4 d8 
    }
  >>
    r8
  <<
    { <d f>2 | <f a>4 ( <e g>2. ) | <f a>4 <e g>2. }
    \\
    { r4 g,8 r | s2 g8 r g, r | s2 g'8 r g, r }
  >>
  | f''8-. g-. a-. b-. c-. d-. e-. f-.
  \clef treble
  | g-. a-. a-. a-. <b, fs' a>-. q-. q-. q-.
  | <d f g>4 <e f g>2 <d f g>4-.
  | <c f g>4-. <b f' g>-. <a f' g>-. <g f' g>-.
  | <a f' g>4-. <b f' g>-. <c f g>-. <d f g>-.
  | <e f g>4 <d f g>8 r 
  <<
    { 
      s4 \clef bass g,4 (
      | gs4 a fs fss )
      | gs4 ( a fs fss )
    }
    \\
    {  
      \stemUp <d' f g>2 \stemDown
      | b,1
      | b1
    }
  >>
  | << { gs'4 ( a b cs | ds e fs fss ) } \\ { b,,1 | b'1 } >>
  | << { gs4 ( a fs fss ) | gs4 ( a fs2 ) } \\ { b,1 | b1 } >>
  
  \barNumberCheck #56
  | << { g'4 ( af bf c ) } \\ { bf,1 } >>
  \clef treble
  | << { d'4 ( ef f af ) } \\ { bf,1 } >>
  | \slurShape <ef g>1 (
  | bf1
  \clef bass
  | ef,1
  | bf2 ^\impliedRit ef, )
  | <g d' b'>4  ~ \arpeggio q8 r r4 <c g'>8 r
  | <g d' b'>4  ~ \arpeggio q8 r r4 <c g'>8 r
  | <b g'>8 r <c g'> r <b g'> r <c g'> r
  
  | <cs g' a>8 r <d c' fs> \arpeggio r \clef treble <d' a' c> \arpeggio r r4
  \clef bass
  | <g,, d' b'>4  ~ q8 r r4 <c g'>8 r
  | <g d' b'>4  ~ q8 r r4 <c g'>8 r
  
  \barNumberCheck #68
  | <b g'>8-. r <c g'>-. r <cs g' a> \arpeggio \clef treble
    e'-. [ a-. \staffUp <e' a>-> ] \arpeggio \staffDown \clef bass
  | <b,, g'>8-. r <c g'>-. r <cs g' a> \arpeggio \clef treble
    e'-. [ a-. \staffUp <e' a>-> ] \arpeggio \staffDown
  | <fs, a d>8 r <e g b> r \clef bass <fs, a d>8 r <e g b>4
  | << { fs4 g8 a } \\ { a,2 } >> fs'8-. d-. a-. d,-.
  
  \barNumberCheck #72
  | <f, f'>8 r r4
  <<
    { s2 | c'''2 ( <f a>4 ) }
    \\
    { f,2 ( | f2 b4_> ) }
  >>
    r4
  | <f,, f'>8 r r4
  <<
    { s2 | c'''2 ( <f a>4 ) }
    \\
    { f,2 ( | f2 b4 ) }
  >>
    r4
  |
  \clef treble
  | s1 * 4
  
  \barNumberCheck #80
  | \clef bass
  << 
    { 
      c8 ( fs ) \staffUp a-. d-. \staffDown c, ( e ) \staffUp g-. d'-.
    } 
    \\ 
    { a,4 s g s } 
  >>
  |
  <<
    {  
      c8 ( d ) \staffUp a'-. d-. \staffDown d,, ( d' ) \staffUp d-. d'-.
    }
    \\
    { f,,4 s d s }
  >>
  |
  <<
    { r4 d8-. ( g-. b-. ) r \clef treble d-. ( e-. | g-. r b-. r ) <c a g d>2 }
    \\
    { <g,, g,>1 | s1 }
  >>
  | \clef bass
  <<
    { r4 d'8-. ( g-. b-.  r \clef treble d-. g-. | b-. ) r r4 r2 }
    \\
    { <g,, g,>1 | s1 }
  >>
  | \clef bass
  <<
    { r4 c8-. ( f-. a-. r \clef treble c-. d-. f-. r a-. ) r <b g f c>2 }
    \\
    { <f,, f,>1 | s1 }
  >>
  
  \barNumberCheck #88
  | \clef bass
  <<
    { r4 c'8-. ( f-. a-. r c-. f-. ) }
    \\
    { <f,, f,>1 }
  >>
  | a''8-. r r4 r2 ^\fermataAligned
  \tupletOn
  | \tuplet 3/2 { c,,,=,8-> ^\pp ( d e ) } d4 ~ d8 g-. e-. d-.
  | c4-. d-. e-. f -.
  | e4-. f-. g-. bf-.
  | a4-. bf-. c-. d-. 
  | e4-. f-. g-. gs-.
  | a4-. bf-. b-. c-.
  
  \barNumberCheck #96
  | \clef treble << { d4 ( e fs g ) } \\ { d1 } >>
  | << { d4 ( e fs g ) } \\ { d1 } >>
  | <d c>4 ( <d b> <d a> <d g,> 
  | \clef bass  <d fs,>4 <d e,> <d e,> <d c d,> )
  | <g,, g,>8 r r4
  <<
    { g'2 ( | <d' a g> <d c a> ) }
    \\
    { d,2 ~ | d2 s2 }
  >>
  | <g, g,>8 r r4 \tieDown <g' d ~>2
  | <c a g d>2 \tieNeutral <fs e a>
  
  \barNumberCheck #104
  | \clef treble <fs ds b>4 r r <gs ds b gs>->
  | <b fs ds b>8-> r r4 r <gs ds b gs>->
  | <b fs ds b>8-> r q4 r <a e c a>
  | <c a fs d>8 r q r r \clef bass <c,, c,> <b b,> <a a,>
  | <g g,>8 r q r r4 <d'' b g d>8 \arpeggio r
  | <d b g d>8 r r4 <g,, g,>8 r r4
  | <g g,>8 r r4 r2
  | \bar "|."
}

global = {
  \key g \major
  \time 4/4
  \clef treble
  \accidentalStyle piano-cautionary
  \noDash
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
    \context {
      \Staff
      \consists "Span_arpeggio_engraver"
    }
  }
  \midi {
    \tempo 4 = 120
    \context {
      \Score
      dynamicAbsoluteVolumeFunction = #myDynamics
    }
  }
}
