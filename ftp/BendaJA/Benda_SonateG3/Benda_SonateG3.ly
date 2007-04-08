\include "norsk.ly"
\include "paper20.ly"

\header{
	title =       "3. V\\v ETA ZE SON\\'ATY G DUR";
	subtitle =    "3. SATZ AUS DER SONATE IN G-DUR";
	composer =    "Ji\\v ri Anton\\'in Benda";

	mutopiatitle = "3. satz aus der sonate in G-dur";
	mutopiacomposer = "J. A. Benda (1722 - 1795)";
	mutopiainstrument = "Piano";
	date = "18th century";
	source = "Editio Supraphon Praha";
	style = "Classical";
	copyright = "Public Domain";

	filename = "Benda_SonateG3.ly";
	enteredby =  "Rune Zedeler";
	maintainer = "Rune Zedeler";
	maintainer_email = "rz@daimi.au.dk";
	lastupdated = "2001/Feb/04";

tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}";

       footer = "Mutopia-2001/02/04-45";
}

\version "1.3.125";

u = \notes {\stemUp \tieUp \slurUp}
d = \notes {\stemDown \tieDown \slurDown}
b = \notes {\stemBoth \tieBoth \slurBoth}

su = \notes{ \translator Staff = up}
sd = \notes{ \translator Staff = down}

crtxt = \notes{\property Voice.crescendoText = "cresc" 
               \property Voice.crescendoSpanner = #'dotted-line
}

mela = \notes \relative c'' {
   \b
   [h8^3-\mf( d16 h] )g8-- r r [<h-. d> <c-. e> <h-. d>] <c \context Voice = another{\stemDown a_5_3}> a16 fis d8-- r r [<a'-. c> <h-. d> <a-. c>] |
   [h8-1( g'16 h,] [c8 g'16 cis,-2] [d8-3 g16 dis-2] )e8-. g,-. [fis-2( g-1 c )h \> ] a16-5( g fis )e \! d8-- r |  
   [h'8^3-\f( d16 h] )g8-- r r [<h-. d> <c-. e> <h-. d>] <c \context Voice = another{\stemDown a_5_3}> a16 fis d8-- r r [<a'-. c> <h-. d> <a-. c>] |
   \grace{c16}h8( a16-2 h-3  \grace{d16}c8 h16 c  \grace{e16}d8 c16 d  )e8-. c -. \grace{c16}h8( a16 g  \grace{h16}a8 g16 fis )g4-- g,--
}

melb = \notes \relative c'' {
   \u h8-2-\p( e4-5 )dis8-2 e16( fis g fis )e8-. h-. a8-2( d!4-5 )cis8-2 d16 e fis e d8-. a-. |
   \b g8-\f ( )g' r g-3-- r g-- r g-- \grace{g16} fis8( e16 d )h'8-. d,-. cis16-3( \> d e cis \! )a8-. r |
   \u fis'8( a16 fis )d8-- r r [<fis-. a> <g-. h> <fis-. a>] <g \context Voice = another{\stemDown e}> e,16-1_"l.h."( cis )a8-- r r [<e''-. g> <fis-. a> <e-. g>] |
   \b \grace{g16} fis8( e16-2 fis-3  \grace{a16} g8 fis16 g   \grace{h16} a8 g16 a )h8-. g-. \grace{g16} fis8( e16 d \grace{fis16} e8 d16 cis )d4-4-- d,-- |
   \crtxt h'8^2-\p( \< )e \! r e^3-- r e-- r e-- r e-- r e-- e16^5-\f( \> d c! h \! )a4-- 
   \crtxt a8^2-\p( \< )d \! r d^3-- r d-- r d-- r d-- r d-- d16^5-\f( \> c h a \! )g4--
   \grace{f'16} e8( d16 c  \grace{e16}d8 c16 h  \grace{d16}c8 h16 a  \grace{c16}h8 a16 g  \grace{h16}a8 g16 fis  \grace{a16}g8 fis16 e fis-3-\p g a )fis d4-- |  
}

basa = \notes \relative c' {
   )g4 r8 d'16( h )g8-- r8 r4 d4 r8 a'16( fis )d8-- r8 r4 |
   g4-5-- a-- h-- c-- [d8( h-2 fis-5 )g-2] d4-- r16 c'( h a |
   )g4 r8 d'16( h )g8-- r8 r4 d4 r8 a'16( fis )d8-- r8 r4 |
   g,8-5-. g'-. a,8-5-. g'-. h,8-5-. g'-. c,8-4-. e-. d4-1-- d,-- g-- r |
}

basb = \notes \relative c' {
   \su \d g'4_- fis_- g_- r fis_- e_- fis_- r |
   \sd \b e d cis a d g, a \su \d r16 g'( fis e |
   )d4 r8 a'16( fis )d8 r r4 \sd \b a4 r8 e16(^"r.h."( cis )a4--^"l.h." r |
   d8-5-. d'-. e,-5-. d'-. fis,-4-. d'-. g,-4-. h-. a4-1-- a,-- d-- r |
   r <gis-5 h-3 d-1> <a c> <gis h d> <a c> <gis h d> <a c> r |
   r <fis-5 a-3 c-1> <g! h> <fis a c> <g h> <fis a c> <g h> r |
   c,8-5-. a'-. h,-5-. g'-. a,-. fis'-. g,-. g'-. fis,-. d'-. e,-. cis'-. d,4-- r16 c''16 h a |
}

\score{
  \context PianoStaff <
    \context Staff = up {
     \notes \key g \major; \clef "G"; \time 2/4;
     \repeat "volta" 2 {\mela} \melb \mela \bar "|.";
    }
    \context Staff = down {
     \notes \key g \major; \clef "F"; \time 2/4;
     \repeat "volta" 2 {\basa} \basb \basa \bar "|.";
    }
  >
  \midi{}
  \paper{
    linewidth = 18.0 \cm;
    \translator {
       \GraceContext
       Stem \override #'flag-style = #""

    }
  }
}
