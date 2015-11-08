\version "2.18.2"

andante = \markup { \bold \large Andante }
adagio = \markup { \bold \large Adagio }
presto = \markup { \bold \large Presto }
tempoI = \markup { \bold \large "Tempo I" }
allegreto = \markup { \bold \large Allegreto }

\header {
title = "Fantasy in D minor"
subtitle = "KV 397 (385g)"
composer = "W. A. Mozart"
mutopiacomposer = "MozartWA"
mutopiaopus = "KV 397"
mutopiainstrument = "Piano"
date = 1782
source = "'Mozart Album: Zongorára' Budapest: Zeneműkiadó Vállalat, 1951"
license = "Public Domain"
style = "Classical"
moreInfo = "Listed as Public Domain in IMSLP due to publishing done by a state entity. Ref: <a href=\"http://imslp.org/wiki/Editio_Musica_Budapest\">http://imslp.org/wiki/Editio_Musica_Budapest</a>"
maintainer = "Andrés Necochea"
maintainerEmail = "yayopoint@gmail.com"

 footer = "Mutopia-2015/07/09-2034"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\score {

  \new PianoStaff <<
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%% ====        Mano Derecha        ==== %%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    \new Staff = "derecha"
    \relative c {
      \clef treble
      \key d \minor
      \time 2/2
      \clef bass

      %%% ====        Movimiento 1        ==== %%%%
      \set Score.tempoHideNote = ##t
      \tempo 2 = 40
      r4^\andante \tupletSpan 4 \tuplet 3/2 { r8 f-1[( a-2] d-4[ a-2 f'] d[ a f]) }
      r4  \scaleDurations #'(2 . 3) { r8 f[( a] d[ a f'] d[ a f]) }
      \clef treble
      r4  \scaleDurations #'(2 . 3) { r8 g-1[( bes-2] e-4[ bes-2 g'] e[ bes g]) }
      r4  \scaleDurations #'(2 . 3) { r8 g[( bes] e[ bes g'] e[ bes g]) }
      r4  \scaleDurations #'(2 . 3) { r8 a[( d] fis[ d a'] fis[ d a]) }
      r4  \scaleDurations #'(2 . 3) { r8 a[( d] fis[ d a'] fis[ d a]) }
      r4 \tuplet 3/2 { d8 a' g~ } g4 \tuplet 3/2 { c,8 g' f!~ }
      f4 \tuplet 3/2 { bes,8_2 f' ees~ } ees4 \tuplet 3/2 { b8 e d } 
      r4 \scaleDurations #'(2 . 3) { r8 cis-2[ e-1] a[ cis e!-1] a[ cis e] }
      \scaleDurations #'(2 . 3) { dis-4[ e bis-3] cis[ gis-2 a-5] dis,-3[ e bis-2] cis-4[ gis-2 a] }
      r1^\fermata \bar "||"

      %%% ====        Movimiento 2        ==== %%%%
      \set Score.tempoHideNote = ##t
      \tempo 2 = 30
      f'4..-3\p^\adagio e32 f g!8 f e d!
      cis4 r8. d16-. dis8( e) r4
      g4.. fis32 g a8 g f e
      d!4 r8. e16-. g8( f) r4
      <a,-5 a'>2_\f( <bes-4 bes'>8) r8 r4
      a'8._\p[( d16] \tuplet 3/2 { cis8-.[ c-. b!-.] } bes!4-2) r8. a16-.-3
      a8( gis) r g r fis r <d f>
      r8 <cis-2 e-1> <e a> <a-1 cis-3> <cis e> r8 r4
      <<
        {
          \voiceOne
          e,,8^3_\f e^4 e e e^4 e e^4 e
          e^4 e e^4 e e^4( dis^3) a'^5 a
          a4.^4( gis32 a b a
        }
        \new Voice {
          \voiceTwo
          r2 r4 c,!^2
          b^1 bes^2 a^1 dis^2
          dis2^1
        }
      >>
      \oneVoice
      <e^1 gis^3>4) r8. b'16-.-3_\p
      a([ gis) r b-.] a([ gis) r b-.] a([ gis) r b-.] r d![ r gis,-.]
      b([ a) r c-.]   b([ a) r c-.]   b([ a) r c-.]   r e-5[ r a,-.]
      c-3([ b) r d-.] c([ b) r d-.]   c([ b) r d-.]   r f[ r b,]
      d-2([ c) r a'-5] r\cresc gis[ r g] r f[ r e] r dis-3-\f[ r d-2-.-\p]
      c-1([ e) r a] r\cresc gis[ r g] r f[ r e] r-\f dis-3[ r d]
      r1\fermata
      c4..-\p b32 c d8 c b a
      gis4 r8. a16-. ais8( b) r4
      f'4..-4 e32 f g!8 f e d
      cis4 r8. d16-. dis8( e) r8. f16-.
      fis8\cresc( g) r8. a16-. c!8-\f( bes) r4
      %% Frase Rápida %%
      \set Score.tempoHideNote = ##t
      \tempo 2 = 65
      \cadenzaOn
      r16^\presto a-2[ c!-4  b a g f!-3 e d-1]
      cis-3[ e a,-1 c-4 bes a g-1 f-3 e d]
      \clef bass
      cis-3[ e a, c-4 bes a g f-3 e d]
      cis-3[ e a, c-4 bes a g]
      \bar "" \break
      \change Staff = "izquierda"
      c,!-5[ ees-3 fis a]
      \change Staff = "derecha"
      c!-1[ ees-2 fis-3 a-5]
      \change Staff = "izquierda"
      \clef treble
      c!-5[ ees-3 fis a]
      \change Staff = "derecha"
      \clef treble
      c!-1[ ees fis a c!-5] ees8
      \set Score.tempoHideNote = ##t
      \tempo 2 = 30
      r\fermata
      \cadenzaOff
      %% Fin de Frase Rápida %%
      \bar "|"
      <<
        {
          \voiceOne
          d,,8^\tempoI d d d d d d d
          d d d-4 d d( cis) g'^5 g
          g4.-4 fis32 g a g 
        }
        \new Voice {
          \voiceTwo
          r2\f r4 bes,-2
          a-1 aes-2 g-1 cis^2
          cis2
        }
      >>
      \oneVoice
      <d^2 fis^3>4
      r8. a'16-4-.\p
      g16[( fis) r a-.] g[( fis) r a-.] g[( fis) r a-.] r c![ r fis,]
      a-3[( g) r bes-4-.] a[( g) r bes-.] a[( g) r bes-.] r d[ r g,-.]
      bes-3[( a) r c-4-.] bes[( a) r c-.] bes[( a) r c-.] r ees[ r a,-1-.]
      c-3[( bes) r g'] r\cresc fis[ r f] r ees[ r d] r\f cis[ r\p c-.]
      bes-1[( d) r g] r fis[ r f-.] d-2[( ees) r e-2-.] g[( f) r fis-2-.]
      a[( g) r a-2-.] c[( bes) r b-2-.] d[( cis) r d-2-.] f8( e\fermata)
      \break
      
      %% Frase Rapida %%
      \set Score.tempoHideNote = ##t
      \tempo 2 = 60
      \cadenzaOn
      r16^\presto dis-4[ e d] cis[ b a gis-2]
      bes-3[ a c bes a g f-3 e d-1 cis b a gis-2]
      bes-3[ a c-4 bes a g-1 f-3 e d cis-3 b a gis-2]
      \bar "" \break
      \clef bass
      bes-3[ a c-4 bes a g-1 f-3 e d cis-3 b a gis-2]
      bes-3[ a c-4 bes a g-1 f-3 e d]
      \set Score.tempoHideNote = ##t
      \tempo 2 = 30
      r4 a'4~-3 a16[ b a gis]
      a8-1[ bes32-3 b-1 c cis-3 d-1 ees-3 e-1 f fis-3 g-1 gis a bes b]
      \bar "" \break
      \break
      \clef treble
      c![ cis d ees e f! fis g! gis a bes! b c! cis d! dis e]
      \cadenzaOff
      %% Fin Frase Rapida %%

      \bar "|"
      f!4..-3\p^\tempoI e32 f g!8 f e d!
      cis4-2 r8. d16-. dis8( e) r4
      g4.. fis32 g a8 g f e
      d!4 r8. e16-. g8( f) r4
      <a,-5 a'>2_\f( <bes-4 bes'>8) r8 r4
      a'8._\p[( d16] \tuplet 3/2 { cis8-.[ c-. b!-.] } bes!4-2) r8. a16-.-3
      a8( gis) r8. gis16-.-2 e'8( g,!) r8. g16-.
      e8( f) r8. f16-. ees4~-3\f ees8.[ \grace {f32[ ees d ees]} f16-1\p]
      \cadenzaOn
      g8.-3[ \grace {a32[ g fis g]} a16] bes8 r8 s2 s16
      \cadenzaOff
      \bar "|"
      <a, d a'>8 r r4 \clef bass <e,-1 g!-2 cis-5>8 r8 r4\fermata

      %%% ====        Movimiento 3        ==== %%%%
      \clef treble
      \key d \major
      \time 2/4
      \set Score.tempoHideNote = ##t
      \tempo 4 = 120
      \repeat volta 2 {
        a'4-1^\allegreto_\markup \italic "dolce"( fis'8 d)
        cis4-2( b8) g'16 e
        <<
          {
            \mergeDifferentlyDottedOn
            d8-2[( cis b' a])
            a8.-4( b32 g) fis8 a16-5( fis-3)
          } \\
          {
            r8 cis4.
            d4 r
          }
        >>
          \oneVoice
        e8-2[ e e e]
        e-2( a16) r b,8( fis'16) r
        a,4-1
        <<
          {
            cis8.^5 b16
            a4
          } \\
          {
            gis^2
            a4
          }
        >>
        \oneVoice
        r4
      }
      \repeat volta 2 {
        d4-2( e8 fis)
        b,4.-1 cis16 dis
        e-1 fis g a b8 b
        d,!4-1( cis8-2) a'-3(
        gis-2[ d' b gis]
        e'[ g,!-1 fis-2) b-4]
        d,4-1
        <<
          {  fis8.-4 e16  } \\
          {  cis4-2  }
        >>
      }
      \alternative {
        {
          <<
            {  d4  }  \\
            {  d4  }
          >>
          \oneVoice
          r4
        }
        {
          <<
            {  d4  } \\
            {  d4  }
          >>
          \oneVoice
          r8 d-3(
        }
      }
      cis8)[ a'-5 a-4 a-3]
      a8.-2( b32 cis d8) d,-1(
      cis8-2)[ a' a a]
      a8.-2( b32 cis d8) d,-1
      <dis^1 c'^4>8 q q q
      <<
        {
          c'16 b ais b a g fis e
          d!4-3 fis8.-5 e16
          d4
        } \\
        {
          e4 r
          r4 cis!-2
          d4
        }
      >>
      \oneVoice
      r8 d(
      cis8)[ a' a a]
      a8.-2( b32 cis d8) d,-1(
      cis8-2)[ a' a a]
      a8.-2( b32 cis d8) d,-1
      <dis^1 c'^4>2
      <e^1 b^3>4 r
      <f b d> r
      \break \bar "|"
      \cadenzaOn
      \set Score.tempoHideNote = ##t
      \tempo 4 = 80
      a,,2-3\fermata(
      a32[) b a gis]
      a[ b cis d e fis! g!-1 a b]
      cis-4[ d-1 e fis g a b cis]
      d-5[ cis-3 e-5 d cis b]
      a[ cis-3 b a g-3]
      fis[ a-5 g fis e-1]
      \break \bar ""
      dis-2[ e-1 fis-3 e g e]
      e1~\trill\fermata
      e16[ dis32-2( e-1 fis-3 e g fis]
      \set Score.tempoHideNote = ##t
      \tempo 4 = 60
      a-5_\markup \italic "rall."[ g fis e]
      g-4[ fis e d]
      fis16-3[ e d cis-3]
      e-5[ d cis b-1])
      \cadenzaOff
      \bar "|"
      \set Score.tempoHideNote = ##t
      \tempo 4 = 120
      a4^\markup \italic "a tempo" ( fis'8 d)
      cis4( b8) g'16 e
      <<
        {
          \mergeDifferentlyDottedOn
          d8[( cis b' a])
          a8.( b32 g) fis8 a16\f( fis)
        } \\
        {
          r8 cis4.
          d4 r
        }
      >>
      \oneVoice
      d'8[ <d a d,> q q]
      <d, g b-4>4 r8 g16-5\p( e)
      \override Fingering.add-stem-support = ##t
      cis8-2[ <g cis-3> <g cis-4> <g cis-4>]
      <fis^2 d'^5>4 r 
      <d' f b>\f r
      <d fis! a> r
      \clef bass
      <e,, g! cis>\p r\fermata
      \clef treble
      a4\pp ( fis'8 d)
      cis4( b8) g'16 e
      <<
        {
          \mergeDifferentlyDottedOn
          d8[( cis b' a])
          a8. fis16 a8
        } \\
        {
          r8 cis,4.
          d4.
        }
      >>
      \oneVoice
      r8
      a'4\f ( fis'8 d)
      b4.( g'16 e)
      cis-2 d-1 e fis g-1 a b cis
      d8 r <a, cis e a>\ff r
      <a d fis-4> r <e g a cis> r
      <d fis a d>4 r
    }

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%% ====        Mano Izquierda        ==== %%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    \new Staff = "izquierda"
    \relative c, {
      \clef bass
      \key d \minor

      %%% ====        Movimiento 1        ==== %%%%
      <<
        {
          \voiceOne
          \tuplet 3/2 { d8 f_4 a } d2.
          \tuplet 3/2 { d,8 f a } d2.
          \tuplet 3/2 { d,8 g_3 bes } d2.
          \tuplet 3/2 { d,8 g bes } d2.
          \tuplet 3/2 { c,8 fis a  } c2.
          \tuplet 3/2 { c,8 fis a  } c2.
          \tuplet 3/2 { bes8_4 d g ~ } g4 \tuplet 3/2 { a,8_\markup { \finger "5 - 4" } c_2 f!_1~ } f4
          \tuplet 3/2 { g,8_5 bes_3 ees_1~ } ees4 \tuplet 3/2 { gis,8_4 b f'~ } f4
        }
        \new Voice {
          \voiceTwo
          d,4 ~ d2.
          d4 ~ d2.
          d4 ~ d2.
          d4 ~ d2.
          c4 ~ c2.
          c4 ~ c2.
          bes'2 a2
          g gis
        }
      >>
      \oneVoice
      \tuplet 3/2 { a8_5 cis e! } a4 r2
      R1
      a,,2_\fermata r \bar "||" 

      %%% ====        Movimiento 2        ==== %%%%
      \clef treble
      <<
        {
          \voiceOne
          r8 <f''' a> <f a> <f a> r8 <f a> <f a> <f a>
          r8 <g a> <g a> <g a> r8 <g a> <g a> <g a>
          r8 <e a> <e a> <e a> r8 <e a> <e a> <e a>
          r8 <f a> <f a> <f a> r8 <f a> <f a> <f a>
        }
        \new Voice {
          \voiceTwo
          d2-4 d
          e-3 e
          cis-5 cis
          d-4 d
        }
      >>
      \oneVoice
      \clef bass
      r4 <f,-4 a-2 d-1>4( <e-5 g-3 cis-1>8) r8 r4
      \clef treble
      r4 <f' d'>( <g_4 cis_2>) r8. <f d'>16
      <e_5 e'>8 r <a_3 cis_2> r <d, d'> r <gis_3 b_2> r
      a4 r r2
      \clef bass
      r2 r4 <a,, a'>
      <gis_4 gis'> <g_5 g'> <fis_4 fis'> <f f'>
      <e~ e'~>2 <e e'>4 r
      \clef treble
      r8 <d''_2 f_1> <d f> <d f> <d f> <d f> <d f> <d f>
      r  <c_1 e_3>   <c e> <c e> <c e> <c e> <c e> <c e>
      r  <gis e'> <gis e'> <gis e'> <gis e'> <gis e'> <gis e'> <gis e'>
      <a e'> <a_4 c_2> <b d>_\markup { \finger \column { 1 "3 - 5"} } <cis_2 e_4> <d f>_\markup { \finger \column { 1 "3 - 5"} } <e gis>_\markup { \finger \column { 2 "4 - 5"} } <fis_4 a_1> <gis_2 b_1>
      <<
        {
          \voiceOne
          a_1 c,! d e
        }
        \new Voice {
          \voiceTwo
          a a,_\markup { \finger \column { 3 5} } b_\markup { \finger \column { 2 4} } cis_\markup { \finger \column { 1 "3 - 5"} }
        }
      >>
      \oneVoice
      <d f!>_\markup { \finger \column { 1 "3 - 5"} } <e gis>_\markup { \finger \column { 2 "4 - 5"} } <fis_4 a_1> <gis_2 b_1>
      r1-\fermata
      \clef bass
      <<
        {
          \voiceOne
          r8 <c, e> <c e> <c e> r <c e> <c e> <c e>
          r8 <d e> <d e> <d e> r <d e> <d e> <d e>
          r8 <b d> <b d> <b d> r <b d> <b d> <b d>
          r8 <bes! e> <bes e> <bes e> r <bes cis> <bes cis> <bes cis>
          r  <bes cis> <bes cis> <bes cis>
        }
        \new Voice {
          \voiceTwo
          a2-5 a
          b-4 b-3
          gis-4 gis-3
          g!-4 g-3
          e-5
        }
      >>
      \oneVoice
      <cis e g>4 r
      \cadenzaOn
      s16*36
      s16*21
      \cadenzaOff
      \clef bass
      r2 r4 <g g'>
      <fis fis'> <f f'> <e! e'!> <ees ees'>
      <d~ d'~>2 <d d'>4 r4
      r8 <c'' ees> <c ees> <c ees> <c ees> <c ees> <c ees> <c ees>
      r <bes d> <bes d> <bes d> <bes d> <bes d> <bes d> <bes d>
      r <fis d'> <fis d'> <fis d'> <fis d'> <fis d'> <fis d'> <fis d'>
      <g_5 d'_1> <g_5 bes_3> <a_4 c_2> <b d>_\markup { \finger \column { 1 "3 - 5"} } \clef treble <c_2 ees_4> <d fis>_\markup { \finger \column { 1 "3 - 5"} } <e_4 g_2> <fis_3 a_1> 
      g_2 <g,_5 bes!_3> <a_4 c_2> <b_5 d_1> <c_3 g'_1> <bes_4 des_2> <a_5 c_1> <c_3 ees_2>
      \clef bass
      <<
        {
          \voiceOne
          d8_1 d4_1 gis,8_2
        }
        \new Voice {
          \voiceTwo
          b8_4 fis_5 g_3 f_4
        }
      >>
      \oneVoice
      <e_5 g_3>8 <d_4 g_2 bes_1> <cis_5 g'_2 bes_1>4\fermata
      \cadenzaOn
      s16*56
      a,2
      s16
      s32*41
      \cadenzaOff
      \clef treble
      <<
        {
          \voiceOne
          r8 <f''' a> <f a> <f a> r8 <f a> <f a> <f a>
          r8 <g a> <g a> <g a> r8 <g a> <g a> <g a>
          r8 <e a> <e a> <e a> r8 <e a> <e a> <e a>
          r8 <f a> <f a> <f a> r8 <f a> <f a> <f a>
        }
        \new Voice {
          \voiceTwo
          d2-4 d
          e-3 e
          cis-5 cis
          d-4 d
        }
      >>
      \oneVoice
      \clef bass
      r4 <f, a d>4( <e g cis>8) r8 r4
      \clef treble
      r4 <f' d'>( <g cis>) r8. <f d'>16
      <e d'>4 r <a cis> r
      <bes d> r4 \clef bass <g,~ bes~ ees~>2
      \cadenzaOn
      <g bes ees>4 r
      % Arpegio
      gis,32-5^\f[ b-3 d f!]
      \change Staff = "derecha" gis-1[ b d f!-5]
      \change Staff = "izquierda"
      \clef treble gis-5[ b d f!]
      \change Staff = "derecha" gis-1[ b d] f!
      r16\fermata
      \cadenzaOff
      \change Staff = "izquierda"
      \clef bass
      <a,,, f'>8 r8 r4 <a,, a'>8 r8 r4\fermata

      %%% ====        Movimiento 3        ==== %%%%
      \clef treble
      \key d \major
      \time 2/4
      \repeat volta 2 {
        <d'' fis>2
        <d~ g~>
        <d e g>
        <d fis>4 r4
        <gis d'>8[ <gis d'> <gis d'> <gis d'>]
        <a cis>8 r <d, fis> r
        \clef bass
        <<
          {  cis4 d  } \\
          {  e,2  }
        >>
        \oneVoice
        <a cis>4 r
      }
      \repeat volta 2 {
        r8 <fis_3 a_1>[ <e g> <d fis>]
        <<
          {  d'-1 dis-2 e  } \\
          {  g,2_5  }
        >>
        \oneVoice
        r4 r8 <gis_5 f'_1>
        <<
          {  fis'!4-2( e8-1)  } \\
          {  a,4.-5  }
        >>
        \oneVoice
        r8
        <b_3 d_1>2
        <<
          {
            cis4-2 d-1
            \clef treble
            \grace g8-1 fis4 g
          } \\
          {
            a,8-5[ ais-4 b-3 g!-5]
            a2
          }
        >>
        \oneVoice
      }
      \alternative {
        {
          <d_4 fis_2>4 r
        }
        {
          d16-5 a'-1 fis-4 a-2 fis-4 a-2 fis-4 a-2
        }
      }
      \repeat unfold 2 {
        g-3 a cis a g a cis a
        fis-4 a d a fis a fis a
      }
      fis a fis a fis a fis a
      g4 r
      <<
        {  fis g  } \\
        {  a,2  }
      >>
      d16 a' fis a fis a fis a
      \repeat unfold 2 {
        g-3 a cis a g a cis a
        fis-4 a d a fis a fis a
      }
      fis a fis a fis a fis a
      g4 r
      <gis gis,> r
      \clef bass
      \bar "|"
      \cadenzaOn
      <a,, d fis!>2
      s32*37
      \break \bar ""
      s32*6 r1\fermata
      \clef treble
      <a' cis g'>2
      r2
      \cadenzaOff
      \bar "|"
      <d fis>2
      <d~ g~>
      <d e g>
      <d fis>4 r4
      \clef bass
      <fis,, fis'>8[ q q q]
      <g g'>4 r
      <a' e'>8[ q q q]
      <b d>4 r
      <gis, gis'> r
      <a a'> r
      <a, a'> r\fermata
      <d' fis>2
      <d~ g~>
      <d e g>
      <d fis>4. r8
      <fis, d'>2
      <g g'>
      <a e' g>
      <d fis>8 r <a a'> r
      <d a'>8 r <a a'> r
      <d, d'>4 r
    }
  >>
  \layout {}
  \midi {}
}

