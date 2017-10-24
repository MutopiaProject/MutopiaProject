\version "2.19.65"

\paper {
    page-top-space = #0.0
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

%#(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
        subtitle = "du Songe d' une nuit d' Été"
%        piece = "1. Adagio"
        mutopiatitle = "MARCHE NUPTIALE (Wedding march)"
composer =	 "Felix Mendelssohn-Bartholdy (1809-1847)"
mutopiacomposer= "Mendelssohn-BartholdyF"
%opus =	 	 "Op. 61"
mutopiaopus =	 "O 61"
        date = "ca.1909"
        mutopiainstrument = "Organ"
style	= "Romantic"
        source = "Paris: Durand & Cie., Plate D. & F. 9516"
        maintainer = "Alexander Brock"
        maintainerEmail = "alexander@lunar-orbit.de"
 arranger = "transcription for organ by Théodore Dubois"
 license = "Creative Commons Attribution-ShareAlike 4.0"
 footer = "Mutopia-2017/10/24-2198"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2017 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License" " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
 tagline = ##f
}

% The score definition

positive=\markup{\column{
  \smallCaps{Pos.}
  %\italic{CH.}
}}

grande=\markup{\column{
  \line{G{\super{d}}O.}
  %\line{\italic{GR.}}
}}
rec=\markup{\column{
  \smallCaps{Réc.}
  %\italic{SW.}
}}

