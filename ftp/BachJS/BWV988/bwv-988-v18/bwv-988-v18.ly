\version "2.18.0"

% Goldberg Variations - Variation 18, Canone alla Sesta
% J.S. Bach - BWV 988
% 
% typeset by Benjamin Esham <bdesham@gmail.com>
%
% This file was last updated on 2007-10-15.
%
% This music is part of the Mutopia project (http://www.MutopiaProject.org/).
% Copyright (c) The Mutopia Project and Benjamin Esham, 2007.
%
% This work is licensed under the Creative Commons Attribution-ShareAlike License 3.0.
% To view a copy of that license visit http://creativecommons.org/licenses/by-sa/3.0/
% or send a letter to Creative Commons, 559 Nathan Abbott Way, Stanford, CA 94305, USA.
%
% NOTES
%
% Typeset from Bach-Gesellschaft Ausgabe Band 3 (1853). Leipzig: Breitkopf & Härtel.
% Available from <http://imslp.org/wiki/Goldberg_Variations%2C_BWV_988_%28Bach%2C_Johann_Sebastian%29>
%
% There are two blocks of code near the end of the file that will allow the piece to
% fit on one page of A4 or letter paper, depending upon which one is commented out.
% 
% HISTORY
%
% - 2007-10-14: initial release.
% - 2007-10-15: fixed an incorrect note.  Thanks to Urs M. for pointing it out!
% - 2014-03-24: update to v2.18.2. (Javier Ruiz-Alma)

\paper {
    top-margin = 8\mm
    top-markup-spacing.basic-distance = #6
    markup-system-spacing.basic-distance = #5
    top-system-spacing.basic-distance = #12
    last-bottom-spacing.basic-distance = #12
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

%-----------------------definitions
adjTieDown = \shape #'((0 . -0.2) (0 . -0.3) (0 . -0.3) (0 . -0.2)) Tie
adjTieUp = \shape #'((0 . 0.2) (0 . 0.3) (0 . 0.3) (0 . 0.2)) Tie
adjTieOne = \shape #'(
                       ((0 . -1.0) (0 . -1.2) (0 . -1.2) (0 . -1.0))
                       ((0 . -1.0) (0 . -1.2) (0 . -1.2) (0 . -1.0))
                       ) Tie
adjTieTwo = \shape #'((0 . -0.2) (0 . -0.3) (0 . -0.3) (0 . -0.2)) Tie

soprano = \relative c''' {
	\key g \major
	\time 2/2

    \repeat volta 2 {
		r2 g2 ~
		g2 fis ~
		fis4 g8 fis \adjTieUp e2 ~
		e4 d8 cis d2
		r2 \adjTieUp e2 ~
		e4 d8 e fis2 ~
		fis4 a8 g a2 ~
		a8 g a fis g2
		r2 \adjTieUp e2 ~
		e2 \adjTieUp d ~ \noBreak
		d4 e8 fis g2 ~
		g8 fis g e fis2 ~
		fis4 fis \adjTieUp e2 ~
		e4 e \adjTieUp d2 ~
		d4 g cis,8 d e4 ~
		e2 d \break
	}        
    \repeat volta 2 {
		r2 a'2 ~
		a2 g ~
		g4 a8 b c2 ~
		c8 b c4 b2
		d,2\rest e2 ~ \noBreak
		e2 dis4 e \break
		fis2. e8 fis
		g2 ~ g8 fis e d
		c4 r a'2 ~
		a2 \adjTieUp g ~
		g4 a8 b \adjTieUp c2 ~
		c8 b c a b2 ~
		b4 b a2 ~
		a4 a g2 ~
		g4 c fis,8 g a4 ~
		a2 g
    }
}

alto = \relative c'' {
	\key g \major
	\time 2/2

    \repeat volta 2 {
		b1
		a2. b8 a
		g2. fis8 e
		fis2 r2
		g2. fis8 g
		a2. c8 b
		c2 ~ c8 b c a
		b2 r2
		g1
		fis2. g8 a
		b2 ~ b8 a b g
		a2. a4
		g2. g4
		fis2. b4
		e,8 fis g2.
		fis1
	}        
    \repeat volta 2 {
		c'1
		b2. c8 d
		e2 ~ e8 dis e4
		dis2 b\rest
		g1
		fis4 g \adjTieOne a2 ~
		a4 g8 a \adjTieTwo b2 ~
		b8 a g fis e4 r
		c'1
		b2. c8 d
		\adjTieDown e2 ~ e8 d e c
		d2. d4
		c2. c4
		b2. e4
		a,8 b c2.
		b1
    }
}

bass = \relative c' {
	\clef bass
	\key g \major
	\time 2/2

    \repeat volta 2 {
		r4 g8 a b4 c
		d4 d, d'2
		r4 e8 d cis4 a
		d4 d, d' c?
		b4-\prallprall a8 b c4 c,
		c'4 b8 c d4 a
		d,4 fis8 e fis4 d
		g4 d g, g'8 a
		b4 a8 b cis4 b8 cis
		d4 cis b a
		g fis e d
		cis4 b8 cis d4 cis8 d
		b4 a8 b cis4 b8 cis
		ais4 gis8 ais b a g fis
		g4 e a a,
		d a' d2
	}        
    \repeat volta 2 {
		r4 d8 e fis4 d
		g4 g, g' a8 b
		c4 b a g8 a
		b4. a8 g fis e dis
		e4 e'8 d c4 b
		a4 b8 c fis,4 g8 a
		dis,4 e8 fis b,4 cis8 dis
		e4 \clef treble e'8 dis e4 fis8 g
		a4 g8 a fis4 e8 fis
		g4 fis e d
		c4 b \clef bass a g
		fis4 e8 fis g4 fis8 g
		e4 d8 e fis4 e8 fis
		dis4 cis8_[ dis] e_[ d c b]
		c4 a d d,
		g d' g2
    }
}

\header {
	title = "Aria con 30 Variazioni"
	subtitle = "“Goldbergsche Variationen”"
	piece = "Variatio 18. Canone alla Sesta."
	mutopiatitle = "Goldberg Variations - 18"
	composer = "Johann Sebastian Bach (1685–1750)"
	mutopiacomposer = "BachJS"
	opus = "BWV 988"
	date = "1741"
	mutopiainstrument = "Harpsichord,Clavichord"
	style = "Baroque"
	source = "Bach-Gesellschaft Edition 1853 Band 3"
	license = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Benjamin D. Esham"
	maintainerEmail = "bdesham@gmail.com"

 footer = "Mutopia-2014/03/25-1076"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%%% for letter paper
%#(set-default-paper-size "letter")
#(set-global-staff-size 19)

%%% for a4 paper
%#(set-default-paper-size "a4")
%#(set-global-staff-size 20)

%%
%% Layout
%%

\score  {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "harpsichord"
        \context Staff = "upper" { \clef treble << \soprano \\ \alto >>  }
        \context Staff = "lower" { \bass }
    >>

	\midi { \tempo 2 = 96 }
 
    \layout {
			%%% for letter paper
			%\context { \Score \override SpacingSpanner.spacing-increment = #1.0 }

			%%% for a4 paper
			\context { \Score \override SpacingSpanner.spacing-increment = #0.8 }
    }
}
