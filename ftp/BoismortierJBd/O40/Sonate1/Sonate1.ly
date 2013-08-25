%#! /usr/local/lilypond/usr/bin/lilypond
%Lilypond Boismortier, op. 40, Sonate #1

\version "2.16.1"
\include "deutsch.ly"

\header {
  piece = "Sonata I."
  mutopiacomposer = "BoismortierJBd"
  composer = "Joseph Bodin de Boismortier"
  opus = "40"
  %mutopiatitle = "Six sonates pour deux Baßons, Violoncelles, ou Violes"
  mutopiatitle = "Sonata I."
  mutopiainstrument = "2 Bassoons"
  source = "facsimile of first printing 1732"
  style = "Baroque"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "G. Treutwein"
  maintainerEmail = "almirena<at>gmx.net"
  moreInfo = "Facsimile available from Early Music Company, which agreed with publication"

 mutopiaopus = "Op. 40, No. 1"
 footer = "Mutopia-2013/07/28-1845"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

\paper {
   first-page-number = 1
}


% Erster Satz -------------------------------
  fagotteinsa = \relative c {
	\repeat volta 2
	{
	 f8 d f a|
	 d4 r8 d,16 e|
	 f8 d a' d|
	 cis8 a4 cis8|
	 d8 a fis d|
	 b8 g4 h'8|
	 c8 g e c|
	 a8 f4 c''8|
	 d16\( c b8\) b16\( a g8\)
	 %Zeile 2
	 c16\( b a8\) a16\( g f8\) |
	 b16\(a g8\) g16\( a b8\)|
	 a8 f c' c,|
	 d16 e f g a8 a,|
	 b16 c d e  f\(g\) a8|
	 g8 f c e|
	 f8 f, r4 |}
	 \repeat volta 2 {
	   a'8 f a c|
	 %Zeile 3
	   f4 r8 f,16 g| 
	   a8 f c ' f|
	   e8 c4 e8|
	   f8 c a f|
	   d8 b g e'|
	   f8 a, g e'|
	   f8 a16 b c8 c|
	   d,8 c' c c|
	   g,8 b' b b|
	   c,8 a' d, fis|
	 %Zeile 4
	 g4 r16 c b c|
	 f,4 r16 b a b|
	 e,4 r16 a g a|
	 f8 e16 f d8 d'|
	 cis8 a d e|
	 f8 a, d4(|
	 d8) h c4(|
	 c8) h16 a e8 gis|
	 a,8 a'4 \times 2/3 {a16\( b c\)}|
	 %Zeile 5
	 b8 g4 \times 2/3 {g16\( a b\)}|
	 a8 f4 \times 2/3 {f16\( g a\)}|
	 g8 e4 \times 2/3 {e16\( f g\)}|
	 f8 d4 a'8|
	 b16 d, c d g,8 h'|
	 cis16 e, d e a,8 cis'|
	 d8 cis d cis|
	 d4. e16 f|
	 %Zeile 6
	  e8 d cis16\( d\) e8|
	  a,8 g  f16\( g\) a8|
	  b,8 e a, cis|
	  d8 f e a|
	  d8 g, g\( f\)|
	  b8 e, cis a|
	  b8 e a, cis|
	  d8 d, r4
	 }


  }

  fagotteinsb = \relative c {
	\repeat volta 2
	{
	  r2|
	  f8 d f a|
	  d4 r8 f,16 g|
	  a8 e cis a|
	  fis8 d4 fis'8|
	  g8 d h g|
	  e8 c4 e'8|
	  f8 c a f|
	  b4 r8 b'8|
	 %Zeile 2
	 a16\( g f8\) f16\( e d8\)|
	 g16\( f e8\) e16\( d c8\)|
	 f8 f, r4|
	 r4 c''8 c,|
	 d16 e f g a8 a,|
	 b4 c|
	 f,4 r|
   }

	 \repeat volta 2 {
	   r2
	 %Zeile 3
	 a'8 f a c|
	 f4 r8 a,16 b|
	 c8 g e c|
	 a8 f4 a8|
	 b4 r8 b| 
	 a8 f' b, c|
	 f,8 f' a f|
	 r8 d fis d|
	 r8 g, b g|
	 r8 c d d,|
	 %Zeile 4
	 g16 b' a b e,4|
	 r16 a g a d,4|
	   r16 g f g cis,4|
	   r16 d c d b8 g|
	   a16 a' g a f8 cis|
	   d8 e f d|
	   e8 gis a c,|
	   d4 e|
	   a8 g fis d|
	 %Zeile 5
	   g8 f e c|
	   f8 e d b|
	   e8 d cis a|
	   d8 d, fis d|
	   g4 r8 gis|
	   a4 r8 a'16 g|
	   f8 e f e|
	   f8 d16 e f8 d|
	 %Zeile 6
	 g8 f e g|
	 f8 cis d f,|
	 g4 a|
	 d4 c|
	 b4 a|
	 g4. f8|
	 g4 a|
	 d,4 r
	 }


  }

% Zweiter Satz -------------------------------

  fagottzweia = \relative c {
	\repeat volta 2
	{
	d8 f16 e d8 b' e,4-+|
	f8 a16 g  f8 d' cis4-+|
	d8 f16 e d8 a b4|
	g8 c16 b a g f e d8 g|
	e8 c f c' a f|
	d'8 g, c, f g, e'|
	% Zeile 2
	f8 a16 g fis8 a d, fis|
	g8 b16 a  g8 b e, g|
	cis,8 a'16 g f8 a e a |
    d,8 e16 f  g8 f e d|
    a'4 a, r
  	}
	\repeat volta 2 {
	  a8 c16 h a8 f' h,4-+|
	  c8 e16 d c8 a' gis4|
	  % Zeile 3
	  a8 c, d h' e, gis|
	  a,8 a'16 g  fis8 c' d4|
	  b8 g16 f  e8 b' c4|
	  a8 f16 e  d8 a' b4|
	  g8 e16 d  cis8 g' a4|
	  f8 d16 e  f8 d' d c|
	  h8 g16 a h8 e e d|
	  % Zeile 4
	  cis8 a16 g  a8 b4 g8|
	  a8 d,16 e  f8 g4 e8|
	  f8 a16 g a8 b4 g8|
	  a4 d cis|
	  d4. a8 b f|
	  g8 e f d a cis|
	  d8 b a g f e|
	  d2 r4|
	  }
	}

	fagottzweib = \relative c {
	  \repeat volta 2 {
		r2.|
		d8 f16 e d8 b' e,4-+|
		f8 a16 g fis8 d g f?| %letztes f original: fis|
		e8 c f a, b4(|
		b4) a f|
		b4 c c,|
	  % Zeile 2
		f8 f'16 g a8 d, fis a|
		b8 g16 f e8 e, g e|
		a4 d c|
		b2.|
		a2 r4|
		}
	  \repeat volta 2 {
		r2.|
		a8 c16 h a8 f' h,4-+|
	  % Zeile 3
		c4 d e|
		a8 a, d' a fis d|
		g8 g, c' g e c|
		f8 f, b' f d b|
		e8 e, a' e cis a|
		d4. d8 fis d|
		g4. g8 gis e|
	  % Zeile 4
		a4 r r |
		r8 a16 g a8 b4 g8|
		a8 d,16 e f8 g4 e8|
		f8 d16 e f8 g4 e8|
		f8 d16 e f8 d g, a|
		b8 g a4 a|
		d,8 b' a g f e|
		d2 r4|
	  }

	}

% Dritter Satz -------------------------------
	fagottdreia = \relative c {
	  f4. a8 a4. c8|
	  e,8 c16 d e f g a b2|
	  r8 f16 g a b c d es2|
	  r8 d d e, f4. a,8|
	  b8 a' g f c4 e|
	  f2 r16 f e f a g f e|
	  d2 r16 g b a g f e d|
	  cis2 a'4 g|
	  f8 g e f d e f d|
	  b'8 d b g cis e cis a|
	  d4. f,8 e4.\( d16 e\)|
	  d2 a'(|
	  a2) g|
	  a1|
	}
	fagottdreib = \relative c {
	  f,1|
	  c'2 r8 g16 a b c d e|
	  f2 r8 c16 d es f g a|
	  b2 r8 a a c,|
	  d4 b c c,|
	  f16 f' e d c b a g f2|
	  r16 b a b d c b a g2|
	  a'4 g f8 g e f|
	  d4 c b8 c a b|
	  g1|
	  f4 d a'2|
	  d,4 d' c a|
	  b1|
	  a1|
	}

