\version "2.10.10"
\include "english.ly"
\header {

 title="WALL STREET \"RAG\""
 composer="SCOTT JOPLIN"
 piece=\markup { \column { \override #'(box-padding . 0.5) 
		\override #'(extra-offset . #'( 12 . 2 )) \left-align \box 
		\column { \right-align { "NOTE: Do not play this piece fast." "It is never right to play Ragtime fast." \italic { \line { "Composer." \hspace #1.0 } } } } } }

 mutopiatitle = "Wall Street Rag"
 mutopiacomposer = "JoplinS"
 mutopiainstrument = "Piano"
 date = "1909"
 source = "Seminary Music Co. 112 W. 38th N.Y."
 style = "Jazz"
 maintainer = "Benjamin Bloomfield"
 maintainerEmail = "bhb123@gmail.com"
 copyright = "Public Domain"
 lastupdated = "2008/September/12"

 footer = "Mutopia-2008/09/19-1543"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

     stemExtend = \once \override Stem #'length = #22
     noStem = \once \override Stem #'length = #0
     noFlag = \once \override Stem #'flag-style = #'no-flag


\paper {
	between-system-padding = #0
	between-system-space = #0.1
	ragged-last-bottom=##f
	top-margin = 1\mm
	bottom-margin = 1\mm
	between-title-space = 0\mm
	page-top-space = 1\mm
}

     upper = \relative c'' {
       \clef treble
       \key c \major
       \time 2/4
\once \override TextScript #'extra-offset = #'( -3 . 2 )     
	c8.[^\markup \bold "Very Slow March Time" a16] d,8[ c16 d] |	%1
	e8 f4 g8 |			%2
	e8[ d16 e] f[ a8 af16] |	%3
	g4 <g b g'>8-> r |		%4
\break
	\repeat volta 2 {
\once \override TextScript #'extra-offset = #'( -4 . 3.0 )
	<e c>16[\(^\markup \smaller { "Panic in Wall Street, Brokers feeling melancholy" } <f d> <g e> <a ds,>]\)~ <a ds,>[ <fs ds'>\( <g e'> <e c'>]\) |		%5
	<< {\stemUp d'8[ d16 e] d16[\( c d, f]\) } \\
	     {\stemDown f4~ f8[ c] } >> | \stemNeutral				%6
	<e c>16[\( <f d> <g e> <a ds,>]\)~ <a ds,>[ <fs ds'>\( <g e'> <e c'>]\) |		%7
	<< {\stemUp d'8[ e16 d] c16[\( d e g,]\) } \\
	     {\stemDown f4~ f8[ e] } >>						%8

\break
	<< { \stemUp gs16[\( e b' e]\)~ e[\( f] e8]\) } \\
	     { \stemDown e,8.[ gs16]~ gs8[ gs] } >> |					%9
	<< { \stemUp a16[\( e c' e]\)~ e[( f e8]) } \\
	     { \stemDown e,8.[ <a c>16]~ <a c>8[ <a c>] } >> |				%10
	<< { \stemUp e'16[\( d fs b]\)~ \stemDown <b fs d>[\( <c fs, e> <b fs d> <a fs c>]\) } \\
	     { \stemDown c,8.[ <d fs>16]~ \noStem \noFlag
		 <d fs> s8. } >> |				%11
	<b f'! a>16[\( g' f d] <e g,f>[ d g, f]\)		%12

\break
	<e c>16[\( <f d> <g e> <a ds,>]\)~ <a ds,>[ <fs ds'>\( <g e'> <e c'>]\) |		%13
	<< {\stemUp d'8[ d16 e] d16[\( c d, f]\) } \\
	     {\stemDown f4~ f8[ c] } >> | \stemNeutral				%14
	<e c>16[\( <f d> <g e> <a ds,>]\)~ <a ds,>[ <fs ds'>\( <g e'> <e c'>]\) |		%15
	<< {\stemUp d'8[ c16 d] c8[ c16 d] } \\
	     {\stemDown f,4~ f8[ f] } >>							%16

\break
	<< {\stemUp e'16[\( c g a]\)~ <a cs,>[\( <a cs e a> <bf cs e bf'> <a cs e a>]\) } \\
	   {\stemDown e8.[ cs16]~ \noFlag \stemUp cs s8. } >> |						%17
	\stemNeutral
	<e' fs c'! e>8[ <d fs c' d>16 <a c fs a>]~ <a c fs a>[\( <gs gs'> <a fs' a> <c fs c'>]\) |	%18
	<e g e'>8[ <d f! d'>16 <a' f' a>]~ <a f' a>[\( <g e' g> <e g e'> <d f d'>]\) |			%18
	}
	\alternative {
		{ <c e c'>4~ <c e c'>16[ g( d ds]) }
		{ << { \stemDown <c' e c'>4~ <c e c'>8[ <c c'>16 <bf bf'>] } \\
		     { \stemUp s4. e8 } >> }
	}
	\stemNeutral

\pageBreak
%Page Two
	\repeat volta 2 {
\once \override TextScript #'extra-offset = #'( -2 . 1.5 )
	<a, c f a>8[^\markup \smaller { "Good times coming." } <a c f a>] <c f a c>[ <c fs a c>] |	%22
	<c g' c>4
	<< { \stemUp b'8[( a]) } \\
	   { \stemDown <fs c>4 } >> |				%23
	<< { \stemUp a8.[ a16] a[( g b a]) } \\
	   { \stemDown <f! c>4 <f b,> } >> |			%24
	<< { \stemUp a8.[ a16] a[( g) <c c,> <bf bf,>] } \\
	   { \stemDown <c, e>4 <c e>8[ e] } >> |			%25
	\stemNeutral
	<a, c f a>8[ <a c f a>] <c f a c>[ <c fs a c>] |	%26
	<c g' c>4
	<< { \stemUp b'8[( a]) } \\
	   { \stemDown <fs c>4 } >> |				%27
	
%\break
	\stemNeutral
	<c f! a>8[ <c e a>]
	<< { \stemUp gs'8.[( b16]) } \\
	   { \stemDown <d, e>4 } >> |				%28
	\stemNeutral
	<c e a>4
	<< { \stemUp a'16[( g) <c c,> <bf bf,>] } \\
	   { \stemDown <c, e>8[ e] } >> |			%29
	\stemNeutral
	<a, c f a>8[ <a c f a>] <c f a c>[ <c fs a c>] |	%30
	<c g' c>4
	<< { \stemUp b'8[( a]) } \\
	   { \stemDown <fs c>4 } >> |				%31
	<< { \stemUp a8.[ a16] a[( g b a]) } \\
	   { \stemDown <f! c>4 <f b,> } >> |			%32

%\break
	<< { \stemUp a8.[ a16] a[( g) <c, c,> <d d,>] } \\
	   { \stemDown <c e >4 <c e>8 s } >> |			%33
	\stemNeutral
	<ds, a' c ds>4 <fs a c fs> |				%34
	<a c ds a'>2 |						%35
	<< { \stemUp <a a'>8[( <g g'>]) e'16[( d8 e16]) } \\
	   { \stemDown <c e>4 <g b>16[ <f b>8.] } >> |		%36
	\stemNeutral
	} % end repeat
	\alternative {
		{ <e c'>8[ <e e'>16 <f f'>] <fs fs'>[ <g g'> <c e c'> <bf e bf'>] }
%\break
		{ <c e,>4~ <c e,>8
		  << { \stemUp g16[( gs]) } \\
		     { \stemDown <e bf>8 } >> }
	}

	\key f \major
	\repeat volta 2 {
\once \override TextScript #'extra-offset = #'( -4 . 1.0 )
	<f a>16[^\markup \smaller { "Good times have come." } <g bf> <a c> <f a>]~ <f a>[( <a f c> <a f d>8]) |				%39
	<< { \stemUp <f a>16[ <c f a> <cs f a> <d f a>]~ <d f a>[( <ef f a>8 <d f a>16])~ |	%40
		<f a>16[( g f <f g>])~ <df f g>[( <df f,> <df g,> <c a>]) |			%41
		r <f' a>[ <e a> <d a'>]~ <d a'> r16 r8 | } \\		%42
	   { \stemDown s4. s16 \noStem \noFlag d,16~ |						%40
		d8.[ df16]~ \noStem \noFlag df s8 \noStem \noFlag \stemUp <c a>16~ |		%41
		\stemDown <c a>4~ <c a>16[ <bf' d>( <a c> <g bf>]) | } >> 			%42

%\break
	\stemNeutral
	<f a>16[ <g bf> <a c> <f a>]~ <f a>[( <a f c> <a f d>8]) |				%43
	<< { \stemUp <f a>16[ <c f a> <cs f a> <d f a>]~ <d f a>[ <c ds a'>8 <c e a>16]~ |	%44
		a'[( g fs g]) } \\
	   { \stemDown s4. s16 \noStem \noFlag \stemUp <e c>16~ |				%43
		\stemDown <e c>4 } >>
	\stemNeutral
	<f g b>16[ <g b e>8 <f b d>16] |							%44
	<< { \stemUp d'8[( c]) g[( gs]) } \\
	   { \stemDown <e bf'!>4 <e bf> } >> |							%45
	<f a>16[ <g bf> <a c> <f a>]~ <f a>[( <a f c> <a f d>8]) |				%46

\pageBreak
% Page 3

	<< { \stemUp <f a>16[ <c f a> <cs f a> <d f a>]~ <d f a>[ <ef f a>8 <d f a>16]~ |	%48
		<f a>16[ g f <f g>]~ <d f g>8[ <d e gs>] |} \\					%49
	 { \stemDown s4.. \noStem \noFlag d16~ |
		d8.[ d16]~ \noStem \noFlag d8 s8 | } >>
	<< { \stemUp r16 <a' cs>[ <cs e> <cs a'>]~ <cs a'> r16 r8 } \\
	   { \stemDown <a e cs>4~ <a e cs>16[ <e cs> <a cs,>8] } >> |
	\stemNeutral
	<a d,>8[ <d c fs,>16 <ef c fs,>]~ <ef c fs,>[ d <d fs bf> <c fs a>] |
	<< { \stemUp <f! a>[ d f <f g>]~ <f g>[ a <f g>8] } \\
	   { \stemDown b,8.[ b16]~ b8[ b] } >> |

%\break
	<< { \stemUp a'16[ g e c']~ c[ bf d, e] } \\
	   { \stemDown <c e>8.[ <c e>16]~ <c e>8[ bf] } >> |
	} % end repeat
	\alternative {
		{ << { \stemDown \noStem \noFlag f'4~ \stemUp f16[( f, g gs]) } \\
			{ \stemDown <a c f>4~ <a c>16[ a, <bf e>8] \stemNeutral } >> }
		{ <a' c f>4~ <a c f>8 d16[(-^ ds]) }
	}

	\repeat volta 2 {
\once \override TextScript #'padding = #4
	e16[^\markup \smaller { "Listening to the strains of genuine negro ragtime," } <g bf c d> d ds] e[ <g bf c d!> d ds] |
	e[ <g bf c d>8 <a bf c>16]~ <a bf c>[ g( d e]) |

\break
\once \override TextScript #'extra-offset = #'( -8.5 . 2.5 )
	f[^\markup \smaller { "brokers forget their cares." } <a c d> d, e] f[ <a c d> d, e] |
	f[ <g a c>8 <g a c>16]~ <g a c>[ f( e f]) |
	fs[ <a c ef> e! es] fs[ <a c ef!> e! <fs a d>] |
	<g bf d>[ <a bf d>8 <a bf d>16]~ <a bf d>[ g( a bf]) |
	b[ <d e> gs, a] b[ <d e> gs, <b d e>] |

%\break
	<a c e>4 <c fs, ds c>8[ d,16( ds]) |
	e16[ <g bf c d> d ds] e[ <g bf c d!> d ds] |
	e[ <g bf c d>8 <a bf c>16]~ <a bf c>[ g( d e]) |
	f[ <a c d> d, e] f[ <a c d> d, e] |
	f[ <g a c>8 <g a c>16]~ <g a c>[ f( e f]) |

	fs[ <a c ef> e! es] fs[ <a c ef!> e! <fs a d>] |
	<g bf d>[ <a bf d>8 <a bf d>16]~ <a bf d>[ <g bf d> <gs b f'>8-^] |
	<< { \stemUp <c f>16[^^ d c a] a[ g8 e'16] } \\
	   { \stemDown a,4 <e c>16[ <e bf>8.] \stemNeutral } >> |	
	}
	\alternative {
		{ <a, c f>4~ <a c f>8[ d16-^ ds] }
		{ <a c f>4 <f' a c f>8 r \bar "|." }
	}
\pageBreak
     }
     
     lower = \relative c' {
       \clef bass
       \key c \major
       \time 2/4
     
	c8.[ a16] d,8[ c16 d] |	%1
	e8 f4 g8 |			%2
	e8[ d16 e] f[ a8 af16] |	%3
	g4 <g g,>8-> r |		%4

%\break
	<< { \stemUp g8.[\( fs16] c'8[ g]\) } \\
	   { \stemDown c,2 } >> |			%5
	<< { \stemUp af'4. af8 } \\
	   { \stemDown c,2 } >> |			%6
	<< { \stemUp g'8.[\( fs16] c'8[ g]\) } \\
	   { \stemDown c,2 } >> |			%7
	\stemNeutral <c af'>4. <c g'>8 |		%8

%\break
	<b b'>8[ <gs' d' e>] <e e,>[ <d d,>] |
	<c c,>[ <a' c e>] <a a,>[ <g g,>] |		%10
	<fs fs,>[ <fs c' d>] <d d,>[ <fs c' d>] |
	<g g,>[ <g b d>] b,[ <g' b d>] |		%12

%\break
	<< { \stemUp g8.[\( fs16] c'8[ g]\) } \\
	   { \stemDown c,2 } >> |			%13
	<< { \stemUp af'4. af8 } \\
	   { \stemDown c,2 } >> |			%14
	<< { \stemUp g'8.[\( fs16] c'8[ g]\) } \\
	   { \stemDown c,2 } >> |			%15
	<< { \stemUp af'4. af8 } \\
	   { \stemDown c,2 } >> |			%16

%\break
	<< { \stemUp g'8[ bf8] } \\
	   { \stemDown c,4 } >>
	<a a'>8[ <g g'>] |				%17
	<fs fs'>[ <fs' c' d>] <d d'>[ <c c'>] |		%18
	<b b'>[ <g' b f'!>] <g g,>[ <g b f'>] |		%19

	<c c,>[ g] c,[ <g' b>] |			%20
	<c c,>[ g] c,4-- |				%21


\pageBreak
% Page Two

	<f f,>8[ <a c f>] <f f,>[ <ds ds,>] |		%22
	<< { \stemUp e[ <g c e>] ef[ <c' ef fs>] |	%23
		d,[ <c' d f!>] g,[ <b' d f>] |		%24
		c,[ <g' c e>] } \\
	   { \stemDown <e e,>4 <ef ef,> |		%23
		<d d,> <g, g,> |			%24
		<c c,> } >>
	\stemNeutral
	<e e,>8[ <c c,>] |				%25
	<f f,>[ <a c f>] <f f,>[ <ds ds,>] |		%26
	<< { \stemUp e8[ <g c e>] ef[ <c' ef fs>] } \\
	   { \stemDown <e, e,>4 <ef ef,> } >>		%27
	\stemNeutral

%\break
	<d d,>8[ <e e,>]
	<< { \stemUp e[ <gs d' e>] } \\
	   { \stemDown <e e,>4 } >> |			%28
	<a a,>16[ e c a] <c c,>4 |			%29
	<f f,>8[ <a c f>] <f f,>[ <ds ds,>] |		%30
	<< { \stemUp e[ <g c e>] ef[ <c' ef fs>] |	%31
		d,[ <c' d f!>] g,[ <b' d f>] |		%32
		c,[ <g' c e>] e[ <e g>] } \\
	   { \stemDown <e e,>4 <ef ef,> |		%31
		<d d,> <g, g,> |			%32
		<c c,> <e e,> } >> |			%33
	\stemNeutral
	fs,16[( a fs'8]) ds16[( fs ds'8]) |		%34
	fs16[\( ds c a] ds c a fs]\) |			%35
	<< { \stemUp g8[ <c e>] g,[ g'] } \\
	   { \stemDown g4 g,] } >> |			%36
	\stemNeutral
	<c g'>8 r r <c c,> |				%37

%\break
	<< { \stemUp g'4~ g8 r } \\
	   { \stemDown c,8[ g] c,4 } >> |		%38

% Good times have come
	\key f \major
	<< { \stemUp <c' a'>8[ <c f a>] c,[ <c' f>] |
		f,[ <c' f>] c,[ <c' f>] } \\
	   { \stemDown f,4 c | f c } >> |
	\stemNeutral
	bf8[( bf']) bf,[( bf']) |
	<< { \stemUp f8[ <c' f a>] c,[ <c' e bf'>] |
		<c a'>[ <c f a>] c,[ <c' f>] |
		f,[( f']) fs,[( fs']) |
		g,[( g']) g,[( g']) | } \\
	   { \stemDown f,4 c | f c | f fs | g g } >>
	\stemNeutral
	c4( <c c,>) |
	<< { \stemUp <c a'>8[ <c f a>] c,[ <c' f>] |
		f,[ <c' f>] c[ <f a>] } \\
	   { \stemDown f,4 c | f c' } >> |
%Page 3
	\stemNeutral
	bf8[ d] <bf bf'>[ <bf bf'>] |
	<< { \stemUp a'8[ <a e>] g[ <a e>] } \\
	   { \stemDown <a a,>4 <g g,> } >> |
	<fs fs,>8[ <d fs c'>] <d d,>[ <fs c' d>] |
	<g g,>[ <g b d>] <d d,>[ <ds ds,>] |

%\break
	<e e,>[ <bf'! c e>] <c, c,>[ <bf' c e>] |

	%alternative 1
	<f f,>8[ <e e,>16 <d d,>] <c c,>4 |

	%alternative 2
	<f f,>8[ a,16 d] <f f,>8[ <fs fs,>]-^ |

% Listening to the strains of genuine negro ragtime, brokers forget their cares.
	<g g,>8[ <bf c e>] <c, c,>[ <bf' c e>] |
	<g g,>[ <bf c e>] <c c,>[ <bf bf,>] |

%\break
	<a a,>[ <a c f>] <c, c,>[ <a' c f>] |
	<f f,>[ <a c f>] <c c,>[ <a c f>] |
	<a a,>[ <fs c' d>] <d d'>[ <c c'>] |
	<bf bf'>[ <g' bf d>] <g g,>[ <g bf d>] |
	<gs gs,> <b d e>] <e, e,>[ <gs d' e>] |

%\break
	<a a,>[ <a c e>] <a a,>[ <fs fs,>] |
	<g g,>8[ <bf c e>] <c, c,>[ <bf' c e>] |
	<g g,>[ <bf c e>] <c c,>[ <bf bf,>] |
	<a a,>[ <a c f>] <c, c,>[ <a' c f>] |
	<f f,>[ <a c f>] <c c,>[ <a c f>] |

%\break
	<a a,>[ <fs c' d>] <d d'>[ <c c'>] |
	<bf bf'>[ <g' bf d>] <d d'>[ <df df'>]-^ |
	<c c'>[-^ <a' c f>] <c, c,>[ <bf' c e>] |

	%alternative 1
	<f f,>8[ a,16 c] <f f,>8[-^ <fs fs,>] |

	%alternative 2
	<f f,>[ c] f,8-^ r
     }
     
     dynamics = {
	s2\mf | s2 * 3 |
	s2\mf | s2 * 3 |
	s2 *2 | s4.\< s8\! | s4 s8.\> s16\! |
	s2\mf | s2 * 3 |
	s2 * 5 |

%Page 2
	s2\f | s2 * 5 |
	s2 * 5 |
	s2 * 5 |
	s2 | s2\mp | s2 * 3 |
	s2 | s4 s8.\< s16\! | s4.\< s16 s16\! | s4 s8\> s8\! | s32 s4...\mp |

%Page 3
	s2 | s4 s8\< s8\! | s2 | s2\mf | s2 |
	s2 | s4 \once \override DynamicLineSpanner #'padding = #3.5 s8.\> s16\! | s2 | s2\mf | s2 |
	s2 * 4 | s4..\< s16\! |
	s2\f | s32 s4...\mf | s2 * 3 |
	s2 * 5 |
     }
     
     pedal = {
%       s2\sustainDown s2\sustainUp
     }
     
     \score {
       \new PianoStaff <<
         \new Staff = "upper" \upper
         \new Dynamics = "dynamics" \dynamics
         \new Staff = "lower" <<
           \clef bass
           \lower
         >>
         \new Dynamics = "pedal" \pedal
       >>
       \layout {
         \context {
           \type "Engraver_group"
           \name Dynamics
           \alias Voice % So that \cresc works, for example.
           \consists "Output_property_engraver"
     
           \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
           pedalSustainStrings = #'("Ped." "*Ped." "*")
           pedalUnaCordaStrings = #'("una corda" "" "tre corde")
     
           \consists "Piano_pedal_engraver"
           \consists "Script_engraver"
           \consists "Dynamic_engraver"
           \consists "Text_engraver"
     
           \override TextScript #'font-size = #2
           \override TextScript #'font-shape = #'italic
           \override DynamicText #'extra-offset = #'(0 . 2.5)
           \override Hairpin #'extra-offset = #'(0 . 2.5)
     
           \consists "Skip_event_swallow_translator"
     
           \consists "Axis_group_engraver"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
           \override VerticalAlignment #'forced-distance = #7
         }
       }
     }
     \score {
       \new PianoStaff <<
         \new Staff = "upper" << \upper \dynamics >>
         \new Staff = "lower" << \lower \dynamics >>
         \new Dynamics = "pedal" \pedal
       >>
       \midi {
         \context {
           \type "Performer_group"
           \name Dynamics
           \consists "Piano_pedal_performer"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
         }
       }
     }
