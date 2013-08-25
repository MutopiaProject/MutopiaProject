%#! /usr/local/lilypond/usr/bin/lilypond
%Lilypond Boismortier, op. 40, Sonate #2

\version "2.16.1"
\include "deutsch.ly"

\paper {
   first-page-number = 1
}
\header {
  piece = "Sonata II."
  mutopiacomposer = "BoismortierJBd"
  composer = "Joseph Bodin de Boismortier"
  opus = "op. 40 No. 2"
  %mutopiatitle = "Six sonates pour deux Baßons, Violoncelles, ou Violes"
  mutopiatitle = "Sonata II."
  mutopiainstrument = "2 Bassoons"
  source = "facsimile of first printing 1732"
  style = "Baroque"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "G. Treutwein"
  maintainerEmail = "almirena<at>gmx.net"
  moreInfo = "Facsimile available from Early Music Company, which agreed with publication"

 mutopiaopus = "Op. 40, No. 2"
 footer = "Mutopia-2013/08/11-1846"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}


% Erster Satz -------------------------------
  fagotteinsa = \relative c {
	\repeat volta 2
	{
	  b'4 b, r8 r16 d'|
	  c4 f, r8 r16 es'|
	  d8 b d f f, b|
	  a4.-+ f8 g a|
	  b4 b, r8 r16 d'|
	  c4 f, r8 r16 es'|
	  d8 b d f f, a|
	  b2 r4|
	  d8\( c16 b\) b4 r8 r16 d|
	 %Zeile 2
	 c4 f r8 r16 a,|
	 b8\( a16 g\) g4 r8 r16 c|
	 a4-+ f r8 r16 c'|
	 c8 a d, f b4(|
	 b8) g c, b' a c|
	 d8 f, f4.-+ e8|
	 f2 r4| \pageBreak
   } 

	 \repeat volta 2 {
	   b8\( a\) b4 r8 r16 d|
	   g,8 fis g a b g|
	 %Zeile 3
	   es' d c b a g|
	   fis4.-+ e8 d c|
	   b4 d' r8 r16 b|
	   e,8 a fis d g b,|
	   c8 a' d, g a fis|
	   g4 g, r8 r16 b'|
	   c8 a f4 r8 r16 c'|
	   d8 f, b,4 r8 r16 f''|
	 %Zeile 4
	   g8 f es d c b|
	   a4.-+ g8 f es|
	   d8 b' f b d, b'|
	   es,8 b' g b es, b'|
	   e,8 c' g c e, c'|
	   f,8 c' a c f, c'|
	   d8 f, b, f' b d|
	   c8 f, a c f, b|
	   c,8 b' b4.-+ a8|
	   b2 r4| \pageBreak
	 }
  }

  fagotteinsb = \relative c' {
	\repeat volta 2
	{
	  r2.|
	  r2.|
	  b4 b, r8 r16 d'|
	  c4 f, r8 r16 es'|
	  d8 b d f f, b|
	  a4.-+ f8 g a|
	  b8 es, f4 f,|
	  b4. f'8 g a|
	  b4 b, b'~|
	 %Zeile 2
	 b4 a8\( g16 f\) f4~|
	 f4 e8\( d16 c\) c8 e|
	 f8 f, a c f a,|
	 b2 g4|
	 e'2 f4|
	 b,4 c c,|
	 f2 r4| \pageBreak
   }

	 \repeat volta 2 {
	   r2.|
	   es'8\( d\) es4 r8 r16 g|
	  % Zeile 3
	  c,8 b c d es c|
	  d8 c d e fis d|
	  g8 g, b d b g|
	  c2 b4|
	  c4 d d,|
	  g8 g' b d b g|
	  a8 f a c a f|
	  b8 b, d f d b|
	 %Zeile 4
	 es8 d c d es c|
	 f8 es f g a f|
	 b4 b, r8 r16 d'|
	 g,4 es r8 r16 g|
	 c4 e, r8 r16 b'|
	 a4-+ f r8 r16 a|
	 b4 d, r8 r16 b|
	 es2 d4|
	 es4 f f,|
	 b2 r4|
	 }
  }

