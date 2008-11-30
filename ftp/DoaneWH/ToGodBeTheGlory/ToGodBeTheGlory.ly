\header {
	filename = "ToGodBeTheGlory.ly"
	enteredby = "Peter Chubb"
	composer = "W. H. Doane (1832--1915)"
	poet = "F. Crosby (1820--1915)"
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
	lastupdated = "2008/Nov/25"

 footer = "Mutopia-2008/11/30-195"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.11.62"


line = {
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

sop = \relative c' {
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

% chorus

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

alto=\relative c' {
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
	
tenor =  \relative c' {
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
	
bass = \relative c {
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
	des des des |
	es es es |
	es es es |
	as,2
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

chorus=\lyricmode{
	Praise the Lord!
	Praise the Lord!
	Let the earth hear His voice.
	Praise the Lord!
	Praise the Lord!
	Let the peo -- ple re -- joice.
	Oh, come to the Fa -- ther, through Je -- sus the Son,
	And give Him the glo -- ry; great things He hath done.
}

stanzaa = \lyricmode { 
	To God be the glo -- ry great things He hath done
	So lov'd He the world that He gave us His Son
	Who yield -- ed His life an a -- tone -- ment for sin,
	And o -- pened the Life Gate that all may go in.
}

stanzab = \lyricmode {
	Oh, per -- fect re -- demp -- tion, the pur -- chase of blood,
	To ev' -- ry be -- liev -- er the pro -- mise of God;
	The vil -- est of -- fen -- der who tru -- ly be -- lieves,
	That mo -- ment from Je -- sus a par -- don re -- ceives.
}

stanzac = \lyricmode {
	Great things He hath taught us, great things He hath done,
	And great our re -- joi -- cing through Je -- sus the Son;
	But pur -- er, and high -- er, and great -- er will be
	Our won -- der, our trans -- port, when Je -- sus we see.
}

\score {
  % My pianist can't cope with a-flat, so put the tune into G.
  % This also means the guitarist can cope without a capo,
  % and the top note is d'' --- good for congregational singing.
  \transpose c' b 
  \context ChoirStaff <<
    \context ChordNames \accomp
    \unset ChoirStaff.melismaBusyProperties 
    \context Staff ="upper"  { \clef "G"
			       <<
				 \global
				 \context Voice= sop { \voiceOne \sop }
				 \context Voice = alto {\voiceTwo \alto }
			       >>
			     }
    \lyricsto "sop" \context Lyrics = "stanza-1" {
      \set stanza = "1."   \stanzaa \chorus 
    }
    \lyricsto "sop" \context Lyrics = "stanza-2" {
      \set stanza = "2." \stanzab 
    }
    \lyricsto "sop" \context Lyrics = "stanza-3" {
      \set stanza = "3." \stanzac 
    }
    \context Staff = "lower"  { \clef "F"
				<<
				  \global
				  \context Voice = tenor { \voiceOne \tenor }
				  \context Voice = bass { \voiceTwo \bass }
				>>
			      }
  >>
  \layout{
    indent = 0.0\pt
    \context {
      \ChordNames
      \override ChordName  #'style = #'american
      chordChanges = ##t
    }
  }

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
    }
  }
}

