\version "2.10.0"

\paper {
    page-top-space = #0.0
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

#(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
        title = "Clavierübung Vierter Teil Aria mit 30 Veränderungen"
        subtitle = "\"Goldberg Variationen\""
        piece = "Variatio 9. Canone alla Terza. a 1 Clav."
        mutopiatitle = "Goldberg Variations - 9"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 988"
        date = "1741"
        mutopiainstrument = "Clavier"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1853 Band 3"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/04/21-1386"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

% Macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

staffUpper = {\change Staff = upper \stemDown}
staffLower = {\change Staff = lower \stemUp}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoOne =   \relative b' {
    \repeat volta 2 { %begin repeated section
    \stemUp
         b8 [ a8 b8 c8 ] d8 [ a8 d8 c8 ] | % 1
        b8 [ d8 ] g4 ~ g8 [ a16 g16 ] fis4 | % 2
        g8 [ fis8 g8 a8 ] b8 [ fis8 b8 a8 ] | % 3
        g8 [ a16 b16 ] c4 ~ c8 [ b16 a16 ] b8 [ b,8 ] | % 4
        cis8 [ b8 cis8 dis8 ] e8 [ b8 e8 d8 ] | % 5
        c8 [ d16 e16 ] f4 ~ f8 [ e16 d16 ] e16 [ fis16 g8 ~ ] | % 6
        g8 fis4 e8 fis8 [ g8 a8 g8 ] | % 7
        fis4 e4 d2  % 8
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        fis8 [ d8 e8 fis8 ] g8 [ d8 g8 a8 ] | % 9
        b8 [ e,8 ] a4 ~ a8 [ g16 fis16 ] g8 r8 | % 10
        r8 e4 d16 [ c16 ] b16 [ a16 g16 fis16 ] g16 [ a16 b16 g16 ] | % 11
        e8. [ fis16 ] dis4 e8 r8 b'4 ~ | % 12
        b8 a4 gis8 a8 [ c16 b16 ] c16 [ e16 d16 c16 ] | % 13
        b4 cis4 d2 ~ | % 14
        d8 [ g8 fis8 e8 ] d8 [ g16 fis16 ] g16 [ a16 b8 ] | % 15
        e,8 [ a8 ] fis8. \prallprall [ g16 ] g2  % 16
    } %end repeated section
}

sopranoTwo =   \relative g' {
    \repeat volta 2 { %begin repeated section
    \stemDown
    	R1 | % 1
	g8 [ fis8 g8 a8 ] b8 [ fis8 b8 a8 ] | % 2
        g8 [ b8 ] e4 ~ e8 [ fis16 e16 ] d4 | % 3
        e8 [ d8 e8 fis8 ] g8 [ d8 g8 fis8 ] | % 4
        e8 [ fis16 g16 ] a4 ~ a8 [ g16 fis16 ] g8 [ g,8 ] | % 5
        a8 [ g8 a8 b8 ] c8 [ g8 c8 b8 ] | % 6
        a8 [ b16 cis16 ] d4 ~ d8 [ cis16 b16 ] cis16 [ d16 e8 ]~ | % 7
        e8 d4 cis8 d2 % 8
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
	R1 | % 9
        d8 [ b8 cis8 dis8 ] e8 [ b8 e8 fis8 ] | % 10
        g8 [ cis,8 ] f4 ~ f8 [ e16 dis16 ] e8 r8 | % 11
        r8 c8 ~ c8 [ b16 a16 ] g16 [ fis16 e16 d16 ] e16 [ fis16 g16 e16
        ] | % 12
        c8. [ d16 ] b4 c8 r8 g'4 ~| % 13
        g8 fis4 e8 fis8 [ a16 g16 ] a16 [ c16 b16 a16 ] | % 14
        g4 a4 b2 ~| % 15
        b8 [ e8 d8 c8 ] b2 % 16  
    } %end repeated section
}

soprano = << \sopranoOne \\ \sopranoTwo>>

%%
%% Bass Clef
%% 

bass = \relative g, {
    \repeat volta 2 { %begin repeated section
        g4 g'4 ~ g8 [ fis16 e16 ] fis8 [ d8 ] | % 1
        g8 [ a8 b8 c8 ] \clef "treble" d4. dis8 | % 2
        e4  r8 c8 g8 [ d'8 ] g8 [ a16 b16 ] | % 3
        c8 [ b8 a8 d8 ] g,2 ~ | % 4
        g8 \clef "bass" g,4 fis8 e8 [ e'16 dis16 ] e4 ~ | % 5
        e8 e,4 d8 c8 [ c'16 b16 ] c16 [ d16 e16 d16 ] | % 6
        cis16 [ a16 d16 cis16 ] b16 [ a16 b16 gis16 ] a16 [ b16 a16 g16
        ] fis16 [ e16 d16 cis16 ] | % 7
        d16 [ cis16 b16 a16 ] g16 [ e16 a8 ] d,8 [ fis16 a16 ] d4  % 8

    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        d8 d'4 c8 b16 [ a16 b16 c16 ] b16 [ a16 g16 fis16 ] | % 9
        g8 g'4 fis8 e16 [ dis16 e16 fis16 ] e16 [ d16 c16 b16 ] | % 10
        ais16 [ e'16 fis16 g16 ] a8 [ a,8 ] g16 [ a16 b16 g16 ] e16 [
        fis16 g16 e16 ] | % 11
        c'8 [ a8 b8 b,8 ] e,4 r8 e'8 ~ | % 12
        e8 [ c8 d8 e8 ] a,8 [ a'8 ] e16 [ d16 e16 fis16 ] | % 13
        g16 [ a16 b16 g16 ] a16 [ fis16 g16 a16 ] d,16 [ e16 fis16 g16 ]
        fis16 [ e16 d16 c16 ] | % 14
        b16 [ g16 a16 b16 ] c16 [ d16 e16 fis16 ] g16 [ a16 b16 a16 ] g16
        [ fis16 e16 d16 ] | % 15
        c16 b [ c a ] d8 [ d,8 ] g8 [ b16 d16 ] g4 } % 16
      } %end repeated section



%% Merge score - Piano staff in key of G Major, 12/8 time.

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \context Staff = "upper" { \clef "treble" \key g \major \time 4/4 << \soprano >>  }
        \context Staff = "lower"  { \clef "bass" \key g \major \time 4/4 \bass }
    >>
    \layout{  }
    \midi { }

}