% Vierter Satz -------------------------------
	fagottviera = \relative c' {
	  \repeat volta 2 {
	  d8 d, d|
	  b'8\( a16-+ g\) a8|
	  d8 f16 e d cis|
	  d4 a8|
	  f8 b16 a g f|
	  e8 a16 g f e|
	  f8 e d|
	  a'8 a,4|
	  d'8 d,16 cis d8|
	  e16 f d8 d|
	  d'8 d,16 cis d8|
	  %Zeile 2
	  e16 f d8 d|
	  d'8 cis16 h a g|
	  f16 e d c b a|
	  g16 e' a,8 cis|
	  d8 d, a''|
	  d8 c h|
	  c16 d e8 gis,|
	  a8 d16 c h a|
	  gis8.-+ fis16 e8 |
	  a8 h c|
	  h16 f' e d c h|
	  %Zeile 3
	  c16 h a g f e|
	  f16 e d c h a|
	  e'16 a h,8 gis'|
	  a8 f c|
	  d16 h' e,8 gis|
	  a8 a, r}
	 \repeat volta 2 {
	   c'8 f,16 e f8| f8 a4|
	   g8 g16 a b8|
	   a8.-+ g16 f8| c'16 b a g f8|
	  %Zeile 4
	   d'8 f, b,|
	   d'16 c h a g8|
	   e'8 g, c,|
	   f'16 e d c b a|
	   d16 c b a g f| 
	   a16 f c8 e|
	   f,8 f'16 e f8(|
	   f8) e16 d c b|
	   a8 a'16 g a8(|
	   a8) g16 f e d|
	  %Zeile 5
	  cis8.-+ h16 a8|
	  d16 f a f d a'|
	  b8 g g,|
	  c16 e g e c g'|
	  a8 f f,|
	  b16 d f d b f'|
	  g8 e e,|
	  a16 cis e cis a e'|
	  f8 d a'|
	  %Zeile 6
	  b8 g,16 fis g8|
	  g8 h'16 cis d8|
	  cis8 a,16 gis a8|
	  a8 cis'16 d e8|
	  f8 e d|
	  e8 a, d(|
	  d8) cis4-+|
	  d4 r8|
	  r8 b8 a|
	  gis8.-+ a16 f8|
	  e8 a, cis|
	  d8 d, r|}

	}

	fagottvierb = \relative d' {
	  \repeat volta 2 {
		r4.|
		d8 d, d|
		b'8\( a16-+ g\) a8|
		d,8 f16 e d cis|
		d8 d, d'(|
		d8) cis a|
		d8 c b|
		a8 a' g|
		f8 r f,|
		g8 f f|
		b8 r f|
		%Zeile 2
		g8 f f |
		b16 g a8 a|
		d8. c16 b a|
		g8 a4|
		d,8 d' c|
		h8 e e,|
		a4 h8|
		c8 f d|
		e8 e' d|
		c8 h a|
		gis4 e8|
		%Zeile 3
		a4 a,8|
		d4 d,8|
		e4 e8|
		f8 f' c|
		d8 e e,|
		a4 r8|}
	\repeat volta 2 {
		r4. c'8 f,16 e f8|
		f8 e c|
		f8 f, r|
		a4 r8|
		%Zeile 4
		b4 r8|
		h4 r8|
		c4 r8|
		a4 r8|
		b4 r8|
		c4 r8|
		f8 f, r|
		r8 g'16 f g8(|
		g8) f16 e d c|
		b8 b'16 a b8(|
		%Zeile 5
		b8) a16 g f e|
		f8 d fis|
		g16 b d b g d'|
		e8 c c,|
		f16 a c a f c'|
		d8 b b,|
		e16 g b g e g|
		cis8 a a,|
		d16 f a f d f|
		%Zeile 6
		g8 g,16 fis g8|
		g4 gis'8|
		a8 a,16 gis a8|
		a4 a'8|
		d8 c b|
		a8 g f|
		g16 b a8 a,|
		d8 b' a|
		g8 e f|
		cis8 a d|
		g,8 a4|
		d,4 r8}
	}
	

  global = {
   \accidentalStyle "modern-cautionary" 
	\clef bass
	\key c \major
	   \set Staff.midiInstrument = #"bassoon"
  }


