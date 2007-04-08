\version "2.6.0"
\include "deutsch.ly"
primoRighti = \relative c'' {
%%1
c2. | c | c\( | f2 g4  | as4.b16 as g8\) f\staccato |
%%6
<<{\voiceTwo f4( e) as( g)} \\ {\voiceOne c2.~ c4 }>>
\oneVoice r4 \grace{as32[( b c]} b8)( as) |
as2.~ | as8.[( b32 as] g4 f)~ | f8.[( g32 f] es4 des)~ | des( c) r4 |
%% MARK A
\mark \default
f2.~ | f8.[( g32 f] es4 des)~ | des8.[( es32 des] c4 b) | b2. |
%%16
b | << b~( {s2 s8. s16} >> | b4 as2~) | as4( g8 f' es g, |
%% MARK B
\mark \default
as4) r r | ges'2.~ | ges2( f4) |
<<f8[( des>><<es16) c]>> r <<es8[( c>><<des16) b]>> r <<des8[( b>><<c16) a]>> r|
b4 r r | as'!2.~ |
%% 26 
as2( g!4) | <<g8[(\accent es>><<f16) d]>> r <<f8[(\accent d>> <<es16) c]>> r 
<<es8[(\accent c>> <<h16) d!]>> r |
%% MARK C
\mark\default
c2.~ | c8[ f( e es d des] | c4) r r | R2.*2 |
%% 33
r4 c4.( <<
{\voiceOne f8 | e[) es( d des c b'] | as[) e( f c b as] | g) }
	\context Voice="two"
	{\voiceTwo h8 | c[ es b des as g'] | f[ des c as g f] | g }
>> \oneVoice r r4 f'( |
%% 37
e8) r r4 <<f as(>> | <<g8) e>> r r4 <<as h(>> | <<c8) g>> r r4 r\fermata 
}

primoLefti = \relative c' {
<<{\voiceOne as'2. | b | a~ | a4 b2 | h2. | h4( c) f( | e)} \\
  {\voiceTwo f,2. | g | ges(_\( | f2) e4 | f2 g8[ as!]\) | as4( g) h( | c) }>>
\oneVoice r r | r <<es!\( c>> <<des f>> |
<<des2 b>> <<c4 as>> | <<g2 b>> <<as4 f>> | <<g e>> <<f as\)>> r | 
% MARK A
r <<f( as>> <<g b>> | <<{\voiceTwo  as2.)} 
	\context Voice="one" {\voiceOne c4 r r} >> |
\oneVoice as2. | as | as | g4\( f fes | es2 d4 | des!2.\)( | 
% MARK B
c8) r <<c4( es>> <<b)~ des>> | <<b\( des>> <<a c>> <<c a'!>> |
<<b des,!\)>> <<a'( c>> <<b) des>> | ges,8 r f r es r | 
r4 <<des( f>> <<c)~ es>> | <<c\( es>> <<h d>> <<d h'!>> |
<<c es,\)>>
<<{\voiceOne d'8.[( c32 d] es4)} \\ {\voiceTwo h c}>> |
\oneVoice as8 r g! r f r |
% MARK C
r4 g( b! | a2 as4 | g2) r4 | R2. | r4 r b( |
a8[ as g ges] f4 | g!8[)ges( f e f des']|c[) b( as c, des d]| e) r r4 <<as h(>>|
<<c8) g>> r r4 h( | c8) r r4 <<d f(>> | e8) r r4 r\fermata 
}

primoDynamicsi = { s4\p s2| s2.*3 |\setTextCresc s4\< s2 | s s4\!\f | s s\p s |
s2.*9 | \setHairpinCresc s4\< s s8. s16\! | s2.*3 | s4\fz s\p s |
s2.*3 | s4\fz s\p s | s2.*14 |}
