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
        piece = "Variatio 30. Quodlibet. a 1 Clav."
        mutopiatitle = "Goldberg Variations - 30"
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
	
 footer = "Mutopia-2008/05/18-1422"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

sopranoOne =   \relative d' {
    \repeat volta 2 { %begin repeated section
		\stemUp
		\partial 8 r8 | % Auftakt
        r2 r4 r8 d8 | % 1
        g8 [ a b c ] d8 [ c16 b ] a8 r8 | % 2
        d4 d e e | % 3
        d8 [ e d c ] b \prallprall [ a ] g4 | % 4
        g8 [ a b c ] d [ c16 b ] a8 [ d ~ ] | % 5
        g8 [ fis e d ] cis \prallprall  [ b16 cis ] a8 r8 | % 6
        a'4 a b b | % 7
        a8 [ b a g ] fis [ e ] d | % 8
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
		\partial 8 a'8 | % Auftakta
		fis8 [ a fis a ] d, [ e16 fis ] g8 [e ] | % 9
		a8 [ g fis e ] dis [ cis16 dis ] b8 [b'] | % 10
		e,8 [ b' e, b'] dis,16 [e fis g ] a8 [ g16 f ] | % 11
		g8 [ fis16 e ] dis16 [ e fis dis ] e2 ~ | % 12
		e16 [(d ) fis (e) ] g16 [(fis) a8 ] d,4. c16 [ d] | % 13
		e8 [ fis16 g] a8 [ g ] fis16 \prallprall [ e32 fis d8 ] r4 | % 14
		b'8 [ c d b ] c [ b a g ] | % 15
		fis8 [ g a fis ] g4 g8 | % 16
    } %end repeated section
}

sopranoTwo =   \relative g' {
	\repeat volta 2 { %begin repeated section
		\stemDown
        \partial 8 r8 | % Auftakt
		r1 | % 1
        g4 g a a | % 2
        g8 [ a g f ] e [ d c b' ] | % 3
        a8 [ g a fis ] g4 g8 [ d ] | % 4
        g4 g a a | % 5
		<<
		{ d8 [ c ] b4 a4. b16 [cis] } \\
        { g8 [ a g fis ] e [ d ] cis r8}
		>> | % 6
        d'8 [ e fis d ] b [ d g fis ] | % 7
		<<
        { e8. [ d16 ] ~ d [ cis e8 ~ ] e16 [ d8 cis16 ] d8 } \\
        { s4 s8 a8 ~ a [ a ] fis } 
		>> | % 8
   } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
		\partial 8 r8 | % Auftakt
		a4 a b b | % 9
		a8 [ b a g ] fis [ e ] dis r8 | % 10
		b'4 b c c | % 11
		b8 [ c b a ] g [ fis16 g ] e8 r8 | % 12
		r2 g4 g4 | % 13
		c8 [ d8 ] c [b] a [g] c [d ] | % 14
		b8 [ a16 b ]g8 r8 r8 e'16 [d c8 e ] | % 15
		a,16 [ d c b ] c [ a d8 ~ ] d8 [ c16 d ] b8 | % 16 
    } %end repeated section
}



soprano = << \sopranoOne \\ \sopranoTwo >>

%%
%% Bass Clef
%% 

bassOne = \relative d {
	\repeat volta 2 { %begin repeated section
	\stemUp
		\partial 8 d8 | % 1
        g8 [ a b c ] d [ c16 b ] a8 [ g16 a ] | % 1
        b8 [ a ] g2 fis8 \prallprall [ e16 fis ] | % 2
        g4 r8 d'8 c [ b a g ] | % 3
        fis4 \prallprall ~ fis16 [e32 fis d8 ~] d4 r4 | % 4
        s1 | % 5
        s1 | % 6
        fis8 [ g a fis ] g [ fis e d ] | % 7
        cis8 [ d e cis ] d4 d8 | % 8
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
		\partial 8  fis'8 | % Auftakt
		d8 [ fis d fis ] g [ d d g ] | % 9
		e8 r8 r4 fis4 fis | % 10
		g4 g fis8 [g fis e ] | % 11
		dis8 [ e16 fis ] b,4 ~ b8 [ a16 b ] g8 [a16 b ] | % 12
		c8 [ d e fis ] g [ fis16 e ] d8 r8 | % 13
		r8 a'8 e [ d16 e ] fis8 g4 fis8 | % 14
		d4 d e fis | % 15
		d8 [ e d c ] b [ a ] g | % 16
  
    } %end repeated section
}

bassTwo = \relative g {
    \repeat volta 2 { %begin repeated section
	\stemDown	    
  \partial 8 r8 | % Auftakt
        g2 fis | % 1
        e2 d4. c8 | % 2
        b2 c | % 3
        d2 g,4 r8 b'16 [ a ] | % 4
        g8 [ fis16 g ] e8 [ d16 e ] fis4. b8 | % 5
        e,4. fis16 [ g ] a4 ~ a16 [ g fis e ] | % 6
        fis4 d g g, | % 7
        a2 d,4 r8 | % 8
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
		\partial 8 r8 | % Auftakt
		d''4 c b g | % 9
		c8 [ b c a ] b4. a8 | % 10
		g8 [ e' g, e' ] a,4. ais8 | % 11
		b4 b, e4. d8 | % 12
		c4 c' b4. c16 [ b ] | % 13
		a4. b16 [ c ] d4. c16 [ d ] | % 14
		g,8 [ a b g ] c4. cis8 | % 15
		d4_\markup { "Aria da Capo e Fine." } d, g g,8 | % 16
    } %end repeated section
	
}

bass = << \bassOne \\ \bassTwo>>

%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef treble \key g \major \time 4/4 \soprano  }
        \new Staff = "lower"  { \clef bass \key g \major \time 4/4 \bass }
    >>
    \layout{  }
    \midi { }

}
