\header {
	filename = "ToGodBeTheGlory.ly"
	enteredby = "Peter Chubb"
	composer = "W. H. Doane (1832-1915)"
	poet = "F. Crosby (1820-1915)"
	date="1875"
	title = "To God be the Glory"
	metre = "11 11 11 11 and refrain"
	meter = "11 11 11 11 and refrain"
	copyright = "Public Domain"
	style = "Hymn"
	mutopiacomposer = "DoaneWH"
	mutopiapoet = "F. Crosby (1820-1915)"
	mutopiainstrument = "Voice (SATB)"
	mutopiasource = "Unknown"
	maintainer = "Peter Chubb"
	maintainerEmail = "mutopia@chubb.wattle.id.au"
	lastupdated = "2009/Aug/5"

 footer = "Mutopia-2009/08/05-195"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.12.0"
%Fit onto one page.
#(set-global-staff-size 18)

% $Log: ToGodBeTheGlory.ly,v $
% Revision 1.10  2009-08-05 04:47:20  peterc
% Updated to Lilypond 2.12.2.
%
% Revision 1.9  2005/01/09 02:18:42  peterc
% Updated to current Lily
%
% Revision 1.8  2004/06/06 06:28:12  peterc
% Converted to Lily 2.2
%
% Revision 1.7  2002/06/05 10:44:15  peterc
% Added chords
%
% Revision 1.6  2002/02/27 01:47:05  peterc
% Added mutopia headers and chorus words.
%

line={
	\skip 4
	\skip 2.*3
	\skip 2
	\bar "||"
}

global =  {
	\key as \major
	\time 3/4
	\partial 4
	\line
	\line
	\line
	\line \break
% chorus
	\line
	\line
	\line
	\line
}

sop = \context Voice = "sop"  \relative c' {
	\voiceOne
	es4 |
	es2 f8 g |
	as4 es as |
	bes es, bes' |
	c2

	c4 |
	des f, des' |
	c as c |
	c bes f |
	bes2

	es,4 |
	es2 f8 g |
	as4 es as |
	bes es, bes' |
	c2

	c4 |
	es des bes |
	as g as |
	c c bes |
	as2
}
% chorus
sopChorus= \context Voice = "sopChorus" \relative c'' {
  \voiceOne
	c8. des16 |
	es2 c8. des16 |
	es2 es8. c16 |
	as4 bes c |
	bes2

	bes 8. c16 |
	des2 bes 8. c16 |
	des2 des8 bes |
	es4 es des |
	c2

	es,4 |
	es2 f8 g |
	as4 es as |
	bes es, bes' |
	c2

	c4 |
	es des bes |
	as g as |
	c c bes |
	as2
}

alto=\context Voice = "alto"  \relative c' {
	\voiceTwo
	c4 |
	c ( es) des8 des |
	c4 c es |
	es es es |
	es2

	es4 |
	f des f |
	es es es |
	d d f |
	es2

	des!4 |
	c4 ( es4) des8 des |
	c4 c es |
	es es es |
	es2

	ges4 |
	f f f |
	es es es |
	es es des |
	c2

	es8. es16 |
	es2 as8. g16 |
	as2 es8. es16 |
	es4 des c |
	es2

	es8. es16 es2 es8. es16 |
	es2 es8 es  |
	es4 es es |
	es2

	des4 |
	c4 ( es) des8 des |
	c4 c es |
	es es es |
	es2
	ges4 |
	f f f |
	es es es es es des
	c2
}

tenor = \context Voice = "tenor"  \relative c' {
	\voiceOne
	as4
	as2 bes8 bes |
	as4 c as |
	g g g |
	as2

	as4 |
	as as as |
	as as as |
	as f bes8 ( as) |
	g2

	g4 |
	as2 bes8 bes |
	as4 c as |
	g g g |
	as2
	as4 |
	as bes des |
	c bes  c |
	as4 as as |
	as2
%chorus
	as8. bes16 |
	c2 as8. bes16 |
	c2 c8. as16 |
	as4 g as |
	g2

	g8. as16 |
	bes2 g8. as16 |
	bes2 bes8 g |
	as4 as g |
	as2

	g4 |
	as2 bes8 bes |
	as4 c as |
	g g g |
	as2

	as4 |
	as bes des |
	c bes c |
	as as g |
	as2
}

bass = \context Voice = "bass"  \relative c {
	\voiceTwo
	as4 |
	as ( c) es8 es |
	as,4 as c |
	es es es |
	as,2

	as4 |
	des des des |
	as c as |
	bes bes d |
	es2

	es4 |
	as,4 ( c)  es8 es |
	as,4 as c |
	es es es |
	as,2

	as4 |
	des des des |
	es es es |
	es es es |
	as,2

	as'8. as16 |
	as2 as8. as16 |
	as2 as8. as,16 |
	c4 bes as |
	es'2

	es8. es16 |
	es2 es8. es16 |
	es2 es8 des |
	c4 c bes |
	as2

	es'4 |
	as,4 ( c) es8 es |
	as,4 as c |
	es es es |
	as,2

	as4 |
	des des des
	es es es |
	es es es |
	as,2
}

chorus= \lyrics {
	Praise the Lord!
	Praise the Lord!
	Let the earth hear his voice.
	Praise the Lord!
	Praise the Lord!
	Let the Peo -- ple re -- joice.
	O Come to the fa -- ther through Je -- sus the Son,
	And give Him the glo -- ry, great things he has done.
}

accomp=\chordmode {
	as4 |
	as as es:7 |
	as as as |
	es es es |
	as as

	as |
	des des des |
	as as as |
	bes bes bes |
	es4 es

	es:7 |
	as as es |
	as as as
	es es es
	as as

	as:7 |
	des des des |
	as es as |
	as as es:7 |
	as as

	as |
	as as as |
	as as as |
	as es:7 as |
	es es es |
	es:7 es:7 es
	es:7 es:7 es:7
	as as es |
	as as

	es:7 |
	as as es:7 |
	as as as |
	es es es |
	as as as:7
	des bes:m/+des des |
	as es as |
	es es es:7
	as as
}

\score {
	% My pianist can't cope with a-flat, so put the tune into G.
   \transpose c' b
      \context ChoirStaff <<
	\context ChordNames\accomp
	\unset ChoirStaff.melismaBusyProperties
	\context Staff ="upper" {
	  \clef "G" <<
	    \global
	    { \voiceOne \sop \sopChorus }
	    \alto
	  >>
	}

	\lyricsto sopChorus \chorus

	\context Staff = "lower" {
	  \clef "F" <<
	    \global
	    \tenor
	    \bass
	  >>
	}
      >>

   \layout {
     indent = 0.0\pt
     \context {
       \ChordNames
       chordChanges = ##t
     }
   }

   \midi {
     \context { \Score
	tempoWholesPerMinute = #(ly:make-moment 120 4)
     }
   }
}