problemone= << {\shape #'((0.1 . 0.8) (0.0 . 1.0) (0.0 . 1.5) (-.2 . 0.6)) Slur  c2^\trill ( e4) d8. e16 |}
      \\
    {g,2 \grace{ \stemUp
   \once \override Slur #'direction = #DOWN
   b16( c} \stemDown c4) <b g>}
 >>

rh = \relative c' {
  r2 r4 \tuplet 3/2 {c8\f^\markup{\translate #(cons -1 0)\positive} c c}  |
  c2 r4  \tuplet 3/2 {c8 c c} |
   c2 r4 \tuplet 3/2 {c8 c c}  |
   <c e>4 \tuplet 3/2 { e8 e e} e4 \tuplet 3/2 { e8 e e} |
    <e g>4 \tuplet 3/2 { g8 g g} g4 r
    \repeat volta 2 {
   <c e fis c'>2^\markup{\translate #(cons -2 0) \grande}  <b dis fis b>4. <b dis fis>8 |
    <b dis fis a>4 (   <b e g>) <a d f>-.  <a d>4-. |
    << {c2^\trill (\grace{b16 c} d4) g,8. d'16| <e c>4} \\ {g,2~ g4 g | g} >>
    r4 r8  c8-. e-. g-. |
     <c, e fis c'>2 <b dis fis b>4. <b dis fis>8 |
     <b dis fis a>4 (  <b e g> )  <a d f>4-. <a d>-. |
\problemone

    }
    \alternative {
      {
        << {<d b>2( c4)} \\ {g2~ g4} >> r|
        r  \tuplet 3/2 { c,8^\positive e g} c4 r |
          r4  \tuplet 3/2 {e,8 g c} <c e>4 r |
      r4  \tuplet 3/2 { e,8 g c} <c e>4 \tuplet 3/2 {  g8 c e} |
       <c e g>4 \tuplet 3/2 { g8 c e} <c e g>4 \tuplet 3/2 { c8^\grande e8 g}

      }
      {
      << { <d b>2( c4)} \\ {g2~ g4} >> r4
      }
    }
    \repeat volta 2 {
       <e g c>2 q4. q8 |
        <g c e>4 (  <f b d> )  <d f b>-. <b f' g>-. |
      <c e g>4. <e g c>8 q4. <g c e>8 |
    <g c e>4 (  <f b d> )  <d f b>-. <b f' g>-. |
    <c e g>4.  <g' c e>8 q4. <c e g>8 |
     <a c e g>2 (  <a d f>4 )  <a c e> |
      <a c d>4 <a cis>8. e'16 <a, d>4 <d, a'>8. c'16 |
       <d, g b>4 <g g'> <a a'> <b b'> |
     <c e fis c'>2 <b dis fis b>4. <b dis fis>8 |
     <b dis fis a>4 (  <b e g> )  <a d f>4-. <a d>-. |
    << {c2^\trill (\grace{b16 c} d4) g,8. d'16| <e c>4} \\ {g,2~ g4 g | g} >>
    r4 r8  c8-. e-. g-. |
        <c, e fis c'>2 <b dis fis b>4. <b fis'>8 |
         <b fis' a>4 (  <bes e g> )  <a d f>4-. <a d a'>-. |
\problemone

    }
    \alternative {
    {<< { <d b>2( c4)} \\ {g2~ g4} >> r4}
    {<< { <d' b>2( c4)} \\ {g2~ g4} >> r8.}
    }
    \key g \major
    \repeat volta 2 {
     \partial 16  <b, g'>16^\markup{\translate #(cons -1.8 0) \positive}
    << { g'4.. b16 b4.. d16  |
         d4.. g16 g4.. e16 |
         d04.. e16 e4.. c16  |
         b4.. d16^\markup{\translate #(cons -1.8 0) \grande} d4.. b16 |
        a4.. d16 d4.. b16 |
        } \\ {
     b,8.[  g16 g8. g'16] g8.[ d16 d8. b'16]  |
     b8.[ g16 g8. e'16] e8.[ g,16 g8. c16]  |
     b8.[ g16 g8. c16] c8.[ g16 g8. a16]  |
     g8.[ g16 g8. b16] b8.[ d,16 d8. g16]  |
     fis8.[ d16 d8. b'16] b8.[ d,16 d8. g16]
    }>>
    }
    \alternative {
      {<< {<a fis>2 r4 r8. s16} \\ { fis8.[ d16 d8. d16] d8.[ d16 d8.] s16} >>}
      {<< {<a' fis>2 r4} \\ {fis8.[ d16 d8. d16] d4} >> }
    }
    \repeat volta 2 {
        <ais' cis e fis>4^\markup{\halign #.1 \grande} \noBreak|
     <<
       {s4..  dis16^\markup{\translate #(cons -1.8 0) \positive} dis4.. fis16 |
        fis4.. b16 b4.. g16 |
        fis4.. g16 g4.. e16 |
        dis4 s s d^\markup{\translate #(cons -2 2) {\grande}} |
        s4..  b16^\positive b4.. d16 |
         d4.. g16^\grande g4.. e16 |
          d4.. e16 e4.. c16 |
           b2 r4
       } \\
       {
     <b dis fis b>8.[ b16 b8. b16] b8.[ fis16 fis8. dis'16] |
      dis8.[ b16 b8. g'16] g8.[ b,16 b8. e16] |
      dis8.[ b16 b8. e16] e8.[ b16 b8. c16] |
      b8.[ b16 b8. dis16] dis4 <a c> |
       <g b d g>8.[ g16 g8.] g16] g8.[ d16 d8. b'16] |
        b8.[ g16 g8. e'16] e8.[ g,16 g8. c16] |
         b8.[ d,16 d8. c'16] c8.[ fis,16 fis8. a16] |
          g4 r r4
        }
    >>
    }
    \key c \major
    r4 |
         <c e fis c'>2 <b dis fis b>4. <b dis fis>8 |
     <b dis fis a>4 (  <b e g> )  <a d f>4-. <a d>-. |
    << {c2^\trill (\grace{b16 c} d4) g,8. d'16| <e c>4} \\ {g,2~ g4 g | g} >>
    r4 r8  c8-. e-. g-. |
        <c, e fis c'>2 <b dis fis b>4. <b fis'>8 |
         <b fis' a>4 (  <bes e g> )  <a d f>4-. <a d a'>-. |
\problemone
       << { <d b>2( c4)} \\ {g2~ g4} >>
     <a c>4^\markup{\translate #(cons -1 0) {\rec}} |
      <e g>4 (  <f a> <g bes> <gis b> )  |
      << { c4\< (  f a\> f \!|
           e d c b )  |
          b2 (  c4) c-\p  |
          <c f>2 (  c4 a )  |
          c2( a4 f )  |
         } \\ { a1 |
       f1 |
       f2( e4)  e |
       f1 |
       c1 |
} >>
 <f a>4( <e g> <f a> <g bes>) |
  <f a>2.
  \repeat volta 2 {
    c4^\markup{\translate #(cons -1 0) {\positive}} |
    << {
     c'4  (  a4 \< e f )  |
      a4. \>(  g8 f4  \! e )  |
       c'4(  a \< e f )
    a4. \> (  g8 f4 \! e )  |
     g'4.\sf \> (  f8 e4 d )  |
      cis4 (d f \! d  )   |
       } \\
       {
   c,1 |
   des |
   c |
   des |
   g~ |
   g2 gis
       }
    >>
   << {c4\p s4 s2} \\ {a4 (\stemUp <f a> <e g> <g bes> ) }
   >> |
    <f a>2.
}
  a4^\markup{\translate #(cons -1 0) {\grande}} |
   a4. (  bes8 a4_\markup{\translate #(cons -2 -3.5) {\italic cresc.}} )  a  |
   a'2-> (  f4 )  a, |
   a4. (  bes8 a4 )  a  |
   a'2-> (  f4 )  d |
   e4.-> (  d8 )  d4 d |
   e4.->_\markup{\translate #(cons 1 -4) {\italic {molto cresc.}}} (  d8 )  d4 d |
    f4 (  e d e ) |
    d2 (  cis4 )  a8^\markup{\translate #(cons -1 .7) \positive} b |
    c4._\markup{\translate #(cons 0 -3.3) {\italic {cresc.}}} (  d8 )  c4 c c'2->^\markup{\translate #(cons -2 0)ajoutez Anches: {G{\super{d}}O.}}
    _\markup{\translate #(cons -.7 3) \italic{add Reeds: GR.}}
    (  g4 )  c,
    c4. (  d8 )  c4 c c'2->^\markup{\translate #(cons -2 0)Boite ouverte}
    _\markup{\translate #(cons -.2 -.5)\italic{open Box}}
    (  g4 )   \tuplet 3/2 {c,8^\markup{\translate #(cons -1 0)\grande} c c} |
  c2 r4 \tuplet 3/2 {c8 c c} |
  c2 r4_\markup{\translate #(cons 0 -3.7) {\italic {cresc.}}}  \tuplet 3/2 {<c c,>8 <c c,> <c c,>} |
  <c c,>4 \tuplet 3/2 {<c c,>8 <c c,> <c c,>} <c c,>4 \tuplet 3/2 {<c c,>8 <c c,> <c c,>}  |
  <c c,>4^\markup{\translate #(cons -2 0)Positif_Anches}
  _\markup{\translate #(cons -1 2)\italic{Choir_Reeds}}
  \tuplet 3/2 {<c c,>8 <c c,> <c c,>} <c c,>4 \tuplet 3/2 {c8 c c}  |

   <c e fis c'>2^\markup{\translate #(cons -1 0) \grande}  <b dis fis b>4. <b dis fis>8 |
    <b dis fis a>4 (   <b e g>) <a d f>-.  <a d>4-. |
    << {c2^\trill (\grace{b16 c} d4) g,8. d'16| <e c>4} \\ {g,2~ g4 g | g} >>
    r4 r8  c8-. e-. g-. |
     <c, e fis c'>2 <b dis fis b>4. <b dis fis>8 |
     <b dis fis a>4 (  <b e g> )  <a d f>4-. <a d>-. |
\problemone
       << { <d b>2( c4)} \\ {g2~ g4} >> r4

          <e g c>2^\ff q4. q8 |
        <g c e>4 (  <f b d> )  <d f b>-. <b f' g>-. |
      <c e g>4. <e g c>8 q4. <g c e>8 |
    <g c e>4 (  <f b d> )  <d f b>-. <b f' g>-. |
    <c e g>4.  <g' c e>8 q4. <c e g>8 |
     <a c e g>2^\sf (  <a d f>4 )  <a c e> |
      <a c d>4 <a cis>8. e'16 <a, d>4 <d, a'>8. c'16 |
       <d, g b>4 <g g'> <a a'> <b b'> |
     <c e fis c'>2 <b dis fis b>4. <b dis fis>8 |
     <b dis fis a>4 (  <b e g> )  <a d f>4-. <a d>-. |
    << {c2^\trill (\grace{b16 c} d4) g,8. d'16| <e c>4} \\ {g,2~ g4 g | g} >>
    r4 r8  c8-. e-. g-. |
        <c, e fis c'>2 <b dis fis b>4. <b fis'>8 |
         <b fis' a>4 (  <bes e g> )  <a d f>4-. <a d a'>-. |
\problemone
       << { <d b>2( c4)} \\ {g2~ g4} >> r4

 r  \tuplet 3/2 { c,8^\markup{\translate #(cons -2 1) \positive} e g} c4 r |
          r4  \tuplet 3/2 {e,8 g c} <c e>4 r |
      r4  \tuplet 3/2 { e,8 g c} <c e>4 \tuplet 3/2 {  g8 c e} |
       <c e g>4 \tuplet 3/2 { g8 c e} <c e g>4 \tuplet 3/2 { c8 e8 g}

     \repeat volta 2 {
       c1~ \startTrillSpan |
       c1~ |
       c1~ |
       c1 \stopTrillSpan |
       g1~ \startTrillSpan |
       g1~ |
       g1~ |
      }
  \alternative {
    {
      g1\stopTrillSpan
    }
    {
      g2~\startTrillSpan g8\stopTrillSpan r^\markup{\column{
  \line{Bom.}
  \line{16 p.}
}} r4 \stopTrillSpan
    }
  } |
   <g c e>2^\markup{\translate #(cons -.5 4) \grande}_\ff <f g d'>4. <e g c>8 |
    <g c e>2 <f g d'>4. <e g c>8 |
     <d f c'>4 <d f b> <d f a> <d f g b> |
     <c e g c>2  g'2 \startTrillSpan~ |
      g1~ |
       g1~ |
        g1~ |
         g1 \stopTrillSpan|
  \appoggiatura{fis16 g}  <e g c>2 q  |
  q1\fermata

}

lh = \relative c' {
   r1 |
    r1 |
     r1 |
      r4 \tuplet 3/2 { c8^\markup{\translate #(cons -1 0)\positive} c c} c4  \tuplet 3/2 {c8 c c} |
  c4 \tuplet 3/2 { <c e>8 q q}  q4  \tuplet 3/2{ <c e g>8 q q}
      \repeat volta 2 {
   <a c e fis>2^\ff <b dis fis a>4.^\markup{\translate #(cons -1.7 0) \grande} q8 |
    <b dis fis a>4 (  <b e g> )  <a d f>-. q-. |
     <g c e>2 <g b f'>4 q |
      <g c e>4 c8-. e-. g-. c,-. e-. g-. |
       <a, c e fis>2 <b dis fis a>4. q8 |
        q4 (  <b e g> )  <a d f>-. q-. |
         <g c e>2 <g g'>4 <g f'> |
        }
    \alternative {
      {
        q2 (  <c e>4 )  \tuplet 3/2 { c8^\positive c c} |
     c4 r r \tuplet 3/2 { c8 c c} |
      c2 r4 \tuplet 3/2 { c8 c c}  |
      <c e>4  \tuplet 3/2 {c8 c c} <c e>4 \tuplet 3/2 { <c e>8 q q}  |
      <c e g>4 \tuplet 3/2 { <c e>8 q q}  <c e g>4 \tuplet 3/2{ <c e g>8 q q}
        }
      {
    <g f'>2 (  <c e>4 )  r |
       }
    }
    \repeat volta 2 {
   \clef bass
    c2 c4. c8 |
     e4 (  d )  b-. g-. |
    g4. c8 c4. e8 |
     e4 (  d )  b-. g-. |
    g4. e'8 e4. <c e g>8 |
     <a c e g>2 (  <a d f>4 )  <a c e> |
      <a c d>4 <a cis>8. e'16 <a, d>4 <d, a'>8. c'16 |
       <g b>4 g a b |
  \clef treble

     <a c e fis>2 <b dis fis a>4. q8 |
    <b dis fis a>4 (  <b e g> )  <a d f>-. q-. |
     <g c e>2 <g b f'>4 q |
      <g c e>4 c8-. e-. g-. c,-. e-. g-. |
       <c, e fis a>2 <b dis fis a>4. <b fis' a>8 |
    <b fis' a>4 (  <bes e g> )  <a d f>-. q-. |
     <g c e>2 <g g'>4 <g f'> |
      }
    \alternative {
      {q2 (  <c e>4 ) r4}
      {<g f'>2 (  <c e>4 ) r8.}
    }
     \key g \major
    \clef bass
    \repeat volta 2 {
    <b, g'>16^\markup{\translate #(cons -1.8 0) \positive} q4.. <g' b>16 q4.. <b d>16 |
   \clef treble
   q4.. <e g>16 q4.. <c e>16 <b d>4.. <c e>16 q4.. \clef bass  <a c>16 |
    <g b>4.. <b d>16 q4..  <g b>16 |
     <fis a>4.. <b d>16 q4.. <g b>16 |
    }
  \alternative {
      {<fis a>2 r4 r8. s16 |}
       {<fis a>2 r4 }
  }
  \clef treble
  \repeat volta 2 {
  <cis' e fis>4^\markup{\halign #.1 \grande} \ff |
   <b dis fis>4 r8. <b dis>16^\markup{\translate #(cons -1.8 0) \positive} q4.. <dis fis>16 |
    q4.. <g b>16 q4.. <e g>16 |
     <dis fis>4.. <e g>16 q4.. <c e>16 |
      <b dis>2 r4 <d fis>^\markup{\translate #(cons -1.9 .8) \grande} \ff |
       <g, d'>4 r8. <g b>16^\positive q4.. <b d>16 |
        q4.. <e g>16 q4.. <c e>16 |
         <b d>4.. <c e>16 q4.. <a c>16 |
          <g b>8. g16^\grande[ \noBeam g8. g'16] g4
}
          \key c \major
    \tuplet 3/2 { g8 g, g'}

      <a, c e fis>2 <b dis fis a>4. q8 |
    <b dis fis a>4 (  <b e g> )  <a d f>-. q-. |
    \break
     <g c e>2 <g b f'>4 q |
      <g c e>4 c8-. e-. g-. c,-. e-. g-. |
       <c, e fis a>2 <b dis fis a>4. <b fis' a>8 |
    <b fis' a>4 (  <bes e g> )  <a d f>-. q-. |
     <g c e>2 <g g'>4 <g f'> |
      q2 (  <c e>4^\p)
      \clef bass
 << {
     \stemDown <a c>4^\markup{\translate #(cons -1 1) {\rec}} \stemUp  |
     <e g> (  <f a>4 <g bes> <gis b> )  |
      <a c>1 |
       b2 d |
        <as d>2 (  <g c>4 )  q |
         <f c'>1 |
          <f a>1~ |
           q4 (  <g bes> <f a> <e g> )  |
     <f a>2.
    } \\
    { r8 c~ c c4 c c c8~[ |
     c8] c4 c c c8~[ |
     c8] c4 c c c8~[ |
     c8] c4 c c c8~[ |
     c8] c4 c c c8~[ |
     c8] c4 c c c8~ |
     c8 c4 c c c8~[ |
     c8] c4 c c8}\\
    {s4 s1 s1 as'}
 >>
 \repeat volta 2 {
  r4  |

 << {
    f1^\markup{\translate #(cons -.5 0) {\positive}} |
     f2 b |
      f1 f2 g |

    } \\ {
  r8  c,4 c c c8 |
   r8 des4 des des des8 |
   r8 c4 c c c8 |
  r8 des4 des des des8 |

 } >>

 r8  <f g d'!>4 q q q8~ |
  q8 q4 q <f gis d'> q8 |
   r8 <f a c>[ r <f a c> r <g bes c> r <e g c>] |
    r8 <f a c>4 q q8~ }

     q8 q | \clef treble
  r8 <a e' g>4^\markup{\translate #(cons -2 0) {\grande}} q q q8 |
   r8 <a d f>4 q q q8 |
    r8 <a cis e>4 q q q8 |
     r8 <a d f>4 q q q8 |
      r8 <bes c e>4 q8 r <a d f>4 q8 |
  r8  <bes d g>4 q8 r <a d a'>4 q8 |
   r8 <d bes'>4 ^\> q8 r <bes d g>4 q8 \! |
    r8 <a e' g>4 q q <a cis e>8^\markup{\translate #(cons -2 1) \positive} |
     r8 <a c! d>4 q q q8 |
      r8 <g c d g>4 q q q8 |
       r8 <a c d fis>4 q q q8 |
        r8 <g c d g>4 q q q8 |
  r8^\p
  << {
      d'4 d8 e4 (  d )  |
       e4 (  d )  e (  d )|
       e4 (  d )  e (  d )|
       e4 (  d )  e (  d )|

     } \\ {
   <fis, a>4 q8~ q2 |
    q1 |
     <a fis'>1 |
      q1 |

  } >>

     <a c e fis>2^\markup{\translate #(cons -1 0) \grande}_\ff <b dis fis a>4. q8 |
    <b dis fis a>4 (  <b e g> )  <a d f>-. q-. |
     <g c e>2 <g b f'>4 q |
      <g c e>4 c8-. e-. g-. c,-. e-. g-. |
       <a, c e fis>2 <b dis fis a>4. q8 |
        q4 (  <b e g> )  <a d f>-. q-. |
         <g c e>2 <g g'>4 <g f'> |
    q2 (  <c e>4 ) r

     \clef bass
    c2^\ff c4. c8 |
     e4 (  d )  b-. g-. |
    g4. c8 c4. e8 |
     e4 (  d )  b-. g-. |
    g4. e'8 e4. <c e g>8 |
     <a c e g>2 (  <a d f>4 )  <a c e> |
      <a c d>4 <a cis>8. e'16 <a, d>4 <d, a'>8. c'16 |
       <g b>4 \clef treble  r8 f'!-. e-. d-. c-. b-. |
        a8-. c-. e-. fis-. b,-. dis-. fis-. a-. |
    r8 <b, dis fis a> r <b e g> r <a d f> r <a d f> |
     r8 g-. c-. e-. r g,-. b-. f'-. |
      c8-. e-. g-. e-. c-. g'-. e-. c-. |
       a8-. c-. e-. fis-. a,-. dis-. fis-. a-. |
        r8 <b, fis' a> r <bes e g> r <a d f> r <a d f> |
    r8 g-. c-. e-. g4 <g, f'> |
     q2 (  <c e>4 )

     \tuplet 3/2 { c8^\markup{\translate #(cons -1 0) \positive} c c} |
     c4 r r \tuplet 3/2 { c8 c c} |
      c2 r4 \tuplet 3/2 { c8 c c}  |
      <c e>4  \tuplet 3/2 {c8 c c} <c e>4 \tuplet 3/2 { <c e>8 q q}  |
      <c e g>4 \tuplet 3/2 { <c e>8 q q}  <c e g>4 \tuplet 3/2{ <c e g>8 q q}

  \clef bass
  \repeat volta 2 {
   <bes c g'>2^\f <a c f>4. <gis c e>8 |
    q2 <a c f> |
  <f c' f>2^\markup{\translate #(cons -.5 4) \grande}  <g c e>4. <a c dis>8 |
   q2 <g c e> |
   \clef treble
    <g' c e>2^\positive^\f  <f g d'>4. <e g c>8 |
     <g c e>2 <f g d'>4. <e g c>8 |
      <d f g c>4 <d f g b>^\markup{\translate #(cons -.5 2) \grande} <d f g a> <d f g b> |
  }
  \alternative {
       {<c e g c>2 r |}
       { <c e g c>2 g'\startTrillSpan~ |}
  }
         g1~ |
          g1~ |
           g1~ |
            g2~  g8 \stopTrillSpan r r8. <c e>16 |
  q2 q |
   q2. r8. <c, e g c>16 |
    q2 q |
     q2. r8. <c e g c>16 |
      q2 q |
       q1\fermata
}


pedal = \relative c {
  \clef bass
  r1 |
   r1 |
    r1 |
     r1 |
      r1 |
     \repeat volta 2 {
  a2 b4. b8 |
   e2 f!4-. f-. |
    g,2 g' |
     c,4 r r2 |
      a2 b4. b8 |
       e2 f!4-. f-. |
        g,2 g'4 g, |
            }
    \alternative {
      {
    g2 (  c4 )  r |
         r1 |
    r1 |
     r1 |
      r1 |
        }
      {
   g2 (  c4 )  r |
       }
    }
    \repeat volta 2 {
    c2 c4. c8 |
     g2. g4 |
      c4 c e c |
       g2. g'4 |
        c,4 g' e c |
  f,2. f4 |
   f4 f' fis fis, |
    g4 r r2 |
     a2 b4. b8 |
      e2 f!4-. f-. |
   g,2 g' c,4 r r2 |
    a'4 fis b dis,  |
    e cis d f,  |
     g2 g'4 g,
      }
    \alternative {
    {g2 (  c4 )  r4}
    {g2 (  c4 )  r8.}
    }
   \key g \major
   \repeat volta 2 {
    r16 |
    r1 |
     r1 |
      r1 |
       r4 r8. g16 g4.. b16 |
        d4.. g,16 g4.. b16 |
    }
    \alternative {
         {d2 r4 r8. s16}
         { d2 r4 }
    }
    \repeat volta 2{
           fis4 |
            b,4 r r2 |
    r1 |
     r1 |
      r2 r4  d4 |
    g,4 r r2 |
     r2 c (  |
     d4 )   r4 d2 (  |
      g,4 )r r }
    \key c \major   r4 |

  a2 b4. b8 |
   e2 f!4-. f-. |
    g,2 g' |
     c,4 g' e c |
     a' fis b dis, |
     e cis d f, |
     g2 g'4 g,  |
     g2  (  c4  ) r |

   r1^\markup{Otez Tirasses et Anches de tous les claviers excepté du Récit}_\markup{Manuals and Pedal uncoupled and Reeds in (Swell excepted)} |
    r1 |
     r1 |
      r2 r4 bes-. |
       a4-. r r2 |
        f4-. r r2 |
         c'4-. r r2 |
          f,4-. r r
   \repeat volta 2 {
    r |
     a4 r r2 |
     bes4 r g r |
     a r r2 |
     bes4 r r2 |
     b!4^\sf r r2 |
     r1 |
      c4-.^\p r c-. r |
       f,4 r r
   }
       r |
        cis1_\markup{\translate #(cons 8 -2) {\italic cresc.}} |
         d1 |
          g1 |
           f1 |
   g4 r a r  |
   bes r f r  |
   g r bes r4 |
   a  r4 r g-. |
    fis1 |
    g |
    a  |
    g  |
    fis4 r r2 |
     r1^\markup{\translate #(cons -2 0)mettez Anchez Ped. et Tirasses}
      _\markup{\translate #(cons -2 0)\italic{add Reeds Pedal_Pedal with manuals coupled}}
      |
      r1 |
       r1 |
   a2 b4. b8 |
    e2 f!4-. f-. |
     g,2 g' |
      c,4 g' e c |
   a2 b4. b8 e2 f!4-. f-. |
    g,2 g'4 g, |
     g2 (  c4 )  r

   c2^\ff c4. c8 |
    g2. g4 |
     c4 c e c |
      g2. g'4 |
       c,4 g' e c |
        f,2.^\sf f4 |
         f4 f' fis fis, |
          g4 r r2 |
  a2 b |
   e2 f! |
    g,2 g' |
     c,4 g' e c |
      a'4 fis b dis, |
       e4 cis d f |
        g,2 g'4 g, |
          g2 (  c4 )  r |
   r1 |
    r1 |
     r1 |
      r1 |
  \repeat volta 2 {
       r1 |
        r1 |
   a2^\ff g4. fis8 |
    fis2 g |
     r1 |
      r1 |
       r4 g^\ff g g |
  }
  \alternative {
    {c2 r |}
    {c2 r |}
  }
          r1 |
           r1 |
            r4 g g g |
             c2 r2 |
              r1 |
               r1 |
                r1 |
                 r2 r4 r8. <c, c'>16 |
                  q2 q |
                   q1\fermata


}

\score {
<<

  \new PianoStaff <<
    \new Staff  {
      \set Staff.midiInstrument = #"church organ"
      \key c \major \rh
    }
    \new Staff  {
      \set Staff.midiInstrument = #"church organ"
      \key c \major \lh
    }

  >>
  \new Staff {
    \set Staff.midiInstrument = #"church organ"
    \key c \major \pedal
  }

>>
  \layout { }
}

\score {
<<

  \new PianoStaff <<
    \new Staff  {
      \set Staff.midiInstrument = #"church organ"
      \key c \major \unfoldRepeats{\rh}
    }
    \new Staff  {
      \set Staff.midiInstrument = #"church organ"
      \key c \major \unfoldRepeats{\lh}
    }

  >>
  \new Staff {
    \set Staff.midiInstrument = #"church organ"
    \key c \major \unfoldRepeats{\pedal}
  }

>>
  \midi { \tempo 2=65}
}
