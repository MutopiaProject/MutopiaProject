\version "2.6.0"

#(set-default-paper-size "a4" 'landscape)

\header {
 title = "Ich ruf zu dir, Herr Jesus Christ"
 mutopiatitle = "Ich ruf zu dir, Herr Jesus Christ"
 mutopiacomposer = "Anonymous"
 mutopiainstrument = "Organ"
 date = "18th C."
 source = "audio transcription"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Kilian A. Foth"
 lastupdated = "2005/May/10"
 moreInfo = "Falsely ascribed to J. S. Bach"
 
 footer = "Mutopia-2005/08/07-578"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

% Sopran
S = \relative c'' {
  r4. c16 bes c8 bes|as g16 as f8 g16 as bes8 g|
  \repeat volta 2 {
    as g16as f8g as g|
    as4 r8 a bes b|c4 r8 b16c d8 b|c4 r8 b c b|c2.(|
    c8) bes16c as8c des bes|c bes as bes c bes|c d16 e f8 es d g|
    e d16c c'8 es,es16d es8|d16 c bes8bes'des,des16c des8|
    c16 bes as8as'c,c16bes c8|bes16as g8g'bes,bes16as bes8|
    as16 g f8 f'as,as16 g as8|as4 g r|f16 g as bes c8f,es'!16des c bes|
    c8 f,16 as32 c f2(|f8)c f g16as g8.f16|f8e16d e8 c16 bes c8 bes|
    as g16 as f8 g16as bes8g|as g16as f8g as g|
    as4 r8 a bes b|c4 r8 b16c d8 b|c4 r8 b c b|c2.(|
    c8) bes16c as8c des bes|c bes as bes c bes|c d16e f8 es d g|
    e d16c c'8 es,es16d es8|d16 c bes8bes'des,des16c des8|
    c16 bes as8as'es as,f'|bes,16as g f es8 bes' as4(|as16)g f e f8f'4 es8|
    des16c bes a bes8e4f8| g16f e d c8c16bes c8bes|as g16as f8 as bes g 
  }
  as g16as f8f'es des|c8 bes16c as8 es'as,es'|
  ges16f es des es8 as,16g as8as16g|as4.es'8as,es'|
  ges16f es des f es des c es des c bes|c bes c des es8des c bes16c|
  des16as des f as8 des,c bes|as16es f g as bes c des es4(|
  es8)des16c des4.c16 des|c8 bes16 c as8es'as,es'|
  f8 es16des es8as,des as|c bes16c as8c f,c'|
  es16des c bes c8f,16e f8f16e|f4.c'8f,c'|
  es16des c bes des c bes as c bes as g|as8g16f e8f16g as8 bes|
  c8d16e f8e16d e8d16e|f8e16f g f e d c8 f|des!16c bes as bes8 des4c16bes|
  as8g16as f8c'f,c'|es16des c bes c8f bes,f'|as,g16as f8as c f(|
  f16)es d c bes8f' es4(|es8)d16c d c d es f8d|es bes16g es8bes'es,bes'|
  c bes16as bes8es as,es'|g, f16g es8g bes es(|
  es16)des c bes as8 es'4 as,8|des16 c bes as g8des'4g,8|
  as16es as c es as,c es as g f es|f as,des f as des,f as des8f,|
  es16as,c es as es c as des4|c16f,as c f c as f as'4|
  c,16f,as c f c as f f'4(|f8)e16d e d e f e8d16e|f8c16as f8c'f,c'|
  des c16bes c8f bes,f'|as,16g f8g4.f16g|f4.g16a bes8c|
  des c16des bes8c16d es8f|g f16g es8f16g as8bes|c bes16c as8c16bes as8g|
  f es16 f des8bes'16as g8 f|e d16c c'8 es,es16d es8|
  d c16 bes bes'8des,des16c des8|c bes16 as as'8c,c16bes c8|
  bes as16 g g'8bes,bes16as bes8|as16g f8bes16as g8c16bes as8|
  des bes as4\grace{g16[as]}g4|f2.
}