% Zweiter Satz -------------------------------

  fagottzweia = \relative c {
	% Zeile 5
	\partial 8 
	r8|
	r4.|
	r8 f' f|
	g16 f es d c8|
	f16 es d c b8|
	es8 es es|
	es8 d16 c d8|
	g8 c,4-+|
	b4 r8|
	r8 r f'|
	d8 b16 c d8|
	f8 f,16 g a8|
	%Zeile6
	b8 g c|
	a8 f f'|
	f8 g, es'|
	es8 f, d'|
	d8 c16 b a g|
	f8 g16 a b8~|
	b16 c f,8 a|
	b8 b, d'|
	c8 a16 b c8|
	d8 b d|
	d8 e f|
	e8 c f~|
	%Zeile 1, Seite 5
	f8 e4-+|
	f8 a, f|
	c'4.~|
	c8 c c|
	d16 c b a g8|
	c16 b a g f8|
	b8 b b|
	b8 a16 g a8|
	d8 g,4-+|
	f8 a a|
	g8 c16\( h\) c8~|
	c8 b b|
	a8 d16\( cis\) d8~|
	% Zeile 2
	d8 c c|
	b8 es16\( d\) es8~|
	es8 d d|
	d8 c4-+|
	d8 d, d'~|
	d8 es16 d c8~|
	c8 d16 c b8~|
	b8 c16 b a g|
	fis8 d g~|
	g8 fis4-+|
	g8 b16 a b8~|
	b8 a16 g a8~|
	% Zeile 3
	a8 g16 f g8~| 
	g8 a16 g f es|
	f8 d a'|
	 h16 a h c d es|
	 cis8 a d~|
	 d8 cis4-+|
	 d4 d8|
	 h8 g16 a h8|
	 c8 g c~|
	 c8 h4-+|
	 c8 c, c|
	 %Zeile 4
	 f8 a16 b c8|
	 d,8 b b|
	 es8 g16 a b8|
	 c,8 a a|
	 d8 fis16 g a8|
	 b,8 g g|
	 c8 e16 f g8|
	 a,8 f f|
	 b8 b'16 a g f|
	 e8 c f~|
	 f8 e4-+|
	 % Zeile 5
	 f8 c'16 d c d|
	 es8 c, c|
	 g8 d''16 es d es|
	 f8 d, b|
	 es16 f g a b c|
	 a8 f es|
	 d8 f' f|
	 g16 f es d c8|
	 f16 es d c b8|
	 es8 es es|
	 es8 d16 c d8|
	 g8 c,4-+|
	 b16 c d es f8|
	 a,16 b c d es8|
	 g,16 a b c d8|
	 f,16 g a b c8|
	 es,4 d8|
	 es8 f f,|
	 b8 d' c|
	 d8 f,16 es d c|
	 b8 b' a|
	 b8 f16 es d c|
	 b4. \bar "||"|
	}

	fagottzweib = \relative c' {
	  \partial 8 b8|
	  a8 f16 g a8|
	  b8 b,16 c d8|
	  es8 c f|
	  d8 b b'~|
	  b8 a f|
	  b4 b,8|
	  es8 f f,|
	  b8 b' b|
	  c16 b a g f8|
	  b4 b,8|
	  a4 f'8|
	  %Zeile 6
	  g,4 e'8| % ?wirklich e?
	  f,8 f' f|
	  g16 f es d c8|
	  f16 es d c b8|
	  es8 es es|
	  es8 d16 c d8|
	  es8 f f,|
	  b4 b'8|
	  a8 f16 g a8|
	  b8 b, b'|
	  h8 a g|
	  c8 b a|
	  %Zeile1, Seite 5
	  b8 c c,|
	  f4 f8|
	  e8 c16 d e8|
	  f8 f,16 g a8|
	  b8 g c|
	  a8 f f'~|
	  f8 e4|
	  f4.|
	  b,8 c c,|
	  f8 f'4~|
	  f8 es es|
	  d8 g16\( fis\) g8~|
	  g8 f f|
	  %Zeile 2
	  e8 a16\( g\) a8~|
	  a8 g g|
	  fis4 f8|
	  es4.|
	  d8 d d|
	  es16 d c b a8|
	  d16 c b a g8|
	  c8 c c|
	  c8 b16 a b8|
	  c8 d d,|
	  g4 g'8|
	  es4 f8|
	  %Zeile 3
	  d4 es8|
	  cis8 a cis|
	  d8 f d|
	  g8 g g|
	  g8 f16 e f8|
	  g8 a a,|
	  d8 fis d|
	  g4 g8|
	  es8 c16 d es8|
	  f8 g g,|
	  c8 c'16 d es8|
	  %Zeile 4
	  a,8 f, f|
	  b8 b'16 c d8|
	  g,8 es, es|
	  a8 a'16 b c8|
	  fis,8 d, d|
	  g8 g'16 a b8|
	  e,8 c, c|
	  f8 f'16 g a8|
	  d,8 g,16 a b8|
	  c8 b a|
	  b8 c c,|
	  %Zeile 5
	  f8 a'16 h a h|
	  c8 c, c|
	  g8 b'16 c b c|
	  d8 d, b|
	  es8 e c|
	  f8 f es|
	  d8 d' d|
	  es16 d c b a8|
	  d16 c b a g8|
	  c16 b a g f8|
	  b4 b,8|
	  es8 f f,|
	  %Zeile 6
	  b8 b'16 c d es|
	  f8 a,16 b c d|
	  es8 g,16 a b c|
	  d8 f,16 g a b|
	  c8 f, b|
	  c,8 b' a|
	  b,8 b' a|
	  b8 f16 es d c|
	  b8 d' c|
	  d8 f,16 es d c|
	 b4. \bar "||"|
	}


