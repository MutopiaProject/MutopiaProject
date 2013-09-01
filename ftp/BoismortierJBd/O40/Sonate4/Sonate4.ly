%#! /usr/local/lilypond/usr/bin/lilypond
%Lilypond Boismortier, op. 40, Sonate #4

\version "2.16.1"
\include "deutsch.ly"

\paper {
   first-page-number = 1
}
\header {
  piece = "Sonata IV."
  mutopiacomposer = "BoismortierJBd"
  composer = "Joseph Bodin de Boismortier"
  opus = "op. 40 No. 4"
  %mutopiatitle = "Six sonates pour deux Baßons, Violoncelles, ou Violes"
  mutopiatitle = "Sonata IV."
  mutopiainstrument = "2 Bassoons"
  source = "facsimile of first printing 1732"
  style = "Baroque"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "G. Treutwein"
  maintainerEmail = "almirena<at>gmx.net"
  moreInfo = "Facsimile available from Early Music Company, which agreed with publication"

 mutopiaopus = "Op. 40, No. 4"
 footer = "Mutopia-2013/08/11-1848"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}


% Erster Satz -------------------------------
  fagotteinsa = \relative c' {
	\repeat volta 2
	{
	  a8 cis16 d e8 e, a4 r8 h|
	  cis8 h16 a d8 cis h16-+\( a h8\) r e|
	  fis16\( d\) h\( d\) gis,\(h\) e,\( gis\) a4. h16 cis|
	  d4. cis16 h cis4. h16 a|
	  h8 e, h'4. e,8 a4~|
	  %Zeile 2
	  a8 gis16 fis gis8 cis dis,8 h e4~|
	  e4 dis e r|
   	}
	\repeat volta 2 {
	  e'8 gis,16 fis e8 d' cis a r e'|
	  e8 d16 cis  d8 d d-+ cis r cis|
	  cis8 h16 a h8 h h-+ a r cis|
	  d8 h4 a g eis8|
	  %Zeile 3
	  fis8 h cis d a4 gis-+|
	  fis4 r h8 dis,16 cis h8 a'|
	  gis8 e r4 a8 cis16 d e8 e,|
	  fis8 a16 h cis8 cis, d d'16 cis d4~|
	  d8 cis h a h e, e' fis16\( e\)|
	  fis8\( e\) r e e-+\( d\) r d|
	  %Zeile 4
	  d8-+\( cis\) r cis h gis a16\( cis\) h\( d\)|
	  cis16\( a\) h\( fis\) gis4-+ a8 e cis a|
	  fis'8 h e, gis a a, r4|
	}
  }

  fagotteinsb = \relative c' {
	\repeat volta 2
	{
	  r2 a8 cis16 d e8 e,|
	  a8 fis gis a e e, r cis''8|
	  d8 d, d'4. cis16 h cis4~|
	  cis8 h16 a h4. a16 gis a4~|
	  a8 gis16 fis gis8 e cis'4. fis,8|
	  dis8 h e a, a4 gis8 a|
	  h2 e,4 r|
   	}
	\repeat volta 2 {
	  r2 a'8 cis,16 h a8 g'|
	  fis4. gis8 a a, cis a|
	  dis4. eis8 fis fis, a fis|
	  h8 gis' eis fis h,4 cis|
	  %Zeile 3
	  d4 a8 h cis2|
	  fis8 ais,16 gis fis8 e' dis h r4|
	  e8 gis,16 fis e8 d' cis a r4|
	  d8 fis16 gis a8 a, h h'16 a gis8 e|
	  a,8 a' gis fis e e, cis'' d16\( cis\)|
	  d8\( cis\) r cis cis-+\( h\) r h|
	  %Zeile 4
	  h8-+\( a\) r a, d4 cis8 gis|
	  a8 d e e, a4 r8 cis|
	  d4 e a, r|
	}
  }

