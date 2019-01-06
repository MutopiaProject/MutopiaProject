% -*- coding: utf-8 -*-
\version "2.12.3"

sete = \relative c'''{
	\set Staff.midiInstrument = "violin"
	\time 3/4
	\key c \major
	\clef treble

\set tupletSpannerDuration = #(ly:make-moment 1 4)
\override TupletNumber #'font-size = #'-4
\override TupletBracket #'bracket-visibility = ##f
%1
  | \times 2/3 {\bowXH g8 \downbow ^ \markup { \hspace #-5 \raise #-10.0 \fontsize #-1 \bold "Andante" } ([a g] f [g f] e [f e])  \noBreak
  | f ([g f] e [f e] d [e d])  \noBreak
  | c ([b c] d [c d] e [d e])  \noBreak
  | d ([e d] b [c b] d [e d])\break  \noPageBreak
%2
  | f ([g f] e [f e] d [e d])   \noBreak
  | e ([f e] d [e d] c [d c])  \noBreak
  | \override TupletNumber #'transparent = ##t \stemDown b ([a b] c [b c] d [c d])  \noBreak
  | \stemNeutral c ([d c] a [b a] c [d c]) \break   \noPageBreak
%3
  | a' ([b a] g [a g] f [g f])  \noBreak
  | g ([a g] f [g f] e [f e])   \noBreak
  | d ([e d] g [a g] f [g f])   \noBreak
  | e ([f e] f [g f] g [a g])  \break   \noPageBreak
%4
  | a ([b a] g [a g] f [g f])  \noBreak
  | g ([a g] f [g f] e [f e])  \noBreak
  | d ([e d] c [d c] a [b a])   \noBreak
  | g ([a g] f [g f] d [e f])  \break  \noPageBreak
%5
  | g ([a g] f [g f] e [f e])  \noBreak
  | f ([g f] e [f e] d [e d] )  \noBreak
  | c ([b c] d [c d-4] e [d e])  \noBreak
  | f ([e f] g [f g] a-4 [g a-4])\pageBreak
%6
  | a-0  ([b a] g [a g] fis [g fis])  \noBreak
  | g ([a g] fis [g fis] e [fis e])  \noBreak
  | d ([e d] e [d e] fis [e fis])   \noBreak
  | g ([fis g] a-4 [g a-0] b [a b]) \break  \noPageBreak  
%7
  | b ([c b] d [e-4 d]  b [c b])   \noBreak
  | c ([d c] b [c b] a [b a])   \noBreak
  | f' ([g f] d [e-4 d] b [c b])   \noBreak
  | g' ([a g] e [f e] c [d c])  \break \noPageBreak  
%8
  | b ([c b] d [e d] b [c b])  \noBreak
  | c ([d c]  b [c b] a [b a])    \noBreak
  | a' ([b a] fis [g fis] d [e-4 d])   \noBreak
  | c ([d c] a [b a] fis [g fis])  \break  \noPageBreak 
%9
  | g ([a g] fis [g fis] g [a g])   \noBreak
  | fis ([g fis] d [e d] fis [g fis])   \noBreak
  | g ([a g] fis [g fis] g [a g])   \noBreak
  | fis ([g fis] d [e d] fis [e fis])  \break  \noPageBreak 
%10
  | g ([fis g] a-4 [g a-0] b [a b])   \noBreak
  | a_4 ([g a_0] b [a b] c [b c])   \noBreak
  | b ([a b] c [b c] d [c d])   \noBreak
  | c ([b c] d [c d] e [d e]) \break \noPageBreak 
%11
  | b ([a b] c [b c] d [c d])  \noBreak
  | c ([b c] d [c d] e [d e])   \noBreak
  | d ([c d] e [d e] f [e f])   \noBreak
  | a ([b a] g [a g] f [g f]) \break \noPageBreak 
%12
  | g ([a g] f [g f] e [f e])   \noBreak
  | f ([g f] e [f e] d [e d])   \noBreak
  | c ([b c] d [c d] e [d e])   \noBreak
  | d ([e d] b [c b] d [e d]) \break \noPageBreak 
%13
  | f ([g f] e [f e] d [e d])   \noBreak
  | e ([f e] d [e d] c [d c])   \noBreak
  | b ([a b] c [b c] d [c d])   \noBreak
  | c ([d c] b [a b] c [d c]) \break \noPageBreak 
%14
  | bes' ([a g] a [g f] g [f e])  \noBreak
  | \override Slur #'positions = #'(3.0 . 1.8)  a ([bes a] g [a g] f [g f])   \noBreak
  | d ([c b] c [b a] b [a g])   \noBreak
  | g ([a g] e [f e] g [a g])  \break \noPageBreak 
%15
  | bes ([c bes] a [bes a] g [a g])   \noBreak
  | f ([g f] c [d c] f [g f])   \noBreak
  | f ([g f] e [f e] d [e d])    \noBreak
  | c ([d c] b [c b] g [a b]) \break  \noPageBreak 
%16
  | c ([d c] e [f e] g [a g])  \noBreak
  | f ([g f] a [b a] c [d c])   \noBreak
  | e, ([f e] g [a g] c [d c])   \noBreak
  | f ([g f] a [b a] f [g f]) \break  \noPageBreak 
%17
  | g ([a g] e [f e] g [a g])   \noBreak
  | e ([f e] g [a g] e [f e] }   \noBreak
  | g4) r r   \noBreak
  | <e, c' e>\downbow r r   \noBreak
  | c2. \downbow  \bar "|."
}
