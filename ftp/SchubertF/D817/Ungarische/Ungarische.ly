\header {
  title =       "Ungarische Melodie"
  opus =        "D 817"
  date =	"02 Sep 1824"
  source =      "Neue Schubert-Ausgabe"
  composer =    "Franz Schubert (1797-1828)"
  enteredby =   "Felix Braun"
  
 mutopiatitle = "Ungarische Melodie"
 mutopiacomposer = "SchubertF"
 mutopiaopus = "D.817"
 mutopiainstrument = "Piano"
 date = "1824/Sep/02"
 source = "Neue Schubert Ausgabe BA 5521"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Felix Braun"
 maintainerEmail = "Felix.Braun@mail.McGill.ca"
 lastupdated = "2006/May/02"
 footer = "Mutopia-2006/05/08-758"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.7.40"

\include "deutsch.ly"                 % for correct parsing of note names

global =  {
  \key h \minor
  \time 2/4
}

melody = \relative c' {
r16. fis32 h8->~ h16. fis32 h8->~ |
h16. fis32 h8->~ h16 fis( h cis) |
d16. fis,32 <h d>8->~ <h d>16. fis32 <h d>8->~|
<h d>16. fis32 <h d>8->~ <h d>16 h( d e)|
%5
fis16. h,32 <d fis>8->~ <d fis>16. h32 <d fis>8->~|
<d fis>16.~ h32 <d fis>8->( <<{g16 fis e d)}{e d cis h}>>|
<cis fis>16. ais32 <cis fis>8->~<cis fis>16. ais32 <cis fis>8->~|
<cis fis>16. ais32 <cis fis>8->( ais'16 g fis e)|
d16. h32 <d fis>8->~ <d fis>16. h32 <d fis>8->~|
%10
<d fis>16. h32 <d fis>8->( <<{e16 d cis h)}{cis h a g}>>|
<fis a>16. d32 <fis a>8~ <fis a>16. d32 <fis a>8~|
<fis a>16. d32 <fis a>8~ <fis a>16. d32 
<<{\voiceTwo \autoBeamOff fis8~ fis fis4 fis8~ fis fis( eis4)}\\
  {\voiceOne a8 \appoggiatura h16 a8]^| a[^> 
  \appoggiatura h16 a8]^| a^>
  \appoggiatura h16 a8^| a8^>[( gis16 a gis cis])}>>
%15
fis,16.-. fis32( fis'8)->~ fis16. fis,32( fis'8)->~ |
fis16. fis,32( fis'8)( gis16)( d cis h) |
cis16. fis,32( fis'8)->~ fis16. fis,32( fis'8)->~ |
fis16. fis,32 fis'8( gis16)( d cis h) |
cis16.\( cis,32 cis'8~ cis16. cis,32 cis'8~|
%20
cis16. cis,32 cis'8 <<{gis16 h ais gis}{eis gis fis eis\)}>> |
<fis ais>16.\( cis32 cis'8~ cis16. cis,32 cis'8~|
cis16. cis,32 cis'8 <<{gis16 h ais gis}{eis gis fis eis\)}>> |
fis16.\( cis32 fis8~ fis16. cis32 fis8~ |
fis16. cis32 fis8~ fis16. cis32 fis8\) \bar ":|"|
%25
\appoggiatura a32 <g e>8-| <g e>4 <g e>8~ |
<<{g16 a g a h a g}{e( fis e fis g fis e)}>> r |
\appoggiatura <e g> e'8-| <e, g>4 
<<{g8~g[ a16( g)]}\\{e8~\voiceTwo e[ e]}>> \appoggiatura<e g>16 e'8-| <e,g>|
\appoggiatura<e g>16 <d fis>8-| <d fis>4 <d fis>8~|
<<{fis16 g fis g a g fis}{d( e d e fis e d)}>> r |
%31
\appoggiatura<d fis>16 d'8-| <d, fis>4
<<{fis8~fis[ g16( fis)]}\\{d8~d4}>> \appoggiatura<d fis>16 d'8-| <d, fis>|
\appoggiatura<d fis>16 <c e>8-| <c e>4 <c e>8~ |
<c e>16( fis e a c h a) r |
\appoggiatura<d, fis>16 <c e>8-| <c e>4
<<{e8~e[ fis16 e] a[ g g fis]}\\{c8~c4 <c d>8[ <c d>]}>> |
%37
<h d g>8 <h' d>4 <h d>8~|
<h d><h d>-. <<{d16(-> e fis e}{h c d c}>>|
<h d>8) <h d h'>4-> <h d>8~|
<h d><h d>-. <<{g'16->( fis g e)}{e dis e c}>>|
<h d>8-. <d g>-. <g h>-. <h d>-. |
%42
\appoggiatura e32 d16.( c32) \appoggiatura d c16.( h32)
\appoggiatura c h16.( a32) \appoggiatura h32 a16.( g32) |
g8 <g e>4-> 
<<{g8(fis)fis~fis fis-.}\\{e8~e16(dis)dis(c)dis8 dis-.}>>|
e-| <e, g>-|
<g h>-| <h e>-| |
\appoggiatura e32 d16.( c32) \appoggiatura d c16.( h32)
\appoggiatura c h16.( a32) \appoggiatura h32 a16.( g32) |
%47
g8 <e g>4->
<<{g8( fis) fis~fis fis-|}\\{e~e16 dis dis  c dis8 dis-|}>> |
e16.-. h32( e8)~ e16.( h32 e8)~ |
e16. h32 e8~ e16 h( e fis) |
g16. h,32 <e g>8~ <e g>16. h32 <e g>8~|
%52
<e g>16. h32 <e g>8~ <e g>16 e( g a)|
h16. e,32 <g h>8->~ <g h>16. e32 <g h>8->~ |
<g h>16. e32 <g h>8->( <<{c16 h a g}{a g fis e)}>>|
<fis h>16. dis32 <fis h>8->~ <fis h>16. dis32 <fis h>8->~|
<fis h>16. dis32 <fis h>8->( dis'16 c h a)|
%57
g16. e'32( <g h>8->)~ <g h>16. e32 <g h>8->~ |
<g h>16. e32 <g h>8->( <<{a16 g fis e)}{fis e d c}>>|
<<
	{\oneVoice <h d>16.[( g32 <h d>8]~ <h d>16.[ g32 <h d>8]~|
	<h d>16.[ g32 <h d>8]~ <h d>16. g32 \voiceOne d'8)( 
	\appoggiatura e16) d8]-| d[->( \appoggiatura e16) d8]-| d->(
	\appoggiatura e16) d8-| d->( cis16 d cis fis)}\\
{s2 s4. h,8~ h h4 h8~h h( ais4)}>>|
%63
h16.\( h32 h'8->~ h16. h,32 h'8->~ |
h16. h,32 h'8\)( cis16)( g fis e)|
fis16.\( h,32 h'8->~ h16. h,32 h'8->~ |
h16. h,32 h'8\)( cis16)( g fis e)|
%67
fis16.\( fis,32 fis'8~ fis16. fis,32 fis'8~ |
fis16. fis,32 fis'8( <<{cis16)-> e dis cis\)}{ais cis h ais}>> |
<h dis>16.\( fis32 fis'8~ fis16. fis,32 fis'8~ |
fis16. fis,32 fis'8( <<{cis16)-> e dis cis\)}{ais cis h ais}>> |
h16.\( fis32 h8~ h16. fis32 h8~ |
%72
h16. fis32 h8~ h16. fis32 h8\)( |
\appoggiatura d32) c8-| c4-> c8(|
\appoggiatura d16) c16.\( h32 \appoggiatura c h16. a32
\appoggiatura h a16. g32 \appoggiatura a g16. fis32\)( |
g8-| g4-> g8( |
\appoggiatura a32 g16.\( fis32 \appoggiatura g fis16. e32
\appoggiatura fis e16. d32 \appoggiatura e d16. cis32\) |
%77
cis8-| cis4-> cis8~ | 
cis cis16 dis \grace {cis32[( dis]} \times 8/7 {e)( dis cis h dis cis h)} |
h8-| h4 h8~ |
h h'4 h8( |
\appoggiatura d16) c8-| c4-> c8( |
\appoggiatura d16) c16.\( h32 \appoggiatura c h16. a32
\appoggiatura h a16. g32 \appoggiatura a g16. fis32\)( |
g8-| g4-> g8( |
\appoggiatura a32) g16.\( fis32 \appoggiatura g fis16. e32
\appoggiatura fis e16. d32 \appoggiatura e d16. cis32\) |
cis8-| cis4-> cis8~ | 
cis cis16 dis \grace {cis32[( dis]} \times 8/7 {e)( dis cis h dis cis h)} |
h8-| h4 h8~ |
h h4 <h dis fis>8^dolce |
<h cis gis'> <h cis gis'>4 <h cis gis'>8~ |
<h cis gis'> <h cis gis'> <<{gis'16( fis) fis( e)}\\{<ais, cis>8 <ais cis>}>> |
%91
<h dis>8 <h dis>4 <h dis>8~ |
<h dis> <h dis fis> \appoggiatura fis'16 <h, dis h'>8 <h dis fis> |
<h cis gis'> <h cis gis'>4 <h cis gis'>8~ |
<h cis gis'><cis gis' h><<{<gis' h>16(<ais fis>) ais( cis)}\\{cis,8 <e fis>}>>|
<dis fis h>8 <dis fis h>4 <dis fis h>8~ |
<dis fis h> <dis fis h>( <cis e h'>) <cis e h'>( |
%97
<h dis fis>) <h dis fis>4 <h dis fis>8~|
<h dis fis> <h dis fis>( <ais cis fis>) <ais cis fis>( |
\clef bass
<fis h dis>) <fis h dis>4 <fis h dis>8~|
<fis h dis> <fis h dis>( <fis ais cis>) <fis ais cis>( |
<dis fis h>) <dis fis h>4 <dis fis h>8~|
<dis fis h> <dis fis h>4 <dis fis h>8|
<dis fis h>2-\fermata|
}

accompaniment = \relative c {
%1
h8 <fis' h d> h, <fis' h d> |
h, <fis' h d> h, <fis' h d> |
h, <fis' h d> h, <fis' h d> |
h, <fis' h d> h, <fis' h d> |
h, <fis' h d> h, <fis' h d> |
h, <fis' h d> h, <fis' h d> |
%7
fis, <fis' ais e'> fis, <fis' ais e'> |
fis, <fis' ais e'> fis, <fis' ais e'> |
h, <fis' h d> h, <fis' h d> |
h, <fis' h d> g, <g' h d> |
%11
d < fis a > d < fis a > |
d < fis a > d < fis a > |
cis-. < fis a-. > h,-. < fis' a-. > |
cis-. < fis a-. > cis-. < gis' h-. > |
%15
fis, <cis' fis a> fis, <cis' fis a> |
fis, <cis' fis a> fis,-| <d' gis h> |
fis, <cis' fis a> fis, <cis' fis a> |
fis, <cis' fis a> fis,-| <d' gis h> |
%19
fis, <cis' fis ais> fis, <cis' fis ais> |
fis, <cis' fis ais> cis, <cis' gis' h> |
fis, <cis' fis ais> fis, <cis' fis ais> |
fis, <cis' fis ais> cis, <cis' gis' h> |
fis, <cis' fis ais> fis, <cis' fis ais> |
fis, <cis' fis ais> fis, <cis' fis ais> |
%25
a <cis e a> a <cis e a>|
a <cis e a> a <cis e a>|
a <cis e a> a <cis e a>|
a <cis e a> a <cis e a>|
h <d fis h> h <d fis h>|
h <d fis h> h <d fis h>|
h <d fis h> h <d fis h>|
h <d fis h> h <d fis h>|
%33
c, <c' e a> c, <c' e a>|
c, <c' e a> c, <c' e a>|
c, <c' e a> c, <c' e a>|
c, <c' e a> d, <d' a'>|
g, <h' d g> g <h d g>|
%38
\clef violin
g <h d g> g <c e g> |
g <h d g> g <h d g> |
g <h d g> g <c e g> |
g <h d g> g <h d g> |
%42
a <c e g> a <c e g>|
h <e g> h <e g>|
h <fis' a> h, <fis' a>|
\clef bass
g,, <h e g> g <h e g>|
a <c e g> a <c e g>|
%47
h <e g> h <e g>|
h <fis' a> h, <fis' a>|
e <g h> e <g h>|
e <g h> e <g h>|
e <g h> e <g h>|
%52
e <g h> e <g h>|
e <g h> e <g h>|
e <g h> e <g h>|
h, <fis' h> h, <fis' h>|
h, <fis' h> h, <fis' h>|
%57
e <g h e> e <g h e>|
e <g h e> c, <g' c e>|
g, <g' h d> g, <g' h d>|
g, <g' h d> g, <g' h d>|
fis-. <h d-.> fis-. <h d-.>|
%62
fis-. <h d-.> fis-. <cis' e-.>|
h, <fis' h d> h, <fis' h d>|
h, <fis' h d> h,-| <g'cis e>|
h, <fis' h d> h, <fis' h d>|
h, <fis' h d> h,-| <g'cis e>|
%67
h, <fis' h dis> h, <fis' h dis>|
h, <fis' h dis> fis, <fis' cis' e>|
h, <fis' h dis> h, <fis' h dis>|
h, <fis' h dis> fis, <fis' cis' e>|
h, <fis' h dis> h, <fis' h dis>|
%72
h, <fis' h dis> h, <fis' h dis>|
h, <fis' dis'> h, <fis' dis'>
h, <fis' dis'> h, <fis' h dis>|
h, <g' h e> h, <g' h e>|
h, <g' h e> h, <g' h>|
%77
h, <fis' ais> h, <fis' ais>|
h, <fis' ais> h, <fis' ais>|
h, <dis fis> h <dis fis>|
h <dis fis> h <dis fis>|
h <fis' dis'> h, <fis' dis'>|
%82
h, <fis' dis'> h, <fis' h dis>|
h, <g' h e> h, <g' h e>|
h, <g' h e> h, <g' h>|
h, <fis' ais> h, <fis' ais>|
%86
h, <fis' ais> h, <fis' ais>|
h, <dis fis> h <dis fis>|
h <dis fis> h <dis fis>|
e, e' e, e'|
e, e' fis, fis'|
%91
h, fis' h, fis'|
h, fis' h, fis'|
e, e' e, e'|
e, e' fis, fis'|
h,, h' h, h'|
h, h' h, h'|
%97
h, h' h, h'|
h, h' h, h'|
h, h' h, h'|
h, h' h, h'|
h, h' h, h'|
h, h' h, h'|
<h, fis' h>2-\fermata|
}

ffz = #(make-dynamic-script "ffz")

dynamics = {
s2\pp | s2 | \setTextCresc s2-\< | s2 | s2\f | s2*4 |
s4 \setTextDecresc s\> | s4\p s16. \setTextDecresc s32\> s8 | s2 | s2\pp| s2
s16. s32\mf s4. | s4 s4\ffz | s4\mf s4 | s4 s4\ffz |
s4\pp s4 | s2*3 | s2\pp | s2 | % :|
s2\f | s2 | s2\fz | s2 | s2\fz | s2 | s2\fz | s2 | s2\fz | s2 | s2\fz |
s2 | s2\pp | s2*7 | s2\ff | s2*3 | s2\p | s2 |
\setTextCresc s2\< | s2 | s2\f | s2*4 | s4 \setTextDecresc s4\> |
s4\p s16. \setTextDecresc s32\> s8 | s2 | s2\pp |
s2 | s2\mf | s4 s4\ffz | s2\mf | s4 s4\ffz |
% 67
s2\pp | s2*3 | s4 \setTextCresc s4\< | s2 | s2\f | s2*3 |
s2\ff | s2 | s8 \setTextDecresc s4.\> | s2 | s2\pp | s2*14 |
s8 \setTextDim s4.\> | s2*6 | s2\! }

\score {
    \new PianoStaff << 
	#(set-accidental-style 'piano)
	\new Staff = "right" { 
		#(revert-auto-beam-setting '(end 1 32 2 4) 1 8)
		#(revert-auto-beam-setting '(end 1 32 2 4) 3 8)
		<<\global \clef violin
	  		\melody
		>>
	}
	\new Dynamics = "dynamics" {
		\override DynamicTextSpanner #'dash-period = #-1.0
		\dynamics
	}
	\new Staff = "left" {<<
	    \global \clef bass
	    \accompaniment
	>>
	}
    >>
    
    \layout{
	\context {
	\type "Engraver_group"
	\name Dynamics
	\alias Voice
	\consists "Output_property_engraver"
	
	\override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
	\consists "Script_engraver"
	\consists "Dynamic_engraver"
	\consists "Text_engraver"
	
	\override TextScript #'font-size = #2
	\override TextScript #'font-shape = #'italic
	\override DynamicTextSpanner #'extra-offset = #'(0 . 2.5)
	\override DynamicText #'extra-offset = #'(0 . 2.5)
	\override Hairpin #'extra-offset = #'(0 . 2.5)
	\consists "Skip_event_swallow_translator"

	\consists "Axis_group_engraver"
	}
	\context {
		\PianoStaff
		\accepts Dynamics
		\override VerticalAlignment #'forced-distance = #6.4
		}
	} 
}
\score {
    \new PianoStaff <<
    \new Staff = "left" << \global \melody >>
    \new Staff = "right" << \global \accompaniment >>
    >>
    \midi {
    	\tempo 4 = 76
    }
}