% Zweiter Satz -------------------------------

  fagottzweia = \relative c' {
	\repeat volta 2 {
	  %Zeile 5
	  a4 a a gis16 fis e d|
	  cis16 d cis h a h cis d e4 e,|
	  e''4 e e d16 cis h a|
	  gis16 a gis fis e fis gis e a8 e a4~|
	  a4 gis r8 a a a|
	  %Zeile 6
	  gis8 e16 fis gis8 a16 gis fis8 fis fis gis16 fis|
	  e8 e' e e cis a16 h cis8 d16 cis|
	  h8 gis16 a h8 cis16 h a8 fis d'4~|
	  d8 cis16 h cis4. h16 a h4~|
	  h8 e, a4. h16 a gis4~|
	  %Seite 11, Zeile 1
	  gis8 a16 gis fis8 e dis h h'4~|
	  h8 e,a4. gis16 fis gis8 cis|
	  fis,8 gis16 a h8 fis gis e fis dis|
	  e8 gis, a h e,4 r}
	  \repeat volta 2 {
		e''4 e e dis16 cis h a|
		gis16 a gis fis  e fis gis a h4 e~|
		% Zeile 2
		e8 d16 cis d4. e16 d cis4~|
		cis8 d16 cis h4-+ cis8 cis cis cis|
		a8 fis16 gis a8 h16 a gis8 a16 h cis4~|
		cis8 fis, h4. cis8 a-+ gis|
		a8 fis cis eis fis cis' fis4~|
		fis8 h, e4. fis8 d-+ cis|
		%Zeile 3
		d8 h fis ais h, h' h h|
		gis8 e16 fis gis8 a16 gis fis8 fis fis gis16 fis|
		e8 e e e cis a16 h cis8 d16 cis|
		h8 cis16 d e8 e, a'4 a|
		%Zeile 4
		a4 gis16 fis e d cis d cis h a h cis a|
		d16 e d cis h cis d h e8 e'4 d8|
		cis8 a h gis a4 a|
		a8 cis, d e a,4 r|
	  }
  }

  fagottzweib = \relative c' {
	\repeat volta 2 {
	  r1 a4 a a gis16 fis e d|
	  cis16 d cis h a h cis a d4 h|
	  r8 e e e cis a16 h cis8 d16 cis|
	  h8 h h cis16 h a4 r|
	  %Zeile 6
	  e''4 e e d16 cis h a |
	  gis16 a gis fis e fis gis e a8 a a a|
	  gis8 e16 fis gis8 a16 gis fis8 fis fis gis16 fis|
	  e4. a,8 e e' e e|
	  cis8 a16 h cis8 d16 cis h4. cis16 h|
	  %Seite 11, Zeile 1
	  a4 a' a gis16 fis e dis|
	  cis4. fis8 dis h e4~|
	  e4 dis e8 cis a h|
	  cis gis a h e,4 r|
	}
	\repeat volta 2 {
	  r1|
	  r8 h'' h h gis e16 fis gis8 a16 gis|
	  %Zeile 2
	  fis4. gis16 fis e4. fis16 e|
	  d4 d-+ cis r|
	  fis4 fis fis e16 d e cis |
	  d4~ d16 cis d h cis4 fis8 h,|
	  cis4 cis fis,8 fis' a fis|
	  gis8 gis cis gis ais fis h e,|
	  fis4 fis, h r|
	  e'4 e e d16 cis h a|
	  gis16 a gis fis e fis gis e a4 a|
	  a4 gis16 fis e d cis d cis h a h cis d|
	  e8 e, r e' a e cis a|
	  fis'8 a d h gis16 a gis fis e fis gis e|
	  a8 cis, d e fis4 cis|
	  d8 cis d e a,4 r|
	}
  }


