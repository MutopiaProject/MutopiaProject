\version "2.7.29"
\include "global.ly"
\header {
title = "Concerto for Bassoon and Orchestra in B-flat major"
opus = "K.191"
instrument = "Oboe"

composer = \markup \center-align { "Wolfgang Amadeus Mozart" \small "(1756-1791)" } }  

tutti = \mark \markup{ \small TUTTI } 
solo = \mark \markup{ \small SOLO }
tri = \override Script #'padding = #1 
oboec =  \relative {
\set Staff.instrument =\markup {
       \center-align { "2 Oboi"
              } }
\key bes \major
\time 3/4 \set Staff.midiInstrument = "oboe"
\globalc \set doubleSlurs = ##t 
<< { bes'2 c8( d) f( ees) ees2 d8( f) bes4 g8( c) } \\ { bes,2\f a8( bes) g4 bes( c) bes d g8( ees) } >> <bes' d,>8( <a c,> <g bes,> <f a,> <g bes,> <a c,>) 
<bes d,>4 << { bes,4 c8( d) f( ees) ees2 d8.( f16) } \\ { bes,4 a8( bes) g4 bes( c) bes4 } >> <bes' d,> <a c,> <bes d,>2 r4 \bar ":|" 
R2. r4 <ees, c>8( <c a>) <ees c>( <c a>) R2. r4 <f d>8( <d bes>) <f d>( <d bes>) 
<< { bes2 c8( d) f( ees) ees2 d8( f) bes4 g8( c) } \\ { bes,2 a8( bes) g4 bes( c) bes d g8( ees) } >> <bes' d,>8( <a c,> <g bes,> <f a,> <g bes,> <a c,>)  
<bes d,>4 << { bes,4 c8( d) f( ees) ees2 d8.( f16) } \\ { bes,4 a8( bes) g4 bes( c) bes4 } >> <bes' d,> <a c,> 
%bar 20 
<bes d,>2 r4 \solo R2.*30 \tutti 
%bar 51
<< { bes,2 c8( d) f( ees) ees2 d8( f) bes4 g8( c) } \\ { bes,2\f a8( bes) g4 bes( c) bes d g8( ees) } >> <bes' d,>8( <a c,> <g bes,> <f a,> <g bes,> <a c,>) 
<bes d,>4 << { bes,4 c8( d) f( ees) ees2 d8.( f16) } \\ { bes,4 a8( bes) g4 bes( c) bes4 } >> <bes' d,> <a c,> 
%bar 81 
<bes d,>2 r4 \solo R2.*22 \tutti
<< { bes,2 c8( d) f( ees) ees2 d8( f) bes4 g8( c) } \\ { bes,2\f a8( bes) g4 bes( c) bes d g8( ees) } >> <bes' d,>8( <a c,> <g bes,> <f a,> <g bes,> <a c,>)  
<bes d,>4 << { bes,4 c8( d) f( ees) ees2 d8.( f16) } \\ { bes,4 a8( bes) g4 bes( c) bes4 } >> <bes' d,> <a c,> <bes d,>2 r4 \solo 
R2.*17 
%bar 106 
R2.^\fermataMarkup R2.*9 r8 <c, a>16\p <d bes> <ees c>8( <c a>) <ees c>( <c a>) R2. r8 <d bes>16 <ees c> <f d>8( <d bes>) <f d>( <d bes>) 
R2.*19 \tutti 
%bar 138 
<< { bes2 c8( d) f( ees) ees2 d8( f) bes4 g8( c) } \\ { bes,2\f a8( bes) g4 bes( c) bes d g8( ees) } >> <bes' d,>8( <a c,> <g bes,> <f a,> <g bes,> <a c,>)  
<bes d,>4 << { bes,4 c8( d) f( ees) ees2 d8.( f16) } \\ { bes,4 a8( bes) g4 bes( c) bes4 } >> <bes' d,> <a c,>
<bes f>2 <f d>4 <ees c> <d bes> <c a> <bes' f>2 <f d>4 <ees c> <d bes> <c a> << { bes } \\ { bes } >> <bes' d,> <bes d,> <bes d,> << { bes, } \\ { bes } >> r 
 \bar ".|."

}