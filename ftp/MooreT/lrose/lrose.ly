\paper{ papersize = "letter"  
	linewidth = 175 \mm
	indent = 8 \mm
}

\include "english.ly"
\version "2.1.30"
#(set-global-staff-size 17)

\header {
  title = "The Last Rose of Summer"
  subtitle ="(Martha)"
  composer = "Thomas Moore (1779-1833)"
  mutopiacomposer = "MooreT"
  poet = "Sir John Stevenson (1761-1833)"
  instrument = "Voice and Piano"
  opus = ""
  source = ""
  copyright = "Public Domain"
  enteredby = "Stan Sanderson"
  maintainer = "Stan Sanderson"
  maintainerEmail = "physinfoman@ameritech.net"
  lastupdated = "3/16/2004"

  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer = "Mutopia-2004/03/16-434"
}
  
melody = \notes\relative c' {
	\key d\major \time 3/4 
	\partial 4 d8.^\markup {\column <\bold \large "Andante" \dynamic mf >} e16
%% 1-3
	\repeat volta 3 {fs4 d'8.( cs16) b8.( a16) | a4 fs8 r d8.( e16) |
		fs8(^\< a4) fs8\! \acciaccatura fs8 e8.(^\> d16)\! |
%% 4-6
	d2 d8. e16 | fs4 d'8.( cs16) b8.( a16) | a4 fs8 r d8.( e16) |
%% 7-9	
	fs8( a4 fs8) \acciaccatura fs8 e8. d16 | d4( d8) r a'8.( fs16) |
		d'4.^\markup { \italic "cresc." } cs8 b8. a16 |
%%% 10-12
	a4 fs a8.( fs16) | d'4.( cs8) b as | 
		b( \acciaccatura {cs16[ b as]} b16 cs d4)\fermata d,8.^\mf e16 |
%%% 13-15
	fs4 d'8.( cs16) \acciaccatura cs8 b8.( a16) | a4 fs8 r d8.( e16) | 
		fs4(^\< a8.\! fs16)^\> \acciaccatura fs8 e8. d16\! |}
		
	\alternative { { d2^\mf d8. e16 } {fs2^\mf d8. e16 | fs4 d'8.( cs16) b8.( a16) |
	a4 fs8 r d8.( e16) | fs8\melisma a4 fs8\melismaEnd e8. d16 | d2. | r2. | r }} \bar "|."	

}

textA = \lyrics {  
	_'Tis the last rose __ of __ sum -- mer, Left bloom __ ing a -- lone;
	All her love -- ly com -- pan -- ions
	Are __ fad __ ed and gone.__
	No __ flow -- er of her kin -- dred,
	No __ rose __ bud is nigh, __
	To re -- flect back __ her __ blush -- es,
	Or __ give __ sigh for sigh. I'll not
}

textB = \lyrics { 
	_ _ leave thee, __ thou __ lone one,
	To __ pine __ on the stem;
	Since the love -- ly __ are sleep -- ing,
	Go __ sleep __ thou with them;
	'Thus kind -- ly __ I __ _ scat -- ter
	Thy __ leaves __ o'er the bed __
	Where thy mates of __ the __ gard -- en
	Lie __ scent -- less and dead. So __ _
}

textC = \lyrics { 
	_ _ soon may __ I __ fol -- low
	When __ friend -- ships de -- cay,
	And from love's shin -- ing cir -- cle
	The gems __ drop a -- way!
	When true __ _ hearts lie wither -- ed
	And fond __ ones are flown __
	Oh! __ _ who __ would in -- hab -- it
	This __ bleak world a _ _ _ -- lone?
	Oh! __ _ who __ would in -- hab -- it
	This __ bleak __ world a -- lone?

}

upper = \notes\relative c' {
	\key d\major \time 3/4
	d8._\mf^\markup {\bold \large "Andante"}( e16
%% 1-3
	fs4) <fs d'>8.( cs'16 <g b>8. a16) | <fs a>4( fs8) r d8.( e16) |
		<<{fs8( a4 fs8) \acciaccatura fs8 <e cs>8. ( d16) }\\{d2 s4}>> |