% Dritter Satz -------------------------------
  fagottdreia = \relative c' {
	\repeat volta 2{
	  \partial 1 a4 c,4. h8 a4|
	  a4. h8 c4 d8 f h d c-+ h|
	  c4. e,8 a,4 c'4. h8 a4|
	  g4. c8 e,4 d4. c'8 h4|
	  c2
	}
	\repeat volta 2{
	  e4 f4. e8 d4|
	  e4 cis d e,8 b' a4 cis|
	  d4. e8 f4 h,4. c8 d4|
	  g,2 g4 g4. a8 f4|
	  e4 c e e fis g|
	  fis4 d h' c\( h\) fis|
	  gis4 e a h,8 f' e4 gis|
	  a4. c,8 d4 e4. d8 e4|
	  a,2
	}
  }
  fagottdreib = \relative c' {
	\repeat volta 2{
	  \partial 1 r4 r r a|
	  c,4. h8 a4 a gis2|
	  a2 r4 a'4. g8 f4|
	  e2 c4 f, g2|
	  c,2
	}
	\repeat volta 2{
	  cis''4 d4. cis8 b4|
	  a4. g8 f4 g a a,|
	  d4 f d g2 f4|
	  %Zeile 6
	  e4. d8 c4 h4. a8 g4|
	  c2 r4 cis2 r4|
	  d2 r4 dis2 r4|
	  e2 c4 d e e,|
	  f'4. c8 d4 e4. d8 e4|
	  a,2
	}
  }

% Vierter Satz -------------------------------
  fagottviera = \relative c' {
	\repeat volta 2 {
	  % Zeile 1
	  a8 a a|
	  gis16 a h8 e,|
	  cis'8 cis cis|
	  h16 cis d4|
	  cis16 d e8 a,|
	  h8 \appoggiatura a8 gis8 a8|
	  d8 h4-+|
	  a8 e16 d cis h|
	  a8 e' a|
	  gis16 a h4|
	  cis8 h a|
	  gis16 a h4|
	  cis8 h a|
	  % Zeile 2
	  gis16 a h8 e,|
	  fis8 dis4|
	  e8 h' a|
	  gis16 a h8 gis,|
	  a8 a' gis|
	  fis16 gis a8 fis,|
	  gis8 gis' fis|
	  e8 a gis|
	  fis8 h a|
	  gis16 e fis8 dis|
	  e4 r8
	}
	 \repeat volta 2 {
		e16 fis gis a h cis|
		d4.|
		% Zeile 3
		 cis16 h cis8 fis,|
		 fis8-+ \( eis4\)|
		 fis8 a16 gis fis8|
		 gis16 a h4|
		 a8 cis16  h a8|
		 h16 cis d4|
		 cis16 h a gis fis8|
		 h16\( gis\) a8 fis'|
		 fis,16 gis a8 gis|
		 fis16 a gis fis e d|
		 cis16 cis' h a gis fis|
		 % Zeile 4
		 e16 e' d cis h a|
		 gis16 a h cis d h|
		 cis8 a e'|
		 e8 fis,16 e d cis|
		 h8 h d'|
		 d8 e,16 d cis h|
		 a8 a cis'|
		 h16 cis d cis h a|
		 gis16\(a\) a8.-+\( gis32 a\)|
		 h16 cis d8 cis|
		 h8 e, r|
		 % Zeile 5
		 a16 h cis d e8|
		 fis,8 fis fis|
		 gis16 a h cis d8|
		 e,8 e e|
		 fis16 gis a h cis8|
		 d,16 e fis gis a8|
		 h,8 a' gis|
		 a8 e'\p e|
		 e8\( d\) cis|
		 r8 d d|
		 d8\( cis\) h|
		 %Zeile 6
		 r8 cis\f cis|
		 cis8 h a|
		 h16 a gis fis e8|
		 a16 cis, h8 gis'|
		 a8 e'\p e|
		 e8\( d\) cis|
		 r8 d d|
		 d8\( cis\) h|
		 r8 cis\f cis|
		 cis8 h a|
		 h16 a gis fis e8|
		 a16 cis, h8 gis'|
		 a8 a, r|
	 }
  }

  fagottvierb = \relative c' {
	\repeat volta 2 {
	  %Zeile 1
	  r4.|
	  r4.|
	  a8 a a|
	  gis16 a h8 e,|
	  a16 h cis8 cis,|
	  d8 e fis|
	  d8 e e,|
	  a4 r8|
	  a'8 cis, a|
	  e'16 fis gis8 e|
	  a8 gis fis|
	  e16 fis gis8 e|
	  a8 gis fis|
	  %Zeile 2
	   e4 gis,8|
		a8 h4|
		e,4 r8|
		e'16 fis gis8 e|
		fis4 e8|
		dis16 e fis8 dis|
		e4 d8|
		cis8 dis e~|
		e8 dis h|
		e8 a, h|
		e,4 r8|
		 }
	\repeat volta 2 {
	  r4.|
	  h'16 cis d e fis gis|
	  %Zeile 3
	  a4.|
	  gis16 fis gis8 cis,|
	  a'4.|
	  eis8 gis16 fis eis8|
	  fis16 gis  a4|
	  gis8 h16 a gis8|
	  a16 h cis4|
	  eis,8 fis a,|
	  h8 cis4|
	  fis,4 r8|
	  r16 a' gis fis e d|
	  %Zeile 4
	  cis16 cis' h a gis fis|
	  e16 fis gis a h gis|
	  a8 a, r|
	  r8 fis'16 e d cis|
	  h8 h r|
	  r8 e16 d cis h|
	  a8 a r|
	  r8 fis'16 e d cis|
	  h8 cis4|
	  d16 cis h8 a|
	  e'16 fis gis a h8|
	  %Zeile 5
	  cis,8 cis cis|
	  d16 e fis gis a8|
	  h,8 h h|
	  cis16 d e fis gis8|
	  a,8 a a|
	 h16 cis d e fis8|
	 d8 e e,|
	 a8 cis'\p cis|
	 cis8\( h\) ais|
	 r8 h h|
	 h8\( a\) gis|
	 %Zeile 6
	 r8 a\f a|
	 a8 gis fis|
	 e4 r8|
	 cis8 d e|
	 a,8 cis'\p cis|
	 cis8\(h\) ais|
	 r8 h h|
	 h\( a\) gis|
	 r8 a\f a|
	 a8 gis fis|
	 e4 r8|
	 cis8 d e|
	 a,4 r8|
	}
  }
  
  global = {
   \accidentalStyle "modern-cautionary" 
	\clef bass
	 \set Staff.midiInstrument = #"bassoon"
  }

  globalamaj = {
   \global
	\key a \major
  }

  globalcmaj = {
   \global
	\key c \major
	 }

