\version "2.10"


\header {
title = "Seconde sonate en duo"
subtitle = \markup{\italic "ou 3 Canons mélodieux"}

composer = "Georg Philipp Telemann (1681-1767)"
	mutopiatitle = "Seconde sonate en duo"
 	mutopiacomposer = "TelemannGP"
 	mutopiainstrument = "Violin, Viola"
 	source = "Johan Tufvesson"
	date = "1738"
 	style = "Baroque"
 	copyright = "Public Domain"
 	maintainer = "Moulun Stephane"
	maintainerEmail = ""
	maintainerWeb = ""
 	lastupdated = "2009/01/24"

 footer = "Mutopia-2009/01/26-1623"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
} %end header

% Cette partition a été trouvée sur l'excellent site de Johan Tufvesson
% dont voici l'adresse : http://www.lysator.liu.se/~tuben/scores/
% et qui m'a donné l'autorisation de traduire en lilypond pour Mutopia.

PrestoSII =  \relative c' {
  \set Staff.midiInstrument = "viola"
  \key g \minor
  \time 4/4
  
%1
r4 d g, g' | g2( fis4) \stemDown \grace { g16[^( a] } \stemNeutral bes4) | a4 \trill g \stemDown \grace { bes8^( } a4) \stemNeutral g8( fis) | g2 \segno _" Entrée du 2° instrument " r4 bes, | bes2( a4) \stemDown \grace { bes16[^( c] } \stemNeutral d4) |
% 6
c4 \trill bes \stemDown \grace { d8^( } c4)  \stemNeutral bes8(a) | bes8[ d c bes ] ees4 d | c4 f, f'2 | r f2 | r f2 |
%11
r4 f4 g8[( a) bes( g)] | bes[( a) g( f)] g[( a) bes( g)] | bes[( a) g( f)] g[( a) bes( g)] | a(g) f2 e4\trill |
%15
f4 a, bes c | f, f'2 e4 | f a, bes c | f, ees'!( d c ) | \grace { bes8( } a4) \trill g8( f) bes2( |
%20
a4) ees'( d c) | \grace { bes8( } a4) \trill g8( f) f'2 | r4 f ees8[( d) c( bes)] | c4 a bes ees, |
%24
f2 a\trill | bes r | ees( d4) g | f ees2 d8 c | d[ f ees d ] g[ f ees d] |
% 29
c4 g b g | d' g, c2~ | c2 b\trill | c4 d8 ees d2\trill | f4 d8( f) ees4 c8( ees) |
% 34
d4 aes' g f | ees d8 c b4\trill c8 d | g,1~ | g2 r | r f'~ | 
% 39 
f4 g8( f) e4 d | cis a e' a, | a' a, d d, | g2 r | a r |
% 44
f2 r | bes8[ a g f] e4 d | cis' d8( e) a,4 cis! | d8[ e f g] a4 d, |
% 48
g4 bes8( a ) bes2~ | bes4 a8( g) f4 e\trill | d2 r | ees!2. d4 | c bes' a g |
% 53
fis4 d, d'2~| d4 c g' f | ees d c bes | a8[ c bes a] bes4 d, | ees ees'2 d4 |
% 58
c4 bes a g | d2 r | g' g, | r4 g'4( a bes) | bes, g' bes, fis' \trill |
% 63
g4 bes8(a) g([ f) ees( d)] | ees2 r | d4 bes8( d) c4 a8( c) | bes2 r | c4 ees8( d) c[( bes a( g)] |
% 68
fis4 \trill g a d, | r2 d' | r ees | r c4 bes8 a | bes4 d8 c bes4 a |
% 73
g4 _\fermata ees'8( d) c[( bes) a( g)] | fis4 \trill g a d, | g bes' d,, fis' \trill | g2 r |
\bar "|." 
  
}

LargoSII =  \relative c' {
  \set Staff.midiInstrument = "viola"
  \key g \minor
  \time 3/4

% 1
bes8. ees16 d4 \staccatissimo c \staccatissimo | f,8. a16 \grace { a8( } bes4) r4 |  bes'8.\segno _" Entrée du 2° instrument " a32 g  f4 \staccatissimo ees \staccatissimo | ees\trill d r |
% 5
d8[( f,) d'( f,) c'( f,) ] | bes8[( f) bes( f) d'( bes)] | f'8.( \trill e16) f4 r | f8.( \trill e16) f4 r |
% 9
a,8[( d) c( a) bes( g)] | a8[( d) c( a) bes( g)] | f8[( bes) a( f) g( e)] | f8[( bes) a( f) g( e)] |
% 13
c'2.~ | c4. a8 bes4 | a8[( g f) a] \staccato c\staccato ees\staccato | \stemDown \grace{ ees8^( } d4.)\trill c8 d4 | c f \staccatissimo r |
% 18
f4 bes bes, | ees4. d8[ ees c] | d4.\trill c8[ d bes] | c4 f, a |
% 22
bes4 bes' r | ees, \staccatissimo d \staccatissimo c\trill | bes ^\fermata a^\staccatissimo r | g^\staccatissimo f^\staccatissimo ees\trill | d2 r4 |
 \bar "|." \pageBreak
}

