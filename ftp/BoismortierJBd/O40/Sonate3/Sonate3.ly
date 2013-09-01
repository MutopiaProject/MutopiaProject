%#! /usr/local/lilypond/usr/bin/lilypond
%Lilypond Boismortier, op. 40, Sonate #3

\version "2.16.1"
\include "deutsch.ly"

\paper {
   first-page-number = 1
	 #(define page-breaking ly:page-turn-breaking)
}

\header {
  piece = "Sonata III."
  mutopiacomposer = "BoismortierJBd"
  composer = "Joseph Bodin de Boismortier"
  opus = "op. 40 No. 3"
  %mutopiatitle = "Six sonates pour deux Baßons, Violoncelles, ou Violes"
  mutopiatitle = "Sonata III."
  mutopiainstrument = "2 Bassoons"
  source = "facsimile of first printing 1732"
  style = "Baroque"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "G. Treutwein"
  maintainerEmail = "almirena<at>gmx.net"
  moreInfo = "Facsimile available from Early Music Company, which agreed with publication"

 mutopiaopus = "Op. 40, No. 3"
 footer = "Mutopia-2013/08/11-1847"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

% Erster Satz -------------------------------
  fagotteinsa = \relative c {
	\repeat volta 2
	{
	  e'8 g,16 fis e8 e|
	  e4 dis|
	  e16 h e h fis' h, fis' h,|
	  g'8 e g4|
	  fis8 g16 a h a g fis|
	  g8 e'4 dis8|
	  e8 g, fis4-+|
	  e8 g16 a h8 d|
	  %Zeile 2
	  r8 e,16 fis g8 c|
	  r8 fis,16 g a8 d|
	  h8 g a fis|
	  g16 d g d a' d, a' d,|
	  h'4 c-+|
	  d4. c16 h|
	  a8 g d fis|
	  g8 h16 a h8 h|
	  h16 a g fis g fis e dis|
	  %Zeile 3
	  e8 h'16 a h8 h|
	  h8 d, c a'|
	  h4 h, \allowPageTurn|
   	}
	\repeat volta 2 {
	  h'16 a gis fis e d c h|
	  c8 a r4|
	  a'16 g fis e d c h a|
	  h8 g r4|
	  %Zeile 4
	  g''16 fis e d c h a g|
	  a8 fis r4|
	  fis'16 e dis cis h a g fis|
	  g8 e g4~|
	  g8 cis, fis4~|
	  fis8 h, e4~|
	  e8 cis d g|
	  %Zeile 5
	  cis,8 g' fis cis'|
	  d,8 h' ais cis|
	  h8 d cis e|
	  d8 h cis, ais'|
	  h8 d4 c16 h|
	  c8 h a g|
	  fis8 a4 g16 fis|
	  g8 a16 g fis8 e|
	  h'8 h, h h|
	  %Zeile 6
	  cis8 a'16 h a8 g|
	  fis8 cis cis cis|
	  dis8 h'16 c h8 a|
	  gis8 e'4 h8|
	  c8 a16 g fis8 e|
	  dis'8 h e g,|
	  a16\( h\) c8 fis,4-+|
	  e8 g16 fis e8 h|
	  e8 h16 a g8 h|
	  e,2
	}
  }

  fagotteinsb = \relative c' {
	\repeat volta 2
	{
	  r2|
	  r2|
	  r2|
	  e8 g,16 fis e8 e|
	  e4 dis|
	  e16 h e h fis' h, fis' h,|
	  g'8 e a, h|
	  e,4 r8 h'|
	  %Zeile 2
	  c4 r8 a|
	  d4 r8 h|
	  e8 h c d|
	  g,8 g' fis d|
	  g16 d g d a' d, a' d,|
	  h'8 g h, g|
	  c4 d|
	  g,4 r|
	  r8 h'16 a h8 h|
	  %Zeile 3
	  h16 a g fis g fis e dis|
	  e8 d c4|
	  h2|
   	\allowPageTurn}
	\repeat volta 2 {
	  r2|
	  e'16 d c h a g fis e|
	  fis8 d r4|
	  d'16 c h a g fis e d|
	  %Zeile 4
	  e8 c r4|
	  c'16 h a g a g fis e|
	  dis8 h r4|
	  h'16 a g fis e d c h|
	  a4. fis8|
	  g4. e8|
	  fis4 h~|
	  %Zeile 5
	  h4 ais|
	  h8 d cis e|
	  d8 fis e g|
	  fis4 fis,|
	  h8 h' gis e|
	  a8 g fis e|
	  dis8 cis dis h| %2. dis korrekt?
	  e4 d8 c|
	  h8 gis gis gis|
	  %Zeile 6
	  a4 r|
	  r8 ais ais ais|
	  h4 r|
	  r8 e gis e|
	  a8 a,16 h c8 a|
	  h8 h' g e|
	  c8 a h4|
	  e,4 r|
	  e'8 h16 a g8 h|
	  e,2\allowPageTurn|
	}
  }