% Dritter Satz -------------------------------
	fagottdreia = \relative c' {
	  d8. \(  c32 b\)  b8. \(a32 g\) g8 g, r4|
	  d''8. \(  c32 b\)  b8. \(a32 g\)  c8.\( b32 a\) a8.\( b32 c\)|
	  b8-+ a d c  es d c b|
	  a8 d16 fis,  g4. f8 f8 es16 d|
	  es8 es es d16 c d8 b b'4~|
	  b4 a4. d,8 g4~|
	  g8 a f-+ e f4 e8 fis16 g|
	  fis8 d d'4. g,8 c4~|
	  c8 a b4. g8 as fis|
	  g8 c b-+ a b4 a-+|
	  g4 d2 c4|
	  d1 \bar "||"|
	}
	fagottdreib = \relative c' {
	  r2 d8.\( c32 b\) b8.\( a32 g\)|
	  g8 g, g'2 fis4|
	  g8 d b' a g f es d|
	  c4 b a h|
	  c8 c' a f b f d b|
	  es c f f, b4. h8|
	  cis8 a d g, a2|
	  d8 d' b g e4. a8|
	  d,4. g8 c,4. d8|
	  es4 d8 c d4 d,|
	  g4 f es2|
	  d1 \bar "||"|

	}

% Vierter Satz -------------------------------
	fagottviera = \relative c' {
	  \repeat volta 2 {
		\partial 2 d4 b|
		f4 d b8 c d es|
		f4 f, b' d|
		c4 f,2 b4|
		a2-+ c8 f, a c|
		d8 c b d c f, a c|
		d4 b d8 es c es|
		d4-+ c d e8 f|
		%Zeile 4
		e4-+ c f8( e) d( c)|
		d8( c) b( a) g( f) g(e)|
		f8( g) a( b) c( d) e(f)|
		g,8( f) b(a) g( f) g(e)|
		f2
	  }
	  \repeat volta 2 {
		a4 b|
		c4 a b8 d c b|
		a4 f g a|
%		c2-+ f4 b,|
		% Zeile 5
		b4. b8 a4 b|
		g4. a8 b4 g|
		es'4. d8 c b a g|
		fis4 d d' d,|
		es4 a d, fis|
		g4 es'2 d4~|
		d4 c2 b4|
		a4-+ f b a8 b|
		c4 d es d|
		c2-+ f4 b,|
		%Zeile 6
		b4 d8 es f4 b,|
		a8 f' es d c d es c|
		d4 b c, a'|
		b,4 d'8\p es f4 b,|
		b8 c d es f4 b,|
		a8 f' es d c d es c|
		d4 b c, a'|
		b2 
	  }
	}

	fagottvierb = \relative d' {
	  \repeat volta 2 {
		\partial 2 r2|
		 r1|
		 r2 d4 b|
		 f4 d b8 c d es|
		 f4 f, a f|
		 b4 b' a f|
		 b4 b, b' a|
		 b4 f b8 a g f|
		 %Zeile 4
		 c'2 a,|
		 b2 c|
		 d2 a|
		 b2 c|
		 f,2
	   }
	  \repeat volta 2 {
		r2|
		r2 d'4 es|
		f4 d es8 g f es|
		d4 b c d|
		es4. es8 d4 es|
		c4. d8 es4 c|
		d2 b|
		c2 d|
		g,4 g'8 a b4 b,|
		es2 e|
		f4 es d c8 b|
		es4 d c b|
		f2 r|
		%Zeile 6
		f''4 b, b d8 es|
		f4 b, a f|
		b4 d, es f|
		b,2 r4 d'8\p es|
		f4 b, b8 c d es|
		f4 b, a f|
		b4 d, es f|
		b,2
	  }
	}
	

  global = {
   \accidentalStyle "modern-cautionary" 
	\clef bass
	\key b \major
  \set Staff.midiInstrument = #"bassoon"

  }


