\version "2.10.10"
\header{
	title = "In a Summer Garden"
	composer = "Chris Brown"
    dedication = "for Silas"
    mutopiacomposer = "BrownCJ"
    mutopiainstrument = "Flute"
    date = "August 27, 2007"
    source = "Typeset from the manuscript by permission of the composer"
    style = "Romantic"
    mutopiacopyright = "Creative Commons Attribution 3.0"
    maintainer = "Silas Brown"
    maintainerWeb="http://ssb22.user.srcf.net/"
 footer = "Mutopia-2007/10/06-1038"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

#(set-global-staff-size 18.7)
piuf = \markup { \italic piu \dynamic f }
pocof = \markup { \italic poco \dynamic f }

music={
\override Score.Hairpin #'after-line-breaking = ##t
\context Staff <<
	\context Voice = Flute {
    \set Staff.instrumentName = "Flute"
	\set Staff.midiInstrument = "flute"
#(set-accidental-style 'modern-cautionary)
\override Staff.TimeSignature  #'style = #'numbered
\override Score.RehearsalMark
       #'break-visibility = #begin-of-line-invisible
	\key g \major \clef treble \phrasingSlurUp

\repeat volta 2 {\time 3/4 
% automatic beams should end on the 1st and 2nd crotchet
#(override-auto-beam-setting '(end * * * *) 1 4)
#(override-auto-beam-setting '(end * * * *) 2 4)
e'4 \( _\markup { \italic \bold { sonore } } ^\markup { \bold { Allegro moderato, \note #"2." #.75 beat } }  b'2 \)  | e'4 \(  b'2 \)  | e'4 \(  b'4. \) \<  b'8 | b'16\!  a'16 b'8 \(  ~ \>  b'8 c''8 ~  c''4 | d''4.\!  c''16 \)  b'16 a'8 r8} | 
d''4. c''16 b'16 a'8 r8 | a'16 gis%{%}'16 a'8 ~ \<  a'8 b'8 ~  b'4\!  | e''4. d''16 cis%{%}''16 a'8 r8 | e''4.\<  d''16 cis%{%}''16\!  a'8 r8 | <<fis''2 \(  ~  \accent  {s4s4\< } >> fis''8 gis%{%}''8 \) \!  \once \override Score.RehearsalMark #'self-alignment-X = #right
\once \override Score.RehearsalMark #'padding = #3.0
\mark "D.C. with repeat " \bar ":|"  | 
a''16 \( \f  gis%{%}''16 a''8 ~  a''8 b'8 ~  b'8 a'8 | a''2 \)  ~  a''8 r8 | gis%{%}''16 \(  fis''16 gis%{%}''8 ~  gis%{%}''8\>  a'8 ~  a'8 gis%{%}'8 | fis''2 \)  ~  fis''8 r8 | fis''16 e''16 \(  fis''8 ~  fis''8 a'8 ~  a'8\!  gis%{%}'8 | 
e''2 \)  ~ \mp  e''8 r8 | e''16 \(  dis%{%}''16 e''8 ~  e''8 \)  a'8 \tenuto \breathe  e''16 \(  d%{%}''16 e''8 ~  | e''8 \)  gis%{%}'8 \tenuto  e''16 \(  dis%{%}''16 e''8 ~  e''8 \)  g%{%}'8 \tenuto  | fis'4 \(  d%{%}''2 \)  | fis'4 \(  d''2 \)  | 
fis'4 \(  d''4. \) \<  d''8\!  | 
% cancel auto beaming ending on 1st crotchet
#(revert-auto-beam-setting '(end * * * *) 1 4)
 \times 4/6 {d''8 \(  cis%{%}''8 d''8 dis%{%}''8 e''8\>  eis%{%}''8 \) } fis''8 \tenuto  g''8 \tenuto  | 
% automatic beams should end on the 1st and 2nd crotchet
#(override-auto-beam-setting '(end * * * *) 1 4)
#(override-auto-beam-setting '(end * * * *) 2 4)
gis%{%}''8 \tenuto  r8\! _\markup { \italic \bold { dolciss } }  a'16 \(  gis%{%}'16 d%{%}''8 ~  d%{%}''8 c%{%}''8 | e''8 \)  r8 a'16 \(  gis%{%}'16 d''8 ~  d''8 c''8 | f%{is%}''8 \)  r8 g%{%}''16 \(  f%{is%}''16 e''8 ~  e''8 a''8 \)  | 
d''8 \tenuto  r8 d''16 \(  c''16 b'8 ~  b'8 e''8 \)  \once \override Score.RehearsalMark #'self-alignment-X = #right \mark \markup \musicglyph #"scripts.coda" \bar "||"  | 
% cancel auto beaming ending on 2nd crotchet
#(revert-auto-beam-setting '(end * * * *) 2 4)
a'8 \tenuto  r8  \times 4/6 {a'8 \(  b'8 c''8 d''8\<  e''8 f%{is%}''8 \) \! } | 
% automatic beams should end on the 1st and 2nd crotchet
#(override-auto-beam-setting '(end * * * *) 1 4)
#(override-auto-beam-setting '(end * * * *) 2 4)
g''8 \tenuto  a''8 \tenuto  b''8 \tenuto  r8 c'''16 b''16 c'''8 ~  | c'''8 e''8 d''8 b''8 ~  b''4\breathe  | 
b''16 \(  a''16 b''8 ~  b''8 d''8 c''8 a''8 \)  ~  | a''4\breathe  a''16 g''16 \(  a''8 ~  a''8 c''8 | b'8 \)  g''8 ~  g''4\breathe  g''16 fis%{is%}''16 \(  g''8 ~ \>  | g''8 a''8 b''2 \) \!  | 
c'''16\mp  b''16 \(  c'''8 ~  c'''8 e''8 d''8 b''8 \)  ~  | b''4\breathe  b''16 a''16 \(  b''8 ~  b''8 d''8 | c''8 \)  a''8 ~  a''4\breathe  a''16 gis%{%}''16 \(  a''8 ~  | a''8 d''8 c''8 g%{%}''8 \)  r8 f%{is%}''16 \(  e''16 | 
f%{is%}''8 \)  a'8 gis%{%}'8 e''8 ~ \<  e''4\!  | 
% cancel auto beaming ending on 1st crotchet
#(revert-auto-beam-setting '(end * * * *) 1 4)
 \times 4/6 {d'8 \(  dis%{%}'8 e'8 eis%{%}'8 fis'8\<  g'8} a'8 d'''8 \)  ~ \!  | 
