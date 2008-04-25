\version "2.11.44"

\paper {
    page-top-space = #0.0
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

% #(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
        title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
        subtitle = "\"Goldberg Variationen\""
        piece = "Variatio 5. a 1 ovvero 2 Clav."
        mutopiatitle = "Goldberg Variations - 5"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 988"
        date = "1741"
        mutopiainstrument = "Clavier"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1853 Band 3"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz@gmail.com"
	
 footer = "Mutopia-2008/04/25-1406"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}


soprano =   \relative d' {
    \repeat volta 2 { %begin repeated section
    r16 d16 [ e fis ] g [ fis g a ] b [ a g b ] | % 1
    a16 [ g fis e ] d [ e fis g ] a [ fis e d ] | % 2
    g16 [ fis e d ] cis [ d e fis ] g [ b a g ] | % 3
    fis16 [ e d cis ] d [ a d e ] fis [ d fis a ] | % 4
    d16 [ b a b ] g [ b a b ] d, [ g fis g ] | % 5
    e16 [ g d g ] c, [ g' b, g' ] a, [ g' b, g' ] | % 6
    c,16 [ g' b, g' ] c, [ fis e fis ] d [ fis c fis] | % 7
    b,16 [ g' fis e ] d [ c b a ] g8 r8 | % 8
    b''8 r8 g,8 r8 b'4 | % 9
    a8 r8 fis,8 r8 a'4 | % 10
    g16 [ fis e dis ] e [ g d g ] cis, [ g' b, g' ] | % 11
    cis,16 [ g' e g ] a,8 [ g' fis g \turn ] | % 12
    a8 [ e, fis fis' g  a ] | % 13
    b8 [ fis, e g' a  b8 ] | % 14
    e,8 [ g,8 \clef "bass" a, e' cis a ] | % 15
    fis8 [ \clef "treble" d'8 fis8  a8 ] d4 | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
  fis8 r8 d,8 r8 fis'4 \downmordent | % 17
  g8 [ d16 g a8 d,16 a' ] b8 ( [g ] ) | % 18
  e8 [ c a g' ] fis32 [ e dis16 e8 ~ ] | % 19
  e8 [ dis \prall ] r8 \clef "bass" a,8 [ g \prallprall fis ] | % 20
  e8 r8 \clef "treble" e''8 r8 \clef "bass" d,,4 \prallmordent | % 21
  c8 r8 \clef "treble" e''8 r8 \clef "bass" a,,,4 \prallmordent | % 22
  b8 r8 \clef "treble" g''' [ fis e dis ] | % 23
  e8 r8 \clef "bass" e,,4 ~ e16 [ d c b ] | % 24
  c16 [e d e ] g [ e d e ] c' [ a g a] \clef "treble" | % 25
  fis'16 [ a, g a ] g' [ d c d ] b' [ g fis g ] | % 26
  e'16 [ d c d ] fis [ d c d ] g [ d c d ] | % 27
  a'16 [ d, c b ] c [ b a g ] fis [ a' g fis ] | % 28
  g8 [ b, ] r8 \clef "bass" f,8 [ e d ] | % 29
  c16 [c' b c ] \clef "treble" d [ c e c ] fis [ c g' c, ]| % 30
  a'16 [ c, b a ] b8 [ d' \clef "bass" d,, \clef "treble" c'' ] | % 31
  b16 [ g d g ] b [ g d' b ] g'4 | % 32

    } %end repeated section
}



%%
%% Bass Clef
%% 

bass = \relative g {
	\repeat volta 2 { %begin repeated section
    g8 r8 \clef "treble" b'8 r8 \clef "bass" g,4 | % 1
    fis8 r8 \clef "treble" a'8 r8 \clef "bass" fis,4 | % 2
    e8 r8 \clef "treble" g'8 r8 \clef "bass" e,4 | % 3
    d8 r8 \clef "treble" fis'8 r8 \clef "bass" d,8 [ c8 ] | % 4
    b8 r8 \clef "treble" d''8 r8 \clef "bass" b,,4 | % 5
    c8 r8 \clef "treble" e''8 r8 \clef "bass" c,,4 | % 6
    d8 r8 \clef "treble" a''8 r8 \clef "bass" d,,4 | % 7
    g,8 r8 \clef "treble" b''4 ~ b16 [ a g fis ] | % 8
    g16 b cis d ] e [ fis e d ] cis [b a g ] | % 9
    fis [ a b cis ] d [ e d cis ] b [ a g fis ] | % 10
    e8 [ fis g b] e4 \prallmordent ~ | % 11
    e8 [ d ] cis16 [e b e ] a, [ e' g, e'] | % 12
    fis,16 [ e' d cis ] d [ a d, d' ] e, [d' fis, d' ] | % 13
    g,16 [ e' d cis ] d [ b e, d'] fis, [d' g, d'] | % 14
    a [ d cis b ] cis [e a, cis ] e, [ g fis e ] | % 15
	fis [a d, fis ] \clef "bass" a, [ d fis, a ] d,4 \clef "treble" | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
    r16 d''16 [ c b ] a [ g fis e ] d [ c' b a ] | % 17
    b16 [ g fis e ] d [ c b a ] g [ g' a b ] | % 18
    c16 [ d e d ] c [ b a g ] a [ b c a ] | % 319
    b16 [ a b fis ] b, [ cis dis e ] fis [ g a fis] | % 20
    g16 [ b g e ] g [ b g e ] g [ b g e ] | % 21
    a16 [ c a e ] g [ c g e ] fis [ c' fis, e ] | % 22
    g16 [ b g e ] b [ b' a b ] g [ b fis b ] | % 23
    g16 [ e g b ] e [ b g b ] e,8 r8 \clef "bass" | % 24
	e8 r8 c,8 r8 e'4 | % 25
    d8 r8 b,8 r8 d'4 | % 26
    c8 b a g fis e | % 27
    fis8 [g16 a ] d,4 ~ d16 [c' b a ] | % 28
    b16 [ g fis g ] a [ g b g ] c [g d' g, ]  | % 29
    e'8 [ g, ] r8 b8 [ a  g ] | % 30
    fis16 [ d' e fis ] g [ d b g ] a [ c g' fis ] | % 31
    g8 [ g, d b ] g4 | % 32
      
    } %end repeated section
}


%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef "treble" \key g \major \time 3/4 \soprano  }
        \new Staff = "lower"  { \clef "bass" \key g \major \time 3/4 \bass }
    >>
    \layout{  }
    \midi { }

}