% Zweiter Satz -------------------------------
wdheins = \relative c' {

	  h8 e, e'|
	  dis8 e4|
	  fis4 h,8|
	  e8 \appoggiatura d c \appoggiatura h a|
	  d16 c h a g8|
	  c8 \appoggiatura h a \appoggiatura g fis|
	  h16 a g fis e8|
	  fis16 g a8 c,|
	  h8 a'16 g fis8|
	  g8 c e,|
	  dis8.-+ cis16 h8|
	  %Zeile 2
	  h'8 d16 c h8|
	  c,8 c'16 h a8|
	  h,8 h'16 a g8|
	  a,8 a'16 g fis8|
	  g8 e16 fis g a|
	  h8. dis16 e8|
	  e,8 fis dis|
}

  fagottzweia = \relative c' {
	  \repeat volta 2 {
	  g16 a h8 c|
	  \wdheins
	  e,8 e, r|
	}
	\repeat volta 2 {
	  g'8 h16 a h g|
	  a8 d, d'~|
	  d16 h c h c a|
	  %Zeile 3
	  h4-+ e8|
	  e8 a, d|
	  d8 g, c|
	  a16 h c h a g|
	  fis16 d' a d a d|
	  h16 d h d h d|
	  a16 d a d a d|
	  h16 d h d h d|
	  fis,16 d fis d fis d|
	  g16 d g d g d|
	  %Zeile 4
	  a'16 d, a' d, a' d,|
	  h'16 g a8 fis|
	  g8 g, r|
	  h'8 e16 d e d|
	  cis4 r8|
	  d16 cis d8 fis|
	  h,4 r8|
	  cis16 d e d cis h|
	  ais8 fis h|
	  cis,8 h' ais|
	  h8 h, r|
	  g'16 a h8 c|
	  %Zeile 5
	  \wdheins
	  e,16 dis e g fis a|
	  g16 fis e fis g a|
	  h8. dis16 e8|
	  e,8 fis dis|
	  e4.|
	}
  }

	fagottzweib = \relative c' {
	  \repeat volta 2 {
	  r4.|
	  g16 a h8 c|
	  h8 e, e'|
	  dis16 c h a g fis|
	  g8 e c'|
	  h16 a g a h g|
	  a16 g fis g a fis|
	  g16 fis e fis g e|
	  a16 g fis g e fis|
	  dis8 h dis e8 a,4|
	  h8 h' a|
	  %Zeile 2
	  gis8 h16 a gis8|
	  a,8 a'16 g fis8|
	  g,8 g'16 fis e8|
	  fis,8 fis'16 e dis8|
	  e8 c4-+|
	  h16 c h a g8|
	  c8 a h|
	  e,4 r8}
	  \repeat volta 2 {
		r4.|
		d'8  fis16 e fis d|
		e8 a, a'~|
		%Zeile 3
		a16 fis g fis g e|
		fis4-+ h8|
		e,4 a8|
		fis4 g8|
		d16 d fis d fis d|
		g16 d g d g d|
		fis16 d fis d fis d|
		g16 d g d g d|
		a'16 d a d a d|
		h16 d h d h d|
		fis,16 d' fis, d' fis, d'|
		g,8 c, d|
		g,8 g' fis|
		e4 r8|
		e8 a16 g a g|
		fis4 r8|
		g16 fis g8 h|
		e,16 fis g8 e|
		fis8 e d|
		e8 fis fis,|
		h8 h'16 a g fis|
		e4 r8|
		% sort of repeat, but slight difference
		g16 a h8 c|
		h8 e, e'|
		dis16 cis h a g fis| % cis is different from first time
		g8 e c'|
		h16 a g a h g|
		a16 g fis g a fis|
		g16 fis e fis g e|
		a16 g fis g e fis|
		% new from here
		dis8 h dis|
		e8 a,4|
		h8 h' a|
		gis8  h16 a gis8|
		a,8 a'16 g fis8|
		g,8 g'16 fis e8|
		fis,8 fis'16 e dis8|
		e8 c4-+|
		h16 c h a g8|
		c8 a h|
		e,4 h'8|
		e8 c4-+|
		h16 c h a g8|
		c8 a h|
		e,4.
	  }
	}


