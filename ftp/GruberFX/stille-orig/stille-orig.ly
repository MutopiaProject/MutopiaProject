\header {
  title = "Stille Nacht";
  subtitle = "(Silent Night)";
  filename = "stille-orig.ly";
  enteredby = "Peter Chubb";
  composer = "Franz Xavier Gruber";
  poet = "Joseph Mohr";
  %source="http://www.oberndorf.co.at/museum/StilleNacht/images/altenoten.jpg";
  source = "http://www.mutopiaproject.org/ftp/GruberFX/altenoten.jpg";

  mutopiatitle = "Stille Nacht";
  
  mutopiacomposer = "F. X. Gruber (1787--1863)";
  mutopiapoet = "J. Mohr (1792--1848)";
  mutopiainstrument = "Voice (SA) and Guitar";
  date = "1816";
  firstperformeddate = "1818/Dec/24";

  style = "Hymn";
  copyright = "Public Domain";
  maintainer = "Peter Chubb";
  maintainer_email = "peterc@sw.oz.au";
  lastupdated =	 "2001/Apr/04";
  mutopiapublicdomain = "\\parbox{\hsize}{\\thefooter\\quad\\small
    \\\\This music is part of the Mutopia project,
    \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset
    and placed in the public domain by " + \maintainer +
    ".\\\\Unrestricted modification and redistribution is permitted
    and encouraged---copy this music and share it.}";
 tagline = \mutopiapublicdomain;
 footer = "Mutopia-2001/04/04-81";
}

global = \notes {
	\key d \major;
	\time 6/8;
	\mark "Largo";
	s8 \p
	s4  s4.
	\skip 4.; s4. \mp s4.
	s4.-"cresc"
	\skip 4.*20;
	\bar "|.";
}

sop=\notes\relative c'' {
%1
	\property Voice.noAutoBeaming = ##t
	[a8.()b16] a8 fis4 r8 |
	[a8.() b16] a8 fis4 r8 |
	[e'8.() dis16] e8 cis4 r8 |
	[d!8.() cis16] d8 a4 r8 |
%5
	[b8.() cis16] b8 [d8.() cis16] b8 |
	a8. b16 a8 fis4 r8 |
	[b8.() cis16] b8 [d8.() cis16] b8 |
	a8. b16 a8 fis4 r8 |
	cis'8. cis16 cis8 e d cis |
%10
	d4.( )fis4 r8 |
	d8. a16 fis8 a8. g16 e8 |
	d4 r8 r4. |
	R2.
}

alt=\notes\relative c' {
	[fis8. g16] fis8 d4 r8 |
	[fis8. g16] fis8 d4 r8 |
	[g8. fis16] g8 e4 r8 |
	[fis8. e16] fis8 fis4 r8 |
%5
	[g8. a16] g8 [b8. a16] g8 |
	fis8. g16 fis8 d4 r8 |
	[g8. a16] g8 [b8. a16] g8 |
	fis8. g16 fis8 d4 r8 |
	e8. e16 e8 g fis e |
%10
	fis4. () a4 r8 |
	fis8. fis16 d8 fis8. e16 cis8 |
	%d4 r8 r4. |
	s4 r8 r4.
	R2.
}