\book {

  \header {
	title = "Sonata II."
	composer = "Joseph Bodin de Boismortier"
	opus = "op. 40"
  }
  % Erster Satz -------------------------------
  \score {


	  \new StaffGroup << 
		\new Staff {\global \time 3/4 \fagotteinsa }
		\new Staff {\global \time 3/4 \fagotteinsb }
	  >>
	  \header { piece = \markup \large \bold {"1. Andante"} }
    	  \midi{
	  \tempo 4 = 84
	 }
	 \layout{}
	}

  % Zweiter Satz -------------------------------
  \score {


		\new StaffGroup << 
		  \new Staff {\global \time 3/8 \fagottzweia }
		  \new Staff {\global \time 3/8 \fagottzweib }
		>>
		\header { piece = \markup \large \bold {"2. Presto" }}
   	  \midi{
	  \tempo 4 = 120
	 }
	 \layout{}
  }
  % Dritter Satz -------------------------------
  \score {


		\new StaffGroup << 
		  \new Staff {\global \time 2/2 \fagottdreia }
		  \new Staff {\global \time 2/2 \fagottdreib }
		>>
		\header { piece = \markup \large \bold {"3. Adagio" }}
   	  \midi{
	  \tempo 4 = 66
	 }
	 \layout{}
  }
  \pageBreak
  % Vierter Satz -------------------------------
  \score {


		\new StaffGroup << 
		  \new Staff {\global \time 2/2 \fagottviera }
		  \new Staff {\global \time 2/2 \fagottvierb }
		>>
		\header { piece = \markup \large \bold {"4. Gavotta" }}
   	  \midi{
	  \tempo 4 = 120
	 }
	 \layout{}
  }

} % book
