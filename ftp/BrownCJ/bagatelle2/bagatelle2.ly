\version "2.10.10"
\header{
	title = "A Tango Trifle"
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
 footer = "Mutopia-2007/10/06-1039"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

#(set-global-staff-size 19.7)
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
	\key f \major \clef treble \phrasingSlurUp

\time 4/4 c'4. \( _\markup { \italic \bold { sonore } } ^\markup { \bold { Slowish and smoochy! } }  bes'8 c'4 a'4 \)  | c'4. \(  bes'8 c'4 a'4 \)  | f'4. \(  c'8 d'8 e'8 f'8 g'8 | a'4. c''8 g'4 \)  c''4 | f'4. \(  c'8 d'8 e'8 f'8 g'8 | 
f'4. c'8 bes'4 c'4 \)  | f'4. \(  c'8 bes'4 e'4 \)  | g'2 f'2\fermata  \mark "Fine" \bar "||"  | c''4. \( ^\markup { \bold { a tempo } }  a'8 bes'8\<  c''8 d''8 ees%{%}''8 | c''4.\!  a'8 f''4 a'4 \)  | 
a'4. \(  \accent  f'8 g'8 a'8 bes'8 a'8 | c''4. a'8 bes'8 c''8 d''8\<  ees%{%}''8 | d''4. g'8\!  d''4 \)  a''4\breathe  | a''4. \(  \accent  f''8 \)  g''8 \staccato  a''8 \staccato  bes''8 \staccato  g''8 \staccato  | a''4. \accent  f''8 a''4. \accent  f''8 | 
a''4. \(  \accent  f''8 \)  g''8 \staccato \>  a''8 \staccato  bes''8 \staccato  d''8 \staccato  | c''4. \( \!  a'8 c''4. a'8 | c''4. a'8 bes'8 c''8 d''8 e%{%}''8 \)  | c''4. \(  a'8 c''4. a'8 | a'4. f'8 g'8 a'8 g'8 d'8 \)  | 
c'4. \( _\markup { \italic \bold { sonore } }  bes'8 c'4 a'4 | c'4. bes'8 c'4 g'4 \)  | f''4. \(  ees%{%}''8 d''8 c''8 bes'8 c''8 | d''4. f'8 d''4 \)  g''8 \(  f''8 \)  | d''4. \(  f'8 d''4 \)  ees%{%}''8 \(  d''8 \)  | 
c''4. \(  f'8 c''4 \)  d''8 \(  c''8 \)  | c''4. \( \<  f'8 c''4 \)  ees%{%}''8 \(  c''8 \) \!  | c''4. \(  f'8\<  c''4 \)  f''8 \(  c''8 \) \!  | f''8 \(  d''8 \)  f''8 \(  c''8 \) \<  f''8 \(  d''8 \)  g''16 \(  f''16\!  c''8 \) \f  | \time 5/4 aes%{%}''8 \( \<  bes'8 \)  bes''4\! ^\markup { \bold { rit } }  des%{%}'''4 bes''4 ees%{%}'''4 | 
\time 4/4 d%{%}'''4 \(  des%{%}'''2\>  bes''4 \)  | aes%{%}''4. \( \mf ^\markup { \bold { a tempo } }  c''8 aes%{%}''4 ees%{%}'''4 \)  | aes%{%}''4. \(  c''8 aes%{%}''4 \)  bes''8 \(  aes%{%}''8 \)  | aes%{%}''4. \(  c''8 aes%{%}''4 \)  bes''8 \(  aes%{%}''8 \)  | aes%{%}''4. \(  g''8 d''4 ees%{%}''4 \)  | 
ees%{%}''4. \(  f''16 e''16 b%{es%}'4 d''4 \)  | c''4. \(  g'8 c''4 a%{%}''4 | g''4. e%{%}''8 g''4 d'''4 \)  | e'''4. \(  g''8 e'''4 \)  a'''8 \(  g'''8 \)  | e'''4. \(  g''8 e'''4 \)  f'''8 \(  e'''8 \)  | 
e'''4. \(  g''8\>  e'''4 \)  f'''8 \(  e'''8 \) \!  | c'''4. \(  g''8 c'''4 \)  d'''8 \(  c'''8 \)  | c'''4. \(  g''8 c'''4 \)  c'''8 \(  b%{es%}''8 \)  | b%{es%}''4. \(  e''8 b%{es%}''4 \)  b%{es%}''8 \(  a''8 \)  | 
g''4. \(  c''8 g''4 \)  a''8 \(  g''8 \)  | g''4. \(  c''8_\markup { \italic \bold { poco a poco dim } }  g''4 \)  f''8 \(  e''8 \)  | e''4. \(  a'8 e''4 \)  f''8 \(  e''8 \)  | e''4. \(  a'8 e''4 \)  e''8 \(  a''8 \)  | d''8 \(  g''8 \)  c''8 \(  f''8 \)  b%{es%}'8 \(  e''8 \)  a'8 \(  d''8 \)  | 
g'8 \(  c''8 \)  f'8 \(  d''8 \)  g'8 \(  c''8 \)  f'8 \(  d''8 \)  \once \override Score.RehearsalMark #'self-alignment-X = #right
\once \override Score.RehearsalMark #'padding = #3.0
\mark "D.C. al Fine " \bar ":|" 
}
>> } \score { \music \layout { } }
\score { \unfoldRepeats \music \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 84 4) } } }

