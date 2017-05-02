\version "2.18.2"
\language "english"

\header {
  title = "Ich lade gern mir Gäste ein"
  subtitle = \markup {"Aria from" \italic "Die Fledermaus"}
  poet = "Richard Genée"
  date = "1874"
  source = "Friedrich Schreiber, 1875"
  style = "Romantic"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Adriane C. Fox"
  maintainerEmail = "AdriCFox(@)usca.edu"

  mutopiatitle = "Ich lade gern mir Gäste ein (Aria from Die Fledermaus)"
  mutopiacomposer = "StraussJJ"
  mutopiainstrument = "Voice and Piano"

 footer = "Mutopia-2017/04/30-2178"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2017 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

\paper {
  % #(set-paper-size "letter")
  min-systems-per-page = 4

}

global = {
  \key df \major
  \time 2/2
  \tempo "Allegro non troppo"
}

marcatoP = #(make-dynamic-script
            (markup  #:dynamic "p"
                     #:normal-text "marcato" ))
                    

mezzoSopranoVoice = \relative c'' {
  \global
  \dynamicUp
  
  % A
  
  R1*2 \bar ".|:" 
  \repeat volta 2 
  { 
    R1
    r2 r4^\markup {\smallCaps "Orlofsky."} df4
    af8(df) af4 gf bf
    f af ef r8 ef
    f4 af bf bf16(gf') r8
    af,2. df4
    af8(df)  af4 gf bf 
    f af ef r8 ef
    f4 af bf bf16(gf') r8
    af,2 r4 r8 af'8
    ef4 ef df8(f) df4
    c8(ef) c4 bf4. af'8
    c,4 c bf bf
    af r r r8 af'
    ef4. ef8 df(f) df4
    c8(ef) c4 bf4 r8 af'8
    c,4 c bf bf
  
    % B
  
    af r^\markup {\italic "poco meno"} r r8 df,
    df4. ef8 f4. f8
    f4 \grace gf8 (f8.)(e16) f4 r8 f
    f4. gf8 af4. bf8
    gf2 r4 ef4
    ef4.\< f8 gf4. c8\!
    ef4 \grace ef8 (df8.)(c16) df4 f,
    bf \grace bf8 (af8.) (g16) af4 ef
    f2 r4 f
    ef4.\< f8 gf4. c8\!
    ef4 \grace ef8 (df8.)(c16) df4 f,
    bf \grace bf8 (af8.) (g16) af4 c,
    df2. 
  
    % Und fragen sie...
  
    df'8(c)
    bf4 \grace c8 (bf8.) (a16) bf4 r8 f8
    bf4 bf r df8(c)
    bf4 f bf c
    af2. bf8^\markup {\italic "poco rit."}(c)
    af4 bf8(c) af4 bf8(c)
    af2.\fermata bf8^\markup {\italic "a tempo"}(af)
    gf4 \grace af8(gf8.)(f16)\< gf4 c\!
    ef4 df r df
    ef,2 bf'4 af 
    f r r bf8(af)
    gf4 \grace af8(gf8.)(f16) gf4 c
    ef df r4 df
    ef,2 bf'4 af
    df,2 r2
  
    R1
  }
  \alternative
  {
    % First ending
    { R1*2 }
    % Second ending
    { R1 R1\fermata \bar "|." }
  }
  
}

verse = \lyricmode {
     
    Ich la -- de gern mir Gä -- ste ein,
    man lebt bei mir recht fein,
    man un -- ter -- hält sich, wie man mag,
    oft bis zum hel -- len Tag.
    Zwar lang -- weil’ ich mich stets da -- bei,
    was man auch treibt und spricht;
    in -- des, was mir als Wirt steht frei,
    duld’ ich bei Gä -- sten nicht!
    Und se -- he ich, es en -- nu -- yiert
    sich je -- mand hier bei mir,
    so pack’ ich ihn ganz un -- ge -- niert,
    werf’ ihn hin -- aus zur Tür;
    so pack’ ich ihn ganz un -- ge -- niert,
    werf’ ihn hin -- aus zur Tür.
    
    Und fra -- gen Sie, ich bit -- te,
    wa -- rum ich das denn tu’?
    wa -- rum ich das denn tu’? 
    ‘S~ist mal bei mir so Sit -- te,
    \markup \italic cha -- \markup \italic cun \markup \italic à \markup \italic son \markup \italic goût!
    ‘S~ist mal bei mir so Sit -- te,
    \markup \italic cha -- \markup \italic cun \markup \italic à \markup \italic son \markup \italic goût!
    }
    
verseII = \lyricmode {
  
  Wenn ich mit an -- dern sitz’ beim Wein
  und Flasch’ um Fla -- sche leer’,
  muß je -- der mit mir dur -- stig sein,
  sonst wer -- de grob ich sehr.
  Und schen -- ke Glas um Glas ich ein,
  duld’ ich nicht Wi -- der -- spruch;
  nicht lei -- den kann ich’s, wenn sie schrein:
  Ich will nicht, hab’ ge -- nug!
  Wer mir beim Trin -- ken nicht pa -- riert,
  sich zie -- ret wie ein Tropf,
  dem wer -- fe ich ganz un -- ge -- niert
  die Fla -- sche an den Kopf.
  dem wer -- fe ich ganz un -- ge -- niert
  die Fla -- sche an den Kopf.
  }

refrain = \lyricmode {
  
    % Und fragen Sie...
  
    Und fra -- gen Sie, ich bit -- te,
    wa -- rum ich das denn tu’?
    wa -- rum ich das denn tu’? 
    ‘S~ist mal bei mir so Sit -- te,
    cha -- cun à son goût!
    ‘S~ist mal bei mir so Sit -- te,
    cha -- cun à son goût!
  
}
  

right = \relative c'' {
  \global
  
  % Intro
  
  af'4-.\p ef'-. af-. r4
  af,,-. ef'-. af-. r4
  
  % A
  
  R1*2
  <af,, df f>4-. <af df f>-. <bf df gf>-. r
  <af df f>4-. <af df f>-. <af c ef>-. r
  <af df f>4-. <af df f>-. <bf df gf>-. r
  <af df f>4-. <af df f>-. <af c ef>-. r
  <af df f>4-. <af df f>-. <bf df gf>-. r
  <af df f>4-. <af df f>-. <af c ef>-. r
  <af df f>4-. <af df f>-. <bf df gf>-. r
  <af df f>4-. <af df f>-. <af c ef>-. r
  <ef'' ef'>-. <ef ef'>-. <f df'> r
  <c c'>-. c'-. bf4.(af'8) 
  <af, c>4-. <af c>-. <bf, ef bf'>2
  <af af'>4 af'16(bf c df ef4) r
  <ef, ef'>-. <ef ef'>-. <f df'> r
  <c c'>-. c'-. bf4.(af'8) 
  <af, c>4-. <af c>-. <bf, ef bf'>2
  <af af'>4 r4 r2
  
  % B
  df,4.\p_\markup {\italic marcato}(ef8 f4.) f8
  f4 \grace gf8(f8.)(e16 f4.) f8
  <df f>4. <ef gf>8 <f af>4. <gf bf>8
  <ef gf>2. ef4 
  <c ef>4. <df f>8 <ef gf>4. c'8(
  ef4) \grace ef8(df8.)(c16 df4) r
  r \grace bf'8(af8.)(g16 af4) ef
  f2 r4 <df, f>4
  <c ef>4. <df f>8 <ef gf>4. c'8(
  ef4) \grace ef8(df8.)(c16 df4) r
  r \grace bf'8(af8.)(g16 af4) c,
  df2. 
  
  % Und fragen sie...
  
  df'8\pp(c
  bf) r \grace c(bf8.)(a16 bf8) r df(c
  bf) r \grace c(bf8.)(a16 bf8) r df(c
  bf4) <df, df'>8(<c c'><bf bf'>4) <c c'>
  <af af'>2. <bf bf'>8(<c c'>
  <af af'>4 <bf bf'>8 <c c'> <af af'>4 <bf bf'>8 <c c'>
  <af af'>2.)\fermata bf8^\markup {\italic "a tempo"}(af)
  gf4 \grace af8(gf8.)(f16)\< gf4 c\!
  ef4 df r <af, df f>
  r <af ef' gf> r <af c gf'>
  r <af df f> r bf'8(af 
  gf4) \grace af'8(gf8.)(f16) gf4 c
  <ef, ef'> <df df'> r4 <af, df f>
  <df ef>2 <c af'>4 <c af'>
  <df f> df'8\f c
  <<
    {
      \voiceOne
      bf4(<ef gf>)
      af,(<df f>) gf,(<c ef>)
    }
    \new Voice
    {
      \voiceTwo
      bf2 af gf
    }
  >>
  \oneVoice
  
  % First ending
  
  <f df'>4 r <bf, df ef> r
  <c af'> r r2
  
  % Second ending
  
  <f df'>4 r <df' f af df> r
  <f, af df> r r2\fermata  
  
}

left = \relative c' {
  \global
  af'4-. ef'-. af-. r
  af,,-. ef'-. af-. r
  \clef bass
  <df,, f af>-.\p^\markup {\italic marcato} <df f af>-. <af ef' af>-. r 
  <df f af>-. <df f af>-. <af ef' af>-. r
  <df, df'>-. <df df'>-. <gf gf'>-. r
  <df df'>-. <df df'>-. <af af'>-. r
  <df df'>-. <df df'>-. <gf gf'>-. r
  <df df'>-. <df df'>-. <af af'>-. r
  <df df'>-. <df df'>-. <gf gf'>-. r
  <df df'>-. <df df'>-. <af af'>-. r
  <df df'>-. <df df'>-. <gf gf'>-. r
  <df df'>-. <df df'>-. <af af'>-. r
  <af'' c ef>-. <af c ef>-. <af df f>2->  
  <af c ef>4-. <af c ef>-. <af df ef>2->
  <af c ef>4-. <af c ef>-. <af df ef>2->
  <af c>4 <ef ef'> <af c> r4
  <af c ef>-. <af c ef>-. <af df f>2->  
  <af c ef>4-. <af c ef>-. <af df ef>2->
  <af c ef>4-. <af c ef>-. <af df ef>2->
  <af c ef>4 af8^\markup {\italic "poco meno"}(bf af gf f ef)
  df4 <f af> af, <f' af>
  df4 <f af> af, <f' af>
  df4 <f af> af, <f' af df>
  ef <gf af c> af, <gf' af c>
  c, <ef gf af> af, <ef' gf af>
  df <f af> af, <f' af>
  c <ef gf af> af, <ef' gf af>
  df <f af> af, <f' af>
  c <ef gf af> af, <ef' gf af>
  df <f af> af, <f' af>
  c <ef gf af> af, <ef' gf af>
  <df f af> <af f' af> <df f af> r
  
  % und fragen sie
  <bf' df f>8 r <bf df f>8 r <bf df f>8 r r4
  <bf df f>8 r <bf df f>8 r <bf df f>8 r r4
  <bf df f>4 r <bf df f> r
  <af c ef>2. <gf df' gf>4^\markup {\italic "poco rit."}(
  <af c ef> <gf df' gf> <af c ef> <gf df' gf>
  <af c ef>2.\fermata) r4
  ef4 <gf af> af, <gf' af>
  df <f af> af, r
  c r af r df r af <f' af df>
  ef <gf af c> af, <ef' gf af>
  df <f af> <f, f'> r
  gf <ef' gf bf> af, <ef' gf af>
  <df f af> f' gf c, 
  f bf, ef af,
  df r <gf,, gf'>\f r
  <af gf'> r r2
  
  % second ending
  <df af' df>4 r <df f af df> r
  <df, df'>4 r r2\fermata
  
  
  
}

mezzoSopranoVoicePart = \new Staff \with {
  midiInstrument = "choir aahs"
  \consists "Ambitus_engraver"
} { \mezzoSopranoVoice }
\addlyrics { \verse }
\addlyrics { \verseII }

pianoPart = \new PianoStaff <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef treble \left }
>>

\score {
  <<
    \mezzoSopranoVoicePart
    \pianoPart
  >>
  \layout { }
  \midi {
    \tempo 4=144
  }
}
