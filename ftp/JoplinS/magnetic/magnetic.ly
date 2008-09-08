\version "2.10.10"

\header {
 title = "Magnetic Rag"
 composer = "Scott Joplin"
 piece = "INTRO"
 
 mutopiatitle = "Magnetic Rag"
 mutopiacomposer = "JoplinS"
 mutopiainstrument = "Piano"
 date = "c. 1914"
 style = "Jazz"
 copyright = "Public Domain"
 source = "Original edition"
 
 filename = "magnetic.ly"
 maintainer = "Kurt Holtrop"
 maintainerEmail = "kurt.holtrop@juno.com"
 lastupdated = "2004/Mar/28"
 

 footer = "Mutopia-2008/09/08-441"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\paper {
	ragged-last-bottom=##f
}

blanknotes = { \override NoteHead
                 #'transparent  = ##t
               \override Stem
                 #'transparent = ##t }
unblanknotes = { \revert NoteHead
 #'transparent
                 \revert Stem
 #'transparent }

top =  \relative c' {
 \override TextScript   #'padding = #2

 \key bes \major
 \time 4/4
 \clef treble
 

  f8_\f e4^\markup {\large "Allegretto ma non troppo"} ees8 ~ ees2|	%1
  f8 ees4 d8 ~ d2 |
  f8 fis g gis ~ gis a bes b|
  c4 r4 <f, a c f>4^> r4 |
 
  \repeat volta 2 {
  << {
     d8 bes' g f ees c'4 cis8 |				%5
%\break
     d8 f, bes d, g8 f4. |					%6
     } \\ {
     d2-\mf( ees2)( |						%5
     d2) cis8 d4. |						%6
     } 
  >>
  <<{<ees f>8 <ees f>4 <ees f>8 ~ f8 g8 <ees f>4 |} \\
    {s8 s4 \once \override Stem
         #'transparent = ##t
       ees8 ~ ees4 s4 |}>>					%7
  <<{<d f>8 <d f>4 <d f>8 ~ f8 g8 <d f>4 |} \\
    {s8 s4 \once \override Stem
         #'transparent = ##t
       d8 ~ d4 s4 |}>>						%8
%\break	
  << {
     d8 bes' g f ees c'4 cis8 |					%9	
     d8 f, bes d g8 bes4. |					%10
     } \\ {
     d,,2( ees2)( |						%9
     d2) d'2 |							%10
     } 
  >>
  a'8 c d <ees fis,>8 ~ <ees fis,>8 d <fis, a>4 |		%11
%\break
  <<{  
     c'8_\markup {\dynamic f \italic sempre } bes a 		
     bes8 ~ bes4. s8 |						%12
     s1 |							%13
     } \\ {
     g2 ~ g4. <bes ees,>8 ~ \tieNeutral|				%12
     <bes ees,>8 bes, <ees g> g, bes <d f>4 f,8 |		%13							%13						%13
     } 
  >>	
  << {ees'4 ees8 d8 ~ d8 f,8 s4 |} \\
       {c'8 g8 a8 bes8 ~ bes8 s8 <d f>4  | }>>			%14
%\break
  <ees bes'>8 bes <ees g> g, bes <d f>4 f,8 |			%15
  << {ees'4 ees8 d8 ~ d4. s8 | s1} \\
       {c8 g8 a8 bes8 ~ bes4. <ees bes'>8 ~ |			 %16
       \tieNeutral  <ees bes'>8 bes <ees g> g, bes <d f>4 f,8 |  }>>   %17
%\break
  << {ees'4 ees8 d8 ~ d8 f,8 s4 |} \\
       {c'8 g8 a8 bes8 ~ bes8 s8 <d f>4 | }>>			%18
  <ees bes'>8 bes <ees g> g, bes <d f>4 f,8 |
  } 
  \alternative {   
    {<< {ees'4 ees8 d8 ~ d8 s8 s4 |} \\
       {c8 g8 a8 bes8 ~ bes8[ g8 f8 ees8] | }>> }	%20
    { << {ees'4 ees8 d8 ~ d4 } \\
       {c8 g8 a8 bes8 ~ bes4 }>> s4 | }			%21
  }
\bar "||" 
\pageBreak
%Page 2

  \partial 4 <fis a d>4^> |						%22
  \repeat volta 2 {
    \acciaccatura { g16[ a] }bes8-\mf a g bes ~ bes a g4 |	%23
    <<{s2 r8 d'8 a'4} \\ {a,4 g8 fis ~ fis2}>> | 		%24
    \acciaccatura {s16 a16[ bes] }c8 bes a c ~ c bes a4 |	%25
    <<{s2 r8 d8 bes'4} \\ {bes,4 a8 g ~ g2}>> |			%26
\break
    \acciaccatura { g16[ a] }bes8 a g a bes c4 d8 |		%27
    <<{s2 r8 g8 ees'4} \\ {ees,4_\f d8 c ~ c2}>> |		%28
    \acciaccatura { c16[ d] }ees8 d c bes a g4 a8 |		%29
\break
    fis4 a8 <fis d'> ~ <fis d'>2 |					%30
    \acciaccatura { g16[ a] } bes8-\mf a g bes ~ bes a g4 |	%31
    <<{s2 r8 d'8 a'4} \\ {a,4 g8 fis ~ fis2}>> | 		%32
\break
    \acciaccatura { a16[ bes] }c8 bes a c ~ c bes a4|		%33
    <<{bes4 a8 g ~ g2} \\ {s2 r8 d'8 bes'4}>> |			%34
    \acciaccatura { g,16[ a] }bes8 a g a bes c4 d8 |		%35
\break
    <<{s2 r8 g8 ees'4} \\ {ees,4-\f d8 c ~ c2}>> |		%36
    \acciaccatura { bes16[ c] }d8 c bes a ~ a c bes a |		%37				
  } \alternative {   
     {g8 d' bes g fis a d4}					%38
     {g,4 a8 bes c4~c8. c32( cis32}				%39
  }

\pageBreak
% Page Three

  \repeat volta 2 {
    d4)-\mf r4 <g, c>8 <bes cis>4 <f bes d>8 ~ |			%40				
    <f bes d>4 <cis' g'>8 <d f> ~ <d f> <d bes'>8 ~ <d bes'>8. c32( cis |
    d4)  r4 <g, c>8 <bes cis>4 <f bes d>8 ~ |			
    \cresc <f bes d>2. \endcresc <bes d f>4 |			% 43
%\break
    \stemUp <bes ees g>8-\f bes' <bes, ees g>4 <f bes d>8 f' <f, bes d>4 |
    <bes, ees g>8 bes' <bes, ees g>4 <f bes d>8 f' <f, bes d>4 | %45
    <fis' c'>8-\mf <g bes>4 <g bes>8 ~ <g bes>2 |
    <<{d'8 c4 bes8 ~ bes8 c g4} \\ {g4. g8 ~ g8 s4.}>> |
%\break
    <cis, g'>8 <d f>4 <d bes'>8 ~ <d bes'>2 ~ |
    <d bes'>4 d8 f bes c d f |	
    \stemDown <a, ees' g>8-\f b c <a ees' f> ~ <a ees' f>2 ~ |   %50
    <a ees' f>4 g'8 <a, ees' f> ~ <a ees' f> g' <a, ees' f>4 |
%\break
    \acciaccatura { bes16[ d] }<bes d g>8 cis d <bes d f> ~ <bes d f>2 ~ |
    <bes d f>8 g' <gis, d' f> <a ees'> ~ <a ees'> f' <a,  ees'>8. c32(cis |
    d4)-\mf  r4 \stemUp <g, c>8 <bes cis>4 <f bes d>8 ~ |
    <f bes d>4 \stemDown <cis' g'>8 <d f> ~ <d f> <d bes'> ~ <d bes'>8. c32(cis |
%\break
    d4)-\mf  r4 \stemUp <g, c>8 <bes cis>4 <f bes d>8 ~ |	%56
    \cresc <f bes d>2. \endcresc \stemDown <bes d f>4 |  
    \stemUp <bes ees g>8-\f bes' <bes, ees g>4 <f bes d>8 f' <f, bes d>4 | 
    <bes, ees g>8 bes' <bes, ees g>4 <f bes d>8 f' <f, bes d>4 |
\break
    bes8 c4 d8 ~ d8 c bes4 |   %60
    \stemDown d'8 c4 bes8 ~ bes a g4 |
    \acciaccatura { bes16[ d] }<bes d g>8 f' <bes, d> <a ees'> ~ <a ees'> f' g, a |      			
  } \alternative {   
     {bes4 f8 <d' f> ~ <d f> f, <c' ees>8. c32( cis32)}	%63
     {bes2. c4}						%64
  }

\bar "||"
  \key des \major
\pageBreak
%Page Four

  des2. bes8 c |
  des2. bes8 c |					%66
  \repeat volta 2 {
    <<{\stemDown des2_\mf  ees2} \\ 
      {\stemUp s8 f\< bes des s8 ges, bes\! ees}>> |
%\break
    <<{\stemDown des,4. c8 bes4 f} \\ 
      {\stemUp s8 <f' bes des> ~ \tieNeutral <f bes des> 
        <f a c> <f bes>4 bes,}>> |			%68
    <<{\stemDown <c, ees>1\mf} \\ 
      {\stemUp a'4 g8 ges ~ ges g a4}>> |
    <<{\stemDown <ees ges>1} \\ 
      {\stemUp c'4 bes8 a ~ a bes c4}>> |		%70  
%\break
    b4-> c2-> des4-> |
    d4-> ees-> e-> f-> |				%72
    <ges, c ges'>4-> <bes c ees>2-> <bes c e>4-> |
    <<{\stemUp f'1} \\ 
      {\stemDown << <a, c>4 {s8 s8\ff } >> c8 bes a bes a4}>> |		%74 
%\break
    <<{\stemDown des2_\mf ees2} \\ 
      {\stemUp s8 f\< bes des r8 ges, bes\! ees}>> |   
    <<{\stemDown des,4. c8 bes4 c} \\ 
      {\stemUp s8 <f bes des> ~ \tieNeutral <f bes des> 
        <f a c> <f bes>4 <f c'>}>> |			%76  
    <des f des'>8_\mf <c c'> <des des'> <ees ees'> ~ <ees ees'>
         <des des'> <bes bes'>4 |
%\break
    <<{\stemDown <c ges'>4. des8 ~ des4 des4 } \\ 
      {\stemUp bes'8 aes ges f ~ f aes f4}>> |		%78  
    <<{c'1} \\ 
       {f,8 e4 f8 ~ f8 g aes4}>> |
    <<{c2 ~ c4 <f,, aes c f>->} \\ 
       {e'8 g4 f8 ~ f4 s4}>> |				%80
%\break
  } \alternative {   
     {<ges, bes ees ges>4 <f bes des f> <ees' a c>8 a f <des f bes> ~ |
      <des f bes>8 f des bes a bes c4 |}		%82
     {<<{\stemDown <f, aes>4 <f a>4 <e bes'>4 <e bes'>8 <f a> ~ |
        <f a>2 s2} \\
       {\stemUp d'8 f c4 e8 d e  f ~ \tieUp |
        f ees c a f ees4 f8 |} >>}			%84
  }

  \key bes \major
\pageBreak
% Page Five

  \repeat volta 2 {
  << {
     d8-\mf bes' g f ees c'4 cis8 |				%85	
     d8 f, bes d, g8 f4. |					%86
     } \\ {
     d2( ees2)( |						%85
     d2) cis8 d4. |						%86
     } 
  >>					
  <<{<ees f>8 <ees f>4 <ees f>8 ~ f8 g8 <ees f>4 |} \\
    {s8 s4 \once \override Stem
         #'transparent = ##t
       ees8 ~ ees4 s4 |}>>					%87
%\break
  <<{<d f>8 <d f>4 <d f>8 ~ f8 g8 <d f>4 |} \\
    {s8 s4 \once \override Stem
         #'transparent = ##t
       d8 ~ d4 s4 |}>>						%88
  << {
     d8 bes' g f ees c'4 cis8 |					%89	
     d8 f, bes d g8 bes4. |					%90
     } \\ {
     d,,2( ees2)( |						%89
     d2) d'2 |							%90
     } 
  >>
%\break
  a'8 c d <ees fis,>8 ~ <ees fis,>8 d <fis, a>4 |		%91
  <<{  
     c'8_\markup {\dynamic f \italic sempre } bes a 		
     bes8 ~ bes4. s8 |						%92
     s1 |							%93
     } \\ {
     g2 ~ g4. <bes ees,>8 ~ \tieNeutral|				%92
     <bes ees,>8 bes, <ees g> g, bes <d f>4 f,8 |		%93							%13						%13
     } 
  >>
%\break
  << {ees'4 ees8 d8 ~ d8 f,8 s4 |} \\
       {c'8 g8 a8 bes8 ~ bes8 s8 <d f>4  | }>>			%94
  <ees bes'>8 bes <ees g> g, bes <d f>4 f,8 |			%95
  << {ees'4 ees8 d8 ~ d4. s8 | s1} \\
       {c8 g8 a8 bes8 ~ bes4. <ees bes'>8 ~ | 			%96
       \tieNeutral  <ees bes'>8 bes <ees g> g, bes <d f>4 f,8 |  }>>   %97
%\break
  << {ees'4 ees8 d8 ~ d8 f,8 s4 |} \\
       {c'8 g8 a8 bes8 ~ bes8 s8 <d f>4 | }>>			%98
  <ees bes'>8 bes <ees g> g, bes <d f>4 f,8 |			%99
  } 
  \alternative {   
    {<< {ees'4 ees8 d8 ~ d8 s8 s4 |} \\
       {c8 g8 a8 bes8 ~ bes8 g8 f8 ees8 | }>>  }	%100
    {<<{ees'4 ees8 d ~ d4 d8 ees |} \\
       {c8 g a bes ~ bes4 bes8 c |}>> }				%101
  }
\break

  <<{f4 g2 ges4} \\ {d4 ees2 ees4}>> |					%102
  <<{ges8 f bes <f bes d> ~ <f bes d> <d bes'> <ees a c>4} \\
    {ees8 d4. f,4 <f f,>}>> |						%103
  <<{<d' bes'>4 f8 bes d, f bes, d} \\
    {<bes, f'>4 d'4 bes f}>> |						%104
  <<{f4 f8 e f4 d8 ees} \\
    {d4 d8 cis d4 s8 s8}>> |						%105
%\break
  f4 g2 ges4 |								%106
  ges8 f bes <f bes d> ~ <f bes d> <d bes'> <ees a c>4 |
  <<{bes'1} \\ {d,4 <bes' f'>8 bes' <bes, e> bes' <bes, ees> bes'}>> |
  <bes, d bes'>4 r4_\markup{\italic { Fine}} <bes d f bes>^> r4 |	%109

 \bar "|."
}
 
bottom =  \relative c {
  \key bes\major
  \time 4/4
  \clef bass

  f8 e4 ees8 ~ ees2|	%1
  f8 ees4 d8 ~ d2 |
  f8 fis g gis ~ gis a bes b|
  c4 r4 <f, f,>^> r4 |

  \repeat volta 2 {
  << {
     r4 <f bes>4 r4 <f a>4 |			%5	
     } \\ {
     bes,2 c2 |					%5
     } 
  >>
    bes4 <f' bes> bes, <f' bes> |		%6  
    a,4 <f' a> f, <f' a> |
    bes,4 <f' bes> f, <f' bes> |
  << {
     r4 <f bes>4 r4 <f a>4 |			%9	
     } \\ {
     bes,2 c2 |					%9
     } 
  >>
    bes4 <f' bes> <bes bes,> <g g,> |
    <fis fis,> <fis c' d> <d d,> <fis c' d> |
    <g g,> <g bes d> <d d,> <g bes d> |		%12
    <g g,> <ees ees,> <d d,> <f bes d> |
    <f f,> <f a ees'> <bes bes,> <aes aes,> |
    <g g,> <ees ees,> <d d,> <f bes d> |	%15
    <f f,> <f a ees'> <bes bes,> <f f,> |
    <g g,> <ees ees,> <d d,> < f bes d> |
    <f f,> <f a ees'> <bes bes,> <aes aes,> |	%18
    <g g,> <ees ees,> <d d,> <f bes d> |
  } 
  \alternative {   
    {<f f,>4 <f a ees'> <bes bes,> <f a> | }	%20
    {<f f,>4 <f a ees'> <bes bes,> s4 }	%21	
  }

  \partial 4 <d, d,>4^> |					%22
  \repeat volta 2 {
    \grace s8 <g g,>4 <g bes d> <d d,> <g bes d> |	%23
    <fis fis,>4 <fis c' d> < d d,> <fis c' d> |		%24
    <a a,>4 <fis c' d> <d d,> <fis fis,> |		%25
    <g g,>4 <g bes d> <bes, bes,> <d d,> |		%26
    <g g,>4 <g bes d> <d d,> <g bes d> |		%27
    <c, c,>4 <g' c ees> <ees ees,> <g c ees> |	 	%28
    <c, c,> <g' a ees'> <ees ees,> <g a c> |		%29
    <d d,> <c' c,> <bes bes,> <a a,>	|		%30
    <g g,>4 <g bes d> <d d,> <g bes d> |		%31
    <fis fis,>4 <fis c' d> < d d,> <fis c' d> |		%32
    <a a,>4 <fis c' d> <d d,> <fis fis,> |		%33
    <g g,>4 <g bes d> <bes, bes,> <d d,> |		%34
    <g g,>4 <g bes d> <d d,> <g bes d> |		%35
    <c, c,>4 <g' c ees> <ees ees,> <g c ees> |		%36
    <d d,> <g bes d> <d d,> <fis c' d>			%37
  } \alternative {
    {<g g,>4 <g bes d> <d d,> <fis c' d>}		%38
    {<< {<g bes d>2 <a ees'>2} \\ {s2 f4 <f f,>4}>>}	%39
  }

  \repeat volta 2 {
  <bes, bes,>4 <d d,> <ees ees,> <e e,>|	%40
  <g g,>4 bes <d, d,> <f bes d> |
  <bes, bes,>4 <d d,> <ees ees,> <e e,> |
  <f f,>4 bes8 c \clef treble d8 f aes8. f32(fis32 |
  g4^>) ~ g8. c,32(cis32 d4^>) ~ d8. \clef bass f,32(fis32 |
  g4^>) ~ g8. \stemDown c,32(cis32 d2^>) \stemNeutral |		%45
  <ees ees,>4 <g bes ees> <bes, bes,> <g' bes ees> |
  <ees ees,>4 <g bes ees> <g g,> <ees ees,> |
  <bes bes,>4 <f' bes> f, <f' bes> |
  <bes, bes,>4 <f' bes> <d d,> <b b,> |
  <c c,>4 <f a ees'> <f f,> <b b,> |		%50
  < c c,>4 <f, a ees'> <f f,> <f a ees'> |
  <bes bes,>4 <f bes d> <f f,> <f bes d> |
  <d d,>4 <b b,> <c c,> <f a ees'> |
  <bes, bes,>4 <d d,> <ees ees,> <e e,> |
  <f f,>4 bes <d, d,> <f bes d> |		%55
  <bes, bes,>4 <d d,> <ees ees,> <e e,> |
  <f f,>4 bes8 c \clef treble d8 f aes8. f32(fis32 |
  g4^>) ~ g8. c,32(cis32 d4^>) ~ d8. \clef bass f,32(fis32 |
  g4^>) ~ g8. \stemDown c,32(cis32 d2^>) \stemNeutral|
  g,8 a4 bes8 ~ bes8 c d4 |			%60
  bes'8 a4 g8 ~ g8 f <e bes' cis>4 |
  <f f,>4 <f bes d> <f f,> <f a ees'> |
  } \alternative {
    {<bes bes,>4 <f bes d> <f f,> <f a ees'>}	%63
    {<bes bes,>4 <f f,>4 <g g,>4 <a a,>4}	%64
  }

  \key des\major
  <bes bes,>4 <f bes des> <f f,> <f bes des> 	%65
  <bes bes,>4 <f bes des> <f f,> <f bes des>	%66
  \repeat volta 2 {
  <<{<bes bes,>2 <ges ges,>2} \\ {r4 <f bes des> r4 <ges bes ees>}>> |
  <<{<f f,>4 <ees ees,> r4 <f bes des>} \\ {s2 <des des,>}>> |	%68
  <<{\stemDown c1} \\ {\stemUp ges'4
     g8^\markup {\italic {cres poco a poco}}  a ~ a g ges4}>> | 
  <<\stemDown {ees1} \\ {\stemUp a4 bes8 c ~ c bes a4}>> |	%70
  aes4-> a2-> bes4-> |
  b4-> c-> des-> d-> |						%72
  <bes ees>4-> <ges c>2-> <ges c>4-> |
  <<{\stemDown f1} \\ {\stemUp c'4 ees8 des c des c4}>> |  	%74
  <<{<bes bes,>2 <ges ges,>2} \\ {r4 <f bes des> r4 <ges bes ees>}>> | 
  <f f,>4 <ees ees,> <des des,> <a a,> |			%76
  <bes bes,>4 <f' bes des> <ges ges,> <ges bes ees> |
  <aes aes,>4 <aes c ges'> <des, des,> <aes' des f> |		%78
  \clef treble <<{c'1} \\
   {aes8 g4 aes8 ~ aes bes c4}>> |
   <<{c2 ~ c4 \clef bass <f,, f,>4->} \\
   {g'8 bes4 aes8 ~ aes4 s4}>> |				%80
  } \alternative {
    {<ees, ees,> <f f,> <f f,> <f a ees'> |
     <bes bes,> <f bes des> <c' c,> <f, a ees'> |}		%82
    {<b, b,> <c c,> <c c,> <g' bes c> |
     <f f,> <ees ees,> <d d,> <c c,> |}				%84
  }

  \key bes\major
  \repeat volta 2 {
  << {
     r4 <f bes>4 r4 <f a>4 |			%85	
     } \\ {
     bes,2 c2 |					%85
     } 
  >>
    bes4 <f' bes> bes, <f' bes> |		%86  
    a,4 <f' a> f, <f' a> |
    bes,4 <f' bes> f, <f' bes> |
  << {
     r4 <f bes>4 r4 <f a>4 |			%89	
     } \\ {
     bes,2 c2 |					%89
     } 
  >>
    bes4 <f' bes> <bes bes,> <g g,> |
    <fis fis,> <fis c' d> <d d,> <fis c' d> |
    <g g,> <g bes d> <d d,> <g bes d> |		%92
    <g g,> <ees ees,> <d d,> <f bes d> |
    <f f,> <f a ees'> <bes bes,> <aes aes,> |
    <g g,> <ees ees,> <d d,> <f bes d> |	%95
    <f f,> <f a ees'> <bes bes,> <f f,> |
    <g g,> <ees ees,> <d d,> < f bes d> |
    <f f,> <f a ees'> <bes bes,> <aes aes,> |	%98
    <g g,> <ees ees,> <d d,> <f bes d> |
  } \alternative {   
    {<f f,>4 <f a ees'> <bes bes,> <f a>  | }	%100
    {<f f,>4 <f a ees'> <bes bes,> s4 | }	%101	
   }

  s1 |						%102
  s1 |
  s1 |						%104
  s2. bes8 c |
  d4 ees2 ees4 |				%106
  ees8 d4. f,4 <f f,>4 |
  <<{ <bes bes,>1 ~ \tieDown |			%108 
      <bes bes,>4 s2.} |  			%109
     \\{ 
     f4 \slurUp aes'(g ges) |			%108
     f4 r4 <bes,, bes,>4^> r4} >> |		%109


  \bar "|."
}

\score {
  \context PianoStaff <<
  \context Staff = "up"
   \top
  \context Staff = "down"
   \bottom
 >>

\layout {}
}

\score {
  \context PianoStaff <<
  \context Staff = "up"
   \applyMusic #unfold-repeats \top 
  \context Staff = "down"
   \applyMusic #unfold-repeats \bottom
 >>
 
 \midi {
%  \tempo 4 = 72
  \context {
   \Voice
   \remove Dynamic_performer
  }
 }
}

