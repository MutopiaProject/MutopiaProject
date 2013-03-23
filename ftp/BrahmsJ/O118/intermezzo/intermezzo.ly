\version "2.16.1"
\header {
 title = "2. Intermezzo"
 composer = "J. Brahms"
 opus = "Op. 118, No. 2"
 
 mutopiatitle = "2. Intermezzo"
 mutopiacomposer = "BrahmsJ"
 mutopiaopus = "Op. 118, No. 2"
 mutopiainstrument = "Piano"
 date = "19th C."
 source = "N. Simrock, 1892"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Aron Fay"
 maintainerEmail = "mutopia.5.uigrad@spamgourmet.com"
 maintainerWeb = "http://www.uigrad.com/mutopia"
 
 footer = "Mutopia-2013/03/23-535"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

% TODO: Reduce distance between slur and tuplet bracket e.g. in bar 49

u = { \change Staff = up  \voiceTwo }
m = { \change Staff = down \voiceOne   }

upper = \transpose c c' {
  \time 3/4
  \clef violin
  \key a \major
  \partial 4
  <<
    \context Voice = UpTop
    {
      \voiceOne
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      cis'8( b) |
      <fis d'>2 cis'8( b) |
      <fis a'>2\arpeggio a8.\(( b16) |
      b8.( e'16) e'4 d' |
      <cis a> <b, gis>\) cis'8( b) |

      % measure 5, v1
      <a d'>2 cis'8( b) |
      <a b fis' a'>2 cis'8.\(( dis'16) |
      dis'8.( e'16) e'4 <a, dis fis> |
      <a, dis a> <gis, e gis>\) cis'8( b) |

      % measure 9, v1
      <fis d'>2 cis'8( b) |
      <fis a'>2\arpeggio <fis a>8.\(( <f b>16) |
      <f b>8.( <e e'>16)
        <e e'>4 <fis d'>\) |
      <cis a>( <b, gis>) cis'8( b) |

      % measure 13, v1
      <a d'>2 cis'8( b) |
       <a b fis' a'>2  <gis cis'>8.\(( <fis b dis'>16) |
      <fis b dis'>8.( <e bis e'>16)
        <e e'>4 <a, dis>8( a)\) |
      <a, dis a>4( <gis, e gis>) e( |

      % measure 17, v1
      fis e) e( |
      fis e) e\( |
      b a gis |
      <gis b> e\) a\( |

      % measure 21, v1
      b  a\) a\( |
      c' a\) <c fis! a> |
      fis'!\( c'4. a8\) |
      gis2\( fis8 e8 |

      % measure 25, v1
      gis2\)\(^\markup { \italic "legato" } a4 |
      ais2 gis8 fis |
      b2 bis4 |
      cis'2 b!8 a~ |

      % measure 29, v1
      <a d'>4. \) << { cis'4 b8 } \\ gis!4. >> |
      <fis a'>2\arpeggio <a, e a>4_\markup { \italic "espress." } |
      gis( fis) e8( d |
      cis4 b,) a |
      g( f) e8^\markup { \italic calando } ( d |
      c4 b,) gis'!8( a' |

      % measure 35, v1
      <d' fis'!>2) gis'8( a' |
      b2) b8.( cis'16) |
      cis'8.( d'16) d'8( cis' d' gis) |
      <d gis>4(  <cis a>) a \( |

      % measure 39, v1
      b  a \) a\( |
      b  a \) a( |
      d'->) cis'4.( b8 |
      gis4 a) a( |

      % measure 43, v1
      b  a)   a( |
      b  a) <d fis a>( |
      fis'->) d'4.( b8) |
      gis4( a) e~->^\markup { \bold \italic "più lento" }  |
      e2 e4~-> |
      e2 cis'4~\( |   %    \bar "||" 

      % measure 49, v1
      \repeat volta 2 {  
      cis'8 fis' e'4 d' |
      cis' b8 d' gis' fis' |
      b4 a8 cis' fis' e' |
      a gis e' d' b gis\) |

      % measure 53, v1
      <a cis'>\( a' gis'4 fis' | 
      e' a8 cis' e' d' |
      cis'4 fis8 gis a fis |
      eis4 gis4._\markup { \italic \large "rit." } cis'8~\)\( |

      }

      % measure 57, v1
      cis'8^\markup { \bold \italic "più lento" } fis' <eis ais eis'>4 <dis ais dis'> |
      <cis ais cis'> <fis ais fis'> <eis ais eis'> |
      <fis ais dis> <cis ais cis'> <c ges bes c'>~ |
      <f a! c'!> cis'2~ |

      % measure 61, v1
      cis'8\)\( fis' <eis ais eis'>4 <dis a dis'> |
      <cis gis cis'> <fis gis bis fis'> <eis gis cis' eis'> |
      <dis gis b! dis'> cis'2~ |
      cis'4\) cis'4.\fermata r8 |

      % measure 65, v1
      \tempo "Tempo I"
      r4 cis'( fis' |
      e' d') r |
      d' cis' r |
      cis' b r |

      % measure 69, v1
      cis'8 (cis'' b' a' gis' fis' |
      e'4) a8( cis' e' d') |
      cis'4 fis8( ais cis' b) |
      a!( fis d bis, cis \m eis,!) |

      % measure 73, v1
      \u \oneVoice
      r4 \times 2/3 { r8 a,([ cis] fis a cis') } |
      <e e'>4( <d d'>) r4 |
      d( cis) s4 |
      \voiceOne
      cis'4.\fermata( b8) cis'^\markup { \italic { a tempo } }([ b]) |

      % measure 77, v1
      <fis d'>2 cis'8( b) |
      <fis a'>2\arpeggio <b gis'>8.( <a fis'>16) |
      <a fis'>8.( <gis f'>16) <gis f'>8( <a e'> <fis! d'> <d b>) |
      <cis a>4( <b, gis>) cis'8( b) |

      % measure 81, v1
      <a d'>2 cis'8( b) |
      b'4.( a'8[ gis'8. fis'16]) |
      <dis' fis'>8.( e'16) <bis e'>8( cis') <e cis'>( <dis fis>) |
      <a, dis a>4( <gis, e gis>) e( |

      % measure 85, v1
      fis e) e( |
      fis e) e\( |
      b a gis |
      <gis b> e\) a\( |

      % measure 89, v1
      b  a\) a\( |
      c' a\) <c fis! a> |
      fis'\( c'4. a8\) |
      gis2\( fis8 e8 |

      % measure 93, v1
      gis2\)\(^\markup { \italic "legato" } a4 |
      ais2 gis8 fis |
      b2 bis4 |
      cis'2 b!8 a~ |

      % measure 97, v1
      <a d'>4.\) << { cis'4( b8) } \\ gis4. >> |
      <fis a'>2\arpeggio <a, e a>4_\markup { \italic "espress." } |
      gis( fis) e8( d) |
      cis4( b,) <a, e a> |
      g( f^\markup { \italic calando } ) e8( d) |
      c4( b,) gis'!8( a') |

      % measure 103, v1
      <d' fis'!>2 gis'8( a') |
      b2 b8.( cis'16) |
      cis'8.( d'16) d'8( cis' d' gis) |
      <d gis>4(  <cis a>) a \( |

      % measure 107, v1
      b( a)\) a\( |
      b  a \) a( |
      d'->) cis'4.( b8) |
      gis4( a) a( |

      % measure 111, v1
      b  a)   a( |
      b  a)   <d fis a>( |
      fis'->) d'4.( b8 |
      gis4 a) e->~^\markup { \bold \italic "più lento" }  |
      e2 e4~ |
      e2 \bar "|."

    }
    \context Voice = UpBottom
    {
      \voiceTwo
      a8 gis |
      fis8[( d8) \m a,8( fis,)] \u a8 gis |
      s2 fis4 |
      <e gis> <e a> fis |
      s4 s8. s16 e4_\markup { \italic "dolce" } |

      % measure 5, v2
      a8[( d8) \m a,8( fis,)] \u <e a>4 |
      s2 <fis b>4 |
      <fis b> <e cis'> s4 |
      s s a8 gis8 |

      % measure 9, v2
      fis8[( d8) \m a,8( fis,)] \u a gis |
      s2 a4 |
      gis gis8( a) s4 |
      s s e_\markup { \italic "dolce" } |

      % measure 13, v2
      fis8[( d8) \m a,8( fis,)] \u <e a>4 |
      s2. |
      s4 bis8( cis') a,4 |
      s2 <g, c>4~ |

      % measure 17, v2
      <g, c>2   <g,! cis>4~  |
      <g, cis>2
        <gis, d>4~          | 
      <d e>4 <d e>  <d e>(  |
      d2) <c f>4~           | 

      % measure 21, v2
      <c f>2 <c! dis>4~     |
      <c dis>2_\markup { \italic "cresc." } s4 |
      s2. |
      s2. |

      % measure 25, v2
      gis8( b, gis, \m e, c a,) |
      \u ais( cis ais, \m e, e cis) |
      \u b( d b, \m e, dis bis,) |
      \u cis'( e cis \m e, g cis) |

      % measure 29, v2
      \u a( d \m a, e,, e, gis,!) |
      \u s2 s4 |
      <a, b,>2 <e, a,>4 |
      <fis, a,>2 <a, e>4_\markup { \italic "dim." } |
      <a, b,>2 <e, a,>4 |
      <f, a,>2 <a e'>4_\markup { \italic "dolce" }~( |

      % measure 35, v2
      a8 gis a fis) <a e'>4~( |
      <fis a>8 gis <b, a> fis) <e a>4 |
      <e gis> <d fis> <d e> |
      s2 <cis fis>4~ |

      % measure 39, v2
      fis2 <d fis>4~ |
      <d fis>2 <d fis a>4~ |
      <fis a> <e gis>2 |
      d4 cis <cis fis>~ |

      % measure 43, v2
      <cis fis>2 <d fis>4~ |
      <d fis>2 s4 |
      s2. |
      <cis e>2 cis8( b,) |
      s2 cis8( b,) |
      <a, a>2\arpeggio s4 |

      % measure 49, v2
          \repeat volta 2 {
      s2. |
      s2. |
      s2. |
      s2. |

      % measure 53, v2
      s2. |
      gis4-.( fis-.) r4 |
      e-.( dis-.) r |
      cis s2 |

          }
      
      % measure 57, v2
      <fis ais>4 s2 |
      s2. |
      s2. |
      s4 cis!8 eis ais gis |

      % measure 61, v2
      fis!4 s2 |
      s2. |
      s4 <cis gis b cis'> <cis fis b> |
      <cis fis ais> <cis eis gis>4. cis8~_\markup { \italic {espress.} }( |

      % measure 65, v2
      cis8 fis) s2 |
      s2. |
      s2. |
      s2. |

      % measure 69, v2
      s2. |
      s2. |
      s2. |
      s2. |

      % measure 73, v2
      s2. |
      \voiceTwo a2 s4 |
      \m \oneVoice \tupletDown e,,4~  \times 2/3 { e,,8[ e,( a,] cis \u \voiceTwo e a~) } |
      <dis fis a>2_\markup { \italic { dolce } } <d gis>4 |

      % measure 77, v2
      fis8[( d8) \m a,8( fis,)] \u a gis |
      s2. |
      s2. |
      s2 e4_\markup { \italic "dolce" } |

      % measure 81, v2
      a8[( d8) \m a,8( fis,)] \u <e a>4 |
      <a b fis'> <a b dis'> <gis cis'>8. <fis dis'>16 |
      <fis b>8. <e bis>16 e4 s |
      s2 <g, c>4~ |


      % measure 85, v2
      <g, c>2   <g,! cis>4~  |
      <g, cis>2
        <gis, d>4~          | 
      <d e>4 <d e>  <d e>(  |
      d2) <c f>4~           | 

      % measure 89, v2
      <c f>2 <c! dis>4~     |
      <c dis>2_\markup { \italic "cresc." } s4 |
      s2. |
      s2. |

      % measure 93, v2
      gis8( b, gis, \m e, c a,) |
      \u ais( cis ais, \m e, e cis) |
      \u b( d b, \m e, dis bis,) |
      \u cis'( e cis \m e, g cis) |

      % measure 97, v2
      \u a( d \m a, e,, e, gis,!) |
      \u s2 s4 |
      <a, b,>2 \m <e, a,>4 |
      <fis, a,>2 \u <a, e>4_\markup { \italic "dim." } |
      <a, b,>2 \m <e, a,>4 |
      <f, a,>2 \u <a e'>4_\markup { \italic "dolce" }~ |

      % measure 103, v2
      a8 gis a fis <a e'>4~ |
      <fis a>8 gis <b, a> fis <e a>4 |
      <e gis> <d fis> <d e> |
      s2 <cis fis>4~ |

      % measure 107, v2
      fis2 <d fis>4~ |
      <d fis>2 <d fis>4( |
      <fis a>) <e gis>2 |
      d4 cis <cis fis>~ |

      % measure 111, v2
      <cis fis>2 <d fis>4~ |
      <d fis>2 s4 |
      s2. |
      <cis e>2 cis8( b,) |
      s2 cis8( b,) |
      <a, a>2\arpeggio 

    }
  >>

}

