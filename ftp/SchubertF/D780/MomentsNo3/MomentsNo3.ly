\paper {
  % #(set-paper-size "a4")
  % #(set-paper-size "letter")
  between-system-padding = #3
  between-system-spacing = #3
}

\header {
  title = "Moments Musicaux"
  subtitle = \markup { \italic \medium "Air Russe" }
  date = "1823"
  source = "Sauer & Leidersdorf, Wien, 1827"
  sourceurl = "http://imslp.org/wiki/Musical_Moments_%28Schubert%2C_Franz%29"
  style = "Romantic"
  composer = \markup \center-align { \bold "Franz Schubert" \small "1797 - 1828" \medium "Op. 94, No. 3" }
  maintainer = "Claude Chaudron"
  maintainerEmail = "claude.chaudron@yahoo.fr"
  lastupdated = "2007/August/01"
  copyright = "Public Domain"
  
  % Mutopia Project header
  mutopiatitle = "Moments Musicaux No. 3 in F Minor"
  mutopiacomposer = "SchubertF"
  mutopiainstrument = "Piano"
  mutopiaopus = "D.780 (Op. 94, No. 3)"
  

 footer = "Mutopia-2007/08/11-1023"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.11.24"

global =  {
  \key as \major
  \time 2/4
  \override Score.MetronomeMark #'transparent = ##t
  \tempo 4 = 80
}

% local macros
textCresc = { \set crescendoText = \markup { \italic "cresc." } \set crescendoSpanner = #'dashed-line }
  
righthand = \context Staff \relative c'\new Voice \with {
       \remove "Forbid_line_break_engraver"
     } {
	%1
	R2^\markup { \bold "Allegro moderato" } R2 \bar "||"
	\grace bes'16 as8-. as16 ( bes ) as8-. g-. |
	
	\appoggiatura { as16 [bes] } \stemUp <as c>4^> \appoggiatura { as16 [bes] } \stemUp <as c>4^> |
	\grace bes16 as8-. as16 ( bes ) as8-. <g c>-. | \grace c16 <as f'>4-> \grace c16 <as f'>4-> |
	<<
	  { \grace ges'16 \stemUp f8 f16 ^( ges f8 ) f } \\
	  { as,8 [ as a a ] }
	>>
	%8
	<<
	  { f'8 ( [bes16] ) } \\
	  { bes,8. }
	>>
	r16 <as f'>4 | <as c>16 ( <g bes> <f as> <g bes> )
	<<
	  { c16 (des) c (e) } \\
	  { as,8 <g bes> }
	>>
	<as c f>4 <as c f>4 |
	
	%11
	\grace bes16 as8-. as16 ( bes ) as8-. g-. |
	\appoggiatura { as16 [bes] } \stemUp <as c>4^> \appoggiatura { as16 [bes] } \stemUp <as c>4^> |
	\grace bes16 as8-. as16 ( bes ) as8-. <g c>-. | \grace c16 <as f'>4-> \grace c16 <as f'>4-> |
	
	%15
	<<
	  { \grace ges'16 \stemUp f8 f16 ^( ges f8 ) f } \\
	  { as,8 [ as a a ] }
	>>
	%
	<<
	  { f'8 ( [bes16] ) } \\
	  { bes,8. }
	>>
	r16 <as f'>4 | <as c>16 ( <g bes> <f as> <g bes> )
	<<
	  { c16 (des) c (e) } \\
	  { as,8 <g bes> }
	>>
	<as c f>4 <as c f>4 \bar "||"
	
	%19
	c-> c-> | c16 des es des des8. c16 | \grace c16 bes8 bes c16 ( bes as bes ) | bes4 ( c ) |
	%23
	\grace es16 <c as'>4-> \grace es16 <c as'>4-> | <es g>16 <des f> <c e> <des f> <des f>4 |
	
	%25
	<<
	  { f16 (es!) <des es>4 <des es>8 } \\
	  { <g, des'>8\noBeam g16 ( [as bes8] ) as16 g }
	>>
	<as c es>4 <as c es>4 |
	
	%27
	c-> c-> | c16 des es des des8. c16 | \grace c16 bes8 bes c16 ( bes as bes ) | bes4 ( c ) |
	%23
	\grace es16 <c as'>4-> \grace es16 <c as'>4-> | <es g>16 <des f> <c e> <des f> <des f>4 |
	
	%33
	<<
	  { f16 (es!) <des es>4 <des es>8 } \\
	  { <g, des'>8\noBeam g16 ( [as bes8] ) as16 g }
	>>
	<as c es>4 <as c es>4 \bar "||"
	
	%35
	<g bes c e>->\f <g bes c e>-> |
	<<
	  { \grace f'16 \stemUp as8 as16 g f8 es16 des } \\
	  { <as c>8 <as c>4. }
	>>
	
	%37
	\stemDown <g bes c>4-> <g bes c e>-> |
	<<
	  { \grace f'16 \stemUp as8 as16 g f8 es16 des } \\
	  { <as c>8 <as c>4. }
	>>
	<< 
	  { \stemUp <as c>4\p <ges c> }\\
	  { s4 s8\< s16 s16\!}
	>>
	\stemUp <f c'>16\> des' es des\! <f, des'>8 <es c'>16 ( <des bes'> ) |
	<c as'>8 <c as'> <c as'>16 ( <des bes'> <es c'> <des bes'> ) |
	<c as'>4 <c as'> |
	
	%43
	<g' bes c e>->\f <g bes c e>-> |
	<<
	  { \grace f'16 \stemUp as8 as16 g f8 es16 des } \\
	  { <as c>8 <as c>4. }
	>>
	
	%45
	\stemDown <g bes c>4-> <g bes c e>-> |
	<<
	  { \grace f'16 \stemUp as8 as16 g f8 es16 des } \\
	  { <as c>8 <as c>4. }
	>>
	<< 
	  { \stemUp <as c>4\p <ges c> }\\
	  { s4 s8\< s16 s16\!}
	>>
	\stemUp <f c'>16\> des' es des\! <f, des'>8 <es c'>16 ( <des bes'> ) |
	<c as'>8 <c as'> <c as'>16 ( <des bes'> <es c'> <des bes'> ) |
	<c as'>4 <c as'> \bar "||"
	
	%51
	\grace bes'16 as8\pp as16 ( bes ) as8-. g-. |
	\set tieWaitForNote = ##t
	\appoggiatura { as16 [bes] } \stemUp <as c>4^> \appoggiatura { as16 [bes] } \stemUp <as c>4^> |
	\grace bes16 as8 as16 ( bes ) as8-. <g c>-. | \grace c16 <as f'>4-> \grace c16 <as f'>4-> |
	<<
	  { \grace ges'16 \stemUp f8 f16 ^( ges f8 ) f } \\
	  { as,8 [ as a \set hairpinToBarline = ##f a\< ] }
	>>
	%56
	<<
	  { f'8 ( [bes16] ) } \\
	  { bes,8.\! }
	>>
	r16 <as! f'>4 | <as c>16 ( <g bes> <f as> <g bes> )
	<<
	  { c16 (des) c (e) } \\
	  { as,8 <g bes> }
	>>
	<as c f>4 <as c f>4 |
	
	%59
	<<
	  { \grace as'16 \stemUp g8 g16^( as g8\< ) g\! ^( bes!8\> ) as4\! ^( g16 f ) } \\
	  { e8 e4 e8 f4. r8 }
	>>
	
	%61
	<<
	  { \grace des16 c8
	    c16 ( des c8 e ) } \\
	  { as,8 as4 <g bes c>8 }
	>>
	<as c f>4 <as c f>4 |
	
	%63
	<<
	  { \grace as'16 \stemUp g8 g16 ^( as g8\< ) g\! ^( bes!8\> ) as4\! ^( g16 f ) } \\
	  { e8\ppp e4 e8 f4. r8 }
	>>
	
	%65
	<<
	  { \grace d16 c8
	    \override DynamicTextSpanner #'dash-period = #-1.0
	    \override DynamicTextSpanner #'font-size = #-1 \setTextDim
	    c16\> ( d\! c8 d ) \grace d16 c8 c16 ( d c8 d ) \grace d16 c8 c16 ( d c8 e )  } \\
	  { a,8 a4 bes8 a a4 bes8 a a4 (bes8) }
	>>
	<a f'>4 <a f'> |
	
	%69
	<<
	  { \grace d16 \stemUp c8 c16 ^( d c8 a ) } \\
	  { \override DynamicTextSpanner #'dash-period = #-1.0
	    \override DynamicTextSpanner #'font-size = #-1 \setTextDim a8\> a4\! f8 }
	>>
	<e bes'>4 <e bes'> |
	
	%71
	<<
	  { \grace c'16 \stemUp bes8 bes16 ^( c bes8 e, ) } \\
	  { e8 e4 bes8 }
	>>
	<a f'>4 <a f'> |
	
	%73
	<<
	  { \grace d'16 \stemUp c8 c16 ^( d c8 a ) } \\
	  { a8 a4 es!8-> }
	>>
	<e bes'>4 <e bes'> |
	
	%75
	<<
	  { \grace c'16 \stemUp bes8 bes16 ^( c bes8 e, ) } \\
	  { e8 e4 bes8-> }
	>>
	<a f'>4 <a f'> | <a f'> <a f'> | <a f'>2\fermata \bar "|."
}

lefthand = \context Staff  \relative c \new Voice \with {
       \remove "Forbid_line_break_engraver"
     } {
	%1
	f8-. [ <c' f>-. f,-. <c' f>-. ] f,-. [ <c' f>-. f,-. <c' f>-. ] f, [ <c' f> f, <c' e> ] | f, [ <c' f> f, <c' f> ] f, <c' f> f, <c' e> |
	f, <c' f> f, <c' f> | des, <des' f> c, <c' es f> |
	%8
	bes, <bes' des f> f, <c' f> | c, <c' f> c, <c' e> | f, <c' f> f, <c' f>

	%
	f [ <c' f> f, <c' e> ] | f, [ <c' f> f, <c' f> ] f, <c' f> f, <c' e> |
	f, <c' f> f, <c' f> | des, <des' f> c, <c' es f> |
	%
	bes, <bes' des f> f, <c' f> | c, <c' f> c, <c' e> | f, <c' f> f, <c' f>
	
	%19
	\clef violin
	as' <c es as> as <c es as> | as <bes es g> as <bes es g> | as <des es g> as <des es g> |
	as <c es as> as <c es as> | as <c es as> as <c es as> |
	
	%24
	\clef bass
	des, <des' f> des, <des' f> | es, <bes' des es> es, <bes' des es> | as <c es> as <c es> |
	
	%27
	\clef violin
	as <c es as> as <c es as> | as <bes es g> as <bes es g> | as <des es g> as <des es g> |
	as <c es as> as <c es as> | as <c es as> as <c es as> |
	
	%32
	\clef bass
	des, <des' f> des, <des' f> | es, <bes' des es> es, <bes' des es> | as <c es> as <c es> |
	
	%35
	c, <c' e> c, <c' e> | c, <c' f> c, <c' f> | c, <c' e> c, <c' e> | c, <c' f> f, <c' f> |
	as, <as' c> a, <ges' c> | bes, <f' bes> des, <des' f> | es, <es' as> es, <es' g> |
	as, <es' as> as, <es' as> |
	
	%43
	c <c' e> c, <c' e> | c, <c' f> c, <c' f> | c, <c' e> c, <c' e> | c, <c' f> f, <c' f> |
	as, <as' c> a, <ges' c> | bes, <f' bes> des, <des' f> | es, <es' as> es, <es' g> |
	as, <es' as> as, <es' as> |
	
	%51
	f [ <c' f> f, <c' e> ] | f, [ <c' f> f, <c' f> ] f, <c' f> f, <c' e> |
	f, <c' f> f, <c' f> | des, <des' f> c, <c' es f> |
	
	%56
	bes, <bes' des f> f <as c f> | c, <c' f> c, <c' e> | f, <c' f> f, <c' f> |
	
	%59
	bes, <bes' des> bes, <bes' des> |
	b, <b' d> b, <b' d> | c, <c' f> c, <c' e> | f, <c' f> f, <c' f> |
	
	%63
	bes, <bes' des> bes, <bes' des> |
	b, <b' d> b, <b' d> | c, <c' f> c, <c' e> | c, <c' f> c, <c' e> | c, <c' f> c, <c' g'> | f,, <c' f> f, <c' f> |
	
	%69
	f, <c' f> f, <c' f> | f, <c' g'> f, <c' g'> | f, <c' g'> f, <c' g'> | f, <c' f> f, <c' f> | f, <c' f> f, <c' fis> |
	
	%74
	f, <c' g'> f, <c' g'> | f, <c' g'> f, <des' g> | f, <c' f> f, <c' f> | f, <c' f> f, <c' f> | <f, c' f>2_\fermata
	
}

\score {
    \context PianoStaff <<
	\new Staff = "treble" << 
	    \global
	    \clef violin
	    \righthand
	>>
	\new Staff = "bass" <<
	    \global
	    \clef bass
	    \lefthand
	>>
    >>
    \layout {
	\context {
	    \Score
	}
    }
    
  \midi { 
    \context {
        \Voice
        \remove "Dynamic_performer"
        tempoWholesPerMinute = #(ly:make-moment 80 4)
  	}
  }
 
 
}


