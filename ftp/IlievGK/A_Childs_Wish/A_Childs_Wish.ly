%{
   Copyright (C) 2006 Grigor Iliev <info@grigoriliev.com>

   This work is licensed under the
   Creative Commons Attribution 3.0 License.
   To view a copy of this license, visit
   http://creativecommons.org/licenses/by/3.0/ or
   send a letter to Creative Commons, 543 Howard Street,
   5th Floor, San Francisco, California, 94105, USA.
%}

\version "2.16.1"

\paper {
  top-margin = 12
  bottom-margin = 8
  %{ In origin submission the author specified Times-Roman fonts.
     DejaVu is a reasonable (and free) substitution.
     -gl Wed Mar 20 10:43:57 2013
  %}
  myStaffSize = #20
  #(define fonts
    (make-pango-font-tree
     "DejaVu Serif"
     "DejaVu Sans"
     "DejaVu Mono" (/ myStaffSize 20)))
}

\book {
  \header {
    title = \markup { "A Child's Wish" }
    composer = \markup \override #'(font-size . -1) { "Grigor Iliev" }

    mutopiatitle = "A Child's Wish"
    mutopiacomposer = "IlievGK"
    mutopiainstrument = "Piano"
    date = "2006"
    source = "Grigor Iliev"
    style = "Classical"
    copyright = "Creative Commons Attribution 3.0"
    maintainer = "Grigor Iliev"
    maintainerEmail = "gr.iliev@gmail.com"
    maintainerWeb = "http://www.grigoriliev.com"
    moreInfo = "The composer has also recorded <a href=\"../ftp/IlievGK/A_Childs_Wish/A_Childs_Wish.mp3\">an MP3 of the piece</a>"

 footer = "Mutopia-2013/03/23-727"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } } }
  }

  \score {

    \new PianoStaff \with {
%      \override VerticalAlignment #'forced-distance = #11
    } <<
      \new Staff {
        \key e \minor \time 6/8
        %1
        << { b''4.^\markup { \override #'(font-size . -1) { "Adagio" } }~ b''4 c'''8 } \\ { r8 e'' fis'' g'' e''4 } >>
        << { b''4.~ b''4 c'''8 } \\ { r8 fis'' a'' a'' fis''4 } >>
        << { b''4.~ b''8 a'' c''' } \\ { r8 d'' fis'' g''4. } >>
        << { b''8 a''4~ a''4. } \\ { fis''4 g''8 fis'' g'' e'' } >>
        \break
        %5
        << { fis''8 g'' a'' g'' fis'' g'' } \\ { dis''4. e''4. } >>
        << { fis''4. e''4. } \\ { dis''8 e'' dis'' b'4. } >>
        << { b''4.~ b''4 c'''8 } \\ { g''4.~ g''4 a''8 } >>
        << { fis''4.~ fis''4 b''8 } \\ { dis''4.~ dis''4 g''8 } >>
        %9
        << { e''4.~ e''4 g''8 } \\ { c''4.~ c''4 e''8 } >>
        \break
        << { fis''4 g''8 a'' fis'' b'' } \\ { dis''4 e''8~ e''8 dis''4 } >>
        << { g''4 a''8 fis''4 g''8 } \\ { e''4. dis''4. } >>
        << { e''2. } \\ { b'2. } >>
        %13
        << { d'''4.~ d'''8 dis'' e'' } \\ { r8 b'' gis'' e''4. } >>
        << { gis''8 a'' ais'' b''4 c'''8 } \\ { r4. e'' } >>
        \break
        << { c'''4.~ c'''8 cis'' d'' } \\ { r8 a'' fis'' d''4. } >>
        << { fis''8 g'' a'' ais''4 b''8 } \\ { r4. d'' } >>
        %17
        << { a''4.~ a''8 ais' b' } \\ { r8 fis'' dis'' c''4. } >>
        << { g''8-. g'' fis'' g''4. } \\ { r8 e''4 b'4. } >>
        << { fis''8-. fis'' e'' fis''4. } \\ { r8 dis''4 b'4. } >>
        \break
        << { g''8-. g'' fis'' e''4. } \\ { r8 e'' b'~ b'4. } >>
        %21
        << { b''4. gis''8 a'' b'' } \\ { r8 e'' fis'' e''4 gis''8 } >>
        << { c'''8-. c''' b'' c'''4. } \\ { a''8-. r4 a''4. } >>
        << { a''4. fis''8 g'' a'' } \\ { r8 d'' e'' d''4 fis''8 } >>
        << { b''8-. b'' a'' b''4. } \\ { g''8-. r4 g''4. } >>
        \pageBreak
        %25
        << \grace s8 s2. << {  \acciaccatura { a''16[ b''] } a''4.~ a''8 ais' b' } \\ { r8 fis'' dis'' c''4. } >> >>
        << { g''8 fis'' b'' e''4  \acciaccatura a''8 g''8 } \\ { r2. } >>
        << { fis''4.~ fis''8 fis' g' } \\ { r8 ais' b' c''4. } >>
        << { e'4. e''4. } \\ { e'4. b'4. } >>
        \key e \major \break
        %29
        << { b''4.~ b''4 cis'''8 } \\ { r8 e'' fis'' gis'' e''4 } >>
        << { b''4.~ b''4 cis'''8 } \\ { r8 dis'' a'' a'' fis''4 } >>
        << { b''4.~ b''8 a'' cis''' } \\ { r8 d'' fis'' gis''4. } >>
        << { b''4. a''4 a''8 } \\ { r8 cis'' e'' r8 cis''4 } >>
        %33
        << { gis''4.~ gis''4 a''8 } \\ { r8 cis'' dis'' e'' cis''4 } >>
        \break
        << { gis''4.~ gis''4 a''8 } \\ { r8 dis'' fis'' fis'' dis''4 } >>
        << { gis''4.~ gis''4 a''8 } \\ { r8 bis' cis'' dis'' e''4 } >>
        << \grace s8 s2. << {  \acciaccatura { a''16[ b''] } a''8 gis'' fis'' eis'' d'' cis'' } \\ { r2. } >> >>
        %37
        << \grace s8 s2. << { fis''8 cis'' a'' \acciaccatura { a''16[ b''] } a''8 gis'' b'' } \\ { r8 b'4 r4 d''8 } >> >>
        \break
        << \grace s8 s2. << { \acciaccatura gis''8 fis''8 eis'' a'' gis'' b'' d'' } \\ { r4 d''8 r4. } >> >>
        << \grace s8 s2. << { \acciaccatura e''8 d''4 cis''8 a''4 gis''8 } \\ { r4. r8 b'4 } >> >>
        << \grace s8 s2. << { \acciaccatura gis''8 fis''8 e'' dis'' e'' dis'' fis'' } \\ { bis'4. b'4. } >> >>
        %41
        << \grace s8 s2. << { e''8 dis'' fis'' \acciaccatura fis''8 e''8 dis'' fis'' } \\ { ais'4. b'4 a'8 } >> >>
        << { e''2. } \\ { b'2. } >> \key e \minor
        \break
        << { b''4.~ b''4 c'''8 } \\ { g''4.~ g''4 a''8 } >>
        << { fis''4.~ fis''4 b''8 } \\ { dis''4.~ dis''4 g''8 } >>
        %45
        << { e''4.~ e''4 g''8 } \\ { c''4.~ c''4 e''8 } >>
        << { fis''4 g''8 a'' fis'' b'' } \\ { dis''4 e''8~ e''8 dis''4 } >>
        \pageBreak
        << { g''4 a''8 fis''4 g''8 } \\ { e''4. dis''4. } >>
        << { e''2. } \\ { b'2. } >>
        %49
        << { d'''4.~ d'''8 dis'' e'' } \\ { r8 b'' gis'' e''4. } >>
        << { gis''8 a'' ais'' b''4 c'''8 } \\ { r4. e'' } >>
        \break
        << { c'''4.~ c'''8 cis'' d'' } \\ { r8 a'' fis'' d''4. } >>
        << { fis''8 g'' a'' ais''4 b''8 } \\ { r4. d'' } >>
        %53
        << { a''4.~ a''8 ais' b' } \\ { r8 fis'' dis'' c''4. } >>
        << { g''8-. g'' fis'' g''4. } \\ { r8 e''4 b'4. } >>
        << { fis''8-. fis'' e'' fis''4. } \\ { r8 dis''4 b'4. } >>
        \break
        << { g''8-. g'' fis'' e''4. } \\ { r8 e'' b'~ b'4. } >>
        %57
        << { b''4. gis''8 a'' b'' } \\ { r8 e'' fis'' e''4 gis''8 } >>
        << { c'''8-. c''' b'' c'''4. } \\ { a''8-. r4 a''4. } >>
        << { a''4. fis''8 g'' a'' } \\ { r8 d'' e'' d''4 fis''8 } >>
        << { b''8-. b'' a'' b''4. } \\ { g''8-. r4 g''4. } >>
        \break
        %61
        << \grace s8 s2. << {  \acciaccatura { a''16[ b''] } a''4.~ a''8 ais' b' } \\ { r8 fis'' dis'' c''4. } >> >>
        << { g''8 fis'' b'' e''4  \acciaccatura a''8 g''8 } \\ { r2. } >>
        << { fis''4.~ fis''8 fis' g' } \\ { r8 ais' b' c''4. } >>
        << { e'2. } \\ { e'2. } >>
        %65
        << { b''4.~ b''4 c'''8 } \\ { r8 e'' fis'' g'' e''4 } >>
        \break
        << { b''4.~ b''4 c'''8 } \\ { r8 fis'' a'' a'' fis''4 } >>
        << { b''4.~ b''8 a'' c''' } \\ { r8 d'' fis'' g''4. } >>
        << { b''8 a''4~ a''4. } \\ { fis''4 g''8 fis'' g'' e'' } >>
        %69
        << { fis''8 g'' a'' g'' fis'' g'' } \\ { dis''4. e''4. } >>
        << { fis''4. e''4. } \\ { dis''8 e'' dis'' b'4. } >> \bar "|."
      }

      \new Staff {
        \key e \minor
        %1
        << { r4 g'8 b'4 g'8 } \\ { e'2. } >>
        << { r4 a'8 c''4 a'8 } \\ { fis'2. } >>
        << { r4 fis'8 a'4 fis'8 } \\ { d'2. } >>
        << { r8 dis'8 e'8 a'4 e'8 } \\ { b4. c'4. } >>
        %5
        << { fis'8 e' dis' g'4. } \\ { b4. e'8 c' b } >>
        << { fis'4. g' } \\ { dis'4 b8 e'4. } >> \clef bass
        << { b4.~ b4 c'8 } \\ { r8 e fis g e4 } >>
        << { b4.~ b4 b8 } \\ { r8 fis a a fis4 } >>
        %9
        << { a4. fis8 g4 } \\ { r8 c e~ e4 e8 } >>
        << { r8 fis g~ g4. } \\ { b,4. c8 b,4 } >>
        << { b8 a4 b8 a4 } \\ { e4 c8 fis4 b,8 } >>
        << { g2. } \\ { e8 b, g, b,4. } >>
        %13
        << { r8 gis b d' e' gis' } \\ { e2.~ } >>
        << { e'8 b gis a c' e' } \\ { e2. } >>
        << { r8 fis a c' d' fis' } \\ { d2.~ } >>
        << { d'8 a fis g b d' } \\ { d2. } >>
        %17
        << { r8 dis fis a fis dis } \\ { b,2. } >>
        << { r8 g b e' b g } \\ { e2. } >>
        << { r8 dis fis a fis dis } \\ { b,2. } >>
        << { r8 g b e'4. } \\ { e2. } >>
        %21
        << { d'4.~ d'8 c' b } \\ { r8 b gis e4. } >>
        << { c'4.~ c'8 e a } \\ { r8 a e c4. } >>
        << { c'4.~ c'8 c' a } \\ { r8 a fis d4. } >>
        << { b4.~ b8 d g } \\ { r8 g d b,4. } >>
        %25
        << { r8 dis fis a fis dis } \\ { b,2. } >>
        << { r8 g b e' b g } \\ { e2. } >>
        << { r8 dis fis a fis dis } \\ { b,2. } >>
        << { r8 g b g'4. } \\ { e4. e'4. } >>
        \key e \major  \clef treble
        %29
        << { r4 gis'8 b'4 gis'8 } \\ { e'2. } >>
        << { r4 a'8 cis''4 a'8 } \\ { fis'2. } >>
        << { r4 gis'8 b'4 gis'8 } \\ { d'2. } >>
        << { r4 cis'8 fis'4. } \\ { a4.~ a4 dis'8 } >>
        %33
        << { r4 e'8 gis'4 e'8 } \\ { cis'2. } >>
        << { r4 dis'8 fis'4 dis'8 } \\ { bis2. } >>
        << { r4 dis'8 fis'4 dis'8 } \\ { b2. } >>
        << { d'4 b8 d'4 b8 } \\ { gis2. } >>
        %37
        << { r8 a cis' d' b fis' } \\ { fis4. gis } >>
        << { r8 eis' b' r8 d' fis' } \\ { cis'4. b } >>  \clef bass
        << { r8 cis' e' r a cis' } \\ { a4. fis } >>
        << { r8 gis bis e gis cis' } \\ { dis4. cis } >>
        %41
        << { r8 cis' e' a fis4 } \\ { fis4. r4 b,8 } >>
        << { gis'2. } \\ { e2. } >> \key e \minor
        << { b4.~ b4 c'8 } \\ { r8 e fis g e4 } >>
        << { b4.~ b4 b8 } \\ { r8 fis a a fis4 } >>
        %45
        << { a4. fis8 g4 } \\ { r8 c e~ e4 e8 } >>
        << { r8 fis g~ g4. } \\ { b,4. c8 b,4 } >>
        << { b8 a4 b8 a4 } \\ { e4 c8 fis4 b,8 } >>
        << { g2. } \\ { e8 b, g, e,4. } >>
        %49
        << { r8 gis b d' e' gis' } \\ { e2.~ } >>
        << { e'8 b gis a16 c' b c' e c' } \\ { e2. } >>
        << { r8 fis a c' d' fis' } \\ { d2.~ } >>
        << { d'8 a fis g16 b a b fis b } \\ { d2. } >>
        %53
        << { r8 dis fis a fis dis } \\ { b,2. } >>
        << { r8 g b b16 e' g b e8 } \\ { e2. } >>
        << { r8 dis fis b16 dis' fis a dis8 } \\ { b,2. } >>
        << { r8 g b e'4. } \\ { e2. } >>
        %57
        << { d'4.~ d'8 c' b } \\ { r8 b gis e4. } >>
        << { c'4. c'16 e' a c' e8 } \\ { r8 a e8~ e4 e8 } >>
        << { c'4.~ c'8 c' a } \\ { r8 a fis d4. } >>
        << { b4. b16 d' g b d8 } \\ { r8 g d~ d4 d8 } >>
        %61
        << { r8 dis fis a fis dis } \\ { b,2. } >>
        << { r8 g b e' b g } \\ { e2. } >>
        << { r8 dis fis a fis dis } \\ { b,2. } >>
        << { ais16 b fis g e8~ e4. } \\ { r2. } >> \clef treble
        %65
        << { r4 g'8 b'4 g'8 } \\ { e'2. } >>
        << { r4 a'8 c''4 a'8 } \\ { fis'2. } >>
        << { r4 fis'8 a'4 fis'8 } \\ { d'2. } >>
        << { r8 dis'8 e'8 a'4 e'8 } \\ { b4. c'4. } >>
        %69
        << { fis'8 e' dis' g'4. } \\ { b4. e'8 c' b } >>
        << { fis'4. g' } \\ { dis'4 b8 e'4. } >>
      }
    >>

    \layout { }

  \midi {
    \tempo 4. = 54
    }
  }
}
