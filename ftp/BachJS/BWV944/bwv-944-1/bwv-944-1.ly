\version "2.11.62"

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
        title = "Fantasia"
        mutopiatitle = "Fantasia BWV 944"
	subtitle = "Fantasia und Fuge a-Moll"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 944"
        mutopiainstrument = "Clavier"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition 1853 Band 3"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerWeb = "www.roxele.de"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/11/29-1601"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}


sopranoOne =   \relative b' {
	  < c e >1 | % 1
	  < b d >2 < b d >2 | % 2
	  < b d >2 < a c >2 | % 3
	  < a c >2 < gis b >2 | % 4
	  < gis b >2 a2 | % 5
	  < e' g >2 < cis e g >2 | % 6
	  < cis e g>2 < d f >2 | % 7
	  < d f >2 < c e >2 | % 8
	  < a c e >2 < b dis >2 | % 9
	  < b e >1-\fermata  | % 10

}

sopranoTwo =   \relative e' {
	  < e a >1 | % 1
	  < d f >2 < e gis >2 | % 2
	  < fis g >2 < e gis >2 | % 3
	  < d f >2 < d f >2 | % 4
	  < d f >2 < c e >2 | % 5
	  < g' bes >2 < g a >2 | % 6
	  < g bes >2 a2 | % 7
	  < gis b >2 < gis a >2 | % 8
	  r4 gis4 < fis a >2 | % 9
	  < e gis >1 | % 10

  }

soprano = << \sopranoOne \\ \sopranoTwo>>

%%
%% Bass Clef
%% 

bassOne = \relative e {
	
	  < e a >1^"Arpeggio" | % 1
	  < d f >2 < d e >2 | % 2
	  < e a >2 < e a >2 | % 3
	  a2 gis2 | % 4
	  gis2 < e a >2 | % 5
	  < g bes >2 < e a >2 | % 6
	  < g cis >2 < a d >2 | % 7
	  b2 c 2 | % 8
	  c2 b2 | % 9
	  b1 | % 10
  
}

bassTwo = \relative c {
	  < a c>1 | % 1
	  < a b >2 < gis b >2 | % 2
	  < a d >2 < a c >2 | % 3
	  < b d >2 < b d >2 | % 4
	  < c d >2 < c e >2 | % 5
	  < cis e >2 < cis e >2 | % 6
	  < d e >2 < d f >2 | % 7
	  < e gis >2 < e gis >2 | % 8
	  < f a >2 < fis a >2 | % 9
	  < e gis >1-\fermata | % 10
 
}

bass = << \bassOne \\ \bassTwo>>

%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef treble \key c \major \time 4/4 \soprano  }
        \new Staff = "lower"  { \clef bass \key c \major \time 4/4 \bass }
    >>
    \layout{  }
    \midi { }

}
