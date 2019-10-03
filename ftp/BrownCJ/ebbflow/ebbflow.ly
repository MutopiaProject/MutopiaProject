\version "2.9.16"
\header{
	title = "Ebb and Flow"
	subtitle = "(Time and Tide)"
	composer = "Chris Brown"
    dedication = "for Silas Brown"
 mutopiatitle = "Ebb and Flow"
 mutopiacomposer = "BrownCJ"
 mutopiainstrument = "Flute and Piano"
 date = "2006"
 source = "Typeset from the manuscript with full permission of the composer"
 style = "Romantic"
 copyright = "Creative Commons Attribution 2.5"
 maintainer = "Silas Brown"
 maintainerWeb="http://ssb22.user.srcf.net/"
 lastupdated = "2006/Aug/28"
 footer = "Mutopia-2006/08/30-812"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/2.5" http://creativecommons.org/licenses/by/2.5 } } } }
}

#(set-global-staff-size 18.8)
dolce = \markup { \italic \bold dolce }
piuf = \markup { \italic piu \dynamic f }
pocof = \markup { \italic poco \dynamic f }

music={
\override Score.Hairpin #'after-line-breaking = ##t
\context Staff <<
	 \context Voice = Flute {
    \set Score.skipBars = ##t
    \set Staff.instrumentName = "Flute"
	\set Staff.midiInstrument = "flute"
#(set-accidental-style 'modern-cautionary)
\override Staff.TimeSignature  #'style = #'numbered
	\key a \major \clef treble

\time 4/4 R1^\markup{\bold{Lento moderato}} | R1 | R1 | \time 3/4 R2.\breathe  | 
\time 4/4 R1 | R1 | R1 | \time 3/4 R2.\breathe  | \time 4/4 R1 | 
R1 | R1 | \time 3/4 R2. | \time 4/4 R1 | R1 | 
\time 3/4 R2. | r4 r4  \times 2/3 {r8\mp  b'8 a'8} |  \bar "||" \time 4/4 e''4.\segno ^\markup{\bold{ (Tempo primo)}} cis''8~ cis''4  \times 2/3 {cis''8( fis''8) b'8~} | b'2.  \times 2/3 {r8 b''8 a''8} | 
\once \override DynamicLineSpanner #'padding = #3.0 e'''8 cis'''8~  \times 2/3 {cis'''8 cis'''8( e'''8)} b''2~\<  | \once \override DynamicLineSpanner #'padding = #3.0 b''8 b''8  \times 2/3 {b''8( e'''8) gis''8~} gis''2~ | gis''8 gis''8  \times 2/3 {gis''8( e'''8) fis''8~} fis''2~ | fis''8\!  fis''8  \times 2/3 {fis''8( a''8) cis''8~} cis''2~ | 
cis''8 cis''8  \times 2/3 {cis''8( e''8) b'8} fis''2 | \once \override DynamicLineSpanner #'padding = #3.0 <<e''2~ {s4s4\> } >>  \times 2/3 {e''8 d''8( a''8)} cis''4~ | cis''4\breathe  cis''2\!  \once \override DynamicLineSpanner #'padding = #3.0  \times 2/3 {r8\mp  cis''8 b'8} | e''2~\(  \times 2/3 {e''8 d''8( a''8)} cis''8\) r8 | 
 \times 2/3 {cis''8( b'8 fis''8 ) ~ } fis''2( a'8) r8 |  \times 2/3 {a'8( gis'8 e''8 ) ~ } e''2( fis'8) r8 | fis'8( a'4 e'8 ) ~  e'2~ | e'8 r8 r4 r2 | 
r2 r4  \times 2/3 {r8\p  b'8 a'8} | e''4. cis''8~ cis''4  \times 2/3 {cis''8( fis''8) b'8~} | b'2.  \times 2/3 {cis''8( e''8) gis'8~} | \once \override DynamicLineSpanner #'padding = #3.0 <<gis'2.~ {s4.s4.\< } >>  \times 2/3 {gis'8 gis'8(\!  e''8)} | 
fis'2. <<gis'4~ {s8s8\< } >> | gis'4~  \times 2/3 {gis'8 fis'8(\!  a'8)} e'2 | <<e'4~ {s8s8\< } >>  \times 2/3 {e'8 d'8 a'8~\! } a'4.\>  b'8\!  | r2 r4 r8 fis'8(\mf  | 
e''4.) d''8~ d''4~  \times 2/3 {d''8 cis''8( d''8)} | cis''4--  b'4--  e''4--  gis''4-- \<  | b''4 a''16 b''16 a''16\!  cis'''16 dis%{%}''2(\f  | e''8) r8 a''16 b''16 a''16 c%{is%}'''16 d''2( | 
e''8)  r8  a''16  b''16  a''16  cis'''16  <<e'''2->  {s4s4\< } >> | d''2-> \! _\piuf  b''2->  | d''2->  a''2->  | cis''2._\markup{\italic {dim e rall}}  a'4~ | 
<<a'1~ {s2s2\> } >> | a'1\fermata \!  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \mark \markup \center-align {Fine " " \musicglyph #"scripts.ufermata"} \bar "||"  | \once \override DynamicLineSpanner #'padding = #3.0 cis''4.(^\markup{\bold{ Tempo primo, piu mosso}}_\markup{\italic espress} \mp  a'8 e''4~  \times 2/3 {e''8 d''8 cis''8)} | \time 3/4 b'4( cis''4 d''4) | \time 4/4 <<cis''4.( {s8.s8.\< } >> a'8 e''4~  \times 2/3 {e''8\!  d''8 cis''8)} | 
\time 3/4 fis''4( b'4 cis''4) | d''4 e''8(\>  d''8) cis''8( b'8)\!  | \time 4/4  \times 2/3 {cis''4\( a'4 cis''4} e''4~  \times 2/3 {e''8 d''8 cis''8} | \time 3/4 b'4 cis''4 d''4\) | \time 4/4  \times 2/3 {cis''4\( a'4 cis''4} e''4~  \times 2/3 {e''8 d''8 cis''8\)} | 
\time 3/4 d''4( b'4 <<fis''4) {s8s8\< } >> | cis''4( a'4 e''4) | b'4 gis'4\!  e''4 | \time 4/4 cis''2.\mf  d''8 cis''8 | \once \override DynamicLineSpanner #'padding = #3.0 cis''2.\<  e''8 d''8 | 
\once \override DynamicLineSpanner #'padding = #3.0 <<d''2. {s4.s4.} >> fis''8 e''8 | \once \override DynamicLineSpanner #'padding = #3.0  \times 2/3 {e''4\! \f  a'4\( cis''4} e''4~  \times 2/3 {e''8 d''8 cis''8} | \time 3/4 b'4 cis''4 d''4\) | \time 4/4  \times 2/3 {cis''4 a'4\( cis''4} e''4~  \times 2/3 {e''8 d''8 cis''8} | \time 3/4 d''16 cis''16 d''8~ d''8 b'8\) fis''4 | 
cis''16\( b'16 cis''8~ cis''8 a'8 e''4\) | b'16\( a'16 b'8~ b'8 gis'8 e''4\) | \time 4/4  \times 2/3 {e''4\( a'4 cis''4} cis''4~  \times 2/3 {cis''8 d''8\) e''8} | \once \override DynamicLineSpanner #'padding = #3.0  \times 2/3 {fis''4\( b'4 cis''4\> } d''4~  \times 2/3 {d''8 e''8\) fis''8} | \once \override DynamicLineSpanner #'padding = #3.0 e''4.^\markup{\bold{ \italic rall}} d''8~ d''4. fis''8 | \once \override DynamicLineSpanner #'padding = #3.0 cis''2.\!  \once \override DynamicLineSpanner #'padding = #3.0  \times 2/3 {r8\mp  d''8 cis''8} \once \override Score.RehearsalMark #'self-alignment-X = #right \once \override Score.RehearsalMark #'padding = #3.0 \mark "D.S. al Fine " \bar ":|" 
}
        \new PianoStaff <<
    \set PianoStaff.instrumentName = "Piano   "
	\set PianoStaff.midiInstrument = "acoustic grand"
    \set PianoStaff.followVoice = ##t
  \context Staff = "one" << \new Voice { \voiceOne
#(set-accidental-style 'piano-cautionary)
\override TextScript #'padding = #3.0
\override Staff.TimeSignature  #'style = #'numbered
\key a \major \clef treble
 \voiceOne \time 4/4  \times 2/3 {b''8^\markup{\bold{Lento moderato}}_\dolce \pp  a''8 cis'''8~} cis'''2. |  \times 2/3 {b''8 a''8 c%{is%}'''8~} c%{is%}'''2. |  \times 2/3 {b''8  a''8  cis'''8~ } cis'''2  e'''4--  | \time 3/4 fis''2.\breathe  | 
\time 4/4  \times 2/3 {b'8 a'8 cis''8~} cis''2. |  \times 2/3 {b'8 a'8 c%{is%}''8~} c%{is%}''2. |  \times 2/3 {b'8  a'8  cis''8~ } cis''2  e''4--  | \time 3/4 fis'2.\breathe  | \time 4/4  \times 2/3 {b'8 a'8 c%{is%}''8~} c%{is%}''2. | 
 \times 2/3 {b'8 a'8 cis''8~} cis''2. |  \times 2/3 {b'8  a'8  c%{is%}''8~ } c%{is%}''2  e''4--  | \time 3/4 fis'2. |  \oneVoice \time 4/4 <e' gis'>8\mp \<  <e' gis'>4 <d' b'>8\!  <d' fis'>2 | <e' gis'>8\mp \<  <e' gis'>4 <d' cis''>8\!  <d' fis'>2 | 
\time 3/4  \times 2/3 {d'8 cis'8 fis'8~} fis'2\>  |  \times 2/3 {fis'8 a'8 e'8~\! } e'2 |  \bar "||" \time 4/4 <e' gis'>8\segno ^\markup{\bold{ (Tempo primo)}}\p  <e' gis'>4 <d' cis''>8 <d' fis'>2 | <e' gis'>8 <e' gis'>4 <d' b'>8 <d' fis'>2 | 
<e' gis'>8 <e' gis'>4 <d' cis''>8 <d' fis'>2 |  \voiceOne <b' cis'' fis''>2.\laissezVibrer  s4 | <b' cis'' fis''>2.\laissezVibrer  s4 | <b' cis'' fis''>2.\laissezVibrer  s4 | 
<b' cis'' fis''>2. s8 s8 | <e'' gis''>8 <e'' gis''>4 <d'' b''>8 <d'' fis''>2 | <e'' gis''>8 <e'' gis''>4 <e'' cis'''>8 <e'' fis''>2 | <b' cis'' gis''>2.\laissezVibrer  s4 | 
<b' cis'' gis''>2.\laissezVibrer  s4 | <b' cis'' gis''>2.\laissezVibrer  s4 | b'4 e''4 gis''4 b''4 |  \oneVoice <e' gis'>8 <e' gis'>4 <d' b'>8 <d' fis'>2 | 
<e' gis'>8\pp  <e' gis'>4 <d' cis''>8 <d' fis'>2 |  \voiceOne  \times 2/3 {b'8 a'8 cis''8~} cis''2. |  \times 2/3 {b'8 a'8 c%{is%}''8~} c%{is%}''2. |  \times 2/3 {b'8 a'8 cis''8~} cis''2. | 
 \times 2/3 {b'8 a'8 c%{is%}''8~} c%{is%}''2 e''4 |  \times 2/3 {b'8 a'8 cis''8~} cis''2 e''4 |  \times 2/3 {b'8 a'8 c%{is%}''8~} c%{is%}''2. |  \oneVoice <e' gis'>8 <e' gis'>4 <d' b'>8 <d' fis'>2 | 
<e' gis'>8 <e' gis'>4\<  <d' b'>8 <d' fis'>2 | <e' gis'>8 <e' gis'>4 <d' b'>8 <d' fis'>2\!  |  \voiceOne <b' cis'' gis''>2.\laissezVibrer  s4 | <b' cis'' gis''>2.\laissezVibrer  s4 | 
<b' cis'' gis''>2.\laissezVibrer  s4 |  \times 2/3 {b'8_>  a'8_>  cis''8~_> } cis''2. |  \times 2/3 {b'8->  a'8->  c%{is%}''8~-> } c%{is%}''2. | b'8  a'8  cis''8  fis'8~  fis'2~^\markup{\bold \italic rall}  | 
fis'2 fis'2~ | fis'4 <fis' a'>2.\fermata  |  \oneVoice <a' cis'' fis''>2^\markup{\bold{ Tempo primo, piu mosso}}_\markup{\italic leggiero} \p  <b' cis'' gis''>2 | \time 3/4 <b' d'' a''>2. | \time 4/4 <a' cis'' fis''>2\<  <b' cis'' gis''>2\!  | 
\time 3/4 <b' d'' a''>2. | a'8\>  fis''8 a'8 e''8 a'8 d''8\!  | \time 4/4 \once \override DynamicLineSpanner #'padding = #3.0  \times 2/3 {<a' cis''>4\pp  <a' cis''>2}  \times 2/3 {<a' cis''>4 <a' cis''>2} | \time 3/4 <d' fis'>2 <d' a'>4 | \time 4/4 \tupletUp \setTextCresc  \times 2/3 {<a' cis''>4 <a' cis''>2\< }  \times 2/3 {<a' cis''>4 <a' cis''>2} | 
\time 3/4 \tupletNeutral <d' fis'>2 <d' a'>4 | <d' fis'>2 <d' b'>4 | <d' fis'>2\!  <d' cis''>4 |  \voiceOne \time 4/4 <b' cis'' gis''>2.\laissezVibrer  s4 | <b' cis'' gis''>2.\laissezVibrer  s4 | 
\setHairpinCresc <b' d'' a''>2.~ d''8 <cis'' e''>8 |  \oneVoice \once \override DynamicLineSpanner #'padding = #3.0  \times 2/3 {<cis'' e''>2\f  <a' cis''>4}  \times 2/3 {<cis'' e''>2 <a' cis''>4} | \time 3/4 <d' fis'>2 <d' a'>4 | \time 4/4  \times 2/3 {<cis'' e''>2 <a' cis''>4}  \times 2/3 {<cis'' e''>2 <a' cis''>4} | \time 3/4 <d' fis'>2 <d' a'>4 | 
<d' fis'>2 <d' b'>4 | <d' fis'>2 <d' cis''>4 | \time 4/4 <b d' a'>2.~ <b cis' a'>4 | \once \override DynamicLineSpanner #'padding = #3.0 <b d' a'>2.~\>  <b fis' a'>4 | \once \override DynamicLineSpanner #'padding = #3.0 <e' gis'>8^\markup{\bold{ \italic rall}} <e' gis'>4 <d' b'>8 <d' fis'>2 | \once \override DynamicLineSpanner #'padding = #3.0 <e' gis'>8 <e' gis'>4\!  <d' cis''>8 <d' fis'>2

    } \new Voice { \voiceTwo \key a \major
\time 4/4 \change Staff=one \voiceTwo \override DynamicText #'transparent = ##f r2 <e'' gis''>2~ | <e'' gis''>2 <d'' fis''>2~ | <d'' fis''>2  <e'' gis''>2--  | \time 3/4 r2. | 
\time 4/4 s2 <e' gis'>2~ | <e' gis'>2 <d' fis'>2~ | <d' fis'>2  <e' gis'>2--  | \time 3/4 s2. | \time 4/4 r2 <d' e'>2~ | 
<d' e'>2\override DynamicText #'transparent = ##t  <b d'>2~\p \<  | <b d'>2 <a c%{is%}'>2~\!  | \time 3/4 <a cis'>2 <fis a cis'>4 | \time 4/4 \change Staff=two \oneVoice \override DynamicText #'transparent = ##t <e a cis'>8 <e a cis'>4 <e a b>8 <e a b>2 | <e a cis'>8 <e a cis'>4 <e a b>8 <e a b>2~ | 
\time 3/4 <e a b>2\override DynamicText #'transparent = ##t  <e a cis'>4~\mp  | <e a cis'>2. | \time 4/4 <e a cis'>8 <e a cis'>4 <e a b>8 <e a b>2 | <e a cis'>8 <e a cis'>4 <e a b>8 <e a b>2 | 
<e a cis'>8\override DynamicText #'transparent = ##f  <e a cis'>4 <e a b>8 <e a b>2 | \change Staff=one \voiceTwo \override DynamicText #'transparent = ##f fis'8(_\markup{\italic cresc}  f%{is%}'8 e'8 f%{is%}'8 fis%{is%}'4. a'8) | fis'8( f%{is%}'8 e'8 f%{is%}'8 fis%{is%}'4.\<  b'8) | fis'8 f%{is%}'8( e'8 f%{is%}'8 fis%{is%}'4.\!  cis''8) | 
fis'8 f%{is%}'8\( e'8 f%{is%}'8 fis%{is%}'4.( <a' fis''>8)\)\>  | <e' a' cis''>8 <e' a' cis''>4 <e' a' b'>8 <e' a' b'>2\!  | <e' a' cis''>8\p  <e' a' cis''>4 <e' a' b'>8 <e' a' b'>2 | fis'8 f%{is%}'8( e'8 f%{is%}'8 fis%{is%}'4. a'8) | 
e'2( cis'2) | e'2( cis'2) | a1 | \change Staff=two \oneVoice \override DynamicText #'transparent = ##t <e a cis'>8 <e a cis'>4 <e a b>8 <e a b>2 | 
<e a cis'>8 <e a cis'>4 <e a b>8 <e a b>2 | \change Staff=one \voiceTwo \override DynamicText #'transparent = ##f s2 <e' gis'>2~ | <e' gis'>2 <d' fis'>2~ | <d' fis'>2 <d' fis'>2~ | 
<d' fis'>2 <d' e'>2~ | <d' e'>2 <b d'>2~\<  | <b d'>2 <b d'>2\!  | \change Staff=two \oneVoice \override DynamicText #'transparent = ##t <e a cis'>8 <e a cis'>4 <e a b>8 <e a b>2 | 
<e a cis'>8 <e a cis'>4 <e a b>8 <e a b>2 | <e a cis'>8 <e a cis'>4 <e a b>8 <e a b>2 | \change Staff=one \voiceTwo \override DynamicText #'transparent = ##f fis'8_\pocof  f%{is%}'8( e'8 f%{is%}'8 fis%{is%}'4. a'8) | fis'8 f%{is%}'8( e'8 f%{is%}'8 fis%{is%}'4. b'8) | 
fis'8  f%{is%}'8(  e'8  f%{is%}'8  cis'4.^>  cis''8)\<  | s2 \! \f  <e' gis'>2~->  | <e' gis'>2 <d' fis'>2~ | <d' fis'>4.~ d'8~ d'2~ | 
d'4 d'2.\>  | cis'1\!  | \change Staff=two \oneVoice \override DynamicText #'transparent = ##t b,8 a,8 cis8 e8~ e8 a8 d8 b8 | \time 3/4  << { \voiceTwo d4 cis4 b,4  } \\ { \voiceOne d8 a8 cis8 a8 b,8 a8 } >>  | \time 4/4 a,8 gis,8 cis8 e8~ e8 a8 d8 b8 | 
\time 3/4  << { \voiceTwo d4 cis4 b,4  } \\ { \voiceOne d8 a8 cis8 a8 b,8 a8 } >>  |  << { \voiceTwo a,4 e4~ e4  } \\ { \voiceOne a,8 a8 a8 b8 b8 a8 } >>  | \time 4/4  \times 2/3 {<e a cis'>4 <e a cis'>2}  \times 2/3 {<e a cis'>4 <e a cis'>2} | \time 3/4 <e a b>2 <e a b>4 | \time 4/4  \times 2/3 {<e a cis'>4 <e a cis'>2}  \times 2/3 {<e a cis'>4 <e a cis'>2} | 
\time 3/4 <e a b>2 <e a b>4 | <e a b>2 <e a b>4 | <e a b>2 <e a b>4 | \time 4/4 \change Staff=one \voiceTwo \override DynamicText #'transparent = ##f fis'8\mf  f%{is%}'8( e'8 f%{is%}'8 fis%{is%}'4. a'8) | fis'8  f%{is%}'8  e'8  f%{is%}'8  fis%{is%}'4._\markup{\italic cresc}  b'8 | 
fis'8 f%{is%}'8( e'8 f%{is%}'8 fis%{is%}'4. s8) | \change Staff=two \oneVoice \override DynamicText #'transparent = ##t  \times 2/3 {<e a cis'>2 <e a cis'>4}  \times 2/3 {<e a cis'>2 <e a cis'>4} | \time 3/4 <e a b>2 <e a b>4 | \time 4/4  \times 2/3 {<e a cis'>2 <e a cis'>4}  \times 2/3 {<e a cis'>2 <e a cis'>4} | \time 3/4 <e a b>2 <e a b>4 | 
<e a b>2 <e a b>4 | <e a b>2 <e a b>4 | \time 4/4  \times 2/3 {a,4~ cis4 e4} gis8 e8 gis8 e8 |  \times 2/3 {d4~ fis4 a4} cis'8 a8 cis'8 a8 | <e a cis'>8 <e a cis'>4 <e a b>8 <e a b>2 | <e a cis'>8 <e a cis'>4 <e a b>8 <e a b>2
    } >> \context Staff = "two" {
#(set-accidental-style 'piano-cautionary)
\override Staff.TimeSignature  #'style = #'numbered
\clef bass \key a \major  s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s4 s8 s4 s8 s2 s8 s4 s8 s2 s2 s4 s2 s8 s4 s8 s2 s8 s4 s8 s2 s8 s4 s8 s2 s8 s8 s8 s8 s4 s8 s8 s8 s8 s8 s4 s8 s8 s8 s8 s8 s4 s8 s8 s8 s8 s8 s4 s8 s8 s4 s8 s2 s8 s4 s8 s2 s8 s8 s8 s8 s4 s8 s2 s2 s2 s2 s1 s8 s4 s8 s2 s8 s4 s8 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s8 s4 s8 s2 s8 s4 s8 s2 s8 s4 s8 s2 s8 s8 s8 s8 s4 s8 s8 s8 s8 s8 s4 s8 s8 s8 s8 s8 s4 s8 s2 s2 s2 s2 s4 s8 s2 s4 s2 s1 s8 s8 s8 s8 s8 s8 s8 s8 s4 s4 s4%{ s8 s8 s8 s8 s8 s8%} s8 s8 s8 s8 s8 s8 s8 s8 s4 s4 s4%{ s8 s8 s8 s8 s8 s8%} s4 s4 s4%{ s8 s8 s8 s8 s8 s8%} s4 s2 s4 s2 s2 s4 s4 s2 s4 s2 s2 s4 s2 s4 s2 s4 s8 s8 s8 s8 s4 s8 s8 s8 s8 s8 s4 s8 s8 s8 s8 s8 s4 s8 s2 s4 s2 s4 s2 s4 s2 s4 s2 s4 s2 s4 s2 s4 s2 s4 s4 s4 s4 s8 s8 s8 s8 s4 s4 s4 s8 s8 s8 s8 s8 s4 s8 s2 s8 s4 s8 s2 }
  >>
>> } \score { \music \layout { } }
\score { \unfoldRepeats \music 
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 54 4)
      }
    }


}

