\version "2.20.0"

\language "deutsch"

\header {

  title = "Lieder ohne Worte"
  composer = "F. Mendelssohn-Bartholdy"
  opus = "Op.19 No.1"

  mutopiatitle = "Lieder ohne Worte, Op.19 No.1"
  mutopiacomposer = "Mendelssohn-BartholdyF"
  mutopiapoet = ""
  mutopiaopus = "Op.19"
  mutopiainstrument = "Piano"
  date = "1829-1830"
  source = "Breitkopf & Härtel, 1874-77"
  style = "Romantic"
  maintainer = "Nora Widdecke"
  maintainerEmail = "mail@nora.pink"
  maintainerWeb = ""
  moreInfo = "This file was created from a public domain scan of the work.  The source is located in the Petrucci Music Library, http://imslp.org/."

  license = "Creative Commons Attribution 4.0"
  footer = "Mutopia-2020/06/14-2248"
  copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2020 ""by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by/4.0" \license " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
  tagline = ##f
}

\paper {
  %% Make the piece fit on two pages.
  system-count = #14
  systems-per-page = #7
}

#(set-global-staff-size 17)

global = {
  \key e \major
  \time 4/4
  \tempo "Andante con moto"
  s1*2
  \repeat volta 2 {
    s1*1 \break
    s1*4 \break
    s1*4 \break
    s1*3
  }
  \alternative {
    { s1 \break }
    { s2 }
  }
  s2
  s1*5
  s1*29 \bar "|."
}

