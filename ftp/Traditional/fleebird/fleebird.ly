\include "english.ly"
#(set-global-staff-size 16)
\version "2.6.4"
\paper {
%	hsize = 8.5\in
%	vsize = 11\in
	betweensystempadding = #0.25
%	raggedlastbottom=##f
}

\header {
	date = "1857"
	source = "O. Ditson & Co., 277 Washington St., Boston, Mass."
%	style = "strophic with chorus"
	instrument = "Voice and Piano"
	copyright = "Public Domain"
	maintainer = "Stan Sanderson"
	maintainerEmail = "physinfoman@ameritech.net"
	lastupdated = "12/7/2003"
	title = "Flee As A Bird"
	mutopiatitle = "Flee As A Bird"
	poet = "Mrs. Mary S. B. Dana"
	composer = \markup {\column {"Adapted to a Spanish Melody" 
		"by Mrs. Mary S. B. Dana"}}
	mutopiacomposer = "Traditional"
%	composer = "\\begin{minipage}[r]{6cm}\\normalsize{
%		Adapted to a Spanish Melody \\n 
%		\\hfill by Mrs. Mary S. B. Dana}
%		\\end{minipage}"
%
	mutopiapoet = "M. S. B. Dana (1810-1883)"
        mutopiainstrument = "Voice and Piano"
        style = "Song"
        
	footer = "Mutopia-2005/11/25-376"
	tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
	}


MEL =  \relative c' { \time 4/4 \key d \minor
	 	\clef treble \autoBeamOff
		
%1-4
	r1^\markup { \italic {"Moderato espress."}}
	 d4 a'8. a16 a4 bf8. a16 a4.( g16[ f]) e2 d4 f8. f16 g4 gs8. gs16
%5-8
	a2( e4) r d a'8. a16 a4 bf8. a16 a4.( g16[ f]) e4 r d f8. f16 e4 a8. a16
%9-11
	d,2. r4 f4 a8. g16 f4 d'8. c16 c4.( bf16[ a)] g4 r
%12-14
	a4 g8. a16 c8[ bf] a g f2 e4 r d4 a'8. a16 a4 bf8. a16
%15-17
	a4.( g16[ f)] e4 r d f8. f16 e4 a8. a16 d,2 bf'
%18-20
	a4^\markup { \italic { "un poco ritenuto."}} 
	f8. d16 a4 f'8. e16 d2. r4 r1
%21-22
	r1 r1
%23-26
	r1 d4 a'8. a16 a4 bf8. a16 a4.( g16[ f]) e2 d4 f8. f16 g4 gs8. gs16
%27-30
	a2( e4) r d a'8. a16 a4 bf8. a16 a4.( g16[ f]) e4 r d f8. f16 e4 a8. a16
%31-33
	d,2. r4 f4 a8. g16 f4 d'8.[ c16] c4.( bf16[ a)] g4 r
%34-36
	a4 g8. a16 c8[ bf] a g f2 e4 r d4 a'8. a16 a4 bf8. a16
%37-39
	a4.( g16[ f)] e4 r8 e d4 f8. f16 e4 a8. a16 d,2 bf'
%18-20
	a4^\markup { \italic { "un poco ritenuto."}} f8. d16 a4 f'8. e16 d2. r4 r1
%21-22
	r1 r1
	
	
	
	}
	
	
	RH =  \relative c'' { \key d\minor \time 4/4 \clef treble
	
%1
	r8 a, <d f> a <d f> a <d f> a
%2
	r8 a <d f> a <d f> a <d f> a
%3
	r a <cs e g> a <cs e g> a <cs e g> a
%4
	r8 a <d f> a r <d f g> r <d f gs>
%5
	r8 a <d f a> a r a <cs e g> a
%6
	r8 a <d f> a <d f> a <d f> a
%7
	r8 a <cs e g> a <cs e g> a <cs e g> a
%8
	r8 a <d f> a r a <cs e g> a
%9
	r8 a <d f> a r2
%10
	r8 c <f a> c <f a> c <f a> c
%11
	r8 c <e g bf> c <e g bf> c <e g bf> c
%12
	r8 c <f a> c r bf <d e g> bf
%13
	r8 a <d f> a <cs e> a <cs e> a
%14
	r8 a <d f> a <d f> a <d f> a
%15
	r8 a <cs e g> a <cs e g> a <cs e g> a
%16
	r8 a <d f> a r a <cs e g> a
%17
	<a d f>2 <d g bf>
%18
	<d f a>2 <a cs e g>
%19
	r8 f' a d <a f'> <f d'> <g e'> <e cs'>
%20
	<f d'>8 a, d f <f a> <d f> <e g> <cs e>
%21
	d2 <a f'>8 <f d'> <g e'> <e cs'>
%22
	<f d'>1
%1
	r8 a <d f> a <d f> a <d f> a
%2
	r8 a <d f> a <d f> a <d f> a
%3
	r a <cs e g> a <cs e g> a <cs e g> a
%4
	r8 a <d f> a r <d f g> r <d f gs>
%5
	r8 a <d f a> a r a <cs e g> a
%6
	r8 a <d f> a <d f> a <d f> a
%7
	r8 a <cs e g> a <cs e g> a <cs e g> a
%8
	r8 a <d f> a r a <cs e g> a
%9
	r8 a <d f> a r2
%10
	r8 c <f a> c <f a> c <f a> c
%11
	r8 c <e g bf> c <e g bf> c <e g bf> c
%12
	r8 c <f a> c r bf <d e g> bf
%13
	r8 a <d f> a <cs e> a <cs e> a
%14
	r8 a <d f> a <d f> a <d f> a
%15
	r8 a <cs e g> a <cs e g> a <cs e g> a
%16
	r8 a <d f> a r a <cs e g> a
%17
	<a d f>2 <d g bf>
%18
	<d f a>2 <a cs e g>
%19
	r8 f' a d <a f'> <f d'> <g e'> <e cs'>
%20
	<f d'>8 a, d f <f a> <d f> <e g> <cs e>
%21
	d2 <a f'>8 <f d'> <g e'> <e cs'>
%22
	<f d'>1\fermata


}

