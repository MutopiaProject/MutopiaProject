\version "2.18.2"

\header {
title = "Sonatina"  composer = " M. Clementi, Opus 36 No. 1"
mutopiatitle = "Sonatina"
mutopiacomposer = "ClementiM"
mutopiaopus = "O 36"
mutopiainstrument = "Piano"
date = "19th C."
source = "Sonatina Album, G. Schirmer, Inc.  Copyright 1893"
style = "Classical"
license = "Public Domain"
maintainer = "Brian D. Rude"
maintainerEmail = "brianrude@hotmail.com"
maintainerWeb = "brianrude.com"

 footer = "Mutopia-2016/11/30-804"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}


\paper {
%    #(set-paper-size "letter")
%    #(set-paper-size "a4")
 ragged-bottom=##f
 ragged-last-bottom=##f
}


    upperfirst = \relative c'' {
       \clef treble
       \key c \major
       \time 2/2

    \repeat volta 2 {               % begin part 1, treble
    c4^\markup {Spiritoso} e8 c g4 g    %1t
    c e8 c g4 g'            %2t
    f8 e d c b c b c            %3t
    d c b a g4 r            %4t
    c e8 c g4 g            %5t
    e' g8 e c4 e8 c            %6t
    d b c a b g a fis            %7t
    g a b c d e fis g            %8t
    a,4 a' a a                %9t
    b,8 c d e fis g a b            %10t
    c,4 c' c c                 %11t
    d,8 g b d c b a g            %12t
    fis e g fis a g fis e            %13t
    e d c b d c b a            %14t
    g2 r         }        %15t
    \repeat volta 2 {    b4 d8 b g4 g    %16t
    c ees8 c g4 g'            %17t
    f d ees c                %18t
    b8 c d b g4 g            %19t
    g'8 g, g' g, g' g, g' g,        %20t
    g' g, g' g, g' g, g' g,            %21t
    d' ees f d f ees d c            %22t
    <b g'>4 r r2            %23t
    c,4 e8 c g4 g            %24t
    c e8 c g4 g'            %25t
    f8 e d c b c b c            %26t
    d c b a g4 r            %27t
    c g8 c e4 e            %28t
    e c8 e g4 c            %29t
    <e, g> <d f> <c e> <b d>        %30t
    c8 d e f g a b c            %31t
    d,4 d' d d                %32t
    e,8 f g a b c d e            %33t
    f,4 f' f f                %34t
    g,8 c e g f e d c            %35t
    a' g f e d c b a            %36t
    g a f g e f d e            %37t
    c4 r r2        }          %38t
            }    % end part 1 treble

