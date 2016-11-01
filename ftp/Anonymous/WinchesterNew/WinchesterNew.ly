\header{
	composer = "Musicalisch Handbuch, Hamburg, 1690"
	date = "1690"
	enteredby = "Peter Chubb"
	metre = "88 . 88"
	title = "Winchester New"

	arranger = "W. H. Monk (1823--1889)"
	style = "Hymn"
	license = "Public Domain"

	mutopiaarranger = "W. H. Monk (1823-1889)"
	mutopiacomposer = "Anonymous"
	mutopiainstrument = "Voice (SATB)"
	mutopiameter = "88 . 88"
	mutopiasource = "Unknown"
	maintainer = "Peter Chubb"
	maintainerEmail = "mutopia@chubb.wattle.id.au"

 footer = "Mutopia-2016/11/01-197"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

% $Log: WinchesterNew.ly,v $
%
% Revision 1.5  2016/10/19           Javier Ruiz-Alma
% Updated to LilyPond v2.18.2, adjust spacing
%
% Revision 1.4  2005/01/11 08:33:37  peterc
% Discard obsolete american-style chords.
%
% Revision 1.3  2005/01/09 02:19:54  peterc
% Updated to current Lily
%
% Revision 1.2  2002/02/27 03:11:52  peterc
% Added mutopia headers.
%
\version "2.18.2"

\paper {
    top-margin = 12\mm
    line-width = 19\cm
    indent = 0.0\mm
    system-system-spacing #'padding = #8
    markup-system-spacing #'basic-distance = #22
}

global={
	\key bes \major
	\time 4/4
	\partial 4
	\skip 4
	\skip 4*4
	\skip 4*3
	\bar "||"
	\skip 4
	\skip 4*4
	\skip 4*3
	\bar "||"\break
	\skip 4
	\skip 4*4
	\skip 4*3
	\bar "||"
	\skip 4
	\skip 4*4
	\skip 4*3
	\bar "|."
}

sop=\relative c'{
	\partial 4 f4 |
	bes f g g |
	f es d

	d es d c f |
	f e f

	f |
	bes c d bes |
	es d c

	d |
	bes g f bes |
	bes a bes
}
alt=\relative c' {
	d4 |
	f d es es8( d) |
	c4 a bes 

	bes |
	bes bes c d |
	d c c

	f |
	f es d g8 ( f) |
	es4 f f 
	f |
	f es f d |
	g f f
}

tenor=\relative c' {
	bes4 |
	bes bes bes es, |
	f f f

	f |
	g f8 ( g) a4 a |
	bes8 ( a) g4  a 

	a |
	bes g8( a) bes4 bes |
	bes8( a) bes4 a 
	
	bes|
	bes bes bes bes |
	c c d
}

bass=\relative c {
	bes4 |
	d bes es c8( bes) |
	a4 f bes 

	bes |
	g bes f d' |
	bes c f,

	f'8(  es) |
	d4 c bes es8( d) |
	c4 d8( es) f4 

	bes, |
	d es d g |
	es f bes,
}


upper=\context Staff = "upper" <<
	\global
	\context Voice=sop{\voiceOne\sop}
	\context Voice = "alt" {\voiceTwo\alt}
>>
lower =\context Staff = "lower" <<
      {\clef "bass" \global}
	\context Voice = "tenor" {\voiceOne\tenor}
	\context Voice = "bass" {\voiceTwo\bass}
>>




harm=\chordmode {
	bes4 |
	bes/+d bes  es c:m |
	f/a f bes 

	bes |
	es/+g bes f d:m |
	bes c f

	f |
	bes c:m bes es |
	c:m bes/+d f 

	bes  |
	bes/+d es  bes/+d g:m |
	c:m7/+es f bes
}
music= <<
	\context ChordNames\harm
	\upper
	\lower
>>

\score{
	 \music
	\layout{
		\context {
			\ChordNames
		 \override ChordName.style = #'american
%		 \override ChordName.word-space = #1
		}
	}
	
  \midi {
    \tempo 4 = 100
    }


}