% Dritter Satz -------------------------------
	fagottdreia = \relative c' {
	  d4 g, h|
	  e,2 r4|
	  c'4 e, a|
	  fis2 r4|
	  d'8\( e\) d\( c\) h\(a\)|
	  h8\( c\) h\( a\) g\( fis\)|
	  g8 a d, g a, fis'|
	  g,2 r4|
	  g'8\( h\) h\( g\) g\( e\)|
	  c'2 r4|
	  fis,8\( h\) h\( a\) a\( fis\)|
	  g2 r4|
	  fis8 \(a\) a\( c\) c\( e,\)|
	  dis2 r4|
	  h'8\(e\) e\(d\) d\( h\)|
	  c8 a dis h e g,|
	  fis8 e h e fis dis|
	  e2 h'4~|
	  h4 a2|
	  h2.\bar "||"|
	}
	fagottdreib = \relative c {
	  g2 r4|
	  g'4 c, e|
	  a,2 r4|
	  d'8\( e\) d\( c\) h\( a\)|
	  h8\( c\) h\( a\) g\( fis\)|
	  g8\( a\) g\( fis\) e\( d\)|
	  e8 c d4 d,|
	  g'8\( h\) h\( g\) g\( e\)|
	  e2 r4|
	  %Zeile 2
	  a8 h a g fis e|
	  dis2 r4|
	  e8\(fis\) e\( d\) c\( h\)|
	  a2 r4|
	  fis'8\( h\) h\( a\) a\( fis\)|
	  g2 gis4|
	  a,2 g4|
	  a4 h2|
	  e,4 e' d|
	  c2.|
	  h2. \bar "||"|

	}

