\version "2.10.33"

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
        piece = "Variatio 21. Canone alla Settima."
        mutopiatitle = "Goldberg Variations - 21"
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
	
 footer = "Mutopia-2008/04/22-1403"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}


sopranoOne =   \relative a' {
    \repeat volta 2 { %begin repeated section
    \stemUp
        r2 r16 a16 [ bes c ] d [ c bes a ] | % 1
        g8 [ d' g, c ~ ] c16 [ fis, g a ] bes [ a g fis ] | % 2
        g8 r8 r8 g8 as [ g as a ] | % 3
        bes16 [ c d c ] bes [ a g fis ] es'8  r8 r8 c8 ~  | % 4
        c16 [ c bes a ] bes [ c d e ] f8 [ e ] f16 [ g a8 ~ ] | % 5
        a16 [ g f a ] g [ f e d ] cis8. [ b16 ] cis \downprall [ d e8 ] | % 6
        d8 r8 r8 d8 es [ d8 es e ] | % 7
        f8 [ g a g ~ ] g8 [ fis16 e ] d [ cis d8 ]	| % 8
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        r2 r16 as'16 [ g16 f ] e [ f g e ] | % 9
        c8 [ d16 es ] f8 [ bes,8 ] r16 f'16 [ es d ] c [ es d f ] | % 10
        es8 [ f ] g4 ~ g16 [ f g as ] d, [ c d f ] | % 11
        bes,16 [ c d bes ] es8 [ as, ~ ] as [ g16 f ] g8 [ es'8 ~ ] | % 12
        es8 [ d16 c ] d8 r8 r16 e,16 [ f g ] f [ e d c ] | % 13
        c'16 [ bes c8 ] fis,8 r8 r8 d'16 [ c ] bes [ a g f ] | % 14
        es8  r8 r8 c'8 ~ c [ bes ] a [ bes16 c ] | % 15
        d8 [ f, ] es [ c' ~ ] c16 [ bes32 a g a fis16 ] g4 | % 16
    } %end repeated section
}

sopranoTwo =   \relative bes {
    \repeat volta 2 { %begin repeated section
    \stemDown
       r16 bes16 [ c d ] es [ d c bes ] a8 [ es' a, d ~ ] | % 1
        d16 [ g, a bes ] c [ bes a g ] a8  r8 r8 a8  | % 2
        bes8 [ a bes b ] c16 [ d es d ] c [ b a g ] | % 3
        fis'8 r8 r8 d8 ~  d16 [ d c  bes ] c [ d e fis ] | % 4
        g8 [ fis ] g16 [ a bes8 ] bes16 [ a g bes ] a [ g f e ] | % 5
        d8. \downprall [ cis16 ] d [ e f8 ] e [ r8 r8 e8 ] | % 6
        f8 [ e f fis ] g [ a bes a ~ ] | % 7
        a8 [ g16 f ] e [ d e8 ] d4 r4 | % 8
	
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        r16 bes'16 [ a g ] fis [ g a fis ] d8 [ e16 f ] g8 [ c, ] | % 9
        r16 g'16 [ f es ] d [ f es g ] f8 g as4 ~  | % 10
        a16 [ g as bes ] es, [ d es g ] c, [ d es c ] f8 [ bes, ~ ] | % 11
        bes8 [ as16 g ] as8  [ f'8 ~ ] f [ es16 d ] es8 ] r8 | % 12
        r16 fis,16 [ g a ] g [ fis es d ] d' [ c d8 ] g, r8 | % 13
        r8 es'16 [ d ] c [ bes a g ] fis8  r8 r8 d'8 ~ | % 14
        d8 [ c ] b [ c16 d ] es8 [ g, fis d' ~ ] | % 15
        d16 [ c32 bes a bes g16 ] as [ g8 fis16 ] g4 r4 | % 16
    } %end repeated section
}


soprano = << \sopranoOne \\ \sopranoTwo>>


%%
%% Bass Clef
%% 

bass =   \relative g, {
    \repeat volta 2 { %begin repeated section
       g4 g' fis f | % 1
        e4 es d16 [ a bes c ] d8 [ d, ] | % 2
        g16 [ d' e fis ] g [ f es d ] c8 [ b c cis ] | % 3
        d8 [ bes c d ] g4 ~ g16 [ fis g a ] | % 4
        bes16 [ c d8 ] g, [ g' ] d4. c8 | % 5
        bes8 [ a bes g ] a16 [ e f g ] a [ b cis a ] | % 6
        d16 [ f, g a ] d, [ c' bes a ] g [ bes, c d ] g, [ g'8 cis,16 ] | % 7
        d16 [ a' d8 ~ ] d8. [ cis16 ] d [ bes a g ] fis [ a fis d ] | % 8
	
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        d8 d'4 c8 b bes4 a16 [ g ] | % 9
        a8 as4 g8 d [ es f bes, ] | % 10
        es8  r8 r8 es8  as4. g16 [ f ] | % 11
        g4 ~ g16 [ f es d ] es [ g, as bes ] es, [ g a b ] | % 12
        c4 r8 c8 bes4 r8 bes8 | % 13
        a16 [ g a bes ] a [ g fis e ] d [ c' d es ] d [ c bes a ] | % 14
        g16 [ f' g as ] g [ f es d ] c [ b c cis ] d16 [ es d c ] | % 15
        bes16 [ a bes b ] c8 [ d ] g,16 [ d' bes d ] g [ d bes g ] | % 16
    } %end repeated section
}

%% Merge score - Piano staff in key of G Major, 12/8 time.

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef "treble" \key bes \major \time 4/4 \soprano }  
		\new Staff = "lower" {\clef "bass" \key bes \major \time 4/4 \bass }
    >>
    \layout{  }
    \midi { }

}