\book {

  \header {
	title = "Sonata I."
	composer = "Joseph Bodin de Boismortier"
	opus = "op. 40"
  }
  % Erster Satz -------------------------------
  \score {
	  \new StaffGroup <<
		\new Staff {\global \time 2/4 \fagotteinsa }
		\new Staff {\global \time 2/4 \fagotteinsb }
	  >>
	  \header { piece = \markup \large \bold {"1. Allegro"} }
	  \midi{
	  \tempo 4 = 100
	 }
	 \layout{}
	}

  % Zweiter Satz -------------------------------
  \score {


		\new StaffGroup << 
		  \new Staff {\global \time 3/4 \fagottzweia }
		  \new Staff {\global \time 3/4 \fagottzweib }
		>>
		\header { piece = \markup \large \bold {"2. Vivace" }}
		             \midi{
	  \tempo 4 = 100
	 }
	 \layout{}
  }
  % Dritter Satz -------------------------------
  \score {


		\new StaffGroup << 
		  \new Staff {\global \time 2/2 \fagottdreia \bar "||"}
		  \new Staff {\global \time 2/2 \fagottdreib \bar "||"}
		>>
		\header { piece = \markup \large \bold {"3. Adagio" }}
		\midi{
	  \tempo 4 = 80
	 }
	 \layout{}
  }
  \pageBreak
  % Vierter Satz -------------------------------
  \score {


		\new StaffGroup << 
		  \new Staff {\global \time 3/8 \fagottviera }
		  \new Staff {\global \time 3/8 \fagottvierb }
		>>
		\header { piece = \markup \large \bold {"4. Allegro" }}
		\midi{
	  \tempo 4 = 100
	 }
	 \layout{}
  }

} % book

