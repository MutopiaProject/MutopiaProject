\version "2.16.1"

\header {
mutopiatitle = "Ases Tod"
mutopiacomposer = "GriegE"
mutopiapoet = "Henrik Ibsen"
mutopiaopus = "O 46, No. 2"
mutopiainstrument = "Piano"
mutopiastyle = "Romantic"
date = "1874-76 - rescored by Grieg 1886"
style = "Romantique"
title = "Ases Tod"
subtitle = "La Mort D'ase"
composer = "Edvard Grieg (1843 - 1907)"
meter = "Andante doloroso"
opus = "Op. 46 No. 2 - from Peer Gynt Suite I"
copyright = "Public Domain"
source = "Kunkel Brothers 1891 - Kunkel's Musical Review, May 1893"
filename = "lamortdase.ly"
maintainer = "Deborah Lowrey"
maintainerEmail = "drlowrey@karmaresources.com"
maintainerWeb = "http://www.karmaresources.com/"
% footer = "Public Domain"
moreInfo = "This Piano piece's main source was from the Kunkel Brothers 1891, reprinted in 1893. Many of the slurs and fingerings were extremely excessive (and unnecessary), and so, were omitted. Many of the dynamics and (de)crescendi were left as entered to help reduce file size and make the sheetmusic (and file) less busy. If you are interested in the fingering for this piece, please email your request to the address @maintainerEmail. Karmically, Deborah."

 footer = "Mutopia-2013/03/22-246"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%										%
%	This Piano piece's main source was from the Kunkel Brothers 1891,	%
%	reprinted in 1893. Many of the slurs and fingerings were extremely	%
%	excessive (and unnecessary), and so, were omitted. Many of the		%
%	dynamics and (de crescendi) were left as entered to help reduce		%
%	file size and make the sheetmusic (and file less) busy. If you are	%
%	interested in the fingering for this piece, please email your		%
%	request to the address @maintainerEmail. Karmically, Deborah		%
%										%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Global =  {\key d\major \time 4/4}

rightHand =  \relative c {
\clef "bass"
\context Staff <<
\new Voice = VA {
	d4\p\< fis fis2\!
	d4\< fis fis2\!
\voiceTwo
	d4\< e8 fis g4 fis\!
	e\> fis8 gis <cis, ais'>4.\! r8 
\oneVoice
	d4\pp fis eis2
% 5
	d4 fis eis2
\voiceTwo
	e4 fis8 gis cis,4 gis'8 g
	fis e <d fis>2 r4 
\clef treble
\oneVoice
	a'\mf\< cis cis2\!
	a4\< cis cis2\!
% 10
\voiceTwo
	a4\< b8 cis d4 cis4\!
	b\> cis8 dis <gis, eis'>4.\! r8
\oneVoice
	a4\< cis bis2\!
	a4\< cis bis2\!
\voiceTwo
	b4_ \markup{\bold {\italic "cresc."}} cis8 dis <gis, eis'>4 dis'8 d
% 15
	cis8 b <a cis>2 ~ <a cis>8 r8
\oneVoice
	<fis b>4\f\< b cis2\!
	<fis, b>4\< b cis2\!
\voiceTwo
	d4\<  e8[ fis] g4 fis
	e  fis8[ gis] ais4.\! r8 
% 20
\oneVoice
	<fis, b >4\ff b\< <cis eis>2\!
	<fis, b>4\< b <cis eis>2\!
\voiceTwo
	e4 fis8 gis ais4 <d, gis>8 <e g>
	fis8 e <b d>2 r4
	eis'2_\p\> <d fis>\!
% 25
	eis\> <d fis>\!
	eis\< <fis a>\!
	<b, eis>\> <ais cis>4.\! r8
	ais2\> <g b>\!
	ais\> <g b>\!
% 30
	ais\< <b d>\!
	<e, ais>\> <d fis>4.\! r8
	eis2_ \markup{\bold {\italic "più"}} <d fis>
	eis\> <d fis>\!
	eis\< <fis a>\!
% 35
	<b, eis>\> <ais cis>4.\! r8
	\clef bass
	ais2\> <g b>\!
	ais\> <g b>\!
	ais\< <b d>\!
	<e, ais>\> <d fis>4.\! r8
% 40
	<e ais>2\> <d fis>4.\! r8
	<e ais>1
	d2\pp\> ~ d8 r8 r4
	d2 ~ d8\! r8 r4
	d1\ppp }

\new Voice = VB {
	\clef bass
\voiceOne
\context Voice = VA {
	fis4 b <ais cis>2
	fis4 b <ais cis>2
}
	d4 cis b cis8 d
	e4 d cis4. s8
\context Voice = VA {
	fis,4 b <b cis>2->
% 5
	fis4 b <b cis>2->
}
	<b e>4 <b d> <ais cis> <b d>8 <cis e>
	ais4 b2 s4
	\clef treble
\context Voice = VA {
	cis4 fis <eis gis>2
	cis4 fis <eis gis>2
}
% 10
	a4 gis fis gis8 a
	b4 a gis4. s8
\context Voice = VA {
	cis,4 fis <fis gis>2
	cis4 fis <fis gis>2
}
	<fis b>4 <fis a> gis <fis a>8 <gis b>
% 15
	eis4 fis2 ~ fis8 s8
\context Voice = VA {
	<d fis>4 <fis b> <fis cis'>2
	<d fis>4 <fis b> <fis cis'>2
}
	d'4 <cis, cis'>4 <b b'> <cis cis'>8[ <d d'>8]
	e'4 <d, d'>4 <cis cis'>4. s8
% 20
\context Voice = VA {
	<d fis>4 <fis b> <b cis>2->
	<d, fis>4 <fis b> <b cis>2->
}
	<b e>4-> <d, d'>-> <cis cis'> <b' d>8-> <cis e>->
	<ais, ais'>4 <fis' b>2-> s4 
	<b b'> <cis bes'> <a'>2
% 25
	<b, b'>4 <cis bes'> <a'>2
	<b, b'>4 <cis bes'> d cis8 c
	a'4 g fis4. s8
	<e, e'>4 <fis ees'> d'2
	<e, e'>4 <fis ees'> d'2
% 30
	<e, e'>4 <fis ees'> g fis8 f
	d'4 cis b4. s8
	<b, b'>4 <cis bes'>\p a'2
	<b, b'>4 <cis bes'> a'2
	<b, b'>4 <cis bes'> d cis8 c
% 35
	a'4 g fis4. s8
	\clef bass
	<e, e'>4 <fis ees'> d'2
	<e, e'>4 <fis ees'> d'2
	<e, e'>4 <fis ees'> g fis8 f
	d'4 cis b4. s8
% 40
	d4 cis b4. s8
	d2\> (  cis)\!
	b2 ~ b8 s8 s4
	b2 ~ b8 s8 s4
	b1 } >>
}

leftHand =  \relative c, {
\context Staff <<
\new Voice = VA {
	b4 d fis2 
	b,4 d fis2
\voiceTwo
	b,4 cis8 d e4 d
	cis4 d8 e fis4. s8
\oneVoice
	b,4 d g2 
% 5
	b,4 d g2
\voiceTwo
	cis,4 d8 e fis4 e 
	d8 cis b2 s4
\oneVoice
	fis'4 a cis2 
	fis,4 a cis2 
% 10
\voiceTwo
	fis,4 gis8 a b4 a
	gis a8 b cis4. s8
\oneVoice
	fis,4 a d2 
	fis,4 a d2
\voiceTwo
	gis,4 a8 b cis4 b
% 15
	a8 gis fis2 ~ fis8 s8
\oneVoice
	b,4 d <fis cis'>2
	b,4 d <fis cis'>2
\voiceTwo
	b,4 cis8 d e4 d
	cis d8 e fis4. s8 
% 20
\oneVoice
	b,4 d <g cis>2
	b,4 d <g cis>2
\voiceTwo
	cis,4-> <d b'>8-> e-> fis4-> e->
	d8-> cis-> b2-> r4
\clef treble
\oneVoice
	g'''2(  d)
% 25
	g(  d)
	g( d
	cis  fis4.) s8
\clef bass
	c2(  g)
	c2(  g)
% 30
	c( g
	fis  b4.) s8
	g,2(  d)
	g(  d)
	g( d
% 35
	cis  fis4.) s8
	c2(  g)
	c(  g)
	c( g
	fis  b4.) s8
% 40
	fis2(  b4.) s8
	fis1
\voiceTwo
	b2 ~ b8 s8 s4
	b2 ~ b8 s8 s4
\oneVoice
	b1 
}

\new Voice = VB {
\voiceOne
\context Voice = VA {
	b'4 b cis2
	b4 b cis2
}
	b2 b2
	b2 fis4. r8
\context Voice = VA {
	b4 b cis2->
% 5
	b4 b cis2->
}
	cis4 d8 e fis4 e
	d8 cis b2 r4
\context Voice = VA {
	fis'4 fis gis2
	fis4 fis gis2
}
% 10
	fis2 fis
	fis cis4. r8
\context Voice = VA {
	fis4 fis gis2->
	fis4 fis gis2->
}
	gis4 a8 b cis4 b
% 15
	a8 gis fis2 ~ fis8 r8
\context Voice = VA {
	b,4 d ais'2
	b,4 d ais'2
}
	b,4 b b b
	b b <cis ais'>4. r8
% 20
\context Voice = VA {
	b4 d b'2
	b,4 d b'2
}
	<b, cis>4 d8 e fis4 e
	d8 cis <fis, b>2 r4
\clef treble
	s1
% 25
	s s s s s
% 30
\context Voice = VA {
	s s g'2 d
	g d
	g d
% 35
	cis fis4. r8
	c2 g
	c g
	c g
	fis b4. r8
% 40
	fis2 b4. r8
	fis1
}
	fis2 ~ fis8 r8 r4
	fis2 ~ fis8 r8 r4
\context Voice = VA {
	fis1 }}>>
}

pedals =  {
	r8_ \markup{\bold {\italic "Pedale"}} g r g r g4.
	r8 g r g r g4.
	r8 g r8. g16 r8 g r g
	r g r r16 g r8 g4 r8
	r g r g r g4.
% 5
	r8 g r g r g4.
	r8 g r16 g r g r8 g r16 g r g
	r g r g r8 g4. r4
	r8 g r g r g4.
	r8 g r g r g4.
% 10
	r8 g r8. g16 r8 g r g
	r g r8. g16 r8 g4 r8
	r g r g r g4.
	r8 g r g r g4.
	r8 g r16 g r g r8 g r16 g r g
% 15
	r16 g r g r4 g g8 r
	r g r g r g4.
	r8 g r g r g4.
	r8 g r r16 g r8 g r16 g r g
	r8 g r r16 g r8 g4 r8
% 20
	r g r g r g4.
	r8 g r g r g4.
	r8 g r16 g r g r8 g r16 g r g
	r g r g r8 g4. r4
	r8 g r g r g4.
% 25
	r8 g r g r g4.
	r8 g r g r4 r8 g
	r4 r8 g r g4 r8
	r g r g r g4.
	r8 g r g r g4.
% 30
	r8 g r g r4 r8 g
	r g r g r g4 r8
	r g r g r g4.
	r8 g r g r g4.
	r8 g r g r4 r8 g
% 35
	r4 r8 g r g4 r8
	r g r g r g4.
	r8 g r g r g4.
	r8 g r g r4 r8 g
	r g r g r g4 r8
% 40
	r8 g r g r g4 r8
	r4 g r g
	r g(  g8) r r4
	r g(  g8) r8 r4
	r g2. 
}
\score {

<<
  \context PianoStaff <<
    \context Staff = "up" <<
  \set PianoStaff.midiInstrument = "acoustic grand"
     \Global \clef treble 

	\context Voice = "one" \rightHand
		>>
\context Staff = "down" << 
  \set PianoStaff.midiInstrument = "acoustic grand"
	\Global \clef bass 
	\context Voice = "one" \leftHand
>>
  >>
  \context RhythmicStaff <<
    	\stemUp
	\pedals
	>>
>>

  \midi {
    \tempo 4 = 50
    }


\layout { }
}
