\version "2.14.2"

\header {
  title = "Air des folies d’Espagne"
  composer = "Paul Antoine Vidal"
  mutopiacomposer = "VidalPA"
  mutopiainstrument = "Classical Guitar"
  source = "Boije collection #835"
  style = "Romantic"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Tommi Siivola"
  maintainerEmail = "tommi.siivola@gmail.com"
  moreInfo = "The Boije collection is found at http://www.muslib.se/ebibliotek/boije/"

 footer = "Mutopia-2011/12/19-1815"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Copyright © 2011. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

% variations on the folia theme, numbered 1-15, variation n. 7 missing
music = {
  \key d \minor
  \time 3/4
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  
  \transpose c c' {
    \mark "Variation 1"
    \repeat volta 2 {
      \repeat percent 3 { d16 d' f' d' }
      \repeat percent 3 { a, cis' e' cis' } 
      \repeat percent 3 { d d' f' d' }  
      \repeat percent 3 { c c' e' c' }
      \repeat percent 3 { f c' f' c' }
      \repeat percent 3 { c c' e' c' }
    } \alternative {
      { \repeat percent 3 { d d' f' d' }
        a,8 bes a g f e }
      { d16 d' f' d'  g d' f' d'  a, cis' e' cis'
        <d a d' f'>4 r2 }
    }
    \bar "||" \break
    \mark "Var. 2"
    \repeat volta 2 {
      d16 d' f' d'    f d' f' d'    d d' f' d'
      a, cis' e' cis'    cis cis' e' cis'    a, cis' e' cis'
      d d' f' d'    f d' f' d'    d d' f' d'
      c c' e' c'    e c' e' c'    c c' e' c'
      f c' f' c'    a c' f' c'   f c' f' c'
      c c' e' c'    e c' e' c'    c c' e' c'
    } \alternative {
      { d d' f' d'    f d' f' d'    d d' f' d'
        a,8 bes a g f e }
      { d16 d' f' d'  g d' f' d'  a, cis' e' cis'
        <d a d' f'>4 r2 }
    }
    \bar "||" \break
    \mark "Var. 3"
    \repeat volta 2 {
      \times 4/6 { d16 d' f' e d' f' f d' f' g d' f' a d' f' bes d' f' } 
      \times 4/6 { a, cis' e' b, cis' e' cis cis' e' d cis' e' e cis' e' cis cis' e' } 
      \times 4/6 { d d' f' e d' f' f d' f' g d' f' a d' f' f d' f' } 
      \times 4/6 { c c' e' d c' e' e c' e' f c' e' g c' e' e c' e' } 
      \times 4/6 { f c' f' g c' f' a c' f' bes c' f' c' c' f' a c' f' } 
      \times 4/6 { c c' e' d c' e' e c' e' f c' e' g c' e' e c' e' } 
    } \alternative { 
      { \times 4/6 { d d' f' e d' f' f d' f' g d' f' a d' f' bes d' f' } 
        a,8 bes16 g' a f' g e' f d' e cis' } 
      { \times 4/6 { d16 d' f' f d' f' g d' f' e d' f' a d' f' a, cis' e' } 
        < d a d' f' >4 r2 } 
    }
    \bar "||" \break
    \mark "Var. 4"
    \repeat volta 2 {
      < d' f' >8 d f a f d 
      < cis' e' > a, cis e cis a, 
      < d' f' > d f a f d 
      < c' e' > c e g e c 
      < c' f' > f a c' a f 
      < c' e' > c e g e c 
    } \alternative { 
      { < d' f' > d f a f d a, bes a g f e } 
      { d < d' f' > f < d' g' > a, < cis' e' > 
        < d a d' f' >4 r2 } 
    }
    \bar "||" \break
    \mark "Var. 5"
    \repeat volta 2 {
      <d' f' a'>4  <c' e' a'>  <bes d' g'>
      <a cis' a'>  <b d' a'>  <cis' e' a'>
      <d' f' a'>  <c' e' a'>  <bes d' g'>
      <c' e' c''>  <d' f' c''>  <e' g' c''>
      <f' a' c''>  <e' g' c''>  <f' a' c''>
      <c' e' g'>  <b d' g'>  <c' e' g'>
    } \alternative {
      { <bes d' f'>  <a d' f'>  <gis d' f'>
        <a cis' e'> a, r }
      { <b d' f'>  <g d' f'>  <a, cis' e'>
        <d a d' f'> r2 }
    }
    \bar "||" \break
    \mark "Var. 6"
    \repeat volta 2 {
    \repeat percent 3 { d'16 f' a' f' }
    \repeat percent 3 { cis' e' a' e' }
    \repeat percent 3 { d' f' a' f' }
    \repeat percent 3 { e' g' c'' g' }
    \repeat percent 3 { f' a' c'' a' }
    \repeat percent 3 { e' g' a' g' }
    } \alternative {
      { \repeat percent 3 { d'16 f' a' f' }
        <a cis' e' a'>4 r2 }
      { \repeat percent 2 { d'16 f' a' f' } cis' e' a' e'
        <d' f' a'>4 r2 }
    }
    \bar "||" \break
    \mark "Var. 8"
    \repeat volta 2 {
      d8  <d' f'> <d' f'> <e' g'> <f' a'>4
      a,8 <cis' e'> <cis' e'> <d' f'> <e' g'>4
      d8  <d' f'> <d' f'> <e' g'> <f' a'>4
      c8 <c' e'> <c' e'> <d' f'> <e' g'>4
      f8 <f' a'> <f' a'> <g' bes'> <a' c''>4
      c8 <c' e'> <c' e'> <d' f'> <e' g'>4
    } \alternative {
      { d8 <d' f'> <d' f'> <e' g'> <f' a'>4
        a,8 bes a g f e }
      { d8 <d' f'> g <d' g'> a, <cis' e'>
        <d a d' f'>4 r2 }
    }
    \bar "||" \break
    \mark "Var. 9"
    \repeat volta 2 {
      \repeat percent 3 { \times 4/6 { d16 f a f f a } }
      \repeat percent 3 { \times 4/6 { a, e a e e a } }
      \repeat percent 3 { \times 4/6 { d f a f f a } }
      \repeat percent 3 { \times 4/6 { c e g e e g } }
      \repeat percent 3 { \times 4/6 { f a c' a a c' } }
      \repeat percent 3 { \times 4/6 { c e g e e g } }
    } \alternative {
      { \times 4/6 { d f a f f a   c e g e e g     bes, e g e e g }
        a,8  <bes g'> <a f'> <g e'> <f d'> <e cis'>  }
      { \times 4/6 { d16 f a f f a } g bes d' g'  a cis' e' a'
        <d d' f' a'>4 r2 }
    }
    \bar "||" \break
    \mark "Var. 10"
    \repeat volta 2 {
      d16 d' cis' (d') d d' e d' f d' d d'
      a, a gis (a) a, a b, a cis a a, a
      d d' cis' (d') d d' e d' f d' d d'
      c c' b (c') c c' d c' e c' c c'
      f f' e' (f') f f' g f' a f' f f' 
      c c' b (c') c c' d c' e c' c c'
    } \alternative {
      { d d' cis' (d') d d' e d' f d' d d'
        a,8  bes16 g'  a f'  g e'  f d'  e cis' }
      { d (e f g)  a (bes a g)  f (e d cis )
        <d a d'>4 r2 }
    }
    \bar "||" \break
    \mark "Var. 11"
    \repeat volta 2 {
      \repeat percent 3 { d'16 e' f' e' }
      \repeat percent 3 { a b cis' b }
      \repeat percent 3 { d' e' f' e' }
      \repeat percent 3 { c' d' e' d' }
      \repeat percent 3 { f g a g }
      \repeat percent 3 { c' d' e' d' }
    } \alternative {
      { \repeat percent 3 { d' e' f' e' }
        <a cis' e' a'>4 r2  }
      { \repeat percent 2 { d'16 e' f' e' } a b cis' a
        \repeat percent 2 { d' e' f' e' } d'4 }
    }
    \bar "||" \break
    \mark "Var. 12"
    \repeat volta 2 {
      d16 (d' c' bes) a (g f e) d (e f d)
      a, (a gis fis)  e (d cis b,) a, (b, cis a, )
      d (d' c' bes) a (g f e) d (e f d)
      c (c' b a) g (f e d) c (d e c) 
      f (f' e' d') c' (bes a g) f (g a f)
      c (c' b a) g (f e d) c (d e c)
    } \alternative {
      { d d' (cis' d') bes, d' (cis' d') gis d' (cis' d')
        a, a bes g a f g e f d e cis }
      { d (e f g)  a (bes a g)  a, bes, cis a,
        <d a d'>4 r2 }
    }
    \bar "||" \break
    \mark "Var. 13"
    \repeat volta 2 {
      d'16 a' a' a'  a' a' f' a'  d' a' f' a' 
      cis' a' a' a'  a' a' e' a'  cis' a' e' a'
      d'   a' a' a'  a' a' f' a'  d' a' f' a' 
      e'   c'' c'' c''   c'' c'' g' c''  e' c'' g' c'' 
      f'   c'' c'' c''   c'' c'' a' c''  f' c'' a' c'' 
      e'   c'' c'' c''   c'' c'' g' c''  e' c'' g' c''
    } \alternative {
      { d'   a' a' a'  a' a' f' a'  d' a' f' a' 
        <a cis' e' a'>4 r2 }
      { d'16   a' f' a'  d' a' f' a'  a cis' e' a' 
        <d' f' a'>4 r2  }
    }
    \bar "||" \break
    \mark "Var. 14"
    \repeat volta 2 {
      \repeat percent 3 { \times 4/6 { d16 f' a'   d' f' a' } }
      \repeat percent 3 { \times 4/6 { a, e' a'   cis' e' a' } }
      \repeat percent 3 { \times 4/6 { d f' a'   d' f' a' } }
      \repeat percent 3 { \times 4/6 { c' g' c''   e' g' c'' } }
      \repeat percent 3 { \times 4/6 { f a' c''   f' a' c'' } }
      \repeat percent 3 { \times 4/6 { c' g' c''   e' g' c'' } }
    } \alternative {
      { \repeat percent 3 { \times 4/6 { d f' a'   d' f' a' } }
        <a cis' e' a'>4 r2 }
      { \times 4/6 { d16 f' a' d' f' a'  g d' g' bes d' g'  a, cis' e' a cis' e' }
        <d a d'>4 r2 }
    }
    \bar "||" \break
    \mark "Var. 15"
    \repeat volta 2 {
      \times 4/6 { d16 d' f'   f d' f' a d' f' f d' f'  e d' f' d d' f'}
      \repeat percent 3 { <gis e' a'> (a) <gis e' a'> (a) }
      \times 4/6 { d16 d' f'   f d' f' a d' f' f d' f'  e d' f' d d' f'}
      \repeat percent 3 { <b, c' e'> (c) <b, c' e'> (c) }
      \times 4/6 { f c' f' a c' f'  c' c' f' a c' f'  g c' f' f c' f'}
      \repeat percent 3 { <b, c' e'> (c) <b, c' e'> (c) }
    } \alternative {
      { \times 4/6 { d16 d' f' f d' f' a d' f' f d' f'  e d' f' d d' f'} 
        a,8 bes a g f e }
      { \times 4/6 { d16 d' f' f d' f'  g d' f' e d' f'  a d' f' a, cis' e' }
        <d a d' f'>4 r2 }
    } 
    \bar "|."
  }
}

%%% sheet music output %%%
\score { 
  \new Staff { \music } }
  \layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

%%% MIDI output %%%
\score {
  \unfoldRepeats
  % transpose octave down, because guitar music is written an octave higher
  \transpose c c, { \music }
  \midi { 
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 4)
      midiInstrument = "acoustic guitar (nylon)"
    }
  }
}
