\header {
	filename = "ToGodBeTheGlory.ly"
	enteredby = "Peter Chubb"
	composer = "W. H. Doane (1832--1915)"
	poet = "F. Crosby (1820--1915)"
	date="1875"
	title = "To God be the Glory"
	metre = "11 11 11 11 and refrain"
	meter = \metre
	copyright = "Public Domain"
	style = "Hymn"
	mutopiacomposer = \composer
	mutopiapoet=\poet
	maintainer = "Peter Chubb"
	maintainerEmail = "peter@chubb.wattle.id.au"
	lastupdated = "2002/Feb/26"

        tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
        footer = "Mutopia-2002/02/26-195"
}

\version "1.4.0"

% $Log: ToGodBeTheGlory.ly,v $
% Revision 1.6  2002/02/27 01:47:05  peterc
% Added mutopia headers and chorus words.
%

line=\notes{
	\skip 4
	\skip 2.*3
	\skip 2
	\bar "||" 
}
global = \notes {
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

sop = \context Voice = "sop" \notes \relative c' {
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

alto=\context Voice = "alto" \notes \relative c' {
	\voiceTwo
	c4 |
	c () es des8 des |
	c4 c es |
	es es es |
	es2 

	es4 |
	f des f |
	es es es |
	d d f |
	es2 

	des!4 |
	c4 () es4 des8 des |
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
	c4 () es des8 des |
	c4 c es |
	es es es |
	es2 
	ges4 |
	f f f |
	es es es es es des
	c2
}	
	
tenor = \context Voice = "tenor" \notes \relative c' {
	\voiceOne
	as4
	as2 bes8 bes |
	as4 c as |
	g g g |
	as2

	as4 |
	as as as |
	as as as |
	as f bes8 ()as |
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
	
bass = \context Voice = "bass" \notes \relative c {
	\voiceTwo
	as4 |
	as () c es8 es |
	as,4 as c |
	es es es |
	as,2

	as4 |
	des des des |
	as c as |
	bes bes d |
	es2

	es4 |
	as,4 () c  es8 es |
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
	as,4 () c es8 es |
	as,4 as c |
	es es es |
	as,2

	as4 |
	des des des |
	es es es |
	es es es |
	as,2
}

chorus=\lyrics{
	Praise the Lord!
	Praise the Lord!
	Let the earth hear his voice.
	Praise the Lord!
	Praise the Lord!
	Let the Peo -- ple re -- joice.
	O Come to the fa -- ther through Je -- sus the Son,
	And give Him the glo -- ry, great things he has done.
}

\score {
	% My pianist can't cope with a-flat, so put the tune into G.
	\notes \transpose b \context ChoirStaff <
		\property ChoirStaff.automaticMelismata = ##t
		\addlyrics 
		\context Staff ="upper" { \clef "G" <
			\global
			\sop
			\alto
		>}
		% \repeat unfold 44 "" doesn't work properly
		\context Lyrics \lyrics {
			_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
			_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
			_ _ _ _ _ _ _ _  
			\chorus 
		}
			
		\context Staff = "lower" { \clef "F"<
			\global
			\tenor
			\bass
		>}
	>
	\paper{
		indent = 0.0\pt
	}
	\midi {
		\tempo 4 = 120
	}
}