% automatic beams should end on the 1st and 2nd crotchet
#(override-auto-beam-setting '(end * * * *) 1 4)
#(override-auto-beam-setting '(end * * * *) 2 4)
d'''8_\pocof  r8 d'''4. d'''8 | cis%{%}'''16 \(  a''8. \)  e''4 b''4 ~  | b''8 r8 b''4. b''8 | 
a''16 \(  fis''8. \)  e''4 e'''4 ~  | e'''8 r8 d'''4._\piuf  d'''8 | cis%{%}'''16 \(  a''8. \)  fis''4 b''4 ~  | b''8 r8 b''4. b''8 | a''16 \(  fis''8. \)  e''4 fis''4 ~  | 
fis''8 r8 g%{%}''4. g''8 | fis''16 \(  d''8. \)  b'4 e''4 ~  | e''4 \tenuto  b'4 e''4 ~  | e''4 \tenuto  b'4 fis''4 ~  | fis''4 a''2\fermata  \once \override Score.RehearsalMark #'self-alignment-X = #right
\once \override Score.RehearsalMark #'padding = #3.0
\mark "D.C. senza repeat al Coda " \bar ":|"  | 
a'8 \tenuto  ^\markup \bigger \musicglyph #"scripts.coda" \p  r8 a'16_\markup { \italic \bold { dolciss } }  g'16 fis'8 ~  fis'8 b'8 | e'2 r8 b'8 | e'2 r8 b'8 | e''2. ~  | e''2.\fermata  \bar "|."
}
>> } \score { \music \layout { } }
\score { \unfoldRepeats \music \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } } }

