\include "english.ly"
\version "2.18.2"
%#(set-global-staff-size 17)

\header {
  title = "The Last Rose of Summer"
  subtitle ="(Martha)"
  composer = "Thomas Moore (1779-1833)"
  mutopiacomposer = "MooreT"
  poet = "J. Stevenson (1761-1833)"
  instrument = "Voice and Piano"
  opus = ""
  source = "Not known"
  license = "Public Domain"
  enteredby = "Stan Sanderson"
  maintainer = "Stan Sanderson"
  maintainerEmail = "physinfoman@ameritech.net"
  mutopiatitle = "The Last Rose of Summer (Martha)"
  mutopiastyle = "Song"

 footer = "Mutopia-2014/09/07-434"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper {
  top-margin = 8\mm
  top-markup-spacing.basic-distance = #6
  markup-system-spacing #'padding = #5
  markup-markup-spacing #'padding = #1.2
  last-bottom-spacing.basic-distance = #12
  top-system-spacing.basic-distance = #12
  bottom-margin = 10\mm
}

% Added during update to 2.18
dynamics = {
  \override DynamicTextSpanner.style = #'none
  \partial 4 s4\mf | s2. |  s2. | s8\< s4 s8\! s8.\> s16\! | s2. |
  s2. | s2. | s2. | s2. | \once\crescTextCresc s4\< s4 s4\! |
  s2. | s2. | s2 s8\mf s8 | s2.
  s2. | s4\< s8.\! s16\> s8. s16\! | s2\mf s4 | s2\mf s4 |
}
% piano dynamics are similar but with a trailing crescendo
dynamicsp = {
  \dynamics
  s2.*3 | s4 s4\< s4 | s2 s4\! | s2.\f
}

melody = \relative c' {
	\key d\major \time 3/4
	\partial 4 d8. e16
%% 1-3
	\repeat volta 3 {fs4 d'8.( cs16) b8.( a16) | a4 fs8 r d8.( e16) |
		fs8( a4) fs8 \acciaccatura fs8 e8.( d16) |
%% 4-6
	d2 d8. e16 | fs4 d'8.( cs16) b8.( a16) | a4 fs8 r d8.( e16) |
%% 7-9
	fs8( a4 fs8) \acciaccatura fs8 e8. d16 | d4( d8) r a'8.( fs16) |
		d'4. cs8 b8. a16 |
%%% 10-12
	a4 fs a8.( fs16) | d'4.( cs8) b as |
		b( \acciaccatura {cs16[ b as]} b16 cs d4)\fermata d,8. e16 |
%%% 13-15
	fs4 d'8.( cs16) \acciaccatura cs8 b8.( a16) | a4 fs8 r d8.( e16) |
		fs4( a8. fs16) \acciaccatura fs8 e8. d16 |}

	\alternative { { d2 d8. e16 } {fs2 d8. e16 | fs4 d'8.( cs16) b8.( a16) |
	a4 fs8 r d8.( e16) | fs8\melisma a4 fs8\melismaEnd e8. d16 | d2. | r2. | r }} \bar "|."

}

textA = \lyricmode {
	_'Tis the last rose __ of __ sum -- mer, Left bloom __ ing a -- lone;
	All her love -- ly com -- pan -- ions
	Are __ fad __ ed and gone.__
	No __ flow -- er of her kin -- dred,
	No __ rose __ bud is nigh, __
	To re -- flect back __ her __ blush -- es,
	Or __ give __ sigh for sigh. I'll not
}

textB = \lyricmode {
	_ _ leave thee, __ thou __ lone one,
	To __ pine __ on the stem;
	Since the love -- ly __ are sleep -- ing,
	Go __ sleep __ thou with them;
	'Thus kind -- ly __ I __ _ scat -- ter
	Thy __ leaves __ o'er the bed __
	Where thy mates of __ the __ gard -- en
	Lie __ scent -- less and dead. So __ _
}

textC = \lyricmode {
	_ _ soon may __ I __ fol -- low
	When __ friend -- ships de -- cay,
	And from love's shin -- ing cir -- cle
	The gems __ drop a -- way!
	When true __ _ hearts lie wither -- ed
	And fond __ ones are flown __
	Oh! __ _ who __ would in -- hab -- it
	This __ bleak world a \repeat unfold 3 { \skip 1 } -lone?
	Oh! __ _ who __ would in -- hab -- it
	This __ bleak __ world a -- lone?
}

upper = \relative c' {
	\key d\major \time 3/4
	d8.( e16
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
		<d fs>4( <fs a>8. fs16 \acciaccatura fs8 e8. d16) |
%% 16-18
	d2 d8.( e16) | <d fs>2 d8.( e16) | <d fs>4 <fs d'>8.( cs'16 <g b>8. a16) |
%% 19-21
	<fs a>4( fs8) r d8.( e16) | fs8( a4 fs8 e8. d16) | d4 <d fs> <d fs a> |
%% 22-23
	<fs a d>4 <a d fs> <d fs a> | <d fs a d>2.\fermata


}


lower = \relative c {
	\key d\major \time 3/4
	r4
%% 1-3
	<d fs a>2 <d g b>4 | <d fs a>2 r4 | <<{s8 s s8 s8. s16}\\{<a a'>2 <a g'>4}>> |
%% 4-6
	<d fs>4( d,) r | <d' fs a>2 <d g b>4 | <d fs a>2 r4 |
%% 7-9
	<a a'>2 <a g'>4 | <d fs>4 d,8 r r4 |
		\tupletSpan 4
		\tuplet 3/2 {d'8[( fs a] d,[ fs a] d,[ g b])}
%% 10-12
	\tuplet 3/2 {d,8[( fs a] d,[ fs a] d,[ fs a])}
	\tuplet 3/2 {b,8[( d fs]} b,8 e fs fs,) | b4 r\fermata r |
%% 13-15
	\tuplet 3/2 {d8[( fs a] d,[ fs a] d,[ g b])} | \tuplet 3/2 {d,8[( fs a] d[ a fs] d[ g bf])} |
		\tuplet 3/2 {a8[( fs d] a[ d fs]} <g cs, a>4) |
%% 16-18
	<fs d>4( d,) r | \tuplet 3/2 {d'8[( fs a] d,[ fs a] d,[ fs a])} |
		\tuplet 3/2 {d,8[( fs a] d,[ fs a] d,[ g b])} |
%% 19-21
	 \tuplet 3/2 {d,8[( fs a] d[ a fs] d[ g bf])} |
	 	\tuplet 3/2 {a8[( fs d] a[ d fs])} <<{g8. fs16}\\{a,4}>> |
	 		<d fs>4 a' fs |
%% 22-23
	 d a fs\! | d2.\fermata
}

\score {
  <<
    \new Staff = "melodystaff" \with {
      midiInstrument = #"choir aahs"
    } <<
      \tempo "Andante"
      \new Dynamics \with {
        alignAboveContext = "melodystaff"
      } { \dynamics }
      \new Voice = "mel" {
        \autoBeamOff
        \melody
      }
      \new Lyrics { \lyricsto "mel" { \textA } }
      \new Lyrics { \lyricsto "mel" { \textB } }
      \new Lyrics { \lyricsto "mel" { \textC } }
	>>
    \new PianoStaff <<
	  \new Staff = "upper" \upper
      \new Dynamics \dynamicsp
	  \new Staff = "lower" <<
        \clef bass
        \lower
	  >>
    >>
  >>
  \layout { }
  \midi {
    \tempo 4 = 60
  }
}
