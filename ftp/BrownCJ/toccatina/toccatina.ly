\version "2.10.10"
\header{
	title = "Toccatina"
	subtitle = ""
	composer = "Chris Brown"
mutopiacomposer="BrownCJ"
mutopiainstrument="Piano"
date="2008"
style="Modern"
source="Typeset from the manuscript by permission of the composer"
copyright="Creative Commons Attribution 3.0"
maintainer="Silas Brown"
maintainerWeb="http://ssb22.user.srcf.net/"
    dedication = "for Sue"
 footer = "Mutopia-2008/06/09-1450"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

#(set-global-staff-size 21)
dim = \markup { \italic dim }
nonrit = \markup { (non rit.) }
menof = \markup { \italic meno \dynamic f }
semprep = \markup { \italic sempre \dynamic p }
mpsempre = \markup { \dynamic mp \italic sempre }

music={
\override Score.Hairpin #'after-line-breaking = ##t

        \new PianoStaff <<
    \set PianoStaff.instrumentName = \markup { \center-align { "Piano" "or Organ" } }
	\set PianoStaff.midiInstrument = "acoustic grand"
  \context Staff = "one" << \new Voice { 
#(set-accidental-style 'piano-cautionary)
\override TextScript #'padding = #2.0
\override DynamicLineSpanner #'padding = #2.0
\override Staff.TimeSignature  #'style = #'numbered
\key d \major \clef treble
\time 3/4   R2. ^\markup { \column { \line { \bold { \note #"4" #.75 = 108 } } " " } } \p  |   R2. | \repeat volta 2 {e'4 b'2 | e'4 b'2 | e'4 b'4 cis''4} | 
  e'4 cis''4 d''4 |   d''8 cis''8 b'8 cis''8 b'8 a'8 | e'4 b'2 | e'4 b'2 | e'4 b'4 cis''4 | 
  e'4 d''4\<  cis''8 e''8 |   d''8 cis''8 b'2 ~  \accent \!  | b'4 cis''2 ~  \accent  | cis''4 cis''2 \accent  | \repeat volta 2 {e''8 d''8 cis''8 b'8 cis''8 b'8 | 
  e''8 d''8 cis''8 b'8 cis''8 b'8 |   cis''2. \accent  | cis''2. \accent } | e'8 b'8 <<cis''4{ s8 s8 \> } >> b'4 | e'8 b'8 <<cis''4{ s8 s8 \! } >> b'4 | 
\repeat volta 2 {  e''8\p  d''8 cis''8 b'8 cis''8 b'8 |   e''8 d''8 cis''8 b'8 cis''8 b'8 | e'8 b'8 cis''4 b'4 | e'8 b'8 cis''4 b'4} | e''8 cis''8\<  b'8 cis''8 b'8 cis''8\!  | 
\repeat volta 2 {  c%{is%}''4 \accent  a'2 \accent  |   c%{is%}''4 \accent  a'2 \accent  | e'8 b'8 cis''8 b'8 cis''8 b'8 | e'8 b'8 cis''8 b'8 cis''8 b'8} | a'4 fis'2\>  | a'4 fis'2 | 
  fis'8\! \p  cis''8 d''8 cis''8 d''8 cis''8 |   fis'8 cis''8 d''8 cis''8 d''8 cis''8 | fis'8 cis''8 d''8 cis''8 d''8 cis''8 | fis'8 cis''8 d''8 cis''8 d''8 cis''8 | fis'8 cis''8 d''8 cis''8 d''8 cis''8 | 
  fis'8 cis''8 d''8 cis''8 d''8 cis''8 |   fis'8 cis''8 d''8 cis''8 d''8 cis''8 | fis'8 cis''8 d''8 cis''8 d''8 cis''8 | fis'8 cis''8 d''8 cis''8 d''8 cis''8 | fis'8 cis''8 d''8 cis''8 d''8 cis''8 | 
  fis'8 cis''8 d''8 cis''8\<  d''8 cis''8 |   fis'8 cis''8 d''8 cis''8\!  d''8 cis''8 | e''8 cis''8 b'8 cis''8 b'8 cis''8 | d''8 b'8 a'8 b'8 a'8 b'8 | e'8 g'8 a'8\<  b'8 a'8 b'8 | 
  e'8 g'8 a'8 b'8 a'8\!  b'8 |   e'8 g'8 a'8 b'8 a'8 b'8 | e'8 g'8 a'8 b'8 a'8 b'8 | cis''8 e''8 dis%{%}''8 cis''8 b'8 a'8 | cis''8 e''8 dis%{%}''8 cis''8 b'8 a'8 | 
  b'4 g'2 |   <<b'4{ s8 s8 \> } >> g'2 |   a'4 fis'2 |   a'4\!  fis'2 |  \override DynamicLineSpanner #'padding = #0.0 g'8\p  b'8 cis''8 d''8 cis''8 d''8 | 
 \override DynamicLineSpanner #'padding = #2.0 g'8 b'8 cis''8 d''8 cis''8 d''8 | g'8 cis''8 e''8 dis%{%}''8 cis''8 dis%{%}''8 | g'8 cis''8\<  e''8 dis%{%}''8 cis''8 e''8\!  | b''8 g''8\>  fis''8 g''8 fis''8 e''8\!  | 
e''4_\semprep  cis''2 | e''4_\nonrit  cis''2 | cis''8 e''8 dis%{%}''8 cis''8 b'8 a'8 | cis''8 r8 r4 r4
\bar "|."
    }

  >> \context Staff = "two" << \new Voice { 
 \key d \major \clef bass
\override Staff.NoteCollision #'merge-differently-headed = ##t
\override Staff.NoteCollision #'merge-differently-dotted = ##t

\time 3/4 fis8 cis'8 d'8 cis'8 d'8 cis'8 | fis8 cis'8 d'8 cis'8 d'8 cis'8 | \repeat volta 2 {fis8 cis'8 d'8 cis'8 d'8 cis'8 | fis8 cis'8 d'8 cis'8 d'8 cis'8 | fis8 cis'8 d'8 cis'8 d'8 cis'8} | 
fis8 cis'8 d'8 cis'8 d'8 cis'8 | fis8 cis'8 d'8 cis'8 d'8 cis'8 | fis8 cis'8 d'8 cis'8 d'8 cis'8 | fis8 cis'8 d'8 cis'8 d'8 cis'8 | fis8 cis'8 d'8 cis'8 d'8 cis'8 | 
fis8 cis'8 d'8 cis'8 d'8 cis'8 | fis8 cis'8 d'8 cis'8 d'8 cis'8 | fis8 cis'8 d'8 cis'8 d'8 cis'8 | fis8 cis'8 d'8 cis'8 d'8 cis'8 | \repeat volta 2 {fis8 cis'8 d'8 cis'8 d'8 cis'8 | 
fis8 cis'8 d'8 cis'8 d'8 cis'8 | fis8 cis'8 d'8 cis'8 d'8 cis'8 | fis8 cis'8 d'8 cis'8 d'8 cis'8} | fis8 cis'8 d'8 cis'8 d'8 cis'8 | fis8 cis'8 d'8 cis'8 d'8 cis'8 | 
\repeat volta 2 {fis8 cis'8 d'8 cis'8 d'8 cis'8 | fis8 cis'8 d'8 cis'8 d'8 cis'8 | fis8 cis'8 d'8 cis'8 d'8 cis'8 | fis8 cis'8 d'8 cis'8 d'8 cis'8} | fis8 cis'8 d'8 cis'8 d'8 cis'8 | 
\repeat volta 2 {fis8 cis%{is%}'8 d'8 cis'8 d'8 cis'8 | fis8 cis%{is%}'8 d'8 cis'8 d'8 cis'8 | fis8 cis%{is%}'8 d'8 cis'8 d'8 cis'8 | fis8 cis%{is%}'8 d'8 cis'8 d'8 cis'8} | fis8 cis%{is%}'8 d'8 cis'8 d'8 cis'8 | fis8 cis%{is%}'8 d'8 cis'8 d'8 cis'8 | 
R2. | R2. | e'4 cis'2 | e'4 b2 | e'4 a2 | 
gis%{%}8 cis'8 b8 cis'8 b8 cis'8 | gis%{%}8 cis'8 b8 cis'8 b8 cis'8 | gis%{%}8 cis'8 b4 cis'4 | gis%{%}8 cis'8 b4 cis'4 | e'8 cis'8 b8 cis'8 b8 cis'8 | 
d'8 b8 a8 b8 a8 b8 | cis'8 a8 gis%{%}8 a8 gis%{%}8 b8 | fis8 cis'8 d'8 cis'8 d'8 cis'8 | fis8 cis'8 d'8 cis'8 d'8 cis'8 | cis'8 e'8 dis%{%}'8 cis'8 b8 a8 | 
cis'8 e'8 dis%{%}'8 cis'8 b8 a8 | cis'4 \accent  fis2 \accent  | cis'4 \accent  fis2 \accent  | e8 g8 a8 b8 a8 b8 | e8 a8 b8 cis'8 d%{%}'8 cis'8 | 
b8 d'8 cis'8 b8 a8 g8 | b8 d'8 cis'8 b8 a8 g8 | fis8 cis'8 d'8 cis'8 d'8 cis'8 | fis8 cis'8 d'8 cis'8 d'8 cis'8 | e'8 d'8 cis'8 b8 d'8 b8 | 
e'8 d'8 cis'8 b8 a8 fis8 | e8 b8 cis'8 b8 cis'8 b8 | e8 b8 cis'8 b8 cis'8 b8 | e8 b8 cis'8 b8 cis'8 d'8 | 
fis8 cis'8 d'8 cis'8 d'8 cis'8 | fis8 cis'8 d'8 cis'8 d'8 cis'8 | cis8 e'8 dis%{%}'8 cis'8 b8 a8 | fis8 r8 r4 r4
\bar "|."
    } >> 
  >>
} \score { \music \layout { } }
\score { \unfoldRepeats \music 
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 108 4)
      }
    }


}