LH =  \relative c { \key d\minor \time 4/4 \clef bass

%1
	<d d,>1
%2
	<d d,>
%3
	<a a,>
%4
	<d d,>2 <bf bf,>4 <bf bf,>
%5
	<a a,>2 <a a,>
%6
	 <d d,>1
%7
	<a a,>1
%8
	<d d,>2 <a a,>
%9
	<d d,> <d d,>
%10
	<f f,>1
%11
	<c c,>
%12
	<f, f,>2 <g g,>
%13
	<a a,>1
%14
	<d d,>1
%15
	<a a,>1
%16
	<d d,>2 <a a,>
%17
	<d d,>2 <g, g,>
%18
	<a a,>2 <a a,>
%19
	<d d,>2. <a a,>4
%20
	<d d,>2. <a a,>4
%21
	<d d,>2 <a a,>
%22
	<d d,>1 \bar "|."
%1
	<d d,>1
%2
	<d d,>
%3
	<a a,>
%4
	<d d,>2 <bf bf,>4 <bf bf,>
%5
	<a a,>2 <a a,>
%6
	 <d d,>1
%7
	<a a,>1
%8
	<d d,>2 <a a,>
%9
	<d d,> <d d,>
%10
	<f f,>1
%11
	<c c,>
%12
	<f, f,>2 <g g,>
%13
	<a a,>1
%14
	<d d,>1
%15
	<a a,>1
%16
	<d d,>2 <a a,>
%17
	<d d,>2 <g, g,>
%18
	<a a,>2 <a a,>
%19
	<d d,>2. <a a,>4
%20
	<d d,>2. <a a,>4
%21
	<d d,>2 <a a,>
%22
	<d, d,>1\fermata \bar "|."

}

VerOne =  \context Lyrics = VerOne \lyricmode { 
%%	\override LyricText   #'font-series = #'bold
%%	\override LyricText   #'font-relative-size = #'+1
	\skip2. \skip8 "1. "8
	Flee4 as8. a16 bird4 to8. your16 moun__2 __ tain,2
	Thou4 who8. art16 wea4 -- ry8. of16 sin__2 __ " "4 \skip4
	Go4 to8. the16 clear4 flow8. -- ing16 foun__2 __ tain,4 \skip4
	Where4 you8. may16 wash4 and8. be16 clean.2. \skip4
	Fly,4 for8. th'16 aven4 -- ger8. is16
	near__2 __ thee;4 \skip4
	Call4 and8. the16 Sav4 -- ior8 will
	hear2 thee4 \skip4
	He4 on8. his16 bo4 -- som8. will16
	bear__2 __ thee,4 \skip4
	Thou4 who8. art16 wea4 -- ry8. of16
	sin.2 O2 thou,4 who8. art16 wea4 -- ry8. of16
	sin.2. \skip4
	\skip 1*3
	\skip2. \skip8 "2. "8
	He4 will8. pro16 -- tect4 thee8. for16
	ev__2 __ er,2
	Wipe4 ev8. -- 'ry16 fall4 -- ing
	tear__2 __ " "4 \skip 4
	He4 will8. for16 -- sake4 thee,8. O16
	nev__2 __ er4 \skip4
	Shelt4 -- ered8. so16 ten4 -- der8. -- ly16
	there;2. \skip4
	Haste,4 then,8. the16 hours4 are4
	fly__2 __ ing,4 \skip4
	Spend4 not8. the16 mo4 -- ments8 in
	sigh__2 __ ing,4 \skip4
	Cease4 from8. your16 sor4 -- row8.and16
	cry__2 __ ing,4 \skip8 The8
	Sa4 -- viour8. will16 wipe4 ev8. -- 'ry16
	tear,2 The
	Sa4 -- viour8. will16 wipe4 ev8. -- 'ry16
	tear.2. \skip4 \skip1*3
	
	}


\score { <<

	\context Staff  \MEL
	\set Staff.midiInstrument = "violin"
		\new Lyrics { \VerOne }
		
	\context PianoStaff <<
		\set PianoStaff.midiInstrument = "acoustic grand"
		\context Staff = "up" <<
		\clef treble
			\context Voice = VoiceI \RH
		
			>>
		\context Staff = "down" <<
		\clef bass
			\context Voice = VoiceI \LH
			>>
		>> 
		>>
	
	\layout { }	
	\midi { \tempo 4 = 72 }
}


