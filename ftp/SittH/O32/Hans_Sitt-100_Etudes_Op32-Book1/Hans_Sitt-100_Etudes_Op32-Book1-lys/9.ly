% -*- coding: utf-8 -*-
\version "2.24.0"

nove = \relative bes{
	\set Staff.midiInstrument = "violin"
	\time 3/4
	\key bes \major
	\clef treble

\tupletSpan 4
\override TupletBracket.bracket-visibility = ##f
%1
  | bes4 \downbow ^\markup { \hspace #-5 \fontsize #-1 \bold "Moderato"}  \tuplet 3/2 {c8 \upbow (d_0 ees f g a_0)}  \noBreak
  | bes4 (d) bes  \noBreak
  | c \tuplet 3/2 {ees8 (d  c bes a g) }  \noBreak
  | f4 (g )ees  \noBreak
  | d \tuplet 3/2 {f8 _(g a-0 bes c d)}\break  \noPageBreak
%2
  | ees4 \tuplet 3/2 {g8 (f ees d c bes)}  \noBreak
  | a4 (c) a  \noBreak
  | f \tuplet 3/2 {f8 (g f ees d_0 c)}  \noBreak
  | bes4 \tuplet 3/2 {c8 (d_0 ees f g a_0)}  \noBreak
  | bes4 (d) bes  \noBreak
  | c \tuplet 3/2 {e!8-4 (d c bes a g)} \break  \noPageBreak
%3
  | e!4 (g) c  \noBreak
  | a-0 \tuplet 3/2 {d8  (e! d c bes a-0)}  \noBreak
  | g4  \tuplet 3/2 {c8 (d c bes a g) }  \noBreak
  | \tuplet 3/2 {f _([g a-0 ] bes [c d] e!-0 [f g])}  \noBreak
  | a4 (g f) \break  \noPageBreak
%4
  | f \downbow  \tuplet 3/2 {f,8 \upbow _(g a-0 bes c d)} \noBreak
  | ees4 ( d c)  \noBreak
  |  \tuplet 3/2 { bes8 \upbow ([a bes] c [d ees] f [g a])}  \noBreak
  | \bowXH bes4 \downbow (a) g  \noBreak
  | f \downbow  \tuplet 3/2 {g8 (f ees d c bes)} \noBreak
  | a4 (bes c) \break  \noPageBreak
%5
  |  \tuplet 3/2  {d8 ([ees d] c [bes a] g [f ees])}  \noBreak
  | d4 (f) bes  \noBreak
  | \bowH \tuplet 3/2  {f8 \downbow ([e! f] g [a_0 bes] c [d ees!]) } \noBreak
  | f4 (g a) \noBreak
  |  \tuplet 3/2 {bes8 ([a g] f [ees d] c [bes a])}\break  \noPageBreak
%6
  | g4 (f bes)  \noBreak
  | a  \tuplet 3/2 {bes'8 (a g f e!-0 d)}   \noBreak
  | cis4 \tuplet 3/2 {a'8 ( g f e!-0 d cis)}  \noBreak
  | d4 \tuplet 3/2 {bes8 (a_0 g f e! d)}  \noBreak
  | e!4  \tuplet 3/2 {a8_4 ( g f e! d_0 cis)} \break  \noPageBreak
%7
  | d4_4 \downbow \tuplet 3/2 {a8 (b! cis d-0 e! f)}  \noBreak
  | g4 \tuplet 3/2 {e!8 (f g a-0 b! cis)}  \noBreak
  | d4  \tuplet 3/2 {a8-0 (b! cis d e!-0 f)}  \noBreak
  | g4 \tuplet 3/2 {bes8 (a g f g e!-0)}  \noBreak
  | d4 \tuplet 3/2 {d8 (e! d cis d e)} \break  \noPageBreak
%8
  | \tuplet 3/2 {d ([e! d] cis [d e] d [e d] )}  \noBreak
  | \tuplet 3/2 {cis ([d e!] f [g f ]e [f g])}   \noBreak
  | \tuplet 3/2 {f ([g f] e! [f g] f [g f])} \noBreak
  | \tuplet 3/2 {e! ([f g] a [bes a] g [f ees!]) } \break  \noPageBreak
%9
  | c4 \tuplet 3/2 {g'8 (f ees d c bes)}  \noBreak
  | a4-0 \tuplet 3/2 { ees'8 ( d c bes a g)}  \noBreak
  | f4 \tuplet 3/2 {a8_4 (g f ees d_0 c)}  \noBreak
  | bes4 \tuplet 3/2 {c8 (d_0 ees f g a_0)} \noBreak
  | bes4 \tuplet 3/2 { c8 (d ees f g a)} \break  \noPageBreak
%10
  | bes4  \tuplet 3/2 {a8 (g f ees d c)} \noBreak
  | a4_0   \tuplet 3/2 {c8 (bes a_0 g f ees)} \noBreak
  | d4_0  \tuplet 3/2 {f8 (g a_0 bes c d)} \noBreak
  | ees4  \tuplet 3/2 {g8 (f ees d c bes)} \noBreak
  | a4_0 (c) a \break  \noPageBreak
%11
  | f  \tuplet 3/2 {f8 (a_4 g f g ees)} \noBreak
  | d4 \downbow  \tuplet 3/2 {bes'8 \upbow (c d ees f g} \noBreak
  | \bowXH aes4)  \tuplet 3/2 {bes8 \downbow (aes g f ees d}  \noBreak
  | ees4)  \tuplet 3/2 {d8  \upbow (c bes aes g f)} \noBreak
  | ees4 \downbow (g) c \upbow \pageBreak
%12
  | \tuplet 3/2 {f,8 \downbow ([g a_0] bes [c d] ees [f g])}  \noBreak
  |  \tuplet 3/2 {a ([g f] ees [d c] bes [c a-0])} \noBreak
  | bes4 \downbow  \tuplet 3/2 {bes'8 (a g f ees d} \noBreak
  | \bowXH c4)  \tuplet 3/2 {a'8 \downbow (g f ees d c} \noBreak
  | bes4)  \tuplet 3/2 {ees8 \upbow _(d c bes a_0 g} \break \noPageBreak
%13
  | f4)  \tuplet 3/2 {a8_4 \downbow(g f ees d_0 c} \noBreak
  | bes4) \tuplet 3/2 {a8 \upbow (bes c d-0 ees f)}  \noBreak
  |  \tuplet 3/2 {g ([a_0 bes] c [d ees] f [g a])}  \noBreak
  | bes4 (f ) d \noBreak
  | bes2 r4  \bar "|."   \break  \noPageBreak
}