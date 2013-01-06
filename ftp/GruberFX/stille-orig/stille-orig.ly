\version "2.16.1"

\header {
  title = "Stille Nacht"
  subtitle = "(Silent Night)"
  filename = "stille-orig.ly"
  enteredby = "Peter Chubb"
  composer = "Franz Xavier Gruber"
  poet = "Joseph Mohr"
  %source="http://www.oberndorf.co.at/museum/StilleNacht/images/altenoten.jpg"
  source = "http://www.mutopiaproject.org/ftp/GruberFX/altenoten.jpg"

  mutopiatitle = "Stille Nacht"
  
  mutopiacomposer = "GruberFX"
  mutopiapoet = "J. Mohr (1792-1848)"
  mutopiainstrument = "Voice (SA) and Guitar"
  date = "1816"
  firstperformeddate = "1818/Dec/24"

  style = "Hymn"
  copyright = "Public Domain"
  maintainer = "Peter Chubb"
  maintainerEmail = "peter_chubb@hotmail.com"

 footer = "Mutopia-2013/01/06-81"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

global =  {
	\key d \major
	\time 6/8
	\mark "Largo"
	s8 \p
	s4  s4.
	\skip 4. s4. \mp s4.
	s4.-\markup{\italic "cresc."}
	\skip 4.*20
	\bar "|."
}

sop=\relative c'' {
%1
	\set autoBeaming = ##f
	 a8.[( b16)] a8 fis4 r8 |
	 a8.[( b16)] a8 fis4 r8 |
	 e'8.[( dis16)] e8 cis4 r8 |
	 d!8.[( cis16)] d8 a4 r8 |
%5
	 b8.[( cis16)] b8  d8.[( cis16)] b8 |
	a8. b16 a8 fis4 r8 |
	 b8.[( cis16)] b8  d8.[( cis16)] b8 |
	a8. b16 a8 fis4 r8 |
	cis'8. cis16 cis8 e d cis |
%10
	d4.(  fis4) r8 |
	d8. a16 fis8 a8. g16 e8 |
	d4 r8 r4. |
	R2.
}

alt=\relative c' {
	 fis8.[ g16] fis8 d4 r8 |
	 fis8.[ g16] fis8 d4 r8 |
	 g8.[ fis16] g8 e4 r8 |
	 fis8.[ e16] fis8 fis4 r8 |
%5
	 g8.[ a16] g8  b8.[ a16] g8 |
	fis8. g16 fis8 d4 r8 |
	 g8.[ a16] g8  b8.[ a16] g8 |
	fis8. g16 fis8 d4 r8 |
	e8. e16 e8 g fis e |
%10
	fis4. ( a4) r8 |
	fis8. fis16 d8 fis8. e16 cis8 |
	%d4 r8 r4. |
	s4 r8 r4.
	R2.
}

accomp=\relative c {
	\set Staff.instrumentName = "Guitar"
	\set Staff.midiInstrument = "acoustic guitar (nylon)"

	\repeat percent 4 { d8 <a' d fis><a d fis> } % D
	\repeat percent 2 { g,8  <g' b g'> <g b g'> } %G
	\repeat percent 2 { d8 <a' d fis><a d fis> } %D
	\repeat percent 2 { g,8  <g' b g'> <g b g'> } %G
	\repeat percent 2 { d8 <a' d fis><a d fis> } %D
	\repeat percent 2 { g,8  <g' b g'> <g b g'> } %G
	\repeat percent 2 { d8 <a' d fis><a d fis> } %D
	\repeat unfold 2 { a,16 a' <cis e> a <cis g'> a}

	\set doubleSlurs = ##t
	<fis, a d a' d fis>2.(\arpeggio
	<a d a' d fis>4.) <a e' a cis g'>4.
	\repeat unfold 2 { a16 a' <cis e> a <cis g'> a}
	<d fis>16 a <cis g> a <cis e> a 
	<a cis g' >8 <d, a' d fis> r
}

vOne =  \lyricmode {
       Stil -- le Nacht! heil' -- ge Nacht! 
       Al -- les schläft, ein -- sam wacht
       Nur das trau -- te, hoch -- heil -- ige Paar,
       Hold -- er Knabe im lock -- i -- gen Haar 
       Schlaf __ _ in himm -- li -- scher Ruh'!
       Schlaf __ _ in himm -- li -- scher Ruh'!
}

vTwo =  \lyricmode {
       Stil -- le Nacht! heil' -- ge Nacht!
       Go -- ttes Sohn, o -- wie lacht
       Lieb' aus dei -- nem gött -- li -- chen Mund,
       Da uns schlägt die ret -- ten -- de Stund'.
       Je -- sus in Dei -- ner Ge -- burt!
       Je -- sus in Dei -- ner Ge -- burt!
}

vThree= \lyricmode {
      Stil -- le Nacht! heil' -- ge Nacht!
      Die der Welt Heil ge -- bracht,
      Aus des Himm -- els gol -- den -- en Höhn
      Uns der Gna -- den Fü -- lle läßt sehn:
      Je -- sum in Mensch -- en -- ge -- stalt,
      Je -- sum in Mensch -- en -- ge -- stalt
}

vFour = \lyricmode {
      Stil -- le Nacht! heil' -- ge Nacht!
      Wo sich heut all -- e Macht
      Vä -- ter -- li -- cher Lie -- be er -- goß
      Und als Bru -- der huld -- voll um -- schloß
      Je -- sus die Völ -- ker der Welt!
      Je -- sus die Völ -- ker der Welt!
}

vFive=\lyricmode {
      Stil -- le Nacht! heil' -- ge Nacht!
      Lan -- ge schon uns be -- dacht,
      Als der  Herr vom Gri -- mme be -- freit
      In der Vä -- ter ur -- gra -- uer Zeit
      A -- ller Welt Scho -- nung ver -- hieß!
      A -- ller Welt Scho -- nung ver -- hieß!
}

vSix =  \lyricmode {
      Stil -- le Nacht! heil' -- ge Nacht! 
      Hir -- ten erst kund ge -- macht
      Durch der En -- gel Ha -- lle -- lu -- ja
      Tönt es laut von fern _ und nah:
      ''Je -- sus der Ret -- ter, ist da!''
      ''Je -- sus der Ret -- ter, ist da!''
}

\score {

	<<
	    \new Staff = "voice" <<
		\set Staff.instrumentName = "Voice"
		\set Staff.midiInstrument = "synth voice" 
		\global
		\new Voice = "top" \sop 
		\context Voice = "top" \alt 
	    >>
	    \new Lyrics \lyricsto "top" \vOne
	    \new Lyrics \lyricsto "top" \vTwo
	    \new Lyrics \lyricsto "top" \vThree
	    \new Lyrics \lyricsto "top" \vFour
	    \new Lyrics \lyricsto "top" \vFive
	    \new Lyrics \lyricsto "top" \vSix
	    \new Staff = "guitar" << \clef "G_8" \global \accomp >>
	>>
	\layout {
	}
	
	\midi {
	    \tempo 4. = 60
	}
}
