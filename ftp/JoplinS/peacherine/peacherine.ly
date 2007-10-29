% Updated to Lilypond 2.2.5 by Ruud van Silfhout
% convert-ly -> Lilypond 2.4.2 by Chris Sawer
% convert-ly -> Lilypond 2.10.33 by Chris Sawer (plus minor fixes)

\version "2.10.33"

\header {
 title = "PEACHERINE RAG."
 composer = "by SCOTT JOPLIN."

 mutopiatitle = "Peacherine Rag"
 mutopiacomposer = "JoplinS"
 mutopiainstrument = "Piano"
 mutopiasource = "Reproduction of original edition (1901)"
 date = "c. 1901"
 style = "Jazz"
 copyright = "Public Domain"

 filename = "peacherine.ly"
 maintainer = "Antonio Palamà"
 maintainerEmail = "palama@inwind.it"
 maintainerWeb = ""

 footer = "Mutopia-2007/10/29-335"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}
top =  \relative c'' {
 \override TextScript   #'padding = #2

 \key ees \major
 \time 2/4
 \clef treble
% 1
\once \override TextScript   #'extra-offset = #'(-3 . 2)
 ees16[^\markup { \bold "Not too fast." } f g f]~ f8[ bes,] |
% 2
 f'16[ g aes g]~ g8[ bes,] |
% 3
 c16[ c8 b16] c16[ d ees8] |
% 4
 bes!8 bes~ bes16[ g aes a] |

\break

\repeat "volta" 2
{
% 5
\stemDown bes8[ <ees g,>]<d g,>[<c g>] |
% 6
<bes g>16[<ees g,>8<d g,>16]~<d g,>16[ c bes g] |
% 7
<bes g>8[<ees g,>]<d g,>[<c g>] |
% 8
\stemNeutral <bes aes>16[<d aes>8<c aes>16]~<c aes>16[ bes f g] |
% 9
\stemDown  aes8[ <aes d>]<aes c>[ <aes bes>] |
% 10
 aes16[ <aes d>8 <aes c>16]~<aes c>16[ bes d f ] |
% 11
<aes, d aes'>8 <aes d aes'>4 <a ees' a>8 |
% 12
%{
\context Voice
<<
  { % Problem: Top slur should be up, 2 bottom slurs should be down
    \stemDown <bes ees bes'>4~<bes ees bes'>16[ g aes a] |
  }
  \\
  {
    \stemUp r8  ees'16[ f] g r r8
  }
>>
%}
<< % Provisional solution
  {\stemDown \tieDown <bes ees>4~<bes ees>16[ g aes a] }  
  \\
  {\stemDown \tieUp bes'4 ~ bes4*1/4 s8.}
  \\
  {\stemUp r8  ees,16[ f] 
  \override NoteColumn   #'force-hshift = #0.5
  g16 
  r r8}
>>
|
% 13
\stemDown  bes,8[ <ees g,>]<d g,>[<c g>] |
% 14
<bes g>16[<ees g,>8<d g,>16]~<d g,>16[ c bes g] |
% 15
<g g'>8<g b g'>4<g b f'>8 |
% 16
\context Voice
<<
  {
    \stemDown <g c ees>4. c8 |
  }
  \\
  {
    \stemUp r8  c'16[ d] ees r r8
  }
>>
% 17
<c, ees f>8[ <c ees f>]<c ees fis>[<c ees fis>] |
% 18
<bes ees g>16[<bes ees g>8<bes bes'>16]<bes c e aes>8[<bes c e g>8] |
% 19
<a g'>16[<a g'>8<a ees'>16]
\context Voice
<<
  {\stemDown aes8} 
  \\ 
  {\stemUp  f'16[( ees)]} 
>> 
<aes, f'>8
}
\alternative 
{
% 20
{<g ees'>4~ <g ees'>16[ g aes a] }
% 21
{<g ees'>4~ <g ees'>8 r8 }
}
\key bes \major
\repeat "volta" 2
{
% 22
r8 <a ees' f>[<a ees' g><a ees' f>] |
% 23
r8 <ees' a c>[<ees a d><ees a c>] |
% 24
r8 <d bes'>[<d a'><d g>] |
% 25
<d g>16[ f e f]~ f[ g f8] |
% 26
r8 <ees a ees'>[<ees a ees'><ees a d>] |
% 27
\context Voice
<<
  { % FIXME slurDown
    \stemUp  d'16[ c b c]~ c[ \slurDown f( f,8)] \slurNeutral | 
  }
  \\
  {
    \stemDown <ees a>4. r8 |
  }
>>
% 28
r8 < d[ bes' d>[<d f d'><d f c'>] |
% 29
\context Voice
<<
  {                                  % FIXME slurDown
    \stemUp  c'16[ bes a bes]~ bes[ \slurDown f'( f,8)] \slurNeutral |
  }
  \\
  {
    \stemDown <d f>4. r8 |
  }
>>
% 30
r8 <a ees' f>[<a ees' g><a ees' f>] |
% 31
r8 <ees' a c>[<ees a d><ees a c>] |
% 32
r <d bes'>[<d a'><d g>] |
% 33
<d g>16[ f e f]~ f[ d ees f] |
% 34
<g, g'>[<bes ees><g g'><a a'>]~<a a'>[<g g'>8 <bes ees>16] |
% 35
<f f'>16[<bes d><f f'><g g'>]~<g g'>[<f f'>8 bes16] |
% 36
<e, bes' d>16[ <e bes' d>8 <e bes' d>16]
\context Voice
<<
  {
    \stemUp  c'16[( bes)]] 
  }
  \\
  {
    \stemDown <ees, a>8 
  }
>>
<ees a c>8 |
}
\alternative
{
{
% 37
\stemUp <d bes'>4~ <d bes'>8 r8 |
}
{
% 38
<d bes'>4<d aes' bes>4 \stemNeutral|
}
}
\key ees \major
% 39
\stemDown  bes'8[ <ees g,>]<d g,>[<c g>] |
% 40
<bes g>16[<ees g,>8 <d g,>16]~ <d g,>16[ c bes g] |
% 41
<bes g>8[ <ees g,>] <d g,>[ <c g>] |
% 42
\stemNeutral <bes aes>16[<d aes>8 <c aes>16]~ <c aes>16[ bes f g] |
% 43
\stemDown  aes8[ <aes d>]<aes c>[ <aes bes>] |
% 44
 aes16[ <aes d>8 <aes c>16]~ <aes c>16[ bes d f ] |
% 45
<aes, d aes'>8 <aes d aes'>4 <a ees' a>8 |
% 46
%{
\context Voice
<<
  { % Problem: Top slur should be up, 2 bottom slurs should be down
    \stemDown <bes ees bes'>4~<bes ees bes'>16[ g aes a] |
  }
  \\
  {
    \stemUp r8  ees'16[ f] g r r8
  }
>>
%}
<< % Provisional solution
  {\stemDown \tieDown <bes ees>4~<bes ees>16[ g aes a] }  
  \\
  {\stemDown \tieUp bes'4 ~ bes4*1/4 s8.}
  \\
  {\stemUp r8  ees,16[ f] 
  \override NoteColumn   #'force-hshift = #0.5
  g16 
  r r8}
>> |
% 47
\stemDown  bes,8[ <ees g,>]<d g,>[<c g>] |
% 48
<bes g>16[<ees g,>8<d g,>16]~<d g,>16[ c bes g] |
% 49
<g g'>8<g b g'>4<g b f'>8 |
% 50
\context Voice
<<
  {
    \stemDown <g c ees>4. c8 |
  }
  \\
  {
    \stemUp r8  c'16[ d] ees r r8
  }
>>
% 51
<c, ees f>8[ <c ees f>]<c ees fis>[<c ees fis>] |
% 52
<bes ees g>16[<bes ees g>8<bes bes'>16]<bes c e aes>8[<bes c e g>8] |
% 53
<a g'>16[<a g'>8<a ees'>16]
\context Voice
<<
  {\stemDown aes8} 
  \\ 
  {\stemUp  f'16[( ees)]} 
>> 
<aes, f'>8 |
% 54
<g ees'>4<g des' ees>8 r |

\break

\key aes \major
\repeat "volta" 2
{
% 55
<ees ees'>16[ c' <ees, ees'> aes] c[ <ees, ees'>8 aes16] |
% 56
<ees c'>16[ a <ees c'><ees a des>]~<ees a des>[<ees a c>8 a16] |
% 57
<d, f aes! c>8[<d f aes bes>16<d f aes c>]~<d f aes c>[ bes' aes f] |
% 58
<d aes' c>8[<d aes' bes>16<d aes' c>]~<d aes' c>[ bes' aes f] |
% 59
\context Voice
<<
  {\stemDown  ees8.[ f32( g)]} 
  \\ 
  {\stemUp des'4} 
>>
 bes16[ <f des'>8 g16] |
% 60
\context Voice
<<
  {\stemDown  ees8.[ f32( g)]} 
  \\ 
  {\stemUp des'4} 
>>
 bes16[ <f des'>8 f16] |
% 61
<ees c'>8[<e c'>16<f c'>]~<f c'>[<aes c>8<f c'>16] |
% 62
<ees! c'>8[<e c'>16<f c'>]~<f c'>8.[ aes32( c)] |
% 63
<ees, ees'>16[ c' <ees, ees'> aes] c[ <ees, ees'>8 aes16] |
% 64
<ees c'>16[ a <ees c'><ees a des>]~<ees a des>[<ees a c>8 a16] |
% 65
<d, f aes! c>8[<d f aes bes>16<d f aes c>]~<d f aes c>[ bes' aes f] |
% 66
<d aes' c>8[<d aes' bes>16<d aes' c>]~<d aes' c>[ bes' aes f] |
% 67
\context Voice
<<
  {\stemDown  ees8.[ f32( g)]} 
  \\ 
  {\stemUp des'4} 
>>
 bes16[ <f des'>8 g16] |
% 68
 ees16[ g f g] des'[ <des, g>8<c aes'>16~ ]|
}
\alternative 
{
{
% 69
<c aes'>2~ |
% 70
\set autoBeaming = ##f
<c aes'>8 
\grace { \once \override Stem   #'stroke-style = #"grace" f'8( } 
ees8) 
\grace { \once \override Stem #'stroke-style = #"grace" f,8( }
ees8)[ aes16 c] |
\set autoBeaming = ##t
}
{
% 71
<c, aes'>2~ | % Problem: Chord shoud have 2 short left ties
% 72
<c aes'>8 r \stemDown <aes' c aes'>8[ ees] \stemNeutral |
}
}

\break

\repeat "volta" 2
{
% 73
\stemDown  g16[ bes8 c16] des8[ g16 f] \stemNeutral |
% 74
<des ees>8<des ees>4ees,8 |
% 75
 aes16[ c8 des16] ees8[ aes16 f] |
% 76
<c ees>8<c ees>4<c ees>8 |
% 77
<des f>16[<des f>8<des f>16]~<des f>16[ aes' bes aes] |
% 78
<c, c'>8[<c c'>]~<c c'>16[<ees ees'><d d'><c c'>] |
% 79
<bes bes'>16[ g' c bes] aes[ d,8 bes'16] |
% 80
ees,8 r <ees g ees'>8[ ees,] |
% 81
 g16[ bes8 c16] des8[ g16 f] |
% 82
<des ees>8<des ees>4ees,8 |
% 83
 aes16[ c8 des16] ees8[ aes16 f] |
% 84
<c ees>8<c ees>4<c ees>8 |

% 85

%<des f>16[<des f>8<b f'>16]~  % Problem: no tie is produced
%\context Voice
%<<
%  {\stemDown b4} 
%  \\ 
%  {\stemUp  f'16[ aes( g  f)]} 
%>>

<<
  {\stemDown \tieDown <des f>16 <des f>8 b16 ~ b4 }
  \\
  {\stemDown \tieUp s8. f'4*1/4 ~ \stemUp f16 aes( g  f)}
>>
|

% 86
<c ees>8[<c ees>]~<c ees>16[ ees c bes] |
% 87
<d, aes'>8[<d aes'>]<des g bes>16[<des g bes>8 ees16] |
}
\alternative
{
{
% 88
\stemDown <c aes'>8[ ees'16 ees] ees8[ ees,] \stemNeutral |
}
{
% 89
<c aes'>4<aes' c aes'>8 r^\fermata |
}
}
}
bottom =  \relative c {
 \key ees \major
 \time 2/4
 \clef bass
% 1
 ees16[ f g f]~ f8[ bes,] |
% 2
 f'16[ g aes g]~ g8[ bes,] |
% 3
 c16[ c8 b16] c16[ d ees8] |
% 4
bes!8 bes4 r8 |
\repeat "volta" 2
{
% 5
 ees8[ <g bes ees>] bes,[ <g' bes ees>] |
 ees8[ <g bes ees>] bes,[ <g' bes ees>] |
 ees8[ <g bes ees>] bes,[ <g' bes ees>] |
% 8
 f8[ <aes bes d>] bes,[ <aes' bes d>]
% 9
 f8[ <aes bes d>] bes,[ <aes' bes d>] |
% 10
 f8[ <aes bes d>] bes,[ <aes' bes d>] |
% 11
 f8[ <bes d>] fis[ <fis c' ees>] |
% 12
\context Voice <<{\stemDown  g8[  <bes ees>] <bes ees>8 r} \\ {\stemUp g4 s4}>> |
% 13
 ees8[ <g bes ees>] bes,[ <g' bes ees>] |
 ees8[ <g bes ees>] bes,[ <g' bes ees>] |
% 15
 b,8[ <g' d' f>] g,[ <g' d' f>] |
% 16
 c,8[ <g' c ees>] <g c ees> r |
% 17
<aes, aes'>4<a a'> |
% 18
<bes bes'>8[<g' bes ees>] c,[ <g' bes c e>] |
% 19
<f c' ees!>8[<f c' ees>]<bes d>[<bes d>] |
}
\alternative
{
% 20
{<ees, ees'>8[<g bes ees>] <g bes ees> r }
% 21
{<ees ees'>8[<bes bes'>]<ees, ees'>[ f] } 
}
\key bes \major
\repeat "volta" 2
{
% 22
 c'8[ <f c' ees>] f,[ <f' c' ees>] |
% 23
 c8[ <f a ees'>] f,[ <f' a ees'>] |
% 24
 bes,[ <f' bes d>] f,[ <f' bes d>] |
% 25
 bes,[ <f' bes d>] f,[ <f' bes d>] |
% 26
 c[ <f c' ees>] f,[ <f' a ees'>] |
% 27
 c8[ <f a ees'>] f,[ <f' a ees'>] |
% 28
 bes,[ <f' bes d>] f,[ <f' bes d>] |
% 29
 bes,[ <f' bes d>] f,[ <f' bes d>] |
% 30
 c8[ <f c' ees>] f,[ <f' c' ees>] | 
% 31
 c8[ <f a ees'>] f,[ <f' a ees'>] |
% 32
 bes,[ <f' bes d>] f,[ <f' bes d>] |
% 33
 bes,[ <f' bes d>] d[ <f bes d>] |
% 34
<ees, ees'>[<ees ees'>]<f f'>[<f f'>] | 
% 35
<d d'>8[<d d'>]<ees ees'>[<d d'>] |
% 36
<c c'>[<c c'>]<f f'>[<f f'>] |
}
\alternative
{
{
% 37
<bes bes'>8[<f' bes>]<f bes>[ f,] |
}
{
% 38
<bes bes'>8[<f f'>]<bes, bes'>4 |
}
}
\key ees \major
% 39
 ees'8[ <g bes ees>] bes,[ <g' bes ees>] |
 ees8[ <g bes ees>] bes,[ <g' bes ees>] |
 ees8[ <g bes ees>] bes,[ <g' bes ees>] |
% 42
 f8[ <aes bes d>] bes,[ <aes' bes d>]
% 43
 f8[ <aes bes d>] bes,[ <aes' bes d>] |
% 44
 f8[ <aes bes d>] bes,[ <aes' bes d>] |
% 45
 f8[ <bes d>] fis[ <fis c' ees>] |
% 46
\context Voice <<{\stemDown  g8[  <bes ees>] <bes ees>8 r} \\ {\stemUp g4 s4}>> |
% 47
 ees8[ <g bes ees>] bes,[ <g' bes ees>] |
 ees8[ <g bes ees>] bes,[ <g' bes ees>] |
% 49
 b,8[ <g' d' f>] g,[ <g' d' f>] |
% 50
 c,8[ <g' c ees>] <g c ees> r |
% 51
<aes, aes'>4<a a'> |
% 52
<bes bes'>8[<g' bes ees>] c,[ <g' bes c e>] |
% 53
<f c' ees!>8[<f c' ees>]<bes d>[<bes d>] |
% 54
<ees, ees'>8[<bes bes'>]<ees, ees'> r |
\key aes \major
\repeat "volta" 2
{
% 55
<aes aes'>8[<ees' aes c>]<ees, ees'>[<ees' aes c>]
% 56
<a, a'>[<a a'>]<f f'>[<f f'>] |
% 57
<d d'>[<d d'>]<bes bes'>[<bes bes'>] |
% 58
<f' f'>[<f f'>]<bes, bes'>[<bes bes'>] |
% 59
<ees ees'>[<ees' g des'>]<g, g'>[<ees' bes' des>] |
% 60
<bes bes'>[<ees g des'>]<ees, ees'>[<ees' g des'>] |
% 61
<aes, aes'>[<ees' aes c>]<ees, ees'>[<ees' aes c>] |
% 62
<aes, aes'>[<ees' aes c>]<ees, ees'>[<ees' aes c>] |
% 63
<aes, aes'>[<ees' aes c>]<ees, ees'>[<ees' aes c>] |
% 64
<a, a'>[<a a'>]<f f'>[<f f'>] |
% 65
<d d'>[<d d'>]<bes bes'>[<bes bes'>] |
% 66
<f' f'>[<f f'>]<bes, bes'>[<bes bes'>] |
% 67
<ees ees'>[<ees' g des'>]<g, g'>[<ees' bes' des>] |
% 68
<bes bes'>[<ees g des'>]<ees, ees'>[<ees' g bes>] |
}
\alternative
{
{
% 69
<aes, aes'>8[<ees ees'>16<f f'>]~<f f'>[<ees ees'><f f'><g g'>] |
% 70
<aes aes'>8 r r4 |
}
{
% 71
<aes aes'>8[<ees ees'>]<f f'>16[<ees ees'>8<c c'>16] |
% 72
<aes aes'>8 r <aes aes'> r |
}
}
\repeat "volta" 2
{
% 73
<bes' bes'>8[<ees g des'>]<ees, ees'>[<ees' bes' des>] |
% 74
<g, g'>8[<ees' bes' des>]<ees, ees'>[<ees' g des'>] |
% 75
<aes, aes'>8[<ees' aes c>]<ees, ees'>[<ees' aes c>] |
% 76
\stemDown  aes,[ <ees' aes c>] c,[ <ees' aes c>] \stemNeutral|
% 77
 des,[ <f' aes des>] des,[ <fes' aes des>] |
% 78
 aes,[ <ees' aes c>] a,[ <fis' a c ees>] |
% 79
 bes,[ <g' bes ees>] bes,[ <f' aes bes d>] |
% 80
<ees g bes ees>8[<g, g'>16<bes bes'>]<ees, ees'>8 r |
% 81
<bes' bes'>8[<ees g des'>]<ees, ees'>[<ees' bes' des>] |
% 82
<g, g'>8[<ees' bes' des>]<ees, ees'>[<ees' g des'>] |
% 83
<aes, aes'>8[<ees' aes c>]<ees, ees'>[<ees' aes c>] |
% 84
\stemDown  aes,[ <ees' aes c>] c,[ <ees' aes c>] |
% 85
 des,[ <f' aes des>] d,[ <f' aes b>] \stemNeutral|
% 86
 ees,[ <ees' aes c>] \stemUp <ees, ees'>[<e e'>] |
% 87
<f f'>[<f f'>]<ees! ees'!>[<g g'>] |
}
\alternative
{
{
% 88
\stemDown
<aes aes'> r r4 |
}
{
% 89
\stemUp
<aes aes'>8[<ees ees'>] <aes, aes'> r
}
}
}
\score {
  \context PianoStaff <<
  \context Staff = "up"
   \top 
  \context Staff = "down"
   \bottom
 >>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 4)
      }
    }


\layout {
   textheight = 240.\mm
}
}