% Alt
A = \relative c'' {
  R2.|R|
  \repeat volta 2 {
    R|r4.g16f g8f|es d16es c8d16es f8d|es d c d es d|
    es d16es c8d es e|f2.(|f)(|f4.)c'8f,d'!|c8 r4 c8c16bes c8|
    bes r4 bes8 bes16as bes8|as r4 as8as16g as8|g r4 g8 g16f g8|
    f r4 f8 f16e f8| e2 r4|R2.*6|
    r4.g16f g8f|es d16es c8d16es f8d|es d c d es d|
    es d16es c8d es e|f2.(|f)(|f4.)c'8f,d'|c r4 c8 f,c'|
    bes r4 bes8es,bes'|as r r4 r4|R2.|R|R|R|R|
  }
  R|R|r4.es8as,es'|f es16des es8as,16g as8c|
  es16 des c bes des c bes as c bes as g|as4r2|
  R2.*6|r4.
  c8f,c'|des c16bes c8 f16 es des8c16bes|
  c16 bes as g bes as g f as g f e|f4r2|
  R2.*22|
  r8c'16bes a8bes16c des8es|f es16f des d es16f g8as|
  bes8as16bes g8as16bes c8des|es8des16es c8es16des c8bes|
  as g16as f8des'16c bes8as|g4r8c f,c'|bes r4 bes8 es,bes'|
  as r4 as8 c,as'|g r4 g8 c,g'|f4e f(|f2)(f8)e8|c2.
}

% Tenor
T = \relative c' {
  R2.|R|
  \repeat volta 2 {
    R|R|R|R|R|R|R|R|R|R|R|R|R|r2c8bes|
    as2 bes4|as4.g8f g|as2 bes8. as32 bes|c2.(|c2)r4|
    R2.|R|R|R|R|R|R|R|R|R|r2c8des|
    es4.des8c bes|as2bes8c|des2(des8)c16des|c2.(|c2)r4|
    R2.|R|R|R|R|r2es4|f2es8des|\grace{des8}c2as8bes|
    \grace{bes8}c4\grace{bes16[c]}bes4.as16bes|as2.(|as2)r4|
    R2.|R|R|R|r2c4|c2c4|bes2as4|g2(g8)f16g|f2.(|f2)r4|R2.|
    as2g4|\grace{f16[es]}f2(f8)es16f|es2.(|es2)r4|r2es4|as2as4|bes2bes4|c2r4|
    r2des4|c2bes4|as4.g8f4|as2bes8as|\grace{g16[f]}g2.|f2.(|f2)r4|
    R2.*13
  }
}

% Baß
B = \relative c {
  f4 f, e'|f f, e'|
  \repeat volta 2 {
    f4. e8 f e|f4 es d|c r g|c4. g'8 c, g'|c,4 r c'8bes|
    as8 g16 as f8 as bes g|as g f g as g|as4. a8 bes b|c4 a, a'|bes g, g'|
    as f, f'|g e, e'|f r b,|c2 r4|f4 f, e'|f f, f'(|f) es des|c2 e4|
    f f, e'|f4. e8 f e|f4 es d|c r g|c4. g'8 c, g'|c,4 r c'8bes|
    as8 g16 as f8 g16 as bes8 g|as g f g as g|as4. a8 bes b|c4 a, a'|
    bes g, g'|as as, as'|g g, as'|f f, bes8as|g4 bes' g|e r e|f f, e'|
  }
  f r g|as c,8 as'c,as'|des,as'c,as'c,as'|des,as'c,as'c,as'|
  des,as'es as es g|as4 r as,|des r es|f r c8 des|es4 r es,|
  as r8 as' c, as'|des, as' c, as' bes, as'|as,4. f'8 as, f'|
  bes, f' as,f'as,f'|bes,f'as,f'bes,f'|bes,f'c f c e|f4 r e|e d c|
  d e f|bes, g e'|f4. f8 as,f'|bes,f'as,f'g,f'|f,4 r f'|d r es|
  as, f bes|g4. es'8g,es'8|as,es'g,es'f,es'|es,4 r des'|c r f|bes,r es4|
  as, r4 c|des r f8g|as4 r bes|f2 r4|f r des8 c|bes4 r c8 bes|
  as4. f'8 as,f'|bes,f'as,f'g,f'|f,4 bes c|f,4.es'8des c|bes4. as'8g f|
  es4. des'8c bes|as4 as, as'|des des,g|c a,a'|bes g,g'|as f,f'|g e,e'|
  f g as|bes c c,|f2.\bar"|."
}

\score { << 
  \time 3/4
  \new PianoStaff <<
    \new Staff { \key f \minor << \S \\ \A >> }
    \new Staff { \key f \minor \clef alto \T }
  >>
  \new Staff { \key f \minor \clef bass \B }
>> 

\layout { }
\midi { \tempo 4 = 80 }

}



