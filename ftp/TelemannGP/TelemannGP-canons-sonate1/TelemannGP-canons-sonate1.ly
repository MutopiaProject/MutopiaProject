\version "2.10"


\header {
title = "Première sonate en duo"
subtitle = \markup{\italic "ou 3 Canons mélodieux"}
subsubtitle = "adaptation pour violon alto"
composer = "Georg Philipp Telemann (1681-1767)"
	mutopiatitle = "Première sonate en duo"
 	mutopiacomposer = "TelemannGP"
 	mutopiainstrument = "Violin, Viola"
 	source = "Johan Tufvesson"
	date = "1738"
 	style = "Baroque"
 	copyright = "Public Domain"
 	maintainer = "Moulun Stephane"
	maintainerEmail = ""
	maintainerWeb = ""
 	lastupdated = "2009/02/20"

 footer = "Mutopia-2009/02/22-1618"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
} %end header

% Cette partition a été trouvée sur l'excellent site de Johan Tufvesson
% dont voici l'adresse : http://www.lysator.liu.se/~tuben/scores/
% et qui m'a donné l'autorisation de traduire en lilypond pour Mutopia.

vivace =  \relative c' {
  \set Staff.midiInstrument = "viola"
  \key g \major
  \time 6/4
  
r4 d4 g2 fis8[ e d c] | b[ \segno _" Entrée du 2° instrument " c b a b g] a4 d, r | r4 d' g2 fis8[ g a b] |
c4 b8([ a) b(c)] \appoggiatura b8 a4.\trill g8[ fis g] | a4 g8([ fis) g( a)] fis[ d16( e)] fis8[ g a b] | c4 b8[( a) b(c)]  \appoggiatura b8 a2\trill r4 |
r8 d,[ d d d d] d[ d, d' d,] d'16[ c b a] | b[ c b a] b8[ g c a] b16[ c b a] b8[ g a fis ] |
g4. g'8[ a fis] g4. b,8[ c a] | b16[ c b a] b8[ e fis dis] e16[ fis e dis! ] e8[ g fis e] | dis[ fis] b,4\trill r4 b8[ g'] b,4\trill r4 |
b8 a'4  b16[ a g8 fis] g8 b4 a16[ g fis8 e] | fis4 b, dis\trill e e, r | r2 a'2 gis8 a b4 |
e,4 c'8[ b c a] b4 e, d | c8\trill b a4 r2. gis'4\trill | a8[ e cis! a] e'8[ d16( cis!)] d8[ a fis d] d'8[ cis!16( b)] |
cis4 e g fis8 e d4 r | r8 a[ a a ] a16[ b cis a] d8[ d, d' d ] d16[ e fis d] | g4 r g2 fis8[ e d c ] |
b8[ c b a b g] a4 d, r | r d' g2 fis8[ g a b] | c4 b8[( a) b( c)]  \appoggiatura b8 a4.\trill g8[ fis g] | a4 g8([ fis) g( a)] fis[ d16( e)] fis8[ g a b] | c4 b8[( a) b(c)]  \appoggiatura b8 a2\trill r4 |r8 d,[ d d d d] d[ d, d' d,] d'16[ c b a] |
b[ c b a] b8[ g c a] b16[ c b a] b8[ g a fis ] | g4. g'8[ a fis] g4. b,8[ c a] | \times 2/3 { bes8( c a )}  bes4 ^\staccatissimo r \times 2/3 { b8( c a) }  b4 ^\staccatissimo r |
\times 2/3 { g'8( a fis) } \times 2/3 { g8( a fis) } \times 2/3 { g8( a fis) } g4. fis16[ e] d8[ c'] | \times 2/3 { b8( c a) }  \times 2/3 { b8( c a) }  \times 2/3 { b8( c a) } b8[ a16 g] a4 fis\trill |
g8 [ d g d g d] g[ b,] c4 a\trill | g8[ _\fermata b16( a)] g8[ b16( a)] g8[ b16( a)] g4 ^\staccatissimo a ^\staccatissimo fis\trill | g2 r2.
\bar "|." \pageBreak
  
}

adagio =  \relative c' {
  \set Staff.midiInstrument = "viola"
  \key g \major
  \time 2/4
 e,8[ b''32( g16.)] dis,8[ a''32( fis16.)] | g,8[ \segno _" Entrée du 2° instrument " g'32( e16.)] fis,8[ fis'32( dis16.)] | e,8 c' r b16. a32 |
 g16.[ e32 e'16. fis32] dis4 \trill ] | e16.[ b32 g'16. a32] fis8[ \trill b16. fis32] |  g16.[ fis32 e8] r d!8~ | d8 [ cis16. b32]  ais8\trill b |
 e,8 e'( e16.)[ cis32 d16. b32] | g'16.[( fis32) g16.( e32)] ais8 ^\staccatissimo b ^\staccatissimo | r8 e,32( cis16.) r8 d32( b16.) | cis8[ ais \trill b fis'( ] |
 fis8) e4 dis16. fis,32 | g8[ b'32( g16.)]  fis,8[ a'32( fis16.)] |  e,8[ g'32( e16.)]  dis,8[ fis'32( dis16.)] | r8 c!4 b16. a32 |
 g16.[ e32 e'16. fis32] dis4\trill | e16.[ b32 g'16. a32] fis4\trill | e8 _\fermata e, a b | e4 r \bar "|."
 
}