\book {

  \header {
	title = "Sonata IV."
	composer = "Joseph Bodin de Boismortier"
	opus = "op. 40"
  }
  % Erster Satz -------------------------------
  \score {


	  \new StaffGroup << 
		\new Staff {\globalamaj \time 4/4 \fagotteinsa }
		\new Staff {\globalamaj \time 4/4 \fagotteinsb }
	  >>
	  \header { piece = \markup \large \bold {"1. Andante"} }
   	  \midi{
	  \tempo 4 = 80
	 }
	 \layout{}

	}

  % Zweiter Satz -------------------------------
  \score {


		\new StaffGroup << 
		  \new Staff {\globalamaj \time 4/4 \fagottzweia }
		  \new Staff {\globalamaj \time 4/4 \fagottzweib }
		>>
		\header { piece = \markup \large \bold {"2. Allegro" }}
  	  \midi{
	  \tempo 4 = 100
	 }
	 \layout{}
}
  % Dritter Satz -------------------------------
  \score {


		\new StaffGroup << 
		  \new Staff {\globalcmaj \time 6/4 \fagottdreia }
		  \new Staff {\globalcmaj \time 6/4 \fagottdreib }
		>>
		\header { piece = \markup \large \bold {"3. Largo" }}
  	  \midi{
	  \tempo 4 = 54
	 }
	 \layout{}
}
  \pageBreak
  % Vierter Satz -------------------------------
  \score {


		\new StaffGroup << 
		  \new Staff {\globalamaj \time 3/8 \fagottviera }
		  \new Staff {\globalamaj \time 3/8 \fagottvierb }
		>>
		\header { piece = \markup \large \bold {"4. Poco allegro"}}
  	  \midi{
	  \tempo 4 = 100
	 }
	 \layout{}
}

} % book
