\version "2.16.1"
#(set-global-staff-size 16)

Algemeen = { {\key c\minor \time 8/8}}
StemI ={ \relative c'' {
    \repeat volta 2 {
    g4 b\trill \grace { a!16[ b] } c4. d8-.
     es[ f g] c,-.  b[ a g] f-.
     es[ f g] c,-.  b[ a g] d''-.
     es[ f g] c,-.  b[ a g] d'

     es[ g,]  d'[ g,]  c[ b16 a] b  g[ b d]
     es8[ g,]  d'[ g,]  c[ b16 a] b  g[ b d]
     f8[ g,]  es'[ g,]  d'[ c16 b] c  g[ c es]
     f8[ g,]  es'[ g,]  d'[ c16 b] c  b[ c d]

     es[ d c b]  c[ bes a g]  a[ g fis e]  fis[ d e fis]
     g[ d g bes] d8 <c a>-.  bes16[ c32 bes c bes a g]  a16[ bes32 a bes a g fis]
    g16  d[ g bes] d8 c-.  bes16[ c32 bes c bes a g]  a16[ bes32 a bes a g fis]
    d'16  g,[ bes d] g8 c,-.  bes16[ c32 bes c bes a g]  a16[ bes32 a bes a g fis]

    g16  g'[ f! es]  d[ c bes a] g  g[ f es]  d[ c bes a]
    }

    \alternative {
        {g16 r r8 <g' bes d>4-. <bes d g> r}
        {g,16 r r8 <g' b d>4 <g b d g> r}
    }
    \bar "||"

    b4 c\trill \grace { b16[ c] } d4. es8
    <d f> <c es>4 <b d>8-.  es32[ f es f es16 d32 es] c8 g-.
     as[ f]  g[ es]  f[ d]  es16[ d c8]
    b-. g-. c4 g4. g''8

     f16[ es d8]  es16[ d c8]  d16[ c b8]  c16[ d es8]
     d32[ es f8.]  es16[ f32 es f es d es] d4. es8-.
     f8[ g,]  es'[ g,]  d'[ c16 b] c  g[ c es]
     f8[ g,]  es'[ g,]  d'[ c16 b]  c[ bes as! g]

     as![ g f es]  f[ es d c]  d[ c b c]  b[ g as b]
    c  g[ c es] g8 f-.  es16[ f32 es f es d c]  d16[ es32 d es d c b]
    c'16-.  g[ c es] g8 f-.  es16[ f32 es f es d c]  d16[ es32 d es d c b]
    g'16  es[ g c] c8 f,-.  es16[ f32 es f es d c]  d16[ es32 d es d c b]

    c16  c'[ bes as!]  g[ f es d] c  c[ bes as!]  g[ f es d]
    c r r8 <c' es g>4-. <c' es g c>-. r
    \bar "|."
    }}

StemII ={ \relative c' {
    <c es>4 <d f> <es g>8[ <d f> <c es>] <b d>-.
    <<\context Voice=Boven{\voiceOne\stemUp{<es g>4 s8 f-. g4 s8 \clef bass \stemDown g,-. \stemUp c4 s4 g4 s8 \clef violin d'-. <es g>4 s8 f-. g4 r}}
     \context Voice=Onder{\voiceTwo\stemDown{ c,8[ d es] s8  g,[ a b] s8  c,[ d es] f-.  g,[ a b] b'  c[ d es] s8 g,4 s4}}>>

    g''8-. r f-. r es-. r d-. r
    g8-. r f-. r es-. r d-. r
    as'-. r g-. r f-. r es-. r
    as-. r g-. r f-. r es-. r

     c'[-. bes!-. a-. g-.]  fis[-. es!-. d-. c-.]
    <bes d>8 r r c,-. d4 c
    bes4. es8 d4 c
    bes4. \clef bass <c es>8-. <d, d'>4 d,

    g4 r r2

    %alternative
        r16  d'[ e fis] g  bes,[ c d] g,4 r
        r16  d'[ e fis] g  b,[ c d] g,4 r


    <g' d'>4 <a d> <b d>8 g-. <c es>4
    <d f>8 r <g, d' g>4 <c g'> r
    \clef violin f'8-. r es-. r d-. r c-. r
    f4  es16[ d c8]  g'8[-. g,-. g-.] \clef bass <g, g'>8-.

    <as f'>4 <g es'> <f d'> <es c'>
    <d f g b> <c g' c> <g' b> r
    \clef violin as''!8-. r g-. r f-. r es-. r
    as-. r g-. r f-. r es-. r

     f[-. es-. d-. c-.]  b[-. as-. g-. f-.]
    es r r \clef bass f,-. g4 f
    <es c'>4. <f d'>8-. <g es'>4 <f d'>
    <es c'>4. <f d>8 <g c>4 g,

    c r r2
    r16  g'[ a b] c  es,[ f g] c,,4-. r
    }}

\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "harpsichord"
  \context Staff = "up" <<\Algemeen \clef violin \context Voice=Een{\StemI}>>
  \context Staff = "down" <<\Algemeen \clef violin \context Voice=Twee{\StemII}>>
>>
}
\layout {}

  \midi {
    \tempo 4 = 120
    }


}
\header {
  title             = "Sonatensatz"
  subtitle          = "Joh. Kuhnau's neue Klavierübung benebst einer Sonata, denen Liebhaberen zu besönderem Vergnügen aufgesetzt."
  opus              = ""
  composer          = "Johann Kuhnau (1660-1722)"
  meter             = "Allegro (Maestoso)"

  %mutopiatitle      = "Sonatensatz"
  %mutopiacomposer   = "J. Kuhnau (1660-1722)"
  mutopiatitle      = "Sonata XI from the Essercizi per Gravicembalo"
  mutopiacomposer   = "ScarlattiD"
  mutopiaopus       = "K 11"
  mutopiainstrument = "Harpsichord, Piano"
  moreInfo          = "This sonata was previously thought to be 'Sonatensatz' by J. Kuhnau."

  source            = "P.J. Tonger Musik Verlag, 19th century"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"
 
 footer = "Mutopia-2013/01/08-141"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}