% Vierter Satz -------------------------------
	fagottviera = \relative c {
	  \repeat volta 2 {
		\partial 8 h8|
		e4 fis8 g\( a \) h|
		g4-+ fis8 e4 h8|
		e4 fis8 g\( fis\) e|
		h'4 h,8 r e' d|
		c8\( h\) a a, d' c|
		h8\( a\) g g, g'' fis|
		e8\( d\) cis d\( e\) fis|
		ais,4 fis8 d'\( cis\) h|
		%Zeile 2
		cis,8\( h\) cis e'\( d\) cis|
		d,8\( cis\) d fis'\( e\) d|
		e, d' cis fis, h ais|
		h4. ~ h4
	  }
	  \repeat volta 2 {
		d8|
		h16 c d8 g, fis d fis|
		g4. a-+|
		h8\( c\) d d\( c\) h|
		a4-+ d,8 r h' d|
		g,8 h e r a, c|
		fis,8 a d r g, h|
		e,8\( fis\) g a, g' fis|
		g8 h d g, h e|
		r8 a, c fis, a d|
		r8 g, h e, g c|
		r8 fis, a d, fis h|
		r8 e, g c, e a|
		r8 dis, fis h, cis dis|
		e8 fis g a h c|
		h8 e g, fis4.-+|
		e8 g h e, g c|
		r8 fis, a d, fis h|
		r8 e, g c, e a~|
		a8 g fis g fis e|
		fis8 h, h' e h g|
		c8 fis, e h e dis|
		e4.~e4
	  }
	}

	fagottvierb = \relative c {
	  \repeat volta 2 {
		\partial 8 r8|
		r4 r8 r4 h8|
		e4 fis8 g\( a\) h|
		g4-+ fis8 e\( d\) c|
		h4 a8 gis4 e8|
		a4 g8 fis4 d8|
		g4. r8 e''8 d|
		cis8\( h\) ais h4 h,8|
		fis'4. h,~|
		h4. ais|
		h4. d,|
		e4. fis|
		h4.~h4
	   }
	  \repeat volta 2 {
		r8|
		r4 r8 r4 d'8|
		h16 c d8 g, fis d fis|
		g8\( a\) h h\( a\) g|
		d8 fis a d, fis h|
		%Zeile 3
		r8 e, g c, e a|
		r8 d, fis h, d g|
		r8 c, h c4 d8|
		g,4. r8 r g'|
		fis4. r8 r fis|
		e4. r8 r e|
		d4. r8 r d|
		c4. r8 r c|
		h4. a|
		g4. fis|
		g4 e'8 a,4 h8|
		e,4. r8 c' e|
		a,8 c fis r h, d|
		g,8 h e r a, c|
		h4. e,|
		h'4. g|
		a4. h|
		e,4.~e4
	  }
	}
	

  global = {
   \accidentalStyle "modern-cautionary" 
	\clef bass
	\key g \major
  \set Staff.midiInstrument = #"bassoon"
  }


\book {

  \header {
	title = "Sonata Ⅲ."
  subtitle = "Six sonates pour deux Baßons, Violoncelles, ou Violes (1732)"
  piece = "Sonata Ⅲ."
  mutopiacomposer = "BoismortierJBd"
  composer = "Joseph Bodin de Boismortier"
  opus = "op. 40 No. 3"
  mutopiatitle = "Six sonates pour deux Baßons, Violoncelles, ou
  Violes"
  mutopiainstrument = "2 Bassoons"
  source = "facsimile of first printing 1732"
  style = "Baroque"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "G. Treutwein"
  maintainerEmail = "almirena<at>gmx.net"
  moreInfo = "Facsimile available from Early Music Company, which agreed with publication"}
  
  % Erster Satz -------------------------------
  \score {
	  \new StaffGroup <<
		\new Staff {\global \time 2/4 \fagotteinsa }
		\new Staff {\global \time 2/4 \fagotteinsb }
	  >>
	  \header { piece = \markup \large \bold {"1. Vivace"} }
    \midi{
	  \tempo 4 = 126
	 }
 	 \layout{}
  }
  
  % Zweiter Satz
 \score {
		\new StaffGroup << 
		  \new Staff {\global \time 3/8 \fagottzweia }
		  \new Staff {\global \time 3/8 \fagottzweib }
		>>
		\header { piece = \markup \large \bold {"2. Allegro" }}
      	  \midi{
	  \tempo 4 = 116
	 }
 	 \layout{}
}
  % Dritter Satz -------------------------------
  \score {
		\new StaffGroup <<
		  \new Staff {\global \time 3/4 \fagottdreia }
		  \new Staff {\global \time 3/4 \fagottdreib }
		>>
		\header { piece = \markup \large \bold {"3. Adagio" }}
		    	  \midi{
	  \tempo 4 = 76
	 }
	 \layout{}
  }
  
  \pageBreak
  % Vierter Satz -------------------------------
  \score {
		\new StaffGroup <<
		  \new Staff {\global \time 6/8 \fagottviera }
		  \new Staff {\global \time 6/8 \fagottvierb }
		>>
		\header { piece = \markup \large \bold {"4. Giga. Allegro non tropo"}}
    	  \midi{
	  \tempo 4 = 112
	 }
	 \layout{}
  }

} % book
