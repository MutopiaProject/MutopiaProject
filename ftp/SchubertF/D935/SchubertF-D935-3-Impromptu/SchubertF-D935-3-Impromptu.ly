%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                            Impromptu in B-dur                               %
%                         Franz Schubert (1797-1827)                          %
%                         D935 (Op. 142 No 3., 1827)                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.12.1"

\header {
  title = "Impromptu in B-dur"
  composer = \markup \right-column { \larger "Franz Schubert" \small "(1797-1828)" }
  opus = "D935 (Op. 142 No 3., 1827)"
  mutopiatitle = "Impromptu in B-dur"
  mutopiacomposer = "SchubertF"
  mutopiapoet = ""
  mutopiaopus = "D.935 (Op. 142, No. 3)"
  mutopiainstrument = "Piano"
  date = "1827"
  source = "Breitkopf & Härtel, 1888"
  style = "Romantic"
  copyright = "Public Domain"
  maintainer = "Simon Otten"
  maintainerEmail = "simonotten at gmail dot com"
 footer = "Mutopia-2009/11/01-1721"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\paper {
}

staffUpper = { \change Staff = "upper" \voiceTwo }
staffBackToLower = { \change Staff = "lower" \oneVoice }
staffLower = { \change Staff = "lower" \voiceOne }
staffBackToUpper = { \change Staff = "upper" \oneVoice }
dynRight = { \once \override DynamicText #'extra-offset = #'(1.5 . 0.0) }
ignoreCollision = \override NoteColumn #'ignore-collision = ##t

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                 right hand                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

rthema = \relative d'' {

  \set Score.tempoHideNote = ##t
  \tempo Andante 4 = 80
  \clef treble
  \key bes \major
  \time 2/2
  \mark Thema
  
  \repeat volta 2 {
      
    %1-4
    d4-.( d8-. d-.) bes4-.( bes-.)
    a4-.( a8-. a-.) \grace a16( es'2)
    d4 d8 d d( g,16) r g4 \break
    c8[ b16( c] b c d c) <<{ f,2 }\\{ \slurUp r8 c( d es) }>>
    
    %5-8
    <d' d'>4 <d d'>8 <d d'> <bes! bes'!>4 <bes bes'>
    <a a'> <a a'>8 <a a'> \grace a'16( <es es'>2) \break
    <<{
      s4 s s g'
      c,4.( f8) bes,2 
    } \\ {
      <d, d'>4 <d d'>8 <d d'> <g g'>4 g8 bes
      bes[ a16 g] a8 <es a> d2 }
    >>
  }

  \repeat volta 2 {
    
    %9 -12
    <fis, a d>4 <fis a d>8 <fis a d> <d g bes>4 <d g bes> \break
    <d g bes> \grace{ c'32[( bes] } <d, a'>8) <d g> <<{ c'4.->( bes8) }\\{ <e, g>2 }>>
    <c f a>4 <c f a>8 <c f a> <d f g>4 <d f g>
    <<
      { g8[( a16 bes] a8 g f2) }
    \\
      { e4 f8 e r c d es }
    \\
      { \voiceFour \once \override NoteColumn #'force-hshift = #0.5 c2 s2 }
    >>
    
    %13-16
    <d' d'>4 <d d'>8 <d d'> <bes bes'>4 <bes bes'> \break
    bes'8.[( c32 bes] a16[ bes \grace{ c32[ d] } c16 bes]) <g g'>2->
    <e, bes' c>4 <e bes' c>8 <e bes' c> <f bes d f>4 <f bes d f>
    <<{ \once \override NoteColumn #'force-hshift = #-2.0 c'4.( f8) bes,2 }\\{ bes8[ a16 g] a8 <es! a> d2 }>>
  }
  \pageBreak
  
  %17-18
  <<{
    \once \override NoteColumn #'force-hshift = #-2.0 c'4.( f8) bes,4. bes,8
    c4.( _\markup{ \italic dim. } f8) \staffLower <bes, d,>2
  } \\ {
    bes'8[ a16 g] a8 <es a> d4. s8
    bes8[ a16 g] a8 \staffLower <a es> s2 }
  >>
  \staffBackToUpper
  \bar "||:"
}

rvarI = {
  
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \crescHairpin \dimHairpin
  %\clef treble
  %\key bes \major
  %\time 2/2
  \mark "Var. I"
  
  <<
    \new Voice = "1" { \voiceOne
      \relative d'' {
        \repeat volta 2 {
        
          %19-22
          d8.[ d16] ^\markup{ \italic legato } d8.[ d16] c8.[ bes16] bes8.[ c16] 
          bes8.[ a16] c8.[ d16] es8.[ fis16] g8.[ es16] \break
          d8.[ es16] d8.[ c16] c8.[ c16] b8.[ b16]
          b8.[ c16] es8.[ c16] b8.[ b16] a8.[ a16] \break
      
          %23-26
          d8.[ d16] d8.[ d16] c8.[ bes16] bes8.[ c16]
          bes8.[ a16] c8.[ d16] es8.[ fis16] g8.[ es16] \break
          d8.[ a16] bes8.[ c16] des8.[ g16] a8.[ bes16]
          c,8.[ d!16] es8.[ f16] bes,8.[ a16] bes8.[ c16] \break
        }
        
        \repeat volta 2 {
          
          %27-30
          d8.[ es16] d8.[ c16] c8.[ b16] c8.[ d16]
          g8.[ as16] g8.[ f16] f8.[ e16] d8.[ c16] \pageBreak 
          c8.[ d16]  e8.[ f16] f8.[ d16] c8.[ bes16]
          a8.[ bes16] g8.[ c16] f,8.[ a16] c8[ cis] \break
          
          %31-33
          d8.[ d16] d8.[ d16] c8.[ bes16] bes8.[ c16]
          bes8.[ c16] d8.[ es16] fis8.[ g16] a8.[ bes16] \break
          c,8.[ d!16] c8.[ cis16] d8.[ d16] es8[ d16 f]
        }
        
        %34-35
        \alternative {
          { f8.[ es16] d8.[ c16] bes8.[ a16] bes8.[ c16] \break }
          { f8.[ es16] d8.[ c16] bes8.[ c16] bes8.[ d16] }
        }
        
        %36-37
        f8.[ es16] d8.[ c16] bes8.[ d16] bes8.[ g16]
        f8.[ ^\markup{ \italic dim. } es16] d8.[ c16] s2       
      }
    }
    
    \new Voice = "2" { \voiceTwo
      \relative d'' {
        \repeat volta 2 {
        
          %19-22
          d16[ \pp d, f d'] d[ d, f d'] c[ d, f bes] bes[ d, f c']
          bes[ es, f a] c[ \< f, a d] es[ a, \> c fis] g[ a, c \! es]
          d[ fis, a es'] d[ fis, a c] c[ f, as c] b[ f as b]
          b[ es, g c] es[ es, ges c] b[ c, f b] a[ c, f a]
          
          %23-26
          d16[ d, f d'] d[ d, f d'] c[ d, f bes] bes[ d, f c']
          bes[ es, f a] c[ f, a d] es[ a, c fis] g[ a, c es]
          d[ d, f a] bes[ ^\< d, f c'] \! des[ ^\> g, bes g'] \! a[ bes, des bes']
          c,[ f, bes d!] es[ f, a f'] bes,[ d, f a] bes[ d, f c']
        }
        
        \repeat volta 2 {
          
          %27-30
          \crescTextCresc
          d16[ fis, a es'] d[ fis, a c] c[ f,g b] c[ f, g d']
          g[ \< b, \! d as'] g[ b, d f] f[ \p g, bes e] d[ e, bes' c] \crescHairpin
          c[ f, a! d] ^\< e[ a, c f] \! f[ ^\> f, bes d] c \! [ fis, g bes]
          a[ \p c, f bes] g[ c, e c'] f,[ c f a] c[ f, cis' f,]
          
          %31-33
          d'16[ d, f d'] d[ d, f d'] c[ f, as bes] bes[ f as c]
          bes[ fis g c] d[ \< g, bes es] fis[ bes, \> des g] a[ bes, des \! bes']
          c,[ \pp e, bes' d!] c[ e, bes' cis] d[ f, bes ^\< d] es[ f, d' f] \!
        }
        
        %34-35
        \alternative {
          { f[ f, c'! es] d[ f, a c] bes[ d, f a] bes[ d, f c'] \dimTextDecresc }
          { f[ f, c' es] d[ f, a c] bes[ d, \> f \! c'] bes[ c, f d'] }
        }
        
        %36-37
        f16[ f, c' es] d[ f, a c] bes[ d, f d'] bes[ d, f g]
        f[ f, c' es] d[ f, a c] s2
        \bar "||:"
      }
    }
  >>
}

rvarII = \relative d'' {
  
  \crescHairpin
  \dimHairpin
  %\clef treble
  %\key bes \major
  %\time 2/2
  \mark "Var. II"
  
  \repeat volta 2 {
    
    %38-41
    d8[( \p cis16 d] cis[ d bes g]) g4->( f8) r16. bes32(
    \once \override Score.Script #'extra-offset = #'(4 . 1)
    a8.[ _\turn bes16] b c! cis d f4-> es8) r
    d8[( e16 f] a->[ bes! f d] c!8[( fis 16 g] a-> bes g c,)
    c16[( \< c' b bes] \> a[ c, \! bes g'] a,[ f'! c es!] bes[ d a c])
    
    %42-44
    bes16-. d'[( cis d] cis[ d bes g]) g4( \> f8) \! r16. bes32
    \once \override Score.Script #'extra-offset = #'(3. . 0)
    c8.[( ^\turn bes16] b[ c! cis \< d] f8.[( \> e16 \! es8]) r \pageBreak \ottava #1 \crescTextCresc
    d8[( e16 f] a->[ \< bes! \! f d]) des8[( g16 bes] c!->[ des bes des,]) \ottava #0 \crescHairpin
    c[( \p\< d! es! e] \! f[ \> g es \! c]) bes[( f d bes] a[ bes c cis])
  }
  
  \break
  \override Score.VoltaBracketSpanner #'Y-extent = #'(0 . 0)
  \repeat volta 2 {
    
    %46-49
    d8-. <d c! a fis>4-> <d c a fis>8 r <d bes g g'>4-> <d bes g g'>8
    r8 <<{ d4 <d f!>8-. e2-> }
       \\{ fis,8 g <f! g> <e g>2 }
       \\{ s4. c'4. bes!8 }>> \break
    r8 <a c f a>4-> <a c f a>8 d8->[( g16 bes] \ottava #1 cis[ d g bes])
    e,[( c') bes-. g-.] \ottava #0 e!-.[ c!-. bes-. g-.] f8 <f es c a>4.-> \break
    
    %50-52
    bes8[( cis16 d] cis[ d f d]) c4->( bes8) r16. bes32(
    a16[)( bes c d] es[ e f fis]) g8.( ^\trill a16 bes8-.) r
    \grace{ c,,32[( d] } c8->[)( b16 c] e[ bes' g e]) \grace { f!32[( g] } f8[)( e16 f] bes[ f' d bes]) \break
  }
  
  %53-54
  \alternative {
    { a16-.[ bes-. c-. d-.] \ottava #1 es!-.[ f-. g-. a-.] \grace c32 bes16-.[ f-. d-. bes-.] \ottava #0 f-.[ d-. bes-. c-.] }
    { a'16-.[ bes-. c-. d-.] \ottava #1 es!-.[ f-. g-. a-.] \grace c32 bes16-.[ a-. g-. f-.] es-.[ d-. c-. b-.] \ottava #0 }
  }
  \revert Score.VoltaBracketSpanner #'Y-extent
  \break
  
  %55-56
  \grace d32( c16-.[) bes!-. a-. g-.] f-.[ es-. d-. cis-.] _\markup{ \italic dim. } \grace c'!32( <bes d,>16-.[) a-. g-. f-.] es-.[ d-. c-. b-.]
  \grace d32( c16-.[) bes!-. a-. g-.] f-.[ es-. d-. c-.] s4.
  \once \override DynamicText #'extra-offset = #'(0.5 . -2.0) f8\p
  \bar "||:" \pageBreak 
}

rvarIII = \relative des' {
  
  \crescHairpin
  \dimHairpin
  \override TupletNumber #'stencil = ##f
  \override TupletBracket #'bracket-visibility = ##f
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \set beatLength = #(ly:make-moment 1 4)
  \set doubleSlurs = ##t
  %\clef treble
  \key des \major
  %\time 2/2
  \mark "Var. III"
  
  %57-58
  <des f des'>4. <des f des'>8
  <c f c'>4~( <bes f' bes>8) <bes f' bes> \set doubleSlurs = ##f
  <<{ bes'8.[( a16]) }\\{ bes,8.[ a16] }\\{ f'4 }>> \times 2/3 { <c c'>8[ <es es'> <ges c es ges>] }
  <f c' es f>4. <es es'>8 \break
  
  %59-60
  <es es'>8.( <des des'>16) \times 2/3 { <bes bes'>8-.[( <c c'>-. <des des'-.>]) }
  <f f'>8.( <es es'>16) \times 2/3 { <es es'>8-.[( <des des'>-. <c c'>-.]) }
  <bes bes'>8.( <a a'>16 \times 2/3 { <bes bes'>8 <des des'> <c c'>) }
  <c c'>4. f8 \set doubleSlurs = ##t \break
  
  %61-62
  <des f des'>4. <des f des'>8
  <c f c'>4~( <bes f' bes>8) <bes f' bes> \set doubleSlurs = ##f
  <<{ bes'8.([ a16]) }\\{ bes,8.[( a16]) }\\{ f'4 }>> \times 2/3 { <c c'>8 <es es'> <ges c es ges> }
  <f c' es f>4. <es es'>8 \break
  
  %63-64
  <es es'>8.( <des des'>16) \times 2/3 { <bes bes'>8-.( <c c'>-. <des des'>-.) }
  <c c'>8.( <bes bes'>16) \times 2/3 { <des des'>8-.( <c c'>-. <bes bes'>-.) }
  <ges! ges'!>8.( <f f'>16) \times 2/3 { <f f'>8-.[( <ges ges'>-. <f f'>-.]) }
  bes4. f''8 \break
  
  %65-66
  \voiceOne \set doubleSlurs = ##t <des f des'>4. <des f des'>8
  <c f c'>4~( <bes f' bes>8) <bes f' bes> \set doubleSlurs = ##f
  <<{ <bes bes'>8.[( <a a'>16]) }\\{ \voiceThree f'4}>> \times 2/3 { <c c'>8 <es es'> <ges c es ges> }
  <f c' es f>4. <es es'>8 \break
  
  %67-68
  <es es'>8.( <des des'>16) \times 2/3 { <bes bes'>8-.( <c c'>-. <des des'>-.) }
  \grace des'16  \oneVoice <f, f'>8.( <es es'>16 \times 2/3 { <es es'>8-.( <des des'>-. <c c'>-.) }
  <bes bes'>8.( <a a'>16 \times 2/3 { <bes bes'>8 <des des'> <c c'>) }
  \voiceOne <c c'>4. f8 \pageBreak
  
  %69-70
  <des f des'>4. <des f des'>8 \set doubleSlurs = ##t
  <c f c'>4~( <bes f' bes>8) <bes f' bes> \set doubleSlurs = ##f
  <<{ <bes bes'>8.[ <a a'>16] }\\{ \voiceThree f'4}>> \times 2/3 { <c c'>8( <es es'> <ges c es ges>) }
  <f c' es f>4. <es es'>8 \break 
  
  %71-72
  <es es'>8.( <des des'>16) \times 2/3 { <bes bes'>8-.( <c c'>-. <des des'>-.) }
  <c c'>8.( <bes bes'>16 \times 2/3 { <des des'>8-.( <c c'>-. <bes bes'>-.) } \oneVoice
  <ges! ges'!>8. <f f'>16 \times 2/3 { <f f'>8-.( <ges ges'>-. <f f'>-.) } <bes, bes'>4. \break
  
  \repeat volta 2 {
    
    %72
    <des des'>8
    
    %73-74
    <des des'>4 \times 2/3 { <des des'>8( <es es'> <des des'>) }
    <des des'>4 <bes bes'>8. <bes' bes'>16
    <bes bes'>8. <ces ces'>16~ \times 2/3 { <ces ces'>8-.( <c c'>-. <des des'>-.) }
    \grace des'16 <f, f'>8.( <des des'>16) <c c'>8 r \break
    
    %75-76
    <c, c'>8[( \pp <f f'> <a a'> <c c'>])
    <c c'>4( \times 2/3 { <bes bes'>8 <a a'> <g g'>)
    <g g'>( <a a'> <f f'>) <f f'>( <g g'> <e e'>) }
    <f f'>4( \times 2/3 { <es es'>8 <des des'> <c c'>) } \break
    
    %77-78
    \set doubleSlurs = ##t
    <c c'>4->( <bes bes'>8) <bes bes'>
    <c c'>4->( <bes bes'>8) <bes bes'> \set doubleSlurs = ##f
    \times 2/3 { <ces ces'>8( <bes bes'> <d d'> <f f'> <as as'> <ces f as ces>) } \set doubleSlurs = ##t
    <bes f' as bes>4( <bes es ges bes>8) <es, es'>\noBeam \break
    \set doubleSlurs = ##f
    
    %79
    <des des'>8.( <c! c'!>16) \times 2/3 { <c c'>8-.( <des des'>-. <es es'>-.) }
    \grace es'16( <ges, ges'>8.)( <f f'>16) \times 2/3 { <f f'>8-.[( <bes bes'>-. <des des'>-.]) }
  }
  
  %80-81
  \alternative {
    { \partial 8*7 <des des'>8.[( <c c'>16]) \times 2/3 { <c c'>8[( <es es'> <a, a'>]) } <bes bes'>4. }
    { <des des'>8.( <c c'>16) \times 2/3 { <c c'>8( <es es'> <a, a'>) } <bes bes'>4 r8 des }
  } \pageBreak
  
  %82-83
  des8.( c16) \times 2/3 { c8( es_> <f, a>) }
  <f bes>4~ \times 2/3 { bes8( des f) }
  <des f>8.( <c es>16) \times 2/3 { <c es>8( <es ges> <a, c f a>) }
  <bes des f bes>4. ^\fermata des8
  
}

rvarIV = \relative des' {
  
  %\clef treble
  \key ges \major
  %\time 2/2
  \set beatLength = #(ly:make-moment 1 4)
  \bar "||:"
  \mark "Var. IV"
  
  \repeat volta 2 {
    
    %84-87
    des16( des' <bes ges> des des, des' <bes ges> des
    des, des' <bes ges> des des, des' <bes ges> des)
    des,( des' <ces as> des des, des' <ces as> des
    des, des' <ces as> des des, des' <ces as> des)  \break
    des, des' <bes ges> des des, des' <bes ges> des
    es, es' <ces as> es es, es' <ces as> es \voiceOne
    as, ^\< as' <ges es> as \! <ges c,> ^\> as <es c> as \!
    <des, f> as' <ces! f,> des <bes ges> des <as f> des \oneVoice \break
    
    %88-91
    ges,16. \ottava #1 des'32( <bes bes'>8->~) <bes bes'>16. ges'32( <bes, bes'>8->~)
    <bes bes'>[( <ges ges'> <des des'> <bes bes'>])
    r16. des'32( <ces ces'>8->~) <ces ces'>16. as'32( <ces, ces'>8->~)
    <ces ces'>[( <as as'> <f f'> <ces ces'>]) \ottava #0  \break
    r16. des32( <bes bes'>8->~) <bes bes'>16. ges'32 <bes, bes'>8->~
    <bes bes'>[( <beses beses'> <as as'> <ges ges'>])
    <f f'>[( <des' des'> <ces ces'> <as as'>]) <ges ges'>2 \break
  }
  
  \repeat volta 2 {
    
    %92-95
    d16 d' <bes f> d d, d' <bes f> d
    es, es' <bes ges> es bes bes' <ges es> bes
    es,, es' <bes ges> es es, es' <des! g,> es
    es, es' <c as> es c c' <as es> c  \pageBreak
    r16. des,32~ <des des'>8~ <des des'>16. des32~ <des des'>8~
    <des des'>[( <bes bes'> <ges ges'> <bes bes'>])
    <des, des'>[( <as' as'> <ges ges'> <es es'>])
    <<{ des'2 }\\{ des,8[( <as' ces> <ges bes> <f as>]) }>>
    
    %96-98
    des16 des' <bes ges> des des, des' <bes ges> des
    fes, fes' <des ges,> fes fes, fes' <des ges,> fes
    es, es' <ces ges> es es, es' <ces ges> es
    beses beses' <ges es> beses beses, beses' <ges es> beses
    \ottava #1 r16. c32~( <c c'>8~) <c c'>16. c32~( <c c'>8)
    <es es'>[( <des des'> <bes bes'> <ges ges'>])
  }
  
  %99-100
  \alternative {
    { <f f'>[( <des' des'> <ces! ces'!> <as as'>]) <ges ges'>2 \ottava #0 }
    { \ottava #1 <f f'>8[( <des' des'> <ces! ces'!> <as as'>]) <ges ges'>4. \ottava #0 <ges, ges'>8( }
  }
  
  %101-105
  <f f'>[ <des' des'> <ces ces'> <as as'>]) <ges ges'>4. ges8
  f[( des' ces as]) ges2( ges4-.)( ges4.-.) ^\< ges8[( f e]) \!
  f2.( ^\> bes4 \!
  a f' es c8.) ^\fermata \pageBreak
}

rvarV = \relative f''' {
  
  %\clef treble
  \key bes \major
  %\time 2/2
  \set beatLength = #(ly:make-moment 1 4)
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  \override TupletNumber #'stencil = ##t
  \override TupletBracket #'bracket-visibility = ##f
  \bar "||"
  \mark "Var. V"

  %105
  %r2 r4 r8 r16
  f16(
  
  \repeat volta 2 {
  
    %106-107
    \times 2/3 { e16)( g f es d c bes a g f es d) } \override TupletNumber #'stencil = ##f
    c4->( bes8) r16 bes(
    \times 2/3 { a16)( bes c d es f g a bes b c d }
    f4-> es8) r16 es16(
    
    %108-109
    \ottava #1 \times 2/3 { d16) d' c bes! a g f es d c bes a
    g g' f es d c bes a g f es d
    c e g bes g bes c e g bes g e }
    f8-. \times 2/3 { f16([ g f] e[ g f e g f]) }
    
    %110-111
    \times 2/3 { e16( g f es d c \ottava #0 bes a g f es d) }
    c4(-> bes8) r16 bes(
    \times 2/3 { a)( bes c d es f g a bes b c d) }
    f8.(-> e16 es8) r16 es
    
    %112
    \ottava #1 \times 2/3 { d16 d' c bes! a g f es d c bes a
    g bes' g e des bes \ottava #0 g e des bes g e }
  }
  
  %113-114
  \alternative {
    { \times 2/3 { f e f g a bes c d! es! f g a
    \ottava #1 bes d f bes d c bes f d bes d f \ottava #0 }}
    { \times 2/3 { f,, e f g a bes c d! es! f g a
    \ottava #1 bes d f bes d c bes f d bes c cis \ottava #0 }}
  }
  
  \override Score.VoltaBracketSpanner #'Y-extent = #'(0 . 1)
  \repeat volta 2 {
  
  %115-116
  bes8-| <d, fis c'! d>4-> <d fis c' d>8 r <d g bes d>4-> <g bes d g>8
  r <bes d bes'>4 <g d' g>8 <e g c e>2
  
  %117-118
  \voiceOne r8 <f c' f>->( \times 2/3 { f'16) c a f c a }
  g8_|\noBeam <f' d' f>->( \times 2/3 { f'16) d bes f d bes \oneVoice \pageBreak
  a c' bes a g f e d c bes a g }
  f8 \times 2/3 { f'16[ g f] e g f e g' f }
  
  %119-120
  \times 2/3 { e16( g f es d c bes a g f es d) }
  c4->( bes8) r16 a(
  \times 2/3 { bes16)( c d es f g a bes c d es f) }
  \ottava #1 g8.(\trill bes16 des8) \ottava #0 r16 c,,
  
  %121
  \times 2/3 { b16 c d e f g a bes! c d es e \ottava #1
  f f' e! es d c bes a g f es d } \ottava #0
  }
  
  \alternative {
    {
      %122
      \times 2/3 { c16 a' g es c bes a g f es d c
      bes d f bes d c bes a bes b c cis }
    }{
      %123
      \times 2/3 { c16 a' g es c bes a g f es d c
      bes d f bes d c bes a g f es d }
    }
  }
  
  %124-125
  \times 2/3 { c16 a' g es c bes a g f es d c
  bes d f bes d c bes a g f es d
  c( a' g es ^\markup{ \italic ritardando } c bes) \staffLower a-.( g-. f-. es-. d-. c-.) }
  r4 r8\fermata f8 \tempo "Più lento" 4 = 50 \break
  
  %126-127
  <d f d'>4-.( <d f d'>8-. <d f d'>-. <f bes>4-. <f bes>-.)
  <es f a>4-.( <es f a>8-. <es f a>-.) \staffBackToUpper <c' es>2^\fp
  
  %128
  <<{ d4-.(^\< d8-.^\> d-.)\! d4( \staffLower g,) }
  \\{
    \override Stem #'cross-staff = ##t
    \override Stem #'length = #16
    \override Stem #'flag-style = #'no-flag
    \staffLower
    <d f bes>4 <f g! b>8\noBeam <f g b>\noBeam
    \revert Stem #'length <es g>2
  }>>
  
  %129
  <<{ \oneVoice c'8( b16 c b c d16._> c32 bes2) }
  \\{
    \staffLower <es, a>2
    \override Stem #'cross-staff = ##t
    \override Stem #'length = #18
    d2
  }>> \break
  
  %130-131
  <d' f bes d>4-.( <f g b d>8-. <f g b d>-.) <<{ d'4( g,) }\\{ <es g>2 }>>
  <<{ c'8( b16 c b c d16._> c32 bes2) }\\{ <es, a>2 d }>>
  
  %132-134
  <es' a c>2~ <es a c>8( b'16 c b c es16. a,32)
  <d, bes'!>4 r <d, f bes d> r
  <d f bes>1 \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                 left hand                                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

lthema = \relative bes, {
  
  \clef bass
  \key bes \major
  \time 2/2
  
  \repeat volta 2 {
    
    %1-4
    bes8-. d'[( <bes f> d]) d,-. f'[( <f, bes> f'])
    c,-. es'[( <f, a> es']) f,,-. c''[( <a f> c])
    bes,8-. d'[ <bes f> d] es,,-. c''[ <bes g es> c]
    e,,-. c''[ <bes! g e> c] f,,-. <<{ a'[ bes c] }\\{ f,4. }>>
    
    %5-8
    bes,8 d'[ <bes f> d] d, f'[ <f, bes> f']
    c, es'[ <f, a> es'] f,, c''[ <a f> c]
    bes, d'[ <bes f> d] e,, des''[ <bes g e> des]
    <<{ c4. s8 }\\{ f,4.-> f8 }\\{ bes[ a16 g] a8 c}>> bes,-. bes'[ <f d> bes]
  }
  
  \repeat volta 2 {
    
    %9-12
    <d,, d'>8 d''[ <a fis> d] g,, bes'[ <g d> bes]
    g, bes'[ <g d> bes] c,, g''[ <e c> g]
    f, a'[ <f c> a] bes,, g''[ <f d> g]
    <<{ c,, g''[ a bes] f, a'[ bes c] }\\{ s8 c,4. s8 f4.}>>
    
    %13-16
    bes,8 d'[ <bes f> d] d, f'[ <as, bes> f']
    es, es'[ <bes g> es] e, g'[ <des bes> g]
    g,, c'[ <bes g> c] f,, d''![ <bes f> d]
    f,, c''[ f, c'] bes, bes'[ <f d> bes]
  }
  
  %17-18
  f,8-. c''[ f, c'] bes,-. bes'[( f) d]
  f,, \stemDown \slurDown c''[( f, c']) <bes, f' bes>2
  \stemNeutral \slurNeutral
}

lvarI = \relative bes, {

  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  %\clef bass
  %\key bes \major
  %\time 2/2

  <<
    \new Voice = "3" { \voiceOne
      \relative f {
        \repeat volta 2 {
          
          %19-22
          r8 f4 f8 r f4 f8
          r8 f4 f8 r f4 f8
          r8 a4 a8 r as4 as8
          r8 g4( ges8) r f4 f8
          
          %23-26
          r8 f4 f8 r f4 f8
          r8 f4 f8 r f4 f8
          r8 f4 bes8 r <bes des>4 <bes des>8
          r8 c4( es8) s4 r
        }
        
        \repeat volta 2 {
          
          %27-30
          r8 c4( a8) s2
          s8 f'4( d8) r8 c4.
          r8 c4 c8 s2
          r8 a r bes a2
          
          %31-33
          r8 f4 f8 r bes4 bes8
          r8 bes4 bes8 r <bes des>4 <bes des>8 \slurDown
          r8 <bes c>4 <bes cis>8 r <bes d>8( <c es> <d f>)
        }
        
        %34-35
        \alternative {
          { r8 <c es>( <bes d> <f c'>) <d bes'>4 s4 }
          { r8 <c' es>( <bes d> <f c'>) \slurNeutral \phrasingSlurUp <d bes'>4 r8 bes'\( }
        }
        
        %36-37
        d8\)( <c es> <bes d> <f c'>) <d bes'>4 r8 <d f>
        r <c es>( <bes d> <f c'>)
        <<{
          \voiceOne bes'16 d, f a s4
        } \\ {
          \voiceTwo s16 d,8.~ \stemUp d4
        } \\ {
          \voiceTwo s8 f8~ \stemUp \ignoreCollision <f bes>4 ^\fermata }
        >>
      }
    }
    
    \new Voice = "4" { \voiceTwo
      \relative bes {
        \repeat volta 2 {
                  
          %19-22
          bes,2 d | c f, | d' d | es f,
          
          %23-26
          bes2 d | c f, | bes e | f <bes d!>4 s
        }
        
        \repeat volta 2 {
          
          %27-30
          \slurUp
          d,2 g,8 <g' d'>[( _\< <as c> \> <g b>]) \! \slurDown
          g,8 g'4. c,4.( g'8)
          a4( f4) bes,8-. \slurUp <bes' d>[( <a c> <g bes>])
          c,4 c f2 \slurNeutral
          
          %31-33
          bes,2 d | es e | g f
        }
        
        %34-35
        \alternative {
          { f2 bes,4 r8 d }
          { f2 bes,4 r 4 }
        }
        
        %36-37
        f'2 bes,4 r
        f2 <bes f bes,> _\fermata
      }
    }
  >>
}

lvarII = \relative bes, {
  
  %\clef bass
  %\key bes \major
  %\time 2/2
  
  \repeat volta 2 {
    %38-41
    bes8-. <f' bes d>4 <f bes d>8 d8-. <f bes d>4 <f bes d>8
    c8 <f a es'>4 <f a es'>8 f,8 <f' a c>4 <f a c>8
    bes,8 <f' bes d>4 <f bes d>8 es,8 <es' g bes c>4 <es g bes c>8
    <<{ e,8 c''4 c8 f,, <a' c>[ <bes d> <c es!>] }
    \\{ s8 e,4 <e bes'>8 s f4. }
    \\{ s8 g8[ a] s8 s2 }>>
    
    %42-45
    bes,8 <f' bes d>4 <f bes d>8 d8 <f bes f'>4 <f bes f'>8
    c8 <f a es'>4 <f a es'>8 f,8 <f' a c>4 <f a c>8
    bes,8 <f' bes d>4 <f bes d>8 e,8 <e' g bes des>4 <e g bes des>8
    <<{ c'4. <c es>8 s2 }
    \\{ f,2 <bes d> }
    \\{ bes8 a16 g a4 s2 }>>
  }
  
  \repeat volta 2 {
    
    %46-49
    d,8[ fis16 a] cis[ d d, d'] bes,[ bes' ^\< a, a'] g,[ g' fis, fis'] ^\!
    g,[ ^\> g' a, a'] bes,[ bes' b, \! b'] c,8[ e16 g] b[ c c, c']
    f,,8->[ a16 c] e[ f a c] bes,8 <f' d' f>4 <f d' f>8
    c8 <f bes c e>4 <c' e>8 f,16[( es') c-. a-.] f16-.[ es-. c-. f-.]
    
    %50-52
    bes,8 <f' bes d>4 <f bes d>8 d <as' bes f'>4 <as bes f'>8
    es8 <g bes es>4 <g bes es>8 e <bes' des g>4 <bes des g>8
    g8 <bes c e>4 <bes c e>8 f <bes d! f>4 <bes d f>8
  }
  
  %53-54
  \alternative {
    { f8 <c' es! f>4 <c es f>8 bes,8 <bes' d f>4. }
    { f8 <c' es! f>4 <c es f>8 f,8 <bes d f>4 <bes d f>8 }
  }
  
  %55
  f,8 <f' c' es>4 <f a es'>8 f, <f' bes d>4 <f bes d>8
  
  %56
  % Schubert used a strange notation here
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  f, <es' f c'>4 <es f a>8
  << \ignoreCollision { \voiceOne bes'4~ bes8 ^\fermata }
  \\ \ignoreCollision { \voiceOne s16 f8.~ f4*1/2 }
  \\ \ignoreCollision { \voiceTwo \tieUp bes16[ f d8]~ \stemUp d4*1/2 }
  \\{ \voiceTwo r8 r16 bes~ <bes bes,>8 _\fermata }>>
  r8 \bar "||:"
}

lvarIII = \relative bes, {
  
  %\clef bass
  \key des \major
  %\time 2/2
  \override TupletNumber #'stencil = ##f
  \override TupletBracket #'bracket-visibility = ##f
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  
  \times 2/3 {
    
    %57-58
    <bes bes,>8-. <bes des f>-.->[( <bes des e>-.] <bes des f>-. <bes des ges>-. <bes des f>-.)
    <des des,>-. <des f>-.->[( <des e>-.] <des f>-. <des ges>-. <des f>-.)
    c,-. <<{ <es'! f>8*2/3[ e8] s8*1/3
             \once \override Hairpin #'extra-offset = #'(0.0 . 1.0)
             <es f>8 ^\< es ges \! }
         \\{ c,8[-> <c es>8] c c c }>>
    a,8-. ^\fp\> <a' c f>->[ <a c e>] <a c f> \! <a c ges'> <a c f>
    
    %59-60
    bes, <bes' des f>->[ <bes des e>] <bes des f> <bes des ges> <bes des f> ^\<
    ges, <ges' bes es>->[ ^\> <ges a es'>] \! <ges bes es> <ges bes f'> <ges bes es>
    <f f,> <f bes des>->[ <f bes c>] <f bes des> <f bes es> <f bes e>
    <f f,> <f a f'>->[ <f a e'>] <f a f'> <f a ges'> <f a f'> 
    
    %61-62
    <bes bes,> <bes des f>[ <bes des e>] <bes des f> <bes des ges> <bes des f>
    <des des,> <des f>[ <des e>] <des f> <des ges> <des f>
    c, <<{ <es'! f>8*2/3[ e8] s8*1/3 
           \once \override Hairpin #'extra-offset = #'(0.0 . 1.0)
           f8 ^\< es ges \! }
         \\{ c,8[-> <c es>8] <c es> <c es> <c es> }>>
    a, ^\fp\> <a' c f>[ <a c e>] <a c f> \! <a c ges'> <a c f>
    
    %63-64
    bes, <bes' des f>[ <bes des e>] <bes des f> <bes des ges> ^\<  <bes des f> 
    e, <bes' c g'>[ ^\> <bes des g>] <bes g'> \! <bes c g'> <bes des g>
    f <bes des>[ <bes des>] f <a c>[ <a c>]
    bes, <bes' des f>[ <bes c es!>] <bes des>4*3/2
    
    %65-66
    bes8-. \staffUpper <bes' des f>-.[( <bes des e>-.] <bes des f>-. <bes des ges>-. <bes des f>-.) \staffBackToLower
    des,-. \staffUpper <des' f>-.[( <des e>-.] <des f>-. <des ges>-. <des f>-.) \staffBackToLower
    c,-. <<{ \staffUpper f'[ e] f es ges }
         \\{ <c, es!>[ <c es>] <c es> <c es> <c es> }>>
    a,-. <<{ \staffUpper f''[ e] f ges f}
         \\{ <a, c>[ <a c>] <a c> <a c> <a c> }>>
         
    %67-68
    bes, <bes' des f>[ <bes des e>] <bes des f> <bes des ges> <bes des f>
    ges, <ges' bes es>[ <ges a es'>] <ges bes es> <ges bes f'> <ges bes es>
    f, <f' bes des>[ <f bes c>] <f bes des> <f bes es> <f bes e>
    f, <<{ \staffUpper f''[ e] f ges f }
       \\{ <f, a>[ <f a>] <f a> <f a> <f a>}>>
    
    %69-70
    bes, <<{ \staffUpper f''[ e] f ges f }
         \\{ <bes, des>[ <bes des>] <bes des> <bes des> <bes des> }>>
    bes, <des' f>[ <des e>] <des f> <des ges> <des f>
    c, <<{ \staffUpper f'[ e] f es ges }
       \\{ <c, es!>[ <c es>] <c es> <c es> <c es> }>>
    a, <<{ \staffUpper f''[ e] f ges f }
       \\{ <a, c>[ <a c>] <a c> <a c> <a c> }>>
    
    %71-72
    bes, <<{ \staffUpper f''[ e] f ges f }
         \\{ <bes, des>[ <bes des>] <bes des> <bes des> <bes des> }>>
    e, \staffUpper <bes' c g'>[ <bes des g>] <bes g'> <bes c g'> <bes des g> \staffBackToLower
    f <bes des>[ <bes des>] f <a c>[ <a c>]
    bes,[ <des f> <c es>] <bes des>8*3/2
  
    \repeat volta 2 {
      
      %72-74
      r8*3/2
      des,8-. <des' f as>[ <des f as>] <des f a> <des f a> <des f a>
      ges,-. <des' ges bes>[ <des ges bes>] d,-. <d' f as bes>[ <d f as bes>]
      es, <es' ges bes>[ <es ges ces>] e, <e' g bes c>[ <e g bes des!>]
      f, <f' bes des>[ <f bes des>] <f a c> <f a c> <f a c>
      
      %75-76
      a, <f' a c>[ <e a c>] <f a c> <f a d> <f a c>
      bes, <fis' a es'>[ <fis a d>] <g bes d> <a c d> <bes d>
      c, <a' c>[ <a c>] c, <g' bes c>[ <g bes c>]
      f, <f' a c>[ f-.] <es! f>-.( <des f>-. <c f>-.)
      
      %77-78
      <ges! ges,!> <ges bes des>[ <ges bes c>] <ges bes des> <ges bes es> <ges bes des>
      <f f,> <f bes des>[ <f bes c>] <f bes des> <f bes es> <f bes des>
      d <d' f as>[ <d f a>] <d f bes> <d f as> <d f as ces>
      es, <es' ges bes>[ <es ges a>] <es ges bes> <es ges ces> <es ges bes>
      
      %79
      ges, <ges' bes>[ <ges bes>] <ges bes> <ges bes> <ges bes c>
      f, <f' bes des>[ <f bes des>] <f bes des>[ <e bes' des> <f bes des>]
    }
  
    %80-81
    \alternative {
      {
        \partial 8*7 e, <e'! g bes des>[ <e g bes c>] f, <f' a c ges'!>[ <f c' es f>]
        bes, <f' des' f>[ <f c' es>] <f bes des>8*3/2
      } {
        e,8 <e' g bes des>[ <e g bes c>] f, <f' a c ges'!>[ <f c' es f>]
        bes, <f' bes des>( <f a c> <f bes des> <f des' f> <f bes des>)
      }
    }
    
    %82-83
    e, <e' g bes des>[ <e g bes c>] f, <f' a c>[ <f c' es!>]
    bes, <f' bes des>[ <f a c>] <f bes des> <f des' f> <f bes des>
    ges, <ges' bes>[ <ges bes c>] f, <f' a c>[ <f c' es>]
    bes,, <f'' bes des>[ <f des' f>] <f bes des>8*3/2 ^\fermata r
  }
}

lvarIV = \relative ges, {
  
  %\clef bass
  \key ges \major
  %\time 2/2
  \set beatLength = #(ly:make-moment 1 4)
  
  \repeat volta 2 {
  
    %84-87
    ges16.( des'32 bes'8->~ bes16. ges32 bes8->~) bes( ges des bes)
    f16.( des'32 ces'8->~ ces16. as32 ces8->~) ces( as f des)
    <<{ ges,16.[( des'32 bes'8]->~ bes16. ges32 bes8->~) bes( as es as) }\\{ s2 ces,2 }>>
    <<{ as'8( \staffUpper c es ges) f( as bes ces!) }
    \\{ c,,4( \oneVoice as')( des2) }>>
    
    %88-91
    ges,,16 bes' des, bes' ges bes des, bes' ges, bes' des, bes' ges bes des, bes'
    f, ces'' des, ces' as ces des, ces' f,, ces'' des, ces' as ces des, ces'
    ges, bes' des, bes' as bes des, bes' c,, c' es c as' c, beses' c,
    des, des' f des as' des, ces' des, ges,-. des'( bes' ges des ges des bes)
  }
  
  \repeat volta 2 {
    
    %92-95
    r16. bes32~ <bes bes'>8->~ <bes bes'>16. bes32~ <bes bes'>8->~
    <bes bes'>[ <ges ges'>-| <es es'>-| <bes bes'>-|] \set doubleSlurs = ##t
    r16. bes'32~ <bes bes'>8->~ <bes bes'>16. beses32~ <beses beses'>8->( <as as'>[) <es es'>-| <c c'>-| <ges ges'>-|] \set doubleSlurs = ##f
    f'16( f' <des as> f g, f' <des as> f ges, es' <des bes> es a, ges' <des bes> ges)
    as,! as' <f des> as as, as' <ges c,> as des,,-. des'[( <f as> des] <ges bes> des <as' ces!> des,) \break
    
    %96-98
    ges,16.( des'32 bes'8->~ bes16. ges32 bes8->~) bes( ges des bes)
    ces,16.-. ces'32( es8->)~ es16. ces32( es8->)~ es[ c-. beses-. c,] \break
    es'16 c' <beses ges> c f, c' <beses ges> c des, des' <bes ges> des f, des' <bes ges> des
  }
  
  %99-100
  \alternative {
    { des,,-. des'( f des as' des, ces'! des,) ges,-. des'( bes' ges des ges des bes)  \break }
    { des,-. des'( f des as' des, ces'! des,) ges,-. bes'( des, bes' ges bes des, bes') }
  }
  
  %101-105
  des,,-. ces''[( <f, des> ces'] <f, eses> ces' <f, des> ces')
  ges,,-. bes'( des, bes' ges bes des, bes')  \break
  bes,-. ces''[( <f, des> ces'] <f, eses> ces' <f, des> ces')
  ges,-. bes'( des, bes' ges bes des, bes')
  ges,-. bes'( des, bes' ges bes des, bes')
  ges,-. bes'( des, bes' ges bes des, bes') \stemDown  \break
  f,-. bes'( d, bes' f bes d, bes')
  f,-. bes'( d, bes' f bes d, bes')
  f,-. a'( es a f a d, a')
  <<{ \set tieWaitForNote = ##t \stemDown f,[-. a'( es a] \stemUp f~[ a~ <f a>]) ^\fermata }\\{ s4 f8[ es16] }>>
}

lvarV = \relative bes, {
  
  %\clef bass
  \key bes \major
  %\time 2/2
  \set beatLength = #(ly:make-moment 1 4)
  \override TupletNumber #'stencil = ##f
  \override TupletBracket #'bracket-visibility = ##f
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \set doubleSlurs = ##f
  
  %105
  %r2 r4 r8 r16
  r16
  
  \repeat volta 2 {
    %106-107
    bes8-. <f' bes d>4 <f bes d>8 d8-. <f bes f'>4 <f bes f'>8
    c8 <f a es'>4 <f a es'>8 f,8 <f' a c>4 <f a c>8

    %108-109
    bes,8 <f' bes d>4 <f bes d>8 es, <es' g bes c>4 <es g bes c>8
    e, <e' g bes c>4 c8( f,-.) 
    <<{ \slurDown <a' c>8( <bes d> <a es'!>) }\\{ f4. }>>

    %110-112
    bes,8-. <f' bes d>4 <f bes d>8 d8-. <f bes f'>4 <f bes f'>8
    c <f a es'>4 <f a es'>8 f, <f' a c>4 <f a c>8
    bes, <f' bes d>4 <f bes d>8 e8 <bes' des g>4 <g bes des>8
  }

  \alternative {     
     %113
     { f,8 <<{ c''4( es!8) }\\{ f,4. }\\
     { \stemDown \once \override NoteColumn #'force-hshift = #1.2 bes8 a c }>>
       bes,8 <bes' d!>4. }
     %114
     { f,8 <<{ c''4( es!8) }\\{ f,4. }\\
     { \stemDown \once \override NoteColumn #'force-hshift = #1.2 bes8 a c }>>
       bes,8 <bes' d!>4. }
  }
  
  \repeat volta 2 {
    
    %115-116
    \times 2/3 { d,,16 e fis g a bes c d e fis g a
    bes d bes g bes g d g d bes d bes
    g a bes c d e fis g gis a bes b
    c e c g c g e[ g e] } c8
    
    %117-118
    \stemDown \times 2/3 { a16 c f! a c \change Staff = "upper" f } a8 r
    \change Staff = "lower" \times 2/3 { bes,,!16 d g bes \change Staff = "upper" d g } bes8 r \change Staff = "lower" \stemNeutral
    c,,8-. <a'c f>-. c,-. <bes'c e>-. f,8
    <<{ \slurDown <a' c>8( <bes d> <a es'>) }\\{ f4. }>>
    
    %119-121
    bes,8 <f'bes d>4 <f bes d>8 d <as' bes f'>4 <as bes f'>8
    es <g bes es>4 <g bes es>8 e <bes'des g>4 <bes des g>8
    g <bes c e>4 <bes c e>8 f <bes d! f>4 <bes d f>8
  }
    
  %122-123
  \alternative {
    { f,8 <f' a es'!>4 <f a es'>8 bes, <bes' d>4. }
    { f,8 <f' a es'>4 <f a es'>8 f, <f' bes d>4 <f bes d>8 }
  }
  
  %124-125
  f,8 <es' f a>4 <es f a>8 f, <d' f bes>4 <d f bes>8
  f,,8 <f' c' es>4 \voiceTwo r8 r4 r8\fermata f
  
  %126-127
  <bes, f' bes>4-.( <bes f' bes>8-. <bes f' bes>-. <d bes d'>4-. <d bes d'>4-.)
  <c f c'>4-.( <c f c'>8-. <c f c'>-.)
  <<{ \voiceTwo <a a'>2 }\\{ \voiceThree \once \override NoteColumn #'force-hshift = #-1.8 <ges' ges'>4(^> <f f'>4) }>>
  
  %128-129
  <bes, f' bes>4-.( <g g'>8-. <g g'>8-.) <c g' c>2
  <f, f'>2( <bes f' bes>2)
  
  %130-131
  \oneVoice
  <bes' f' bes>4-.( \stemDown <g g'>8-. <g g'>8-.) \stemNeutral <c g' c>2
  <f, f'>2 <bes f' bes>
  
  %132-134
  \set doubleSlurs = ##t
  <f' c' es f>1(
  <bes d f>4) r <bes, f' bes>4 r
  <bes f' bes>1 \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                  dynamics                                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dthema = {  
  s1\p                    %1
  s1*5
  s4.\< s8\! s4.\> s8\!   %7
  s1
  s1\mf                   %9
  s1
  \dimTextDecresc
  s1\>                    %11
  s1\!\p                  %12
  \dynRight s1\p           %13
  s4\< s\! s2             %14
  \crescTextCresc
  s4 s\< s2\!             %15
  s1\p                    %16
  \once \override DynamicText #'extra-offset = #'(0.5 . -2.0)
  s1\pp                   %17
}

dvarI = { s1*19 } % Dynamics are in rvarI voice 2

dvarII = { 
  s1*9
  s1\f                    %46
  s1*1 \dimTextDecresc
  s2 s8 s4.\>             %49
  s1\!\p                  %50
  s1
  \dynRight s1\pp         %51
  s1*5
}

dvarIII = {
  \crescHairpin \dimHairpin
  s1\p                    %57
  s1*8
  s4 s\< s4.\fp\> s8\!    %66
  s1*5
  s2.. s8\f               %72
  s1
  s4 s4*2/3\< s4*1/3\! s8.\> s16\! s4 %74
  s1*1
  \crescTextCresc
  s1*2/3 s1*1/3\<         %76
  \once \override DynamicText #'extra-offset = #'(0.5 . -1)
  s1\f                    %77
  \crescHairpin
  s4 s4*2/3\< s4*1/3\! s8.\> s16\! s8 s\p %78
  s1
  s4*1/3\< s\> s\! s2 s8  %80
  s8.\< s16\! s8.\> s16\! %81
  \dimTextDecresc
  s8 s4.\>
  s1*5/6\! \once \override DynamicText #'extra-offset = #'(0.5 . 0.5) s1*1/6\pp %82
  s1
}

dvarIV = {
  \crescHairpin \dimHairpin
  s1\p                    %84
  s1*3
  \once \override DynamicText #'extra-offset = #'(0.5 . -1.0)
  s1\f                    %88
  s1*2
  \once \override DynamicText #'extra-offset = #'(0.5 . -1.0)
  s1\p          %91
  s1\f                    %92
  s1
  s1\p                    %94
  s2 s8\< s\! s\> s\!     %95
  \crescTextCresc
  s2\p s16 s4\< s8.\!     %96
  \dynRight s1\f          %97
  s1\p                    %98
  s1*2 \dimTextDecresc
  \once \override DynamicTextSpanner #'extra-offset = #'(0.5 . -0.8)
  s2..\> s8\pp            %101
  s1*2
  s2. s4 ^\markup{ \abs-fontsize #12 \italic dim. } %104
  s2...
}

dvarV = {
  \crescHairpin \dimHairpin
  %s2 s4 s8 s16
  s16\pp                              %105
  s1*2
  s2 s4..\< s16\! s4\> s16 s8.\! s2   %108-109
  s1*2
  s8 s4.\< s8.\f s8\> s8.\!           %112 
  \dynRight s1\p s2.\p s8..\< s32\!   %113-114
  s1\f                                %115
  s1*2
  s2 s8 s8.\p\< s\> \dynRight s1\pp   %118-119
  s8 s8. s8.\< s4\> s8\! s8           %120
  s4 s\< s8.\f\> s16\! s4             %121
  s2.\p s8..\< s32\! \dynRight s1\p   %122-123
  \dimTextDecresc s8 s2.\> s8\pp      %124
  s2.. s8\pp                          %125
  s1*4 \dimHairpin
  s4 s\< s\> s\!                      %130
  s1
  s2\fp\> s4\! s4\pp                  %132
  s1 s1
}

pedal = {}

upper = {
  \rthema \break
  \rvarI \break
  \rvarII \break
  \rvarIII \break
  \rvarIV \break
  \rvarV \break
}

lower = {
  \lthema
  \lvarI
  \lvarII
  \lvarIII
  \lvarIV
  \lvarV
}

dynamics = {
  \override DynamicText #'extra-offset = #'(0.5 . 0.0)
  \override DynamicTextSpanner #'dash-period = #-1.0
  \dthema
  \dvarI
  \dvarII
  \dvarIII
  \dvarIV
  \dvarV
}

\score {

  \new Score \with {
    \override NonMusicalPaperColumn #'page-break-permission = ##f
  }
  
  \new PianoStaff = "PianoStaff_pf" <<
    \new Staff = "upper" \upper
    \new Dynamics = "Dynamics_pf" \dynamics
    \new Staff = "lower" \lower
    \new Dynamics = "pedal" \pedal
  >>

  \layout {
    % define Dynamics context
    \context {
      \type "Engraver_group"
      \name Dynamics
      \alias Voice
      \consists "Output_property_engraver"
      \consists "Piano_pedal_engraver"
      \consists "Script_engraver"
      \consists "New_dynamic_engraver"
      \consists "Dynamic_align_engraver"
      \consists "Text_engraver"
      \consists "Skip_event_swallow_translator"
      \consists "Axis_group_engraver"

      pedalSustainStrings = #'("Ped." "*Ped." "*")
      pedalUnaCordaStrings = #'("una corda" "" "tre corde")
      \override DynamicLineSpanner #'Y-offset = #0
      \override TextScript #'font-size = #2
      \override TextScript #'font-shape = #'italic
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-0.3 . 0.3)
    }
    % modify PianoStaff context to accept Dynamics context
    \context {
      \PianoStaff
      \accepts Dynamics
    }
  }
}

\score {
  \unfoldRepeats {
    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >> 
  }
  
  \midi {
    \context {
      \Voice
      \remove "Dynamic_performer"
    }
  }
}