accomp=\context Voice \notes\relative c{
	\property Staff.instrument= "Guitar"
	\property Staff.midiInstrument = "acoustic guitar (nylon)"
	% Ideally these would be `percent' repeats
	% but a LilyPond problem prevents me.

	\repeat unfold 4 { d8 <a' d fis><a d fis> } % D
	\repeat unfold 2 { g,8  <g' b g'> <g b g'> } %G
	\repeat unfold 2 { d8 <a' d fis><a d fis> } %D
	\repeat unfold 2 { g,8  <g' b g'> <g b g'> } %G
	\repeat unfold 2 { d8 <a' d fis><a d fis> } %D
	\repeat unfold 2 { g,8  <g' b g'> <g b g'> } %G
	\repeat unfold 2 { d8 <a' d fis><a d fis> } %D
	\repeat unfold 2 { a,16 a' <cis e> a <cis g'> a}
	 < \context Thread = foo { \property Thread.Tie \override #'direction = #1
 fis'2. ~ fis4. } \context Thread = bah { 
		<fis,,2. \arpeggio( a d a' d > 
	 <)a4. d a' d > }> <a,,4. e' a cis g'> |
	\repeat unfold 2 { a16 a' <cis e> a <cis g'> a}
	<d16 fis> a <cis g> a <cis e> a 
	<a8 cis g' > <d, a' d fis> r
}


vOne =  \lyrics {
       Stil4 -- le8 Nacht!4. heil'4 -- ge8 Nacht!4. 
       Al4 -- les8 schl\"aft,4. ein4 -- sam8 wacht4.
       Nur4 das8 trau4 -- te,8 hoch8. -- heil16 ige8 Paar,4.
       Hold4 -- er8 Knabe4 im8 lock8. -- i16 -- gen8 Haar4. 
       Schlaf8. __ ""16 in8 himm8 -- li8 -- scher8 Ruh'!2.
       Schlaf8. __ ""16 in8 himm8. -- li16 -- scher8 Ruh'!4
}

vTwo =  \lyrics {
       Stil4 -- le8 Nacht!4. heil'4 -- ge8 Nacht!4. 
       Go4 -- ttes8 Sohn,4. o4 -- wie8 lacht4.
       Lieb'4 aus8 dei4 -- nem8 g\"ott8. -- li16 -- chen8 Mund,4.
       Da4 uns8 schlägt4 die8 ret4 -- tende8 Stund'.4. 
       Je8. -- sus16 in8 Dei8 -- ner Ge8 -- burt!2.
       Je8. -- sus16 in8 Dei8. -- ner16 Ge8 -- burt!4
}
vThree= \lyrics {
      Stil4 -- le8 Nacht!4. heil'4 -- ge8 Nacht!4. 
      Die4 der8 Welt4. Heil4 ge8 -- bracht,4.
      Aus4 des8 Himm4 -- els8 gol8. -- den16 -- en8 Höhn4.
      Uns4 der8 Gna4 den8 Fü8. -- lle16 läßt8 sehn:4.
      Je8. -- sum16 in8 Mensch8 -- en -- ge8 -- stalt,2.
      Je8. -- sum16 in8 Mensch8. -- en16 -- ge8 -- stalt4
}
vFour = \lyrics {
      Stil4 -- le8 Nacht!4. heil'4 -- ge8 Nacht!4. 
      Wo4 sich8 heut4. all4 -- e8 Macht4.
      Vä4 -- ter8 -- li4 -- cher8 Lie8. -- be16 er8 -- goß4.
      Und4 als8 Bru4 -- der8 huld8.-- voll16 um8 -- schloß4.
      Je8. -- sus16 die8 Völ8 ker der8 Welt!2.
      Je8. -- sus16 die8 Völ8. ker16 der8 Welt!4
}
vFive=\lyrics {
      Stil4 -- le8 Nacht!4. heil'4 -- ge8 Nacht!4. 
      Lan4 -- ge8 schon4. uns4 be8 -- dacht,4.
      Als4 der8  Herr4 vom8 Gri8. -- mme16 be8 -- freit4.
      In4 der8 Vä4 -- ter8 ur8. -- gra16 -- uer8 Zeit4.
      A8. -- ller16 Welt8 Scho8 -- nung ver8 -- hieß!2.
      A8. -- ller16 Welt8 Scho8. -- nung16 ver8 -- hieß!4
}
vSix =  \lyrics {
      Stil4 -- le8 Nacht!4. heil'4 -- ge8 Nacht!4. 
      Hir4 -- ten8 erst4. kund4 ge8 -- macht4.
      Durch4 der8 En4 -- gel8 Ha8. -- lle16 -- lu8 ja4.
      T\"ont4 es8 laut4 von8 fern4 und8 nah:4.
      "``Je"8. -- sus16 der8 Ret8 -- ter, ist8 "da!''"2.
      "``Je"8. -- sus16 der8 Ret8. -- ter,16 ist8 "da!''"4
}


GermanWords=\context Lyrics=top \lyrics{<
	\vOne
	\vTwo
	\vThree
	\vFour
	\vFive
	\vSix
> ""8 ""4. ""4. ""4. }

\score {

	<
	    \context Staff = voice <
		\property Staff.instrument = "Voice"
		\property Staff.midiInstrument = "synth voice" 
		\global \voiceOne 
		\context Voice=Top \sop 
		\context Voice=Top \alt 
	    >
	    \context LyricsVoice \GermanWords
	    \context Staff = guitar < \clef "G_8"; \global \accomp >
	>
	\paper {
		linewidth = 180.0\mm;
		\translator { \StaffContext \consists "Instrument_name_engraver"; }
		\translator {\ThreadContext \consists "Tie_engraver";}
	}
	\midi {
		\tempo 4.=60;
	}
}