lower = {
  \time 3/4
  \clef bass
  \key a \major
  \partial 4
  <<
    \context Voice = DownTop
    {
      \voiceThree
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      s4 |
      s4 s4 s4 |
      s4 s4 s4 |
      s4 s4 s4 |
      s4 e8( fis) g4  |

      % measure 5, v3
      s4 s4 s4 |
      s4 s4 s4 |
      s4 s4 b, |
      e,8( b,4 e8)~ e4 |

      % measure 9, v3
      s4 s4 s4 |
      s4 s4 s4 |
      s4 s4 s4 |
      s4
        e8( fis) g4  |

      % measure 13, v3
      s4 s4 s4 |
      s4 s4 s4 |
      b,8[( gis)] fis[( a)] b,8[( fis)] |
      e,[( b, e b,)] e,( g, |

      % measure 17, v3
      c[ e c g,]) e,( g,    |
      cis[ e cis g,]) b, e |
      gis4 a b            | 
      a,8[ e gis e] a,[\( c |

      % measure 21, v3
      f a f c\)] f,[\( c      |
      dis a dis c\)] dis,\( c | 
      a dis a c' fis' c'\)    |
      a\( c' a e c a,\)

      % measure 25, v3
      e,4 s2 |
      e,4 s2 |
      e,4 s2 |
      e,4 s2 |

      % measure 29, v3
      fis,4 s2 |
      s2 a,4~ |
      a,8 a,4 a,8~ a,4~ |
      a,8 a,4 a,8~ a,4~ |
      a,8 a,4 a,8~ a,4~ |
      a,8 a,4 a,8 s4 |

      % measure 35, v3
      s2. |
      s2. |
      s2. | 
      a,8([ e a gis]) fis8 [(a |

      % measure 39, v3
      cis' a fis e)] e[( fis |
      a fis d cis)] b,[( d |
      fis a)] e [(gis b d')]
      a,4 s fis, |

      % measure 43, v3
      s2 d,4  |
      s2 b,,4 |
      s2. |
      s2 gis4 |
      <fis a d'>2 gis4 |
      s2. |

      % measure 49, v3
          \repeat volta 2 {
      s4 (cis' fis' |
      e'-. d'-.) r |
      d'-.( cis'-.) r |
      cis'-.( b-.) r |

      % measure 53, v3
      r cis' a' |
      s2. |
      s2. |
      s2. |

          }

      % measure 57, v3
      s2. |
      s2. |
      s2. |
      s2. |

      % measure 61, v3
      s2. |
      s2. |
      s2. |
      s2. |
      
      % measure 65, v3
      s4 e'! d'!^\markup { \italic { cresc. } } |
      cis' b8([ \u d' a' gis']) |
      \m b4 a8([ \u cis' gis' fis']) |
      \m a([ gis \u e' d' b gis]) |
      
      % measure 69, v3
      \m r4 cis'8[ \u cis'' b' a'] |
      gis'4 fis' r |
      e' d' r |
      cis' a gis |

      % measure 73, v3
      \m \voiceOne <b, gis>( <a, fis>) \oneVoice r |
      s \tupletDown \times 2/3 { r8 fis,([ a, d fis \u a~]) } |
      a2 \m s4 |
      s2. |

      % measure 77, v3
      s4 s4 s4 |
      s4 s4 s4 |
      <fis a>8([ <gis b>]) <gis b>([ <a cis'>]) s4 |
      s4 e8( fis) g4  |

      % measure 81, v3
      s4 s4 s4 |
      s4 s4 s4 |
      b,8[ e] e[ fis] fis[ a] |
      e,[ b, e b,] e, g, |

      % measure 85, v3
      c[ e c g,] e, g,    |
      cis[ e cis g,] b, e |
      gis4 a b            | 
      a,8[ e gis e] a,[\( c |

      % measure 89, v3
      f a f c\)] f,[\( c      |
      dis a dis c\)] dis,\( c | 
      a dis a c' fis' c'\)    |
      a\( c' a e c a,\)

      % measure 93, v3
      e,4 s2 |
      e,4 s2 |
      e,4 s2 |
      e,4 s2 |

      % measure 97, v3
      fis,4 s2 |
      \voiceThree s2 a,4~ |
      a,8 a,4 a,8~ a,4~ |
      a,8 a,4 a,8~ a,4~ |
      a,8 a,4 a,8~ a,4~ |
      a,8 a,4 a,8 s4 |

      % measure 103, v3
      s2. |
      s2. |
      s2. | 
      a,8([ e a gis]) fis8 [(a |

      % measure 107, v3
      cis' a fis e)] e[( fis |
      a fis d cis)] b,[( d |
      fis a)] e [(gis b d')]
      a,4 s fis, |

      % measure 111, v3
      s2 d,4  |
      s2 b,,4 |
      s2. |
      s2 gis4 |
      <fis a d'>2 gis4 |
      s2


    }
    \context Voice = DownBottom
    {
      \override TupletBracket #'outside-staff-priority = #'0
      <a, e>4 |
      a,, s4 <a, d> |
      a,,8[( d) a,( fis,)] d,( d) |
      <d e gis>8[( b)] <cis e>[( a)] b,,( d) |
      e,[( e)] \voiceFour e4 e4  |

      % measure 5, v4
      \oneVoice fis,4 s4 e,4 |
      dis,8[( b,)]  <dis fis>[( b)] <a, b,>( a) |
      <gis, b,>[( gis)] <a, fis>[( a)] \voiceFour b, fis |
       e,2 a,4   |

      % measure 9, v4
      \oneVoice a,, s4 <a, d> |
      a,,8[( d) a,( fis,)] d,( d) |
      <d f gis>8[( b)] <cis e b>[( a)] b,,( d) |
      e,[( e)] \voiceFour e4 e4  |

      % measure 13, v4
      \oneVoice fis,4 s4 e,4 |
      dis,8[( b,)]  <dis fis>[( b)] <a, b,>( a) |
      \voiceFour gis,4 a, b, |
      e,2 e,4~  |

      % measure 17, v4
      e,2 e,4~  |
      e,2 e,4\( |
      gis8 e a e b e |
      a,2 a,4\)~  |

      % measure 21, v4
      a,2 f,4~ |
      f,2 dis,4 |
      s2. |
      s2. |

      % measure 25, v4
      s2. |
      s2. |
      s2. |
      s2. |

      % measure 29, v4
      s2. |
      d,8([ fis <d a> <fis d'>]) cis,8( b,, |
      d,2) cis,8( b,, |
      d,2) cis,8( b,, |
      d,2) c,8(   b,, |
      d,2) \oneVoice <cis! e a e'>4 |

      % measure 35, v4
      <d,   a,> <d fis!>8( a) <cis e a e'> 4 |
      <dis, b,> <dis fis>8([ a)] e,( e) |
      <e gis>[ cis'] <b fis>[ b] <e, b,>[ e] |
      \voiceFour a,2 a,4~ |

      % measure 39, v4
      a,2 a,4~ |
      a,2 a,4~ |
      a,4 a,2  |
      a,8[( e a gis,)] fis,[( cis |

      % measure 43, v4
      a cis fis, e,)] d,[( a, |
      fis a, d, cis,)] b,,[( b, |
      d fis a d' fis' d')] |
      e,( cis e a) e,,4 |
      e,,8[( e, a, d)] e,( d) |
      <a,, cis>2\arpeggio r4 |

      % measure 49, v4
          \repeat volta 2 {
      \times 2/3 {
        fis,8([ cis a] cis' a fis fis' a fis) } |
      \times 2/3 {
        e'([ a fis] d' a fis b, fis a) } |
      \times 2/3 {
        d'([ a fis] cis' a fis cis e a) } |
      \times 2/3 {
        cis'([ fis d] b fis gis, cis eis b) } |

      % measure 53, v4
      \times 2/3 {
        fis,([ a fis] cis' a fis a' a fis) } |
      \times 2/3 {
        d,([ a, d fis a d]) fis,( d a) } |
      \times 2/3 {
        gis,([ e gis]) gis,( dis fis bis fis dis) } |
      \times 2/3 {
        cis,([ gis, cis eis gis b] } eis'8) r |

      }

      % measure 57, v4
      <fis, cis ais>4\( <cis ais cis'> <fis ais fis'> |
      <eis ais eis'> <dis ais dis'> <cis ais cis'> |
      <fis ais fis'> <eis ais eis'> <ees ges bes ees'> |
      <f a! c'!> <ais, eis ais> <cis! eis b!>\) |

      % measure 61, v4
      <fis, cis ais>\( <cis ais cis'> <fis a fis'> |
      <eis gis eis'> <dis gis dis'> <cis gis cis'> |
      <fis gis b! fis'> <eis gis b eis'> <dis fis dis'> |
      <cis fis cis'>\) <cis eis gis b>4.\fermata r8 |

      % measure 65, v4
      \times 2/3 {
        fis,8_\markup { \italic { tre corde } } ([ cis a!]) e'([ a fis]) d'([ a fis]) } |
      \times 2/3 { cis'([ a fis]) b([ fis b,] b,, b, d) } |
      \times 2/3 { b([ fis cis]) a([ fis a,] a,, a, cis) } |
      <b, d>4 \times 2/3 { gis,8([ b fis]) cis,([ eis cis]) } |

      % measure 69, v4
      \times 2/3 { fis,8([ cis a] cis'[ a fis] a[ fis cis]) } |
      \times 2/3 { d,([ a, d] fis[ a d] fis ais d) } |
      \times 2/3 { b,,([ fis, b,] d[ fis b,] d g b,) } |
      \times 2/3 { cis,([ cis a,] fis[ cis cis,]) eis( b, cis,) } |

      % measure 73, v4
      fis,2 s4 |
      <fis a> s2 |
      s2. |
      e2~\fermata <a, e>4

      % measure 77, v4
      a,, s4 <a, d> |
      a,,8[( d) a,( fis,)] d,( d) |
      d4 cis b,,8( d) |
      e,[( e)]  e4 e4  |

      % measure 81, v4
      fis,4 s4 e,4 |
      <dis, b,>8[( dis)] <fis, b,>[( fis)]  <a, b,>( b) |
       gis,4 a, b, |
      e,2 e,4~  |

      % measure 85, v4
      e,2 e,4~  |
      e,2 e,4\( |
      gis8 e a e b e |
      a,2 a,4\)~  |

      % measure 89, v4
      a,2 f,4~ |
      f,2 dis,4 |
      s2. |
      s2. |

      % measure 93, v4
      s2. |
      s2. |
      s2. |
      s2. |

      % measure 97, v4
      s2. |
      d,8([ fis <d a> <fis d'>])  
           cis,8( b,, |
      d,2) cis,8( b,, |
      d,2) cis,8( b,, |
      d,2) c,8(   b,, |
      d,2) <cis! e a e'>4 |

      % measure 103, v4
      <d,   a,> <d fis!>8( a) <cis e a e'> 4 |
      <dis, b,> <dis fis>8([ a)] e,( e) |
      <e gis>[ cis'] <b fis>[ b] <e, b,>[ e] |
      a,2 a,4~ |

      % measure 107, v4
      a,2 a,4~ |
      a,2 a,4~ |
      a,4 a,2  |
      a,8[( e a gis,)] fis,[( cis |

      % measure 111, v4
      a cis fis, e,)] d,[( a, |
      fis a, d, cis,)] b,,[( b, |
      d fis a d' fis' d')] |
      e,( cis e a) e,,4 |
      e,,8[( e, a, d)] e,( d) |
      <a,, cis>2\arpeggio 

    }
  >>
}

dynamics = {
  \override Dynamics.Hairpin  #'height = #0.5 % default is 0.66
  \partial 4
  s4\p |
  s s s |
  s s s\< |
  s\! s\> s |
  s s8.\! s16\p s4 |

  % measure 5
  s2. |
  s2 s4\< |
  s\! s\> s |
  s s\! s\pp |

  % measure 9
  s2. |
  s2 s4\< |
  s\! s s\> |
  s s\! s |

  % measure 13
  s2. |
  s2 s4\< |
  s\! s s\> |
  s\! s s\p |

  % measure 17
  s2. | s2. | s2. | s2. |

  % measure 21
  s2. | s2. | s2. | s2. |

  % measure 25
  s2. | s2. | s2. | s2. |

  % measure 29
  s2. | 
  s2. | 
  s2. | 
  s2   s4\p |
  s2   s4\> |
  s2\! s4   |

  % measure 35
  s16\< s16\! s16 s16 s16\> s16 s16\! s16 s8 s8 |
  s16\< s16\! s16 s16 s16\> s16 s16\! s16 s8 s8 |
  s2. | 
  s2. | 

  % measure 39
  s2. | 
  s2. | 
  s2. | 
  s2. | 

  % measure 43
  s8\< s8   s8   s8   s8   s8   |
  s8   s8   s8   s8   s8   s8\! |
  s8   s8   s8   s8   s8   s8\> |
  s8   s8   s8   s8\!  s8\p s8  |
  s2. | 
  s4 s4 s4\p |

  % measure 49
      \repeat volta 2 {
  s2. | 
  s2. | 
  s2. | 
  s2. | 

  % measure 53
  s8\< s8\! s8\> s8   s8\! s8   |
  s8   s8   s8   s8   s8   s8   |
  s8   s8   s8   s8   s8\> s8   |
  s8   s8   s8   s8\! s8   s8   |

  }

\crescTextCresc
\set crescendoText = \markup { \italic "rit." }
  % measure 57
  s4\pp s4    s4 |
  s4    s4    s4 |
  s4    s4    s4 |
  s8 s8\< s8 s8 s8 s8\! |

\set crescendoText = \markup { \italic "rit." }
  % measure 61
  s4\pp s4    s4 |
  s4    s4    s4 |
  s4\<  s4    s4 |
  s8 s8 s8 s8 s8\! s8 |

  % measure 65
  s2. | 
  s2. | 
  s2. | 
  s2. | 

  % measure 69
  s2.\f | 
  s2. | 
  s2. | 
  s2. | 

  % measure 73
  s8 s8 s8\> s8 s8 s8\! |
\set crescendoText = \markup { \italic "rit." }
  s8\p s8\< s8 s8 s8 s8 |
  s2. | 
  s8\! s8 s8 s8 s8\pp s8 |

\crescHairpin
  % measure 77
  s2. | 
  s8 s8 s8 s8 s8\f s8 |
  s2. | 
  s8\> s8 s8 s8\! s8 s8 |

  % measure 81
  s2. |
  s8 s8 s8\< s8 s8 s8 |
  s8\! s8 s8\> s8 s8 s8\! |
  s2. |

  % measure 85
  s2. |
  s2. |
  s2. |
  s2. |

  % measure 89
  s2. |
  s2. |
  s2. |
  s2. |

  % measure 93
  s2. |
  s2. |
  s2. |
  s2. |

  % measure 97
  s2. |
  s2. |
  s2. |
  s8 s8 s8 s8\p s8 s8 |
  s8 s8 s8 s8 s8\> s8 |
  s8 s8 s8\! s8 s8 s8 |

  % measure 103
  s16\< s16\! s16 s16  s16\> s16\! s16 s16  s8 s8 |
  s16\< s16\! s16 s16  s16\> s16\! s16 s16  s8\< s8 |
  s8 s8 s8 s8 s8 s8\! |
  s2. |

  % measure 107
  s2. |
  s2. |
  s2. |
  s2. |

  % measure 111
  s8\< s8 s8 s8 s8 s8 |
  s8 s8 s8 s8 s8 s8\! |
  s8 s8 s8 s8 s8 s8\> |
  s8 s8 s8 s8\!  s8\p s8 |
  s2. |
  s2

}

dynamicsB = {
  \override Dynamics.Hairpin  #'height = #0.5
  \partial 4 s4  | s2. | s2. | s2. | s2. |

  % measure 5
  s2. | s2. | s2. | s2. |

  % measure 9
  s2. | s2. | s2. | s2. |

  % measure 13
  s2. |
  s2. |
  s2. |
  s8   s8   s8   s8   s8\< s8\! |

  % measure 17
  s8\> s8\! s8   s8   s8\< s8\! |
  s8\> s8\! s8   s8   s8   s8   |
  s8   s8   s8\< s8   s8\! s8   |
  s8\> s8\! s8   s8   s8\< s8\! |

  % measure 21
  s8\> s8\! s8   s8   s8\< s8\! |
  s8\> s8\! s8   s8   s8   s8   |
  s2. |
  s2. |

  % measure 25
  s2. |
  s2. |
  s2. |
  s2.\< |

  % measure 29
  s8 s s s s s\! |
  s2. |
  s2. |
  s2. |

  % measure 33
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s8   s8   s8   s8   s8^\markup { \italic { "cresc. un poco animato" } }\< s8\! |

  % measure 39
  s8\> s8\! s8   s8   s8\< s8\! |
  s8\> s8\! s8   s8   s8   s8   |
  s2. | 
  s2. | 

\crescTextCresc
\set crescendoText = \markup { \italic "rit." }
  % measure 43
  s2. | 
  s2. | 
  s4 s4\< s4 |
  s4 s4\! s4 |
  s2. | 
  s2. | 

  % measure 49
          \repeat volta 2 {
  s2. | 
  s2. | 
  s2. | 
  s2. | 

  % measure 53
  s2. | 
  s2. | 
  s2. | 
  s2. | 

  }

  % measure 57
  s2. | 
  s2. | 
  s2. | 
  s2. | 

  % measure 61
  s2. | 
  s2. | 
  s2. | 
  s2. | 

  % measure 65
  s4 s4\p s4 |
  s2. | 
  s2. | 
  s2. | 

  % measure 69
  s2. | 
  s2. | 
  s2. | 
  s2. | 

  % measure 73
  s2. | 
  s2. | 
  s2. | 
  s2. | 

  % measure 77
  s2. | 
  s2. | 
  s2. | 
  s2. | 

  % measure 81
  s2. | 
  s2. | 
  s2. | 
  s2. | 

  % measure 85
  s2. | 
  s2. | 
  s2. | 
  s2. | 

  % measure 89
  s2. | 
  s2. | 
  s2. | 
  s2. | 

  % measure 93
  s2. | 
  s2. | 
  s2. | 
  s2. | 

  % measure 97
  s2. | 
  s2. | 
  s2. | 
  s2. | 
  s2. | 
  s2. | 

  % measure 103
  s2. | 
  s2. | 
  s2. | 
\crescHairpin
  s16 s16 s16 s16  s16 s16 s16 s16  s16^\markup { \italic { "cresc. un poco animato" } }\<
  s16 s16\! s16  |

  % measure 107
  s16\> s16 s16\! s16  s16 s16 s16 s16  s16\< s16 s16\! s16  |
  s16\> s16 s16\! s16  s16 s16 s16 s16  s16 s16 s16 s16  |
  s2. | 
  s2. | 

\crescTextCresc
\set crescendoText = \markup { \italic "rit." }
  % measure 111
  s2. | 
  s2. | 
  s8 s8 s8\< s8 s8 s8 |
  s8 s8 s8 s8\! s8   s8   |
  s8 s8 s8 s8   s8\> s8\! |
  s2


}

\score
{
  \context PianoStaff
  <<
    \set PianoStaff.connectArpeggios = ##t
    \context Dynamics = "dynamicsB" \dynamicsB
    \context Staff = "up" \upper
    \context Dynamics = "dynamics" \dynamics
    \context Staff = "down" \lower
%   \context Dynamics = "pedal" \pedal
  >>
  \layout {
  }
}

\score
{
  \unfoldRepeats
  \context PianoStaff
  <<
    \context Staff = "up" \upper
    \context Staff = "down" \lower
  >>
  
  \midi {
    \tempo 4 = 80
    }
}