VivaceSII =  \relative c'' {
  \set Staff.midiInstrument = "viola"
  \key g \minor
  \time 3/8
bes8 \grace{ g8^( } fis4) \trill | g4 d8 | g,16[ \segno _" Entrée du 2° instrument " bes d8] c | bes8 \trill a16[_( bes) g8] | r8 bes16[_( c) a8] | r8 c16[^( d) bes8] | ees8[ ^\staccatissimo d( c)]
% 8
bes8[ ^\staccatissimo a( g)] | fis fis16[ g a8] | d,4 r8 | d'8 c16[(bes) a( c)] | bes16[ d e fis g a] |  bes8 \grace{ g8^( } fis4) \trill | g4 d8 |
% 15 
g,16[ bes d8 c] |  bes\trill[ a16( bes) g8] | r8 bes16[( c) a8] | r8 c16[( d) bes8] | ees8[ ^\staccatissimo d( c)] |  bes8[ ^\staccatissimo a( g)] |
% 21
fis16[ ^\staccatissimo c'( bes a g fis)] | g8[ c8.( d32 ees)] | d8[ d16( c bes a)] | g8 r r | fis'[ g16( fis) g a] | \grace{ \stemDown a8 ^( } \stemNeutral bes4) g8\trill |
% 27
a8[ d, d] | g[ c, c ] | f4 r8 | ees4 r8 | d16[ ^\staccatissimo f^( ees d c bes)] |  c16[ ^\staccatissimo ees^( d c bes a)] |  bes16[ ^\staccatissimo d_(  c bes a g)] 
% 34
f8[ f' f,] | d'16[( bes) a( bes)] ees8~ | ees8 d16[( c) bes( a)] | bes8[ f a] \trill | bes8. c16[ d ees] | d[( bes) a( bes)] ees8~ |
% 40
ees8 d16[( c) bes( a)] | bes8 f a \trill | bes4 r8 | f'8 ees16( d) ees8 | d8 d bes' | a g16( fis) g8 | \grace { g8( } fis4) \trill g8 
% 47
d8 ees16(d) ees( c) | d4 r8 | d4 c8 | bes16 a g8 a' | bes8 \grace { g8( } fis4) \trill | g4 d8 | g,16 bes d8 c |
% 54
bes8 \trill a16 bes g8 | r bes16( c) a8 | r c16( d) bes8 | ees8 \staccatissimo d( c) | bes \staccatissimo a( g) | fis fis16 g a8 | d,4 r8 |
% 61
d'8 c16( bes) a( c) | bes d e fis g a |  bes8 \grace { g8( } fis4) \trill | g4 d8 | g,16 bes d8 c | bes \trill a16( bes) g8 | r8 bes16( c) a8 |
% 68
r8 c16( d) bes8 | ees \staccatissimo d( c) | bes \staccatissimo a( g) | fis16 c'( bes a g fis) | g8 \fermata c8.( d32 ees) | d8 \staccatissimo d16( c bes a ) | g4 r8 |
\bar".|"

 
}
\paper{
	ragged-bottom = ##t
	ragged-last-bottom = ##f
}

% pour altos
\book {
\score {
     { \clef alto \PrestoSII } 
     \layout {  }
	 \header { 
	 subsubtitle = "adaptation pour violon alto"
	 piece = "Presto" }
}

\score {
     { \clef alto \LargoSII } 
     \layout {  }
	 \header { piece = "Largo"
	 }
		}
\score {
     { \clef alto \VivaceSII } 
     \layout {  }
	 \header { piece = "Vivace" }
		}
}


% pour violons ou flutes
\book {
\score {
     {  \clef violin \transpose c c' \PrestoSII } 
     \layout {  }
	 \header { piece = "Presto" }
		}

\score {
     { \clef violin \transpose c c' \LargoSII } 
     \layout {  }
	 \header { piece = "Largo"}
		}
\score {
     {\clef violin  \transpose c c' \VivaceSII } 
     \layout {  }
	 \header { piece = "Vivace" }
		}
}

% Sortie midi
		
\score {
	      \new StaffGroup <<
          \new Staff << \tempo 4 = 150 \PrestoSII  >> 
		  \new Staff << {r1  r \PrestoSII}  >> 
        >>
        \midi {  }
        }		

\score {
	      \new StaffGroup <<
          \new Staff <<  \tempo 4 = 44 \LargoSII  >> 
		  \new Staff << {r2. r  \LargoSII}  >> 
        >>
         \midi {  }
        }

\score {
	      \new StaffGroup <<
          \new Staff << \tempo 4 =130 \VivaceSII  >> 
		  \new Staff << {r4. r  \VivaceSII}  >> 
        >>
        \midi {  }
        }

	
