\version "2.18.2"
\language "english"

\header {
 title="The Stars and Stripes Forever."
 subtitle="March."
 composer="JOHN PHILIP SOUSA."

 mutopiatitle = "The Stars and Stripes Forever"
 mutopiacomposer = "SousaJP"
 mutopiainstrument = "Piano"
 date = "1896"
 source = "Cincinnati: The John Church Company, 1897"
 style = "March"
 maintainer = "Benjamin Bloomfield"
 maintainerEmail = "bhb123@gmail.com"

 license = "Public Domain"

 footer = "Mutopia-2017/11/06-626"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white "ǀ" \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {"ǀ" "ǀ"}}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " — " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "Public Domain" " by the typesetter " " — free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white "ǀ" }}}
 tagline = ##f
}

\paper {
  %#(set-paper-size "a4")      %uncomment to test specific paper size
  %#(set-paper-size "letter")  %uncomment to test specific paper size
  ragged-last-bottom = ##f
  oddFooterMarkup = \markup { \column {
      \fill-line { \on-the-fly #first-page \column { \vspace #1 \fromproperty #'header:copyright } }
    }
  }
}

upper = \relative c'' {
  \clef treble
  \key ef \major
  \time 2/2
  <ef ef,>2^^ <d d,>4. <ef ef,>8 | %1
  <c c,>4 <ef ef,>2^^ <f f,>4 | %2
  <gf gf,>^^ <g g,>^^ <af af,>^^ <a a,>^^ | %3
  <bf bf,>^^ r bf,2 | %4
  \break

  \repeat volta 2
  {
    <bf g'>4^^ r8 <bf g'> <b g'>4 <b g'> | %5
    <c g'> r8 <c g'>8 <c af'>4 <c af'> | %6
    f8[( e) f-. g-.] f4-. ef-. | %7
    \acciaccatura ef8 d4-. c-. d-. bf-. | %8
    <bf bf'>^^ r8 <bf bf'> <bf bf'>4 <bf bf'> | %9
    \break

    <bf bf'> r8 <bf bf'> <b b'>4 <b b'> | %10
    <c c'>8^>[( b') c-. ef-.] d4^> <c c,> | %11
    <b b,>2. <b b,>4 | %12
    <bf? bf,?> r8 bf ef4-. r8 c-. | %13
    bf4-. a-. bf-. g-. | %14
    f^> \stemUp bf,8^>[_( a] bf[ a] bf4) | %15
    \break

    \stemDown f'4^> \stemUp bf,8^>[_( a] bf[ a] bf4) | %16
    \stemNeutral <bf bf'> r8 bf'-. ef4-. r8 c-. | %17
    bf4-. a-. bf-. gf-. | %18
    f^^ \phrasingSlurDown a,8^>[\( g] a[ g] a4 | %19
  }
  \alternative
  {
    {
      bf4\) r bf2^^ | %20
    }
    {
      bf4 r <bf bf'>4.^^( <af af'>8) | %21
    }
  }
  \break

  \repeat volta 2
  {
    <g g'>2 <c c'>4.( <bf bf'>8) | %22
    <d d,>2 <c c,> | %23
    <bf bf,> <af af'> | %24
    <g g'> <f f'>4.( <g g'>8) | %25
    <af af'>4 <c c'>2 <ef ef'>4 | %26
    <f f'>2 <ef ef'> | %27
    <g g,>1( | %28

    \pageBreak
    % begin page 2

    <f f,>2) <bf bf,>4.( <af af,>8) | %29
    <g g,>2 <c c,>4.( <bf bf,>8) | %30
    <d, d,>2 <c c,> | %31
    <bf bf,> <af af'> | %32
    <g g'> <f f'>4.( <g g'>8) | %33
    <af af'>4( <c c'> <f f'>4. <ef ef'>8) | %34
    <g g,>4( <bf bf,> <ef, ef,>4. <g g,>8) | %35
    \break

    <f f,>1\( | %36
  }
  \alternative
  {
    {
      <ef ef,>4\) r <bf bf'>4.^^( <af af'>8) | %37
    }
    {
      <ef ef'>4 r ef'2 | %38
    }
  }
  \bar "||"
  \key af \major
  ef2 df4( c) | %39
  c2 b4( c) | %40
  c1~ | %41
  c2 b4^>( c) | %42
  \break

  c2 b4^>( c) | %43
  ef2 c4.^>( ef8) | %44
  df1^( | %45
  bf2) bf | %46
  bf \stemUp a4^>_( bf) | %47
  \stemDown bf2 \stemUp a4^>_( bf) | %48
  \stemNeutral df1~ | %49
  \break

  df2 c4( bf) | %50
  c ef2.^^ | %51
  <f df af> f4^( | %52
  bf,1)~ | %53
  bf2 ef | %54
  ef df4( c) | %55
  c2 b4( c) | %56
  \break

  c1~ | %57
  c2 b4^>( c) | %58
  c2 b4( c) | %59
  df4^( c bf4. g'8) | %60
  bf,1^( | %61
  af2) af | %62
  af g4^> af | %63
  \break

  cf2^( bf4 af) | %64
  <af af'>1~ | %65
  <af af'>4 af^( bf c | %66
  ef8) r af,4^( bf c | %67
  ef8) r ef,4^( f c' | %68
  bf1)^( | %69
  af4) r r2 | %70

  \pageBreak

  % begin page 3

  \repeat volta 2
  {
    r1 | %71
    r2 <f f'>4^^ <e e'>^^ | %72
    r2 <f f'>4^^ <g g'>^^ | %73
    <e e'>2 r | %74
    r1 | %75
    \break

    r2 <af af'>4^^ <g g'>^^ | %76
    r2 <af af'>4^^ <bf bf'>^^ | %77
    <g g'>2
    <<
      \stemUp {
        ef8[^( g bf df] | %78
        ff4.^^) <ff bf, af>8^. <ff bf, af>4^. <ff bf, af>^. | %79
        <ff bf, g>^. ef^. d^. df^. | %80
      }
      \\
      \stemDown {
        s2 | %78
        ff,4._^ ff8_. ff4_. ff_. | %79
        ff_. ef_. d_. df_. | %80
      }
    >>
    \break

    <<
      \stemUp {
        c'4 cf bf a | %81
        af gf f8[^( a c ef] | %82
        gf4.^^) <gf c, bf>8^. <gf c, bf>4^. <gf c, bf>^. | %83
        <gf c, a>^. f^. e^. ef^. | %84
        d^. df^. c^. cf^. | %85
      }
      \\
      \stemDown {
        c,4 cf bf a | %81
        af gf s2 | %82
        gf'4. gf8 gf4 gf | %83
        gf f e ef | %84
        d df c cf | %85
      }
    >>
    \break

    <<
      \stemUp {
        bf'4^. af^. g8[^( bf ef g] | %86
        bf4.^^) <bf af ff df>8^. <bf af ff df>4^. <bf af ff df>^. | %87
        <bf g ef df>^^ <bf g ef df>^^ \stemDown g,8[^( bf ef g] | %88
        \stemUp bf4.^^) <bf af ff df>8^. <bf af ff df>4^. <bf af ff df>^. | %89
        <bf g ef df>^^ <bf g ef df>^^
      }
      \\
      \stemDown {
        bf,,4 af s2 | %86
        bf'4._^ bf8 bf4 bf | %87
        ef,_^ ef_^ s2 | %88
        bf'4._^ bf8 bf4 bf | %89
        ef,_^ ef_^
      }
    >>
    g8[^( bf ef g] | %90
    \break

    <bf bf,>4.^^) <bf bf,>8( <a a,>4.^^) <a a,>8( | %91
    <af? af,?>4.^^) <af af,>8( <g g,>4.^^) <g g,>8( | %92
    <gf gf,>4.) <gf gf,>8( <f f,>4.^^) <f f,>8( | %93
    <ff ff,>4) <ef ef,>^^ <f f,>^^ ef^^ | %94
    \bar "||"
    <ef ef'>2 <df df'>4( <c c'>) | %95
    <c c'>2 <b b'>4( <c c'>) | %96

    \pageBreak

    % begin page 4

    <c c'>1~ | %97
    <c c'>2 <b b'>4^>( <c c'>) | %98
    <c c'>2 <b b'>4^>( <c c'>) | %99
    <ef ef'>2 <c c'>4.( <ef ef'>8) | %100
    <df df'>1( | %101
    <bf bf'>2) <bf bf'> | %102
    \break

    <bf bf'>2 <a a'>4^>( <bf bf'>) | %103
    <bf bf'>2 <a a'>4^>( <bf bf'>) | %104
    <df df'>1~ | %105
    <df df'>2 <c c'>4 <bf bf'> | %106
    <c c'>4 <ef ef'>2. | %107
    <f f'>^^ <f f'>4 | %108
    \break

    <bf bf,>1~ | %109
    <bf bf,>2 <ef ef,> | %110
    <ef ef,> <df df,>4( <c c,>) | %111
    <c c,>2 <b b,>4( <c c,>) | %112
    <c c,>1~ | %113
    <c c,>2 <b b,>4^>( <c c,>) | %114
    \break

    <c c,>2 <b b,>4^>( <c c,>) | %115
    <df df,>( <c c,> <bf bf,>4. <g g'>8) | %116
    <bf bf,>1( | %117
    <af af,>2) <af af,> | %118
    <af af,>^( <g g,>4 <af af,>) | %119
    <cf cf,>2( <bf bf,>4 <af af,>) | %120
    \break

    <af af'>1~ | %121
    <af af'>4 <af af,>( <bf bf,> <c c,> | %122
    <ef ef,>8) r <af, af,>4( <bf bf,> <c c,> | %123
    <ef ef,>8) r <ef, ef,>4^( <f f,> <c c'> | %124
    \phrasingSlurUp <bf bf'>1)\( | %125
  }
  \alternative
  {
    {
      <af af'>4\) r r2 | %126
    }
    {
      <af af'>4 r <af c ef af>^> r | %127
    }
  }
  \bar "|."
}

lower = \relative c {
  \clef bass
  \key ef \major
  \time 2/2
  <ef ef,>2^^ <d d,>4. <ef ef,>8 | %1
  <c c,>4 r <c ef c'>2^^ | %2
  <cf ef cf'>2^^ <cf ef cf'>^^ | %3
  <bf d f bf>4 r r2 | %4
  \break

  \repeat volta 2
  {
    <<
      \stemUp {
        c'4\rest <bf g> c\rest <g f> | %5
        c\rest <c g ef> c\rest <c af> | %6
        c\rest <bf f> a\rest <a f> | %7
        c\rest <bf f> f'\rest <d bf> | %8
        d\rest <ef bf> c\rest <af bf> | %9
      }
      \\
      \stemDown {
        ef2_> d_> | %5
        c f | %6
        d_> c_> | %7
        bf_> af'_> | %8
        g f | %9
      }
    >>
    \break

    <<
      \stemUp {
        c'4\rest <bf g> c\rest <b g> | %10
        c\rest <c g> c\rest <g c> | %11
      }
      \\
      \stemDown {
        ef2 d | %10
        c ef | %11
      }
    >>
    g,4 <g' b d> <g b d> <g b d> | %12
    ef <g bf?> bf, <g' bf> | %13
    ef <g bf> bf, <g' bf> | %14
    d <af' bf> bf, <af' bf> | %15
    \break

    d, <af' bf> bf, <af' bf> | %16
    ef <g bf> bf, <g' bf> | %17
    ef <g bf> bf, <bf' ef> | %18
    f <c' ef> f, <c' ef> | %19
  }
  \alternative
  {
    {
      <bf d>4 r <bf f d bf>2^^ | %20
    }
    {
      <bf d>4 r <bf f d bf>2 | %21
    }
  }
  \break

  \repeat volta 2
  {
    ef,4 <g bf> bf, <g' bf> | %22
    f <af bf> bf, <af' bf> | %23
    d, <af' bf> bf, <af' bf> | %24
    ef <g bf ef> <g bf ef> <g bf ef> | %25
    af, <af' c ef> <af c ef> <af c ef> | %26
    a, <a' c ef> <a c ef> <a c ef> | %27
    bf, <bf' ef> ef,^> <g bf ef> | %28

    \pageBreak
    % begin page 2 (lower)

    d^> <af' bf d> <bf f d bf>2 | %29
    ef,4 <g bf> bf, <g' bf> | %30
    f <af bf> bf, <af' bf> | %31
    d, <af' bf> bf, <af' bf> | %32
    <<
      \stemUp {
        c4\rest <bf g> c\rest <bf g> | %33
        c\rest <af ef> c\rest <af ef> | %34
      }
      \\
      \stemDown {
        ef2 df | %33
        c cf | %34
      }
    >>
    bf4 <g' bf ef> <g bf ef> <g bf ef> | %35
    \break

    bf, <af' bf d> <af bf d> <af bf d> | %36
  }
  \alternative
  {
    {
      <ef g bf>4 r <bf d f bf>2^^ | %37
    }
    {
      <ef g bf>4 r r2 | %38
    }
  }
  \bar "||"
  \key af \major
  af,4^> <af' c ef> <af c ef> ef^> | %39
  af,^> <af' c ef> <af c ef> ef^> | %40
  af,^> <af' c ef> <af c ef> ef^> | %41
  af,^> <af' c ef> <af c ef> ef^> | %42
  \break

  af,^> <af' c ef> <af c ef> ef^> | %43
  af,^> <af' c ef> <af c ef> ef^> | %44
  bf^> <g' df' ef> <g df' ef> ef^> | %45
  bf^> <g' df' ef> <g df' ef> ef^> | %46
  bf^> <g' df' ef> <g df' ef> ef^> | %47
  bf^> <g' df' ef> <g df' ef> ef^> | %48
  bf^> <g' df' ef> <g df' ef> ef^> | %49
  \break

  bf^> <g' df' ef> <g df' ef> ef^> | %50
  af,^> <af' c ef> <af c ef> <af c ef> | %51
  df,^> <af' df f> <af df f> <af df f> | %52
  ef^> <g bf ef> bf,_> <g' bf ef> | %53
  g,_> <g' bf ef> ef^> <g bf ef> | %54
  af,^> <af' c ef> <af c ef> ef^> | %55
  af,^> <af' c ef> <af c ef> ef^> | %56
  \break

  af,^> <af' c ef> <af c ef> ef^> | %57
  af,^> <af' c ef> <af c ef> ef^> | %58
  <g g,>_> <bf c e> <bf c e> c,^> | %59
  <g g'>_> <bf' c e> <bf c e> c,^> | %60
  f^> <bf c f> <bf c f> c,^> | %61
  f^> <af c f> <af c f> c,^> | %62
  ff <af df> <af df> <af df> | %63
  \break

  ff <af cf> <af cf> <af cf> | %64
  ef <c'? ef> af, <c' ef> | %65
  c, <c' ef> ef, <c' ef> | %66
  c, <c' ef> ef, <c' ef> | %67
  af <c ef> c <ef af> | %68
  g, <df' ef> ef, <df' ef> | %69
  <af c ef> r <af af,>^> <af af,>^> | %70

  \pageBreak

  % begin page 3 (lower)

  \repeat volta 2
  {
    <af af,>4^^( <g g,>8) r <g g,>4^^( <f f,>8) r | %71
    <f f,>4^^ <e e,>^^ r2 | %72
    <f f,>4^^ <e e,>^^ <df f bf> <df f bf> | %73
    <c e g c>2 <c c'>4^^ <c c'>^^ | %74
    <c c'>( <bf bf'>8) r <bf bf'>4( <af af'>8) r | %75
    \break

    <af af'>4^^ <g g'>^^ r2 | %76
    <af af'>4^^ <g g'>^^ <ff' af df> <ff af df> | %77
    <ef g bf ef>2 r | %78
    s1 | %79
    s1 | %80
    \break

    s1 | %81
    s2 r4 r4 | %82
    s1*3
    \break

    s2 r4 r4 | %86
    s1 | %87
    s2 r2 | %88
    s1 | %89
    s2 r | %90
    \break

    <bf bf'>4. <bf bf'>8( <a a'>4.^^) <a a'>8( | %91
    <af? af'?>4.^^) <af af'>8( <g g'>4.^^) <g g'>8( | %92
    <gf gf'>4.^^) <gf gf'>8( <f f'>4.^^) <f f'>8( | %93
    <ff ff'>4) <ef ef'>^^ <f f'>^^ <ef ef'>^^ | %94
    \bar "||"
    af4 <af' c ef> <af c ef> ef | %95
    af, <af' c ef> <af c ef> ef | %96

    \pageBreak
    % begin page 4 (lower)

    af, <af' c ef> <af c ef> ef | %97
    af, <af' c ef> <af c ef> ef | %98
    af, <af' c ef> <af c ef> ef | %99
    af, <af' c ef> <af c ef> ef | %100
    bf <g' df' ef> <g df' ef> ef | %101
    bf <g' df' ef> <g df' ef> ef | %102
    \break

    bf <g' df' ef> <g df' ef> ef | %103
    bf <g' df' ef> <g df' ef> ef | %104
    bf <g' df' ef> <g df' ef> ef | %105
    bf <g' df' ef> <g df' ef> ef | %106
    af, <af' c ef> <af c ef> <af c ef> | %107
    df, <af' df f> <af df f> <af df f> | %108
    \break

    ef <g bf ef> bf, <g' bf ef> | %109
    g, <g' bf ef> ef <g bf ef> | %110
    af, <af' c ef> <af c ef> ef | %111
    af, <af' c ef> <af c ef> ef | %112
    af, <af' c ef> <af c ef> ef | %113
    af, <af' c ef> <af c ef> ef | %114
    \break

    <g g,> <bf c e> <bf c e> c, | %115
    <g g'> <bf' c e> <bf c e> c, | %116
    f <bf c f> <bf c f> c, | %117
    f <af c f> <af c f> c, | %118
    ff <af df> <af df> <af df> | %119
    ff <af cf> <af cf> <af cf> | %120
    \break

    ef <c' ef> af, <c' ef> | %121
    c, <c' ef> ef, <c' ef> | %122
    c, <c' ef> ef, <c' ef> | %123
    af <c ef> c <ef af> | %124
    g, <df' ef> ef, <df' ef> | %125
  }
  \alternative
  {
    {
      <af c ef> r <af af,>^> <af af,>^> | %126
    }
    {
      <af c ef> r <af, af,>_> r | %127
    }
  }
  \bar "|."
}

dynamics = {
  s1\ff | %1
  s1*3
  s4\mf s2\< s4\! | %5
  s1*4
  s1*2 |
  s2 s4.\> s8\! | %12
  s1\p | %13
  s1 |
  s1\f | %15
  s1 |
  s1\p | %17
  s1 |
  s1\f | %17
  s1 |
  s2 s2\ff | %21
  s1\ff | %22
  s1*6

  % begin page 2
  s1*7
  s1 |
  s2 s2\ff | %37
  s2 s2\p | %38
  s1\p | %39
  s1*3
  s1*7
  s1*7
  s1*3 |
  s2\< s2\! | %60
  s1*3
  s4. s4.\< s4\! | %64
  s1 |
  s4 s2\< s8 s8\! | %66
  s4 s2\< s4\! | %67
  s4 s4.\< s4.\! | %68
  s1*2

  % begin page 3
  s1\f | %71
  s1*4
  s1*2 |
  s2 s4.\< s8\! | %78
  s1*2
  s1*5
  s1*5
  s2 s4.\< s8\! | %91
  s1*2 |
  s8 s2\< s4.\! | %94
  s32 s32*7\ff \once \override TextScript.extra-offset = #'( -1 . -1.5 )
  s2.^\markup { \italic \fontsize #0 grandioso. } | %95
  s1

  % begin page 4
  s1*6
  s1*4 |
  s8 s2\< s4.\! | %107
  s1
  s1*6
  s1*6
  s1*7
}

pedal = {
}
#(set-global-staff-size 19.5)
\score {
  \context PianoStaff <<
    \context Staff=upper \upper
    \context Dynamics=dynamics \dynamics
    \context Staff=lower <<
      \clef bass
      \lower
    >>
    \context Dynamics=pedal \pedal
  >>
  \layout {
  }
}
\score {
  \unfoldRepeats
  \context PianoStaff <<
    \context Staff=upper << \upper \dynamics >>
    \context Staff=lower << \lower \dynamics >>
    \context Dynamics=pedal \pedal
  >>
  \midi { \tempo 4=240
          \context {
            \type "Performer_group"
            \name Dynamics
            \consists "Piano_pedal_performer"
          }
          \context {
            \PianoStaff
            \accepts Dynamics
          }
  }
}


%{
Version history:
2005/11/09 original 2.6.0 by bhb123
2013/05/27 headers by glenl.glx at gmail dot com
2017-11-03 2.18.2 by gmail's jjocanoe

Notes:
Updated from 2.6.0 to 2.18.2 by gmail's jjocanoe on 2017-11-03
leaving breaks as-is (so pdf should look the same) but broke down
long lines into one measure per line (so source diffs are extensive).

convert-ly.py (GNU LilyPond) 2.18.2  convert-ly.py: Processing `'...
Applying conversion: 2.7.0, 2.7.1, 2.7.2, 2.7.4, 2.7.6, 2.7.10,
2.7.11, 2.7.12, 2.7.13, 2.7.14, 2.7.15, 2.7.22, 2.7.24, 2.7.28,
2.7.29, 2.7.30, 2.7.31, 2.7.32, 2.7.32, 2.7.36, 2.7.40, 2.9.4, 2.9.6,
2.9.9, 2.9.11, 2.9.13, 2.9.16, 2.9.19, 2.10.0, 2.11.2, 2.11.3, 2.11.5,
2.11.6, 2.11.10, 2.11.11, 2.11.13, 2.11.15,  Not smart enough to
convert VerticalAlignment #'forced-distance. Use the `alignment-
offsets' sub-property of NonMusicalPaperColumn #'line-break-system-
details to set fixed distances between staves. 2.11.23, 2.11.35,
2.11.38, 2.11.46, 2.11.48, 2.11.50, 2.11.51, 2.11.52, 2.11.53,
2.11.55, 2.11.57, 2.11.60, 2.11.61, 2.11.62, 2.11.64, 2.12.0, 2.12.3,
2.13.0, 2.13.1, 2.13.4, 2.13.10, 2.13.16, 2.13.18, 2.13.20, 2.13.27,
2.13.29, 2.13.31, 2.13.36, 2.13.39, 2.13.40, 2.13.42, 2.13.44,
2.13.46,  Vertical spacing changes might affect user-defined contexts.
Please refer to the manual for details, and update manually. 2.13.48,
2.13.51, 2.14.0, 2.15.7, 2.15.9, 2.15.10, 2.15.16, 2.15.17, 2.15.18,
2.15.19, 2.15.20, 2.15.25, 2.15.32, 2.15.39, 2.15.40, 2.15.42,
2.15.43, 2.16.0, 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11, 2.17.14,
2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27, 2.17.29,
2.17.97, 2.18.0
%}
