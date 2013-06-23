\version "2.10.10"
\paper {
  scoreTitleMarkup = \markup \column {
   \fill-line { \large \bold
    \fromproperty #'header:piece }
   \fill-line { \large \bold
    \fromproperty #'header:ptitle }
    \fromproperty #'header:meter
}
  oddFooterMarkup = \markup {
    \column {
        \fill-line {
	    \fromproperty #'header:title }
	\fill-line {
%	  %% Copyright header field not on last page.
%	  \on-the-fly #not-last-page
	    \fromproperty #'header:copyright }
        \fill-line {
			          %% Tagline header field only on last page.
		        \on-the-fly #last-page \fromproperty #'header:tagline
		    }                                                                           
	    }                                                                             
			    }
 between-system-padding = #1
 ragged-bottom=##f
 ragged-last-bottom=##f
}
		    
\header{
	title = " REMIX AE I "
	subtitle = " Madarak "
	poet = ""
	composer = " SZERVÁC Attila "
	meter = ""
	opus = ""
	arranger = ""
	instrument = ""
	dedication = " JUHÁSZ Andrea Elig-nek"
	piece = ""
	head = ""
	copyright = \markup { SZERVÁC Attila - licenc: \with-url #"http://fsf.org/licenses/gpl.html" \with-color 
#(x11-color 'blue) "GPLv3" - CC-BY-SA3 - Bármely része vagy egésze szabadon másolható }
	footer = "Bármely része vagy egésze szabadon másolható - GPL licenc alatt áll"
	tagline =  \markup { License: GPLv3 - CC-BY-SA3 - title: REMIX AE I - version: .11 - Home:
\with-url #"http://321.hu/" \with-color #(x11-color 'blue) http://321.hu/ }
	home = " http://321.hu "
	mutopiacomposer = "SzervacA"
	mutopiainstrument = "2 solo instruments"
	mutopiacopyright = "Creative Commons Attribution-ShareAlike 3.0"
	mutopiasource = "Original composition"
	mutopiastyle = "Modern"
	maintainer = "SZERVÁC Attila"
	maintainerWeb = "http://321.hu"
	moreInfo = "The composer has licensed this piece jointly under the GPLv3 and Creative Commons Attribution-ShareAlike 3.0 licenses, and it may be distributed under the terms of either."
	mutopiafooter = "Mutopia-2007/07/22-1002"
}

q = \relative
{
 e8 [gis ais] gis fis4 g8 [f g] gis [fis] b a4 |
 cis2 b4 g8 bes [c] d4 cis8 [b cis dis] |
 e4. dis8 r ais dis d [e] f4 e16 [d8 a8 ais8 b16] |
 c8 [bes g] gis2 fis8 [b] a2.~ |
 a2 cis8 [ais] dis4. d4 c8 c [bes g] |
 b [a cis] gis2 gis8 [fis] f2.~ |
 f a8 b16 [ais16 b8] c c [bes as ges ces] |
 des4 c8. es16 d8 r4 r1 |
 r2. c4 b8. d16 cis8 r4 a |
 cis2 b4 g8 r1 |
 r1 bes4 a8. c16 b4 bes8 |
 d2 cis4 a8 r1 | 
 r2 r2. bes8 a4 c8 b |
 r4 gis8 [ais] gis fis4 g8 [f g] gis [fis] b a4 |
% cis2 b4
}


% #(set-global-staff-size 11)
#(set-default-paper-size "a4")
VoiceI = \context Voice = VoiceI {
%	\set Staff.midiInstrument = "acoustic grand"
	\time 15/8
	\key c \major
	\clef treble
	\partial 1..
	\tempo 8=240
	\repeat volta 2 {
\q } \alternative { { \relative {cis'2 b4 g8 bes [c] d4 cis8 [b cis dis] |
 e4. dis8 r ais dis d [e] fis4 f8 [es des c] |
 e1. d8 [cis a] |
 c1. des8 [bes8 es] |
 d1 cis8 [b fis] b [c] bes [c] |
 a [b gis] cis [dis d] \times 2/3 {e16 f8. es8} r e16 [es8 d c16 as8] des [d] |
 dis cis4 a8 e'16 [d c8] es8. des16 ges4 f8 \times 4/5 {e16 d es8 f16} g8 [e] |
 \times 2/3 {fis eis16 cis8.} e8 [es bes] \times 2/3 {des d e16 fis}
  \times 4/5 {g8 f16 es r} r4 r16 \times 2/3 {e32 fis gis}
  \times 4/7 {a8. g16 f es des} \times 4/5 {d32 e fis gis a} | 
 bes2..~ bes8 a4 g f g8 |
 as4.~ as4~ as8 [a gis] fis4.~ fis4 g8 [f]
 | e1... }}
 { \relative { cis'2 b4 g8 bes [c] d4 cis8 [b cis dis] |
 e4. dis8 r ais dis d [e] fis4 f8 [es des c16 d] | e1...~ | e8 \bar "|." } } }
% 15.-től 3 ütem ketteskapu és vége az 1. tételnek (jön még 6)
}
VoiceII = \context Voice = VoiceII {
%	\set Staff.midiInstrument = "acoustic grand"
	\time 15/8
	\key c \major
	\clef treble
	s1*15/8 |
	\q \relative {cis'2 b4 g2. as4. |
 a4 ais8 [gis a] bes [b] c4 des8 [ces bes] g4.~ |
 g b8 [bes] d e4 dis8 [gis, ais] a2~ |
 a4 b8 [c as] bes [a] g2. ges8 [as] |
 f fis4 gis16 a ais8 b a8. bes16 ges8 r g2 b16 ais |
 fis8 \times 2/3 {a16 gis8 b8.~} b8 g8. bes16 as8 ces8. ces8 des16 d cis
  \times 2/3 {b16 bes8 c4. b8 bes16} |
 a8 r f ges4 as es2~ \times 2/3 {es16 g a bes a f'} g4~ |
 g f8 es4 d c1~  | c cis8 dis4 e a,8 [b] | c [d] g, [as] bes4 a8 [b] cis2.. |
 { \relative { r4 gis'8 [ais] gis fis4 g8 [f g] gis [fis] b a8. b16 |
 cis2 b4 g2. as4. | a4 ais8 [gis a] bes [b] c4 des8 [ces bes] a4.~ |
 a8 \bar "|." } 
}
}
}

\score {
 	<<
		\VoiceI
		\VoiceII
	>>
 \header { piece = " I "
	   ptitle = " Aero "
	   meter = " Allegro " }
	\layout {
	}
	\midi {
	    \context {
      		\Score
      		tempoWholesPerMinute = #(ly:make-moment 240 8)
      		}
	}


}
q = \relative { a'4 |
cis2 d4 e d a | b2 c4~ c d c | g2.~ g4 a b | c2.~ c4 bes c |
d2.~ d4 e f | es d c bes2.~ | bes4 as bes b2.~ | b4 a b cis dis e~ |
e dis b d e4. fis8 | g2.~ g4. f8 e4 | d2.~ d4 e f | e2.~ e4 d c |
b2.~ b4 cis dis | cis2. d }
qw = \relative { r4 a' bes | c2.~ c4 b g | as2.~ as4 bes c | des es e a,2.~ |
a4 b c d2 c4 | g2. r4 g a | b fis a gis2.~ | gis4 gis ais b cis a |
b2.~ b4 a2 | g2.~ g4 g a | b c b a2 r4 | r4 g as bes c bes | a2. }
VoiceI = \context Voice = VoiceI {
      \time 6/4
      \clef treble
      \partial 4
      \tempo 2.=40 \q \relative { e'2. r | \transpose a b \qw |
\relative {b'8 [c d e] d4 r2. | es8 [d c d] bes4 r2
\transpose a c' \q g2. r \transpose a b \qw r2. bes8 a4 c b8 |
r r2 bes16 a8. c8 b4 \q e1.~ | e2.~ e2 \bar "|."}
}
}
VoiceII = \context Voice = VoiceII {
    \clef treble
    s1*1/4 | s1*2/4 \relative {
\transpose a g \q \qw \relative {r2. r1 bes'8 [a g f] es1 r2 | r
\transpose a bes \q \qw r2. bes'8 a4 c b8 r2. |
r8 bes16 a8. c8 b r r2. | r2 \transpose a g \q b2. | cis2.~ cis2 \bar "|."}
}
}
\score {
	 <<
	 \VoiceI
	 \VoiceII
	 >>
	\header  { breakbefore = ##t
	           piece = " II / VII "
	           ptitle = "  "
	           meter = " Andante " }
	\layout {
                }
}
 q = \relative {a'4 | cis r b8 g | r4 b8 a8 r4 | d r cis | r b8 a r4 |
 a8 bes r4 c | r c8 bes8 r4 | bes8 es8 r4 c | r g8 c8 r4 | a8 d r4 a |
 r4 a8 b r4 | cis8 b r4 b8 cis | r4 dis8 cis r4 | b8 cis r4 b | r e8 dis r4 |
 dis8 cis r4 cis8 b | r4 b r4 | b8 a b r4 b8 | r2 b8 a | r4 c r4 | r2 bes8 c |
 r4 c r | r8 c r4 c8 d | r4 d8 a r4 | a8 b r4 b8 cis | r4 cis8 fis, r4 |
 fis8 gis8 r4 gis8 ais | r4 b r4 | a8 b r4 b8 a | b4 c8 d r4 | b4 r2 |
 cis8 b cis4 r4 | r cis8 b r4 | r2 a8 d | c4 r2 | r bes8 c | r4 c8 d r4 |
 d8 e r4. e8 | f4 e8 r4. | r e4 a,8 | d r cis r4 b8[ | a] c b a4 g8 | }
 qw = \relative { f2.~ | f8. a16 b2~ | b fis8 b | a2.~ | a4. b4 cis8 | d2.~ |
 d8. g,16 as4 g16 bes a8~ | a r4. c4 | b8. gis16 \times 2/3 {b4 c d~}| d8 r r2 |
 r4 \times 2/3 {d8 cis ais b4 g8}| as r4. bes8 c |
 des16 bes c8 a8. b16 cis8 d16 e | fis2.~ | fis2 e8 d | r2. | r4 d16 c bes8 r4 |
 r2 }
 VoiceI = \context Voice = VoiceI {
      \time 3/4
      \clef treble
      \partial 4
      \tempo 4=90 \q \qw \q a'2.~ a'2 \bar "|."
 }
 VoiceII = \context Voice = VoiceII {
    \clef treble
    s1*1/4 | s1*2/4 \relative {
 \transpose a g { \q \qw \q} g'2 \bar "|."
 }
 }
 \score {
         <<
         \VoiceI
         \VoiceII
         >>
        \header  { breakbefore = ##t
                   piece = " III / VII "
                   ptitle = "  "
                   meter = " Moderato " }
        \layout {
                }
 }
