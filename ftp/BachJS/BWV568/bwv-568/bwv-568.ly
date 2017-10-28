\version "2.19.65"

\paper {
    page-top-space = #0.0
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

%#(set-default-paper-size "a4")

#(set-global-staff-size 18)

\header {
        title = "Präludium XII"
        subtitle = "G-dur."
%        piece = "1. Adagio"
        mutopiatitle = "BWV 568"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 568"
%        date = "1720"
        mutopiainstrument = "Organ"
        style = "Baroque"
%        source = "IMSLP"
        source = "Leipzig: Breitkopf und Härtel B.W. XXXVIII"
        maintainer = "Alexander Brock"
        maintainerEmail = "alexander@lunar-orbit.de"

        license = "Creative Commons Attribution-ShareAlike 4.0"
        footer = "Mutopia-2017/10/17-2197"
        copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2017 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
        tagline = ##f
}

melodyRight = \relative c'' {
  r16 g'  fis e d c b  a b d c  b a c b a
  b \noBeam g16 fis e d c b a b d c b a c b a
  b r r8 r4 r2
  r1
  r16  b' a b c a g fis g a fis a g a fis a16
  g4 <g b d g> \arpeggio<g b d g> <g b d g> <g b e g>2 <a cis e g>
  << {fis'16 \noBeam d cis b} \\ {<a d>4} >> a16 g fis e fis a g fis e g fis e
  fis \noBeam  d cis b s2.
  s1
  s1
  r16  << {d' cis d fis d cis16 d g e dis e fis d cis d} \\
          {fis, e fis a fis e fis b g fis g a fis e fis} >>
  << {d'4 dis8.   e16 fis8.  g16 <b, dis! fis a>4
      <b e a>4. <e gis>8  <e a>4 <gis b>
       c16  a gis b a b gis b a4 r8  <e b'>
      <e a c>2 <d fis a c> |
      <d g b>2 <c e g b> |
      <c fis a>4 q <b dis fis a> r8  <b dis fis a> |
       <b e g>4 <b e gis> <c! e a> <d gis! b> |
        <e a c>4 r8 <a, cis> <a d>4 <cis! e> |
         <d fis>4 r8 <d fis> <d g>4 <fis a>  |
          b8. d,16 b'8. d,16 c'8. c,16 f8. g16 |
           e16 \noBeam c' b a g f e d e g f e d f e d |
            e4~ e16 d c b  c e d c b d c b |
             c16 e d e f d c d e c b c d b a b |
              c4 g a b |
    c16 \noBeam a'16  g! f e d c b c4~ c16 b a gis  |
    a c b a gis b a gis a c e d c b a g |
    f8 \noBeam a'16 g f e d c b g d' c b a g f! |
    e8 \noBeam  \stemNeutral g'16 f e d c b a f c' b a g f! e |
    d8 \noBeam  f'16 e d c b a gis e b' a gis! fis e d |
     c4 \stemUp a' b cis \acciaccatura e8 d16 cis16 d e f4 e8 d4 cis!8 |
     d16 a a' g f e d c b g d' c b a g f! |
    e4 e'2 fis!16 g a8 |
    dis,16 b cis dis e fis g a b dis,! cis! b b' dis, cis b |
     e16 b cis dis e fis g a b g fis e b' g fis e |
      dis16 b cis dis e fis g a b dis,! cis! b b' dis, cis b |
       e16 b cis dis e fis g a b g fis e b' g fis e |
        dis16 b fis' e dis cis b a dis! b fis' e dis cis! b a  |
    g e g' fis e d! cis b  \acciaccatura  b4 <fis! a>2 |
     \stemNeutral b16 d fis e d cis b a!  \acciaccatura a4 gis2 |
    a16 e e' d c! b a g! \acciaccatura  g4 fis2 |
     g16 \noBeam \stemUp g' fis e d c b a b d c b a c b a  |
   b8. g'16  fis16 e d c d b a g c a g fis |
    g2.~ g8. fis16 |
     g4 r16 g d g e g c, e d g c, a' |
      <d, g b>16 \noBeam \stemNeutral g fis g c a g fis g b a g a b g a |
       fis16 d e fis g a b cis \stemUp d2 |
   cis16 a b cis d e fis g \acciaccatura g4  fis2 |
    g16\noBeam \stemNeutral g, a b c! d e fis g d c b g' d c b |
     c16\noBeam g a b c d e f g e d c g' e d c |
      b16\noBeam g a b c d e f g d c b g' d c b |
       c16\noBeam g a b c d e f g e d c g' e d c~ |
        c16\noBeam a b c d e fis! g a g fis e d c b a |
         \stemUp b4 g' g fis |
         \acciaccatura fis2 g1

     }
     \\ {
       fis,4 <fis a>4 <dis fis b> <dis fis>  |
       e4. b'8  c!4 d |
        e16 c b d c d b d
        c4 r8 gis |
     a2  <fis a>2 |
      g2 <e g> |
       fis4 fis <dis fis> r8 <dis fis>8 |
        e4 d! c! e |
         e4 r8 e fis4 g |
          a4 r8  a8 b4 c! |
     <d g>4 q <c e g> <b d> |
      <g c>16 r r8 r4 r2 |
       r16 c b a g f e d e g f e d f e d |
        e16 g f g a f e f g e d e f d c d  |
     e4  e4 fis! gis  |
     a r r16  a16 g! f e d c b c e d c b d c b c4 c |
      d4 d~ d d |
      s1 |
      s1 |
      s4  c4 d e |
       f16 e f g  a4 g8 f4 e8 |
        f4 d2 d4 |
         c4 g'2 a8 fis! |
          fis2 dis4 fis4 |
          g2  e4 g |
          fis2 dis4 fis4 |
          g2 e4 g  |
          fis4. dis8 fis4. dis8 |
           e4. e16 d cis2 |
           s2 e2 |
           s2  d2 |
            <b d>16 s s8 s4  d2~  |
            d16\noBeam  g16 fis e d c b a b d c b a c b a |
             b4~ b16 e d c d b c d c a b c |
              <b d>4 r16 s s8 s2|
              s1|
              s2 <fis' a>2 |
    s2 <a d> |
     <b d>16 s s8 s4 s2 |
     s1 |
     s1 |
     s1 |
     s1 |
     s4 q4 <a c e> <a c d> |
     \acciaccatura q2 <g b d>1
  } >>
}

melody = << \melodyRight >>

rhup = \relative c' {
  d,1\rest |
  d1\rest |
   d16\rest g fis e d c b a b d c b a c b a  |
   b d\rest d8\rest d4\rest d2\rest |
    d16\rest \stemNeutral d' c d e c b a b c a c b c a c |
     b4\stemUp b d d |
      <b e>4 s4 s2 |
       s4 d,\rest d2\rest |
       s4  \stemNeutral a'16 g fis e fis a g fis e g fis e |
        fis16\noBeam  d cis b a g fis e fis a g fis e g fis e |
         fis16 r r8 r4 r2 |
         s1 |
         s1 |
         s4.\stemUp  e''8 e4 d |
          e16 r r8 r4 r r8 e
   s1 |
   s1 |
   s1 |
   s1 |
   s4 r8 s  a,4  a4  |
    a4 r8 d d4 d |
     d4 <g, d'> <g e'> <b d> |
      <g c>8 r r4 r2 |
  s1 |
  s1 |
  s4 s s d'4 |
   e4 r s2 |
   s1 |
   s1 |
    c2. c4 |
     b2. b4 |
      a4 s s2 |
      s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  b4. fis8 b2 |
   a2 a |
    g4 r s2 |
    s4 r4 r2 |
  \stemNeutral r16 g16 fis e d c b a b d c b a c b a  |
  g4 r8 g' g a, g' fis |
   <g, g'>16 \noBeam b' a b e c b a b d c b c d b c |
   \stemUp <fis, a>2 s |
    e'2~ e16 a, b c d c b a |
     d2 s |
     \clef treble
    e2 c4 e |
     f2 d4 f |
      e2 c4 e4 |
  <a, c fis!>1 |
   <g d' g>4 \clef bass \stemNeutral b4 c d |
    g,1

}

rhdown = \relative c' {
s1 |
s |
s |
s |
s |
s4  g4 b b |
 e,8. b'16 e8. d16  \tuplet 3/2 { cis8 d e}\tuplet 3/2 { a, b cis} |
       d4 s s2 |
       s1 |
       s1 |
       s16 r r8 r4 r2 |
       s1 |
       s1 |
        e,4. d'!8 c!4 b |
         a16 r r8 r4 r r8 s |
    <a e'>2 <d fis> |
     <g, d'>2 <c e> |
      <fis, c'>4 q b r8 b |
       e,4 b' a gis |
        a4 r8 a fis4 cis |
         d4 r8 a' b4  fis |
          g4 f e g |
             c,8 r r4 r2 |
  s1 |
  s1 |
  s4 c'4  c b |
  a  r s2 |
  s2  a4 a |
   d,4 f g b |
    c,4 e f a |
     b,4 d e gis a s s2 |
     s1 |
 s2. b4  |
  c4 c b a  |
  b1~ |
  b1~ |
  b1~ |
  b1~ |
  b4. b8 b4. b8 |
   e,4 g8  e8 fis16 cis fis g fis e d cis |
    d4 b8 d e16 b e fis^\markup{\smaller{\bracket\natural}} e d c! b |
   c4 a8 c d16 a d e d c b a  |
   b4 r g' fis  |
   g r r2 |
   r16 s s8 s4 s2 |
   s4 r8 s s2 |
   s1 |
    d2~ d16 e fis g a b cis d |
     <e, g cis>2 d4 r |
      b'2 b4 d
}

pedal = \relative c {
  \clef bass
   g1~ |
    g1~ |
     g1~ |
      g16\noBeam  g' fis g d g b, d c e a, c b g' a, fis' |
       <g, g'>1~ |
        q4 g b8 d g, b |
         e,2 e^\trill |
          d4 r r2 |
  r1 |
  r |
   r16 d' cis d a d fis, a  g b e, g fis d' e, cis' |
    <d, d'>1~ |
     q4 r r8. b'16[ dis8. b16] |
      e8.[ b16 e8. d!16] c!8.[ e16 b8. e16] |
       a,2~ a8 a c e |
        a16 b a b g a g a fis a d, fis e g fis a |
         g16 a g a fis g fis g e g c, e d fis e g |
          fis16 g fis g e fis e fis dis fis b, dis cis e dis fis |
           e16 fis e fis d! e d e c! d c d b c b c  |
           a b a b g! a g a fis g fis g e fis e fis |
            d16 d' cis d c d c d b c b c a b a b |
             g16 a g a f g f g e f e f d e d e |
              <c c'>1~ |
   q1~ |
    q1~ |
     q4 r r b' |
      a1~ |
       a1 |
        d4 r r g, |
        c r r f, |
        b r4 r  e,|
  a  a'2 g!4 |
   f4 d g a |
    d,4 f g g, |
     c4 r r c |
      b1~ |

      b1~ |
      b1~ |
      b1~ |
      b1 |
   e,2 fis4 r |
    b2 e,4 r |
     a2 d,4 r |
      g4 r g d' |
       g,1~ |
        g1~ |
         g16\noBeam  g' fis g d g b, d c e a, c b g' a, fis' |
          g,1 |
   d1~ |
    d1 |
   <g g'>1~ |
   <g g'>1~ |
   <g g'>1~ |
   <g g'>1~ |
   <g g'>1~ |
   <g g'>4  b4 c d |
    g,1|


}

rh = << \clef bass \rhup \\ \rhdown >>

% The score definition

\score {
<<

  \new PianoStaff <<
    \new Staff \with {
      \consists #Merge_rests_engraver
    }
    <<
      \set Staff.midiInstrument = #"church organ"
      \new Voice { \key g \major << \melody >> }
    >>
    \new Staff \with {
      \consists #Merge_rests_engraver
    }
    <<
      \set Staff.midiInstrument = #"church organ"
      \new Voice { \key g \major \rh }
    >>

  >>
  \new Staff {
    \set Staff.midiInstrument = #"church organ"

    \key g \major \pedal }

>>

	\layout { }
 	 \midi { \tempo 4=90}
}