right = \relative c'' <<
  \global
  {
    s1 |
    s2 s4 a( |
    gis fis e) e'-\accent( |
    dis cis h ) cis( |
    a h8 fis gis4*1/2 s4*1/2\turn h8 a) |
    gis2( fis8) r a4( |
    gis fis e) e'-\accent( |
    dis cis h ) gis'4^\f ( |
    cis,2.) gis'4^\p (  |
    cis,2.) cis4( |
    cis e dis-\espressivo cis8 gis) |
    h2( ais) |
    a( gis8) r gis4 |
    ais^\<( h dis\! cis8. h16) |
    %1.
    h2 r4 a4*5/6( s4*1/6) |
    %2.
    h2 r4 fis8 fis |
    g4^\cresc fis8 e a4 a8 a |
    h4 a8 g c4 c8 c |
    d4 c8 h g'4\f fis8 e |
    d4 d \oneVoice d16(-\ff fis a c h a g fis |
    \override DynamicTextSpanner.style = #'none
    e dis fis8~ fis16-\dim e d c h a gis a gis a) h-.-\p c-. |
    \voiceOne d4( h4 a4 e'4) |
    d4( h4 a4) h8 c8 |
    h8 h8( d8 h8) h8( a8-\dim g8 a8) |
    h1~ |
    h8-\pp h( d h) h( a g a) |
    h2. ais4( |
    h2) r4 c( |
    h2)^\cresc r4 a(^\f |
    gis fis e) e'-\accent( |
    dis cis h ) cis |
    a8(^\f cis h a gis ) gis( h a)
    gis2( fis8) r-\dim gis a |
    h4(-\p gis fis cis') |
    h(-\cresc gis fis e') |
    e( h4.) h8( cis h ) |
    a2( gis8 fis gis a) |
    h4( gis-\cresc fis cis') |
    h( gis fis e') |
    dis4( cis) h8(^\f dis fis a |
    gis dis fis e dis cis a fis) |
    e2(^\dim \oneVoice dis |
    d cis8) r8 cis4(^\<
    dis e gis\! fis8. e16) |
    \voiceOne e2 r4 d4( |
    \oneVoice cis2)\dim r4 c( |
    h2) \voiceOne r4 gis'8( fis |
    e2) r4 gis4^\pp (
    e2) e |
    e1\fermata
  }
>>

\parallelMusic middleRight,middleLeft \relative c {
    s1 |
    h16^\p e gis h h,16 e gis h h,16 e gis h h,16 e gis h |

    s1 |
    h,16 dis a' h h, dis a' h h, dis fis h h, dis fis h |

    s8     gis16 h s8      a16 h s8    gis16 h s8          e16 fis |
    h,,16 e s8      h16 dis s8    h16 e s8      fis16 cis' s8      |

    s8 dis16 fis s8 e16 fis s8 dis16 fis s8 cis16 gis' |
    fis,16 h s8 fis16 ais s8 fis16 h s8 gis16 h s8 |

    s8 cis16 e s8 h16 dis s8 h16 e s8 cis16 e |
    fis,16 a s8 fis16 a s8 e16 gis s8 e16 fis s8 |

    s8 h16 e s8 h16 e s8 h16 dis s8 a16 h |
    e,16 gis s8 e16 gis s8 dis16 fis s8 h,16 fis' s8 |

    s8     gis16 h s8      a16 h s8    gis16 h s8          e16 fis |
    h,,16 e s8      h16 dis s8    h16 e s8      fis16 cis' s8      |

    s8 dis16 fis s8 e16 fis s8 dis16 fis s8 gis16 h |
    fis,16 h s8 fis16 ais s8 fis16 h s8 h16 cis s8 |

    s8 gis'16 h s8 gis16 h s8 gis16 h s8 gis16 h |
    h,16 cis s8 h16 cis s8 h16 cis s8 h16 cis s8 |

    s8 gis'16 h s8 gis16 h s8 gis16 h s8 gis16 h |
    h,16 cis s8 h16 cis s8 h16 cis s8 h16 cis s8 |

    s8 fis16 ais s8 e16 fis s8 dis16 fis s8. e16 |
    ais,16 cis s8 fis,16 cis' s8 fis,16 h s8 e,16 gis cis s16 |

    s8 dis16 fis s8 dis16 fis s16 cis e fis s16 cis e fis |
    fis,16 h s8 fis16 h s8 fis16 s8. fis16 s8. |

    s16 his dis fis s his, dis fis s16 gis, cis e s gis, cis e |
    fis,16 s8. fis16 s8. e16 s8. e16 s8. |

    s16 ais e' fis s h, e fis s8 e16 fis s16 ais,16 e'16 fis |
    e,16 s8. e16 s8. fis16 cis' s8 fis,16 s16 s8 |

    s8 dis'16 fis s8 dis16 fis s8 h,16 dis s8 h16 dis |
    fis,16 h s8 fis16 h s8 dis,16 fis s8 dis16 fis s8 |

    s8 dis'16 fis s8 dis16 fis s8 h,16 dis s8 h16 dis |
    fis,16 h s8 fis16 h s8 dis,16 fis s8 dis16 fis s8 |

    s8 g16 h s8 g16 h s8 a16 c s8 c16 d |
    h,16 e s8 h16 e s8 c16 d s8 d16 fis s8 |

    s8 h16 d s8 h16 e s8 c16 e s8 c16 fis |
    d,16 g s8 e16 g s8 e16 a s8 es16 a s8 |

    s8 d16 g s8 d16 g s8 g16 c s8 g16 c |
    d,,16 g s8 g16 h s8 g16 e' s8 g,16 e' s8 |

    s8 d16 a' s8 d,16 g s2 |
    fis,16 c' s8 g16 c s8 s2 |

    s1 |
    s1 |

    s8 d16 g s8 d16 g s8 e16 g s8 e16 g |
    r16 h, s8 g16 h s8 g16 a s8 g16 a s8 |

    s8 d16 g s8 d16 g s8 cis,16 g' s8 d16 a' |
    g,16 h s8 g16 h s8 g16 a s8 a16 c s8 |

    s8 d16 g s8 d16 g s8 c,16 e s8 c16 e |
    g,16 h s8 g16 h s8 e,16 a s8 e16 a s8 |

    s8 h16 dis s8 h16 dis s8 h16 dis s8 h16 dis |
    dis,16 fis s8 dis16 fis s8 dis16 fis s8 dis16 fis s8 |

    s8 h16 g' s8 h,16 g' s8 c,16 e s8 c16 e |
    d,16 g s8 d16 g s8 e16 a s8 e16 a s8 |

    s8 h16 dis s8 h16 dis s8 h16 e s8 h16 e |
    dis,16 fis s8 fis16 a s8 e16 g s8 e16 g s8 |

    s8 h16 dis s8 h16 dis s8 h16 dis s8 h16 dis |
    dis,16 fis s8 fis16 a s8 e16 g s8 e16 g s8 |

    s8 h16 dis s8 h16 dis s8 h16 dis s8 h16 dis |
    dis,16 fis s8 dis16 fis s8 fis16 a s8 dis,16 fis s8 |

    s8 gis16 h s8 a16 h s8 gis16 h s8 e16 fis |
    h,,16 e s8 h16 dis s8 h16 e s8 fis16 cis' s8 |

    s8 dis16 fis s8 e16 fis s8 dis16 fis s8 cis16 gis' |
    fis,16 h s8 fis16 ais s8 fis16 h s8 gis16 h s8 |

    s8 e16 fis s8 h,16 dis s8 h16 e s8 s16 e |
    a,16 cis s8 fis,16 a s8 e16 gis s8 cis,16 e a s16 |

    s8 h16 e s8 h16 e s8 h16 dis s8 h16 dis |
    e,16 gis s8 e16 gis s8 dis16 fis s8 dis16 fis s8 |

    s8 h16 e s8 h16 e s8 cis16 e s8 cis16 e |
    e,16 gis s8 e16 gis s8 e16 fis s8 e16 fis s8 |

    s8 h16 e s8 h16 e s8 ais,16 e' s8 e16 fis |
    e,16 gis s8 e16 gis s8 e16 fis s8 fis16 ais s8 |

    s8 e'16 gis s8 e16 gis s8 e16 fis s8 dis16 fis |
    gis,16 h s8 gis16 h s8 a16 h s8 a16 h s8 |

    s8 h16 dis s8 h16 dis s8 h16 e s8 h16 e |
    fis,16 a s8 fis16 a s8 e16 gis s8 e16 gis s8 |

    s8 h16 e s8 h16 e s8 cis16 e s8 dis16 fis |
    e,16 gis s8 e16 gis s8 e16 fis s8 dis16 fis s8 |

    s8 h16 e s8 h16 e s8 cis16 e s8 e16 fis |
    e,16 gis s8 e16 gis s8 e16 fis s8 fis16 ais s8 |

    s8 dis16 fis s8 e16 g s8 fis16 a s8 a16 h |
    fis,16 h s8 ais16 cis s8 h16 dis s8 dis16 fis s8 |

    s8 gis16 h s8 gis16 his s8 e,16 fis s8 a,16 c |
    h16 e s8 his16 e s8 a,16 cis s8 e,16 fis s8 |

    s8 gis16 h s8 gis16 h s16 \change Staff = "down" \voiceThree fis a16 h s16 fis a16 h |
    h,16 e s8 h16 e s8 h16 s s8 h16 s s8 |

    s16 eis gis16 h s16 eis, gis16 h s16 cis, fis16 a s16 cis, fis16 a |
    h,16 s s8 h16 s s8 a16 s s8 a16 s s8 |

    s16 dis a'16 h s16 e, a16 h s8 a16 h s16 dis, a'16 h |
    a,16 s s8 a16 s s8 h16 fis' s8 h,16 s16 s8 |

    \change Staff = "up" \voiceTwo s8 gis'16 h s8 gis16 h s8 gis16 h s8 gis16 h |
    h,16 e s8 h16 e s8 h16 e s8 h16 e s8 |

    \change Staff = "down" \voiceThree s8 e16 a s8 e16 a s8 e16 a s8 e16 a |
    a,16 cis s8 a16 cis s8 a16 cis s8 a16 c s8 |

    s8 dis16 a' s8 dis,16 a' s8 s16 \change Staff = "up" \voiceTwo a s8 a16 h |
    fis,16 h s8 fis16 h s8 fis16 h dis s16 h16 dis s8 |

    s8 gis16 h s8 gis16 h s8 gis16 h s8 gis16 h |
    h,16 e s8 h16 e s8 h16 e s8 h16 e s8 |

    s8 gis16 h s8 gis16 h s8 gis16 h s8 gis16 h |
    h,16 e s8 h16 e s8 h16 e s8 h16 e s8 |

    gis1 |
    h,1 |
}

left =  <<
  \global
  \relative c, {
    e2( gis |
    fis h,4) s4 |
    e4( fis gis ais) |
    h( cis dis eis) |
    fis h, e a, |
    h2 h8 r dis,4 |
    e4( fis gis ais) |
    h cis dis e~ |
    e4 gis e2~ |
    e4 gis eis2 |
    fis4( ais, h e) |
    fis r r fis,~ |
    fis fis e dis |
    cis h' ais fis |
    %1. Klammer
    h2. r4 |
    %2. Klammer
    h2. r4 |
    e,2 fis4 d' |
    g,2 a |
    h c |
    d4 e <fis a c d> \oneVoice r4 |
    R1 |
    \voiceTwo
    r4 h,4 c2 |
    d2 e4 fis |
    g r c,2 |
    << {h1} { s2\sustainOn s4 s8 s16 s16\sustainOff } >> |
    g2 c |
    h1 |
    h1 |
    h2. r4 |

    e,4 fis gis ais |
    h cis dis eis |
    fis h, e a, |
    h2. a4 |
    gis2 a |
    h cis |
    h h |
    e4 h e r |
    r h ais a |
    gis h ais cis |
    h e dis h' |
    e, gis a a, |
    h r r h,~ |
    h4 h a gis |
    fis e' dis h |
    e2 e2~ |
    e2 e2~ |
    e2 e2~ |
    e2 e2~\sustainOn |
    e4 e e e |
    e1\fermata
  }
>>

\score {
  \new PianoStaff <<
    \new Staff = "up" \with {
      midiInstrument = "acoustic grand"
    } <<
      \right
      \\
      \middleRight
    >>
    \new Staff = "down" \with {
      midiInstrument = "acoustic grand"
    } {
      \clef bass
      <<
        \middleLeft
        \\
        \left
      >>
    }
  >>
  \layout { }
  \midi { }
}