%% 4-6
	d2 d8.( e16) | fs4 <fs d'>8.( cs'16 <g b>8. a16) | <fs a>4( fs8) r d8.( e16) |
%% 7-9
	<<{fs8( a4 fs8) \acciaccatura fs8 <e cs>8. ( d16) }\\{d2 s4}>> |
		d4 ~ d8 r a'8. fs16 | <fs d'>4.( cs'8 <g b>8. a16) |
%% 10-12
	<a fs>4( fs) a8.( fs16) | <fs b d>4.( <e g cs>8[ <d fs b> <cs fs as>)] | 
		<d fs b>( \acciaccatura {cs'16[ b as]} b16 cs <d b fs>4)\fermata d,8.^\mf e16 |
%% 13-15
	<d fs>4 <fs d'>8.( cs'16 \acciaccatura cs8 <b g>8. a16) | <a fs>4( fs8) r d8.( e16) |
		<d fs>4(_\< <fs a>8.\! fs16_\> \acciaccatura fs8 e8. d16\!) |
%% 16-18
	d2 d8.( e16) | <d fs>2 d8.( e16) | <d fs>4 <fs d'>8.( cs'16 <g b>8. a16) |
%% 19-21
	<fs a>4( fs8) r d8.( e16) | fs8( a4 fs8 e8. d16) | d4 <d fs> <d fs a> |
%% 22-23
	<fs a d>4 <a d fs> <d fs a> | <d fs a d>2.\fermata


}
	
	
lower = \notes\relative c {
	\key d\major \time 3/4
	r4 
%% 1-3
	<d fs a>2 <d g b>4 | <d fs a>2 r4 | <<{s8^\< s s8^\! s8.^\> s16^\!}\\{<a a'>2 <a g'>4}>> |
%% 4-6
	<d fs>4( d,) r | <d' fs a>2 <d g b>4 | <d fs a>2 r4 |
%% 7-9
	<a a'>2 <a g'>4 | <d fs>4 d,8 r r4 | 
		\set tupletSpannerDuration = #(ly:make-moment 1 4)
		\times 2/3 {d'8[(^\markup { \italic "cresc." } fs a] d,[ fs a] d,[ g b])}
%% 10-12
	\times 2/3 {d,8[( fs a] d,[ fs a] d,[ fs a])}
	\times 2/3 {b,8[( d fs]} b,8 e fs fs,) | b4 r\fermata r |
%% 13-15
	\times 2/3 {d8[( fs a] d,[ fs a] d,[ g b])} | \times 2/3 {d,8[( fs a] d[ a fs] d[ g bf])} |
		\times 2/3 {a8[( fs d] a[ d fs]} <g cs, a>4) |
%% 16-18
	<fs d>4(\mf d,) r | \times 2/3 {d'8[(\mf fs a] d,[ fs a] d,[ fs a])} |
		\times 2/3 {d,8[( fs a] d,[ fs a] d,[ g b])} |
%% 19-21
	 \times 2/3 {d,8[( fs a] d[ a fs] d[ g bf])} | 
	 	\times 2/3 {a8[( fs d] a[ d fs])} <<{g8. fs16}\\{a,4}>> |
	 		<d fs>4 a'^\< fs | 
%% 22-23
	 d a fs\! | d2.\fermata^\f
}

\score {
  <<
      \context Voice = mel {
	  \autoBeamOff
	  \melody
      }
		\lyricsto mel \new Lyrics \lyrics {  \textA }
		\lyricsto mel \new Lyrics \lyrics {  \textB }
		\lyricsto mel \new Lyrics \lyrics {  \textC }
					
      \context PianoStaff <<
	  \context Staff = upper \upper
	  \context Staff = lower <<
	      \clef bass
	      \lower
	  >>
     >>
     
  >>
  \paper {
  }  
  \midi { \tempo 4=60 }  
}
