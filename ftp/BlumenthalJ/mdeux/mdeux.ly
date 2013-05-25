\paper { linewidth = 7.0 \in
			topmargin = .5 \in
			bottommargin = 0.5 \in
			aftertitlespace = .5 \in
			footsep = .5 \in
		
		}

%%% From the music book entitled "Parlor Gems" (a Choice Selection
%%% of Music, Instrumental and Vocal, by the 
%%% Best Composers, to which is added original
%%% Charades for Parlor Performance
%%% by C. M. Cady.
%%% Published in 1878 by C. M. Cady, 107 Duane St., New York.

\header {
  title = "Les Deux Anges"
  composer = "Jacques (Jacob) Blumenthal"
  arranger = "Varied by Albert W. Berg"
  poet = ""
  instrument = ""
  source = "C. M. Cady, Pub. 1878"
  copyright = "Public Domain"
  enteredby = "Stan Sanderson"
  maintainerEmail = "physinfoman@ameritech.net"
  lastupdated = "3/1/2005"
  
    % % These are headers used by the Mutopia Project 
  % http://www.mutopiaproject.org/ 
  mutopiatitle = "Les Deux Anges" 
  mutopiacomposer = "BlumenthalJ"
  mutopiapoet = "" 
  mutopiainstrument = "Piano" 
  date = "1829-1908" 
  source = "C. M. Cady, Pub. 1878"
  maintainer = "Stan Sanderson" 
  maintainerEmail = "physinfoman@ameritech.net"
  maintainerWeb = ""
  lastupdated = "10/17/2005"
  
  footer = "Mutopia-2005/10/24-611"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


\include "english.ly"
\version "2.6.0"
#(set-global-staff-size 18)


upper = \relative c'' { \time 4/4 \key g \major
%% 1-4
		<b g d>4^\markup {\column {"THEMA." " " 
		\italic \small "Andante."}}
		
		
			_\markup {\italic \small 
				\column {"Legato con" "Espres."}}
					<b g d> <b g d> <b g d> |
		<d g, e> <c g e> <b g d>2 |
		<g d b>4 <g d b> <a g d> <a fs d> |
		<c a d,> <b g d> <a fs d>2 |
%% 5-8
		<b g d>4 <b g d> <b g f> <b g f> |
		<d g, e> <c g ef> <b g d>2 |
		<g d b>4 <g d b> <b g d> <<{a8. b16}\\{<fs c>4}>> |
		<a fs c>2 <g b,>4 r |
%% 9-12
		<a fs d> <a fs d> <a g e> <a fs d> |
		<c a d,> <bf g d> <a fs d>2 |
		<a fs d>4 <d a fs>8. <fs d a>16 <fs d a>4 
			<<{e8. fs16}\\{<cs g>4}>> |
		<e cs g>2 <d fs,>4. c8 |
%% 13-16
		<b g d>4 <b g d> <b g f> <b g f> |
		<d g, e> <c g ef> <b g d>2 |
		<g d b>4 <g d b> <b g d> <<{a8. b16}\\{<fs c>4}>> |
		<a fs c>2 <g b,>4 r |
%% 17-20
		<a fs d>4_| <d fs,>_| <fs d'>^| r |
		<d, g b>4_| <b' g'>^| <b' g'>^| r |
		<e, a, g>4( <ef a, g> <d a fs> <<{a8. b16}\\{fs4}>> |
		<a fs d>2 g4) r^\markup {\column {\italic \small 
		"      VARIATION." " "}}  | \bar "|." 
%% 21-24
	\set tupletSpannerDuration = #(ly:make-moment 1 4 )
	\times 2/3 {
		b8(
		e d) b( e d) (b e d) b( a' g) |
		d( a' g) d( a' g) b,( g' e d b a) |
		g( e' d) g,( e' d) a( e' d c b a) |
		g\( e fs \appoggiatura {g16[ a]} g8 fs g
			a\) d,( e fs g a) |
%% 25-28
		b8( e d) b( e d) (b e d) b( a' g) |
		d( a' g) d( a' g) b,( g' e d b a) |
		g( e' d) g,( e' d) b( e d) a( e' d) |
		\acciaccatura g,8 g'( d b g d b) } r2 |
%% 29-32
		<d fs a>4 <d fs a> <e g a> <d fs a> |
		<d a' c> <d g bf> <d fs a>2 |
		s4 
	\set tupletSpannerDuration = #(ly:make-moment 1 4 )
		\times 2/3 
		{a8( d fs a d fs)} <<{\times 2/3 {e( fs e)}}\\
		{<cs a>4}>> |
	\set tupletSpannerDuration = #(ly:make-moment 1 4 )
		\times 2/3 { <a' c,!>8( g fs e d cs c b a gs a as) |
%% 33-36
		b( e d) b( e d) b( e d) b( a' g) |
		d( a' g) c,( a' g) b,( g' e d b a) |
		g( e' d) g,( e' d) b( e d) a( e' d) |
		\acciaccatura g,8\( g' d b g d b\) } r2 |
%% 37-40
		\times 2/3{d8( b'a} d4)^| \times 2/3{d8( b' a}
			d4)^| |
		\times 2/3{d,,8( a' g} d'4)^| \times 2/3{
			d8( a' g} d'4)^| |
	\set tupletSpannerDuration = #(ly:make-moment 1 4 )
		\times 2/3 {a,8( fs' e) a,( f' ef) a,( ef' d)
			fs,( b a) |
		g( b d g b d} g4)^| r8\fermata s8 | \bar "|." \break
%%
%% Finale
%%
%% 41-44
	\time 6/8 \partial 8 d,,8^\markup {\column {"FINALE." " " 
		\italic \small "Allegretto."}} |
		<g b>4 <g b>8 <g b>4 <g b>8 |
		<g d'>4 <g c>8 <g b>4. |
		<g d>4 <g d>8 <g a>4 <a fs>8 |
%% 45-48
		<a c>4 <b g>8 <a fs>16_| d, e fs g a |
		<b g d>4 <b g d>8 <b g f>4 <b g f>8 |
		<d g, e>4 <c g ef>8 <b g d>4. |
		<g b,>8 d <g b,> 
			<<{<a c,>8 <c e,> <b d,>}\\{fs4.}>> |
%% 49-52
	\set doubleSlurs = ##t <g b,>4. ~ <g b,>8 r d |
	\set doubleSlurs = ##f
		<a' fs>16_^ d, cs d <fs a>_^ d <fs a>_^ d cs d <fs a>_^ d |
		<c' a>_^ d, cs d <bf' g>_^ d, <a' fs>_^ d, cs d fs a |
		<d fs,>_^ a gs a <d fs,>_^ a <e' g,>_^ cs <fs a,>_^ cs 
			<e g,>_^ cs |
%% 53-56
		<d fs,>^^ cs d( fs a g fs e d e c d) |
		<b g d>4 <b g d>8 < b g d>4 <b g d>8 |
		<d g, e>4 <c g ef>8 <b g d>4. |
		<g b,>8 d <g b,> <<{<a c,> <c e,> <b d,>}\\{fs4.}>> |
%% 57-60
		<g b,>16 d d d d d <<{r}\\{<fs a c d>^|}>> d d d d d |
		<<{r}\\{<g b d>^|}>> d d d d d <fs a> d <fs b> d <fs a> d |
		g d' d d d d <<{r}\\{<fs a c d>^|}>> d d d d d |
		<<{r}\\{<g b d>^|}>> d d d d d <fs a> d <fs b> d <fs a> d |
%% 61-64
		g( d' b g d b) <fs a> d <fs b> d <fs a> d |
		g( d' b g d b) s4. |
		s8 r r <b' g'>4. |
		<g d b>2.\fermata |
	

	}	
		
lower = \relative c { \time 4/4 \key g \major \clef bass
%% 1-4
		g4^\p g' g, g' |
		g, g' g, g' |
		d, d' d, d' |
		g, \slurDown g8.( b16 d4 d,) | \slurNeutral
%% 5-8
		g4 g' g, g' |
		g, g' g, g' |
		d, d' d, d' |
		d, d' g, r |
%% 9-12
		d d' cs d |
		fs g8. bf,16 d4 d, |
		a' a'2 a,4 |
		a' a, d4. r8 |
%% 13-16
		g,4 g' g, g' |
		g, g' g, g' |
		d, d' d, d' |
		d, d' g, r |
%% 17-20
		d_| <d' a'>^| \clef treble <d' a'>_| r |
		\clef bass g,,_| <g' d'>^| \clef treble <g' d'>_| r |
		\clef bass c,, c' d, <d c'> |
		<c' d,>2( <b g>4) r |
%% 21-24
		g4 \clef treble d' g <f g> |
		<g e> <g ef> <g d> r4 |
		\clef bass b, d, <c' fs,> d, |
		<c' a> <b g> <a d,> r |
%% 25-28
		g4 \clef treble d' g <f g> |
		<g e> <g ef> <g d> r4 |
		\clef bass b, d, d' <c d,> |
		<b g> r g^| r |
%% 29-32
		\set tupletSpannerDuration = #(ly:make-moment 1 4 )
		\times 2/3 {
			d8( b' a) d,( b' a) cs,( b' a) d,(b' a) |
			fs( e fs g bf, c d a fs} d4) |
		\times 2/3 {a'8( d fs)} r4 r <a g'>4( |
		<d fs>8) r r4 r2 |
%% 33-36
		g,4 \clef treble d' g <f g> |
		<g e> <g ef> <g d> r4 |
		\clef bass b, d, b' <c d,> |
		<b g>4 r g^| r |
%% 37-40
		r4 <c fs, d>^| r \clef treble <d fs c'>_| |
		r4 \clef bass <b g d>^| r \clef treble <d g b> |
		\clef bass d,_| \clef treble <g' c,>( <fs d>) %% d is b in original
			\clef bass <c d,>( |
		<b g>) d( <b g>)^| r8\fermata s8 |
%%
%% Finale
%%
%% 41-44
	\time 6/8  r8 |
		g16( d' cs d cs d) g,( d' cs! d cs d) |
		g,( e' ds e ds e) g,( d' cs d cs d) |
		d,( b' as b as b) d,( d' cs d cs d) |
%% 45-48
		g,( d' cs d cs d) d,8 r r |
		g,16( g' fs g fs g) g,( g' fs g fs g) |
		g,16( g' fs g fs g) g,( g' fs g fs g) |
		d,( d' cs d cs d) d,( d' cs d cs d) |
%% 49-52
		g,( d' cs d as b g8) r r |
		d4 d'8 d,4 d'8 |
		fs4 g8 d4 r8 |
		a4 a'8 a,4 a'8 |
%% 53-56
		d,4 r8 r4 r8 |
		g,16( g' fs g fs g) g,( g' fs g fs g) |
		g,16( g' fs g fs g) g,( g' fs g fs g) |
		d,( d' cs d cs d) d,( d' cs d cs d) |
%% 57-60
		g8^| r r s r r |
		s r r <c d,> <c d,> <c d,> |
		<b g> r r s r r |
		s r r \clef treble <d c'> <d c'> <d c'> |
%% 61-64
		<b' g> r r \clef bass <c, d,> <c d,> <c d,> |
		<b d> r r <<{<a fs>16 d, <b' fs> d, <a' fs> d,}\\
			{<c d,>8 <c d,> <c d,>}>> |
		<<{g'8}\\{<b, g>}>> r r <d' g,>4. |
		<g,, g,>2.\fermata |
			
		}
		
dynamics = { s1 | s1 | s1 | s1 | s4\< s2 s4\! | s1 | %% 1-6
		s1 | s1 | s1 | s1 | s4\mf s4\< s4 s4\! | s1 | %% 7-12
		s4\< s2 s4\! | s4\> s2 s4\! | s1 |s1 | s4\f s2. | %% 13-17
		s1 | s4^\markup {\italic \small Dim.} s2. | s1 |%% 18-20
		s4\p s2. | s1 |s1 | s1 | s1 | s1 | s1 | s1 | %% 21-28
		s4\f s2. | s1 | 
		s4 s4-\markup {\small \italic cresc.} s4 s4\sf | 
		s4\> s2 s4\! | %% 29-32
		s1 | s1 | s1 | s1 | s4\f s2. |s1 | s1 | 
			s4 s4-\< s4\! s4 | %% 37-40
		s8\p | s2. | s2. | s2. | s2. | s2. | s2. | s2. | %% 41-48
		s2. | s2. | s2. | s2. | s4\> s4 s4\! | s2. | s2. | s2. | %% 49-56
		s4. s8^\markup {\small \italic m.g.} s4 |
			s8^\markup {\small \italic m.g.} s4. s4 |
				s4. s8^\markup {\small \italic m.g.} s4 |
					s8^\markup {\small \italic m.g.} s4. s4 | %% 57-60
		s2. | s2. | s4 s8\ff s4. | s2. | %% 61-end
		}


\score {
 	     \context PianoStaff <<
 	     \set PianoStaff.instrument = \markup{\small "Piano" " " " "}
         \context Staff=upper \upper
         \context Dynamics=dynamics \dynamics
         \context Staff=lower \lower
         >>

       \layout {
         \context {
           \type "Engraver_group_engraver"
           \name Dynamics
           \alias Voice % So that \cresc works, for example.
           \consists "Output_property_engraver"
     
           minimumVerticalExtent = #'(-1 . 1)
          
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
           \override VerticalAlignment #'forced-distance = #6.5
         }
       }
       \midi {
         \context {
           \type "Performer_group_performer"
           \name Dynamics
           \consists "Span_dynamic_performer"
           \consists "Dynamic_performer"
         }
         \context {
           \PianoStaff
           \accepts Dynamics
         }
       }
	}