allegro =  \relative c' {
  \set Staff.midiInstrument = "viola"
  \key g \major
  \time 2/4
  
d8 g4 fis8 | b,8 \segno _" Entrée du 2° instrument " e4 d8 | g,8 c4 b8 | e4 ^\staccatissimo d ^\staccatissimo | c8[ b16 a] b8 g | fis4 \trill g ^\staccatissimo |
% mesure 7 
a8[ d b g] | d4 r | d'8  g4 fis8 | b, e4 d8 | d8 c4 b8 |  e4 ^\staccatissimo d ^\staccatissimo |
% 13
c8[ b16 a] b8 g | fis4 \trill g ^\staccatissimo | a8[ d b g] | d4 d'( | d8)[ c16 b] c8[ b16 a] | b8[ a16 g] a8[ g16 fis]
% 19
g8 b c d | g,4 r | g16[ a b8] b16[ a g8] | d'8[ d d g] | fis16[ g a8]  b16[ a g8] |
% 24
a8[ d, d e] | fis16[ g fis8] fis g | a16[ b a8] a b | cis,4 \trill d | e8[ a, fis' a,] | g'4 a8[ g16 fis]
% 30
b8 b, a'4 | g8 fis16 e fis8 d | cis4\trill d ^\staccatissimo | e8[ a fis d] | a4 a'( | a8) g16 fis g8 fis16 e |
% 36
fis8 e16 d e8 d16 cis | d8[ fis, g a] | d,4 r | d'8 g4 fis8 | b,8 e4 d8 | g,8 c4 b8 |
% 42 
e4 ^\staccatissimo d ^\staccatissimo | c8 b16 a b8 g | fis4\trill g ^\staccatissimo | a8[ d b g] | d4 r | d'8 g4 fis8 |
% 48 
b,8 e4 d8 | g,8 c4 b8 | e4 ^\staccatissimo d ^\staccatissimo | c8 b16 a b8 g | fis4\trill g ^\staccatissimo | a8[ d b g] | 
% 54
d4 d'( | d8)[ c16 b] c8[ b16 a] | b8[ a16 g] a8[ g16 fis] | g8 b c d | g,4 r | g'8 g16( fis) g8 a |
% 60 
b4 e, | dis8[ b g' e] | b'4 e, | dis8 b g'4| fis\trill b,8 cis16 b | ais8 fis d'4 |
% 66
cis4 b8 cis16 b | ais8 fis d'4 | cis4 \trill  b8 cis16 d | e8 d16 cis d8 e16 fis | g4^\staccatissimo fis^\staccatissimo | e8[ b'(ais a)] |
%72
gis[(g fis) b,] | | e4^\staccatissimo d^\staccatissimo | cis8 b16 ais b8 fis'| fis,8[ fis' fis, fis'] | fis e16 d e8 d16 cis |
% 77
d8 cis16 b cis8 b16 ais | b8[ d, e fis ] |  b4 r8 a | g a16 b c! e d c | d8 g4 fis8 |
% 82
b,8 e4 d8 | g,8 c4 b8 | e4 ^\staccatissimo d ^\staccatissimo | c8 b16 a b8 g | fis4 \trill  g ^\staccatissimo | a8[ d b g] | d4 r |
% 89 
d'8 g4 fis8 | b, e4 d8 | g, c4 b8| e4 ^\staccatissimo d ^\staccatissimo | c8 b16 a b8 g | fis4\trill g ^\staccatissimo |
% 95
a8[ d b g] | g4 d'4( | d8) c16 b c8 b16 a | b8 a16 g a8 g16 fis | g8[ \fermata b c d ] | g,4 r 
\bar".|"

 
}
\paper{
	ragged-last-bottom = ##f
}
\book {
\score {
     { \clef alto \vivace } 
     \layout {  }
	 \header { piece = "Vivace" 
}
		}

    
\score {
     { \clef alto \adagio } 
     \layout {  }
	 \header { piece = "Adagio"
	 }
		}
\score {
     { \clef alto \allegro } 
     \layout {  }
	 \header { piece = "allegro" }
		}
}

\book {
\score {
     {  \clef violin \transpose c c' \vivace } 
     \layout {  }
	 \header { piece = "Vivace" 
}
		}

    
\score {
     { \clef violin \transpose c c' \adagio } 
     \layout {  }
	 \header { piece = "Adagio"
	 }
		}
\score {
     {\clef violin  \transpose c c' \allegro } 
     \layout {  }
	 \header { piece = "allegro" }
		}
}

		
\score {
	      \new StaffGroup <<
          \new Staff << \vivace  >> 
		  \new Staff << {r2 r r \vivace}  >> 
        >>
        \midi { 
		\context { \Score
                   tempoWholesPerMinute = #(ly:make-moment 128 4) }	
			  }
        }		

\score {
	      \new StaffGroup <<
          \new Staff << \adagio  >> 
		  \new Staff << {r2  \adagio}  >> 
        >>
        \midi { 
		\context { \Score
                   tempoWholesPerMinute = #(ly:make-moment 60 4) }	
			  }
        }

\score {
	      \new StaffGroup <<
          \new Staff << \allegro  >> 
		  \new Staff << {r2  \allegro}  >> 
        >>
        \midi { 
		\context { \Score
                   tempoWholesPerMinute = #(ly:make-moment 140 4) }	
			  }
        }
	
