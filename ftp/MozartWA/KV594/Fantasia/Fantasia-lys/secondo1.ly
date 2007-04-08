\version "2.6.0"
\include "deutsch.ly"


secondoRighti = {\secondoIntro \relative c {
des!4( f h | c2) \clef G <<d4 f(>> | <<e g)>> r r | R2.*4 |
\mark \default 
des!2.\( | c2 f4  | es2 d4 | es\)\( fes d | es8[ d16 es] f!4 c | des!2.\)~ | 
des4( c ces | b2.)( | 
\mark \default
as8) r r4 r | R2. | \clef F des, | es8 r f r f r | b4 r r | R2. |
es,2. | f8 r g r g r | 
\mark \default
\clef G e'2
<<{\context Voice = "one" {\voiceOne e4( | f2.)~ | f4( e)}}
{\voiceTwo s4 | s2. | c2.~}>>
\oneVoice c8[ f^( e es d des] | c2) <<e4 g(>> | f) r r |
\clef F r8 a,[( b g as e] | f[)( g] as8.[\trill g32 as] b8[ h] |
c[) e,( g c as f] | c[) e( g c as f] | c[) e( g c as f] | c) r r4 r\fermata
}}

secondoLefti = {\transpose c c, \secondoIntro \relative c, { 
des!4( f h | <<c2.)~ c,>> | <<c4 c'>> r r | R2.*9 | 
<<e4( e,>> <<f f'>> <<g g,>> || <<as2. as')>> | <<es!2.( es,!>> |
% MARK B
as8) r r4 r | R2. | des, | es8 r f r f r | <<b4 b,>> r r | R2. |
es2. | f8 r g r g r | 
% MARK C
<<c4 c,>> r r | R2. | r4 r 
<<{\context Voice="three" {\voiceOne b''( | a2 as4 | g2)}}
{\context Voice="two" {\voiceTwo e4 | f2.~ | \voiceThree f4( e)}}
{s4 | s2. | \voiceTwo c2.~ } >>
\oneVoice c8[ f( e es d des] | <<c2.) c,~>> | <<c c'~>> | <<c4 c,>> r r |
c r r | c8[( e g c as f] | c) r r4 r\fermata
}}

secondoDynamicsi = { s4\p s2 | s2.*3 | \setTextCresc s4\< s2 | s s4\!\f |
s2.*5 | s2.\p | s2.*4 |\setHairpinCresc s4\< s s8. s16\! | s2.*4 | s4\fz s\p s |
s2.*3 | s4\fz s\p s | s2.*13 |}