uppersecond = \relative c'' {\clef treble   \key f \major       \time 3/4
    \tupletSpan 4


                % begin part 2, treble
    c2^\markup {Andante} f4                %1t
    a,2 c4                        %2t
    f,2 g4^\trill   \grace {f16[ g]}                %3t
    a4 \tuplet 3/2 {f8[ a c] f f f}                %4t
    d4 \tuplet 3/2 {f,8[ bes d] f f f}                %5g
    c4 \tuplet 3/2 {a'8[ g f] e d c                %6t
    c[ e, g] c[ f, a] c[ f, a]}                %7t
    c8. a16 g4 r                    %8t
    \tuplet 3/2 {<d' f>8[ <d f> <d f>] <c e>[ <c e> <c e>] <b d> <b d> <b d>}        %9t
    g'4 \tuplet 3/2 {g,8[ a b] c d e                %10t
    a,[ f' d] <e, c'>[ <e c'> <e c'>] <d b'> <d b'> <d b'>}    %11t
    <f d'>2 <e c'>4                    %12t
    \tuplet 3/2 {c'8[ c c] ees[ d c] bes a g            %13t
    fis[ a d,] g[ bes d,] a' c d,                %14t
    bes'[ bes bes] d[ c bes] a g f                 %15t
    e[ g c,] f[ a c] <a c> <g bes> <f a>}            %16t
    <f a>4 \tuplet 3/2 {<e g>8[ <a c> <a c>] <a c> <g bes> <f a>}        %17t
    <f a>4 <e g> r                    %18t
    c'2 f4                        %19t
    a,2 c4                        %20t
    ees,2 ees4^\trill  \grace {d16[ ees]}            %21t
    \tuplet 3/2 {d8[ f bes] d[ d d]} d4            %22t
    \tuplet 3/2 { <g, bes>8[ <g bes> <g bes>] <f a>[ <f a> <f a>] <e g> <e g> <e g>     }    %23t
    c'8. f,16 \tuplet 3/2 {f'8[ e d] c bes a            %24t
    g bes d} f,4 g^\trill  \grace {f16[ g]}            %25t
    f2.    \bar "|."        }            %26t    end second part, treble


%                                begin third part, treble
upperthird = \relative c'' {\clef treble   \key c \major       \time 3/8
    e16^\markup {Vivace} d c8 c        %1t
    g'4 f16 e            %2t
    d8 f b,            %3t
     c g g            %4t
    e'16 d c8 c        %5t
    g'4 f16 e             %6t
    d e f e f d            %7t
    c8 r r            %8t
    e16 d c8 c        %9t
     g'4 f16 e            %10t
    d8 f b,            %11t
    c g g            %12t
    e'16 d c8 c        %13t
    g'4 f16 e            %14t
    d e f e f d            %15t
    c8 r r            %16t
    g16 f e8 e        %17t
    a16 g f8 f         %18t
    d16 f b f b f        %19t
    e8 g c            %20t
    g16 f e8 e        %21t
    e'16 d c8 c        %22t
    fis,16 g a b c a        %23t
    g8 r b'16 c        %24t
    d c b a g fis        %25t
    e d c b a g        %26t
    fis g a b c a         %27t
    g8 r b'16 c        %28t
    d c b a g fis        %29t
    f8 f d'16 b        %30t
    f8 f d'16 b        %31t
    f8 r r            %32t
    d r r             %33t
     b16 g a b c d         %34t
    e16 d c8 c        %35t
    g'4 f16 e             %36t
    d8 f b,             %37t
    c g g             %38t
    e'16 d c8 c         %39t
    g'4 f16 e             %40t
    d e f e f d         %41t
    c8 r r             %42t
    e16 d c8 c        %43t
     g'4 f16 e         %44t
    d8 f b,            %45t
    c g g             %46t
    e'16 d c8 c        %47t
    g'4 f16 e             %48t
    d e f e f d         %49t
    c8 r r             %50t
    g16 f e8 e        %51t
    a16 g f8 f            %52t
    d16 f b f b f         %53t
    e8 r e'16 f        %54t
    g f e d c b            %55t
    a g f e d c            %56t
    b c d e f d            %57t
    c4 r8            %58t
    g'16 f e8 e        %59t
    a16 g f8 f            %60t
    d16 f b f b f         %61t
    e8 r e'16 f        %62t
    g f e d c b            %63t
    a g f e d c            %64t
    b c d e f d            %65t
    c8 r r             %66t
    <e g> r r             %67t
    <e g c> r r        %68t
    <e' g> r r            %69t
    <e g c>4 r8  \bar "|."    %70t    end third part, treble
    }

    lowerfirst = \relative c {
       \clef bass
       \key c \major
       \time 2/2

    \repeat volta 2 {    c4 r r2        %1b    begin first part bass
    c4 r r2                %2b
    c4 r c r                %3b
    g r g'8 f e d             %4b
    c4 r r2                %5b
    c'4 r r fis,                %6b
    g c, d d,                %7b
    g r r2                %8b
    fis'8 d' a d fis, d' a d        %9b
    g,4 r r2                %10b
    a8 d c d a d c d             %11b
    b4 r r2                %12b
     c4 r c, r                %13b
    d r d, r                %14b
    g8 b d g g,4 r    }        %15b
    \repeat volta 2 {    f''1        %16b
    ees                %17b
    b2 c                %18b
    g r                %19b
    f'4 g, d' g,            %20b
    ees' g, c g            %21b
    b r c r                %22b
    g g, g'8 f e d             %23b
    c4 r r2                %24b
    c4 r r2                %25b
    c4 r c r                %26b
    g r g8 f e d            %27b
    c4 r r2                %28b
    c'4 r r2                %29b
    g'4 r g, r                %30b
    c r r2                %31b
    b8 g' d g b, g' d g            %32b
    c,4 r r2                %33b
    d8 g f g d g f g             %34b
    e4 r r2                %35b
    f4 r f r                %36b
    g r g, r                %37b
    c,8 e g c c,4 r    }        %38b        end first part bass
    }

    lowersecond = \relative c {    \clef bass \key f \major \time 3/4
    \tupletSpan 4

                        %     begin second part bass
    \tuplet 3/2 {f8[ a c] f,[ a c] f, a c        %1b
    f,[a c] f,[ a c] f, a c                %2b
    c,[ f a] c,[ f a] c, e g                %3b
    f[ a c]} r4 r                %4b
    \tuplet 3/2 {f,8 bes d} r4 r            %5b
    \tuplet 3/2 { f,8[ a c] f,[ a c] f, a c}        %6b
    bes4 a f                    %7b
    \tuplet 3/2 { c8[ f a] c,[ e g] c, e g}        %8b
    g,2 f'4                    %9b
    \tuplet 3/2 {e8 g c} e,2            %10b
    f4 g g,                    %11b
    c, g' c                    %12b
    r4 r r                    %13b
    c' bes fis                    %14b
    g r r                    %15b
    bes a f                    %16b
    \tuplet 3/2 {c8 c' c} c4 r            %17b
    \tuplet 3/2 {c,8[ c' c] c[ d c] bes a g        %18b
    f[ a c] f,[ a c] f, a c                %19b
    f,[ a c] f,[ a c] f, a c                %20b
    f,[ a c] f,[ a c] f, a c    }            %21b
    bes2 r4                    %22b
    c,,2 bes'4                    %23b
    \tuplet 3/2 { a8[ c f] a,[ c f] a, c f        %24b
    bes,[ d g] c,[ f a] c, e g            %25b
    f,[ a c] f c a } f4        }        %26b        end second part bass

lowerthird = \relative c { \clef bass \key c \major \time 3/8

    c8 e g            %1b            begin third part bass
    c, e g            %2b
    c, d f            %3b
    c e g            %4b
    c, e g            %5b
    c, e g            %6b
    g, d' g            %7b
    c, e g            %8b
    c, e g            %9b
    c, e g            %10b
    c, d f            %11b
    c e g            %12b
    c, e g            %13b
    c, e g            %14b
    g, d' g             %15b
    c, e g            %16b
    c4 r8            %17b
    c4 r8            %18b
    c c c            %19b
    c c c             %20b
    c4 r8            %21b
    <a c>4 r8            %22b
    <d, a'> <d a'> <d a'>    %23b
    <g b> <g b> <g b>        %24b
    <g b> < g b> <g b>    <    %25b
    g c> <g c> <g c>        %26b
    <g c> <g c> <g c>        %27b
    <g b> < g b> <g b>        %28b
    <g b> < g b> <g b>        %29b
    <g b> r r            %30b
    <g b> r r            %31b
    g b d            %32b
    g, b d            %33b
    g,4 r8            %34b
    c, e g            %35b
    c, e g            %36b
    c, d f            %37b
    c e g            %38b
    c, e g            %39b
    c, e g            %40b
    g, d' g            %41b
    c, e g            %42b
    c, e g            %43b
    c, e g            %44b
    c, d f            %45b
    c e g            %46b
    c, e g            %47b
    c, e g            %48b
    g, d' g            %49b
    c, e g            %50b
    c4 r8            %51b
    c4 r8            %52b
    c c c            %53b
    c g e            %54b
    c d e            %55b
    f4 r8            %56b
    g,4 r8            %57b
    c e g            %58b
    c4 r8            %59b
    c4 r8            %60b
    c c c            %61b
    c g e            %62b
    c d e            %63b
    f f f            %64b
    g, g g            %65b
    c e g            %66b
    c, e g            %67b
    c, e g            %68b
    c, e g            %69b
    c,4 r8            %70b        end third part bass

    }

\book {
    \score {
       \new PianoStaff <<
          \set PianoStaff.instrumentName = "Piano  "
          \new Staff = "upper" \upperfirst
          \new Staff = "lower" \lowerfirst         >>
    
  \midi {
    \tempo 4 = 156
    }

    \layout { }}

   \score {
       \new PianoStaff <<
          \set PianoStaff.instrumentName = "Piano  "
          \new Staff = "upper" \uppersecond
          \new Staff = "lower" \lowersecond
       >>
    
  \midi {
    \tempo 4 = 92
    }

        \layout { }}

   \score {
    \new PianoStaff <<
    \set PianoStaff.instrumentName = "Piano"
    \new Staff = "upper" \upperthird
    \new Staff = "lower" \lowerthird >>
    
  \midi {
    \tempo 8 = 160
    }

    \layout { }}

        }        % end book



              % end program
