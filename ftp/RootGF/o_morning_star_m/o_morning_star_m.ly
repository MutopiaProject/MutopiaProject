\version "2.10.0"

#(define (dotted-time grob num den)
  (interpret-markup
   (ly:grob-layout grob)
   '(((baseline-skip . 2)
      (word-space . 2)
      (font-family . number)))
   (markup
    #:line ( #:column (num den)))))

tsMarkupA = \markup {
  \override #'(baseline-skip . 2) \number {
    \center-align { "3" \line {"4" \raise #1.5 \bigger \musicglyph #"dots.dot"} }
  }
}

tsMarkupB = \markup {
  \override #'(baseline-skip . 2) \number {
    \center-align { "2" \line {"4" \raise #1.5 \bigger \musicglyph #"dots.dot"} }
  }
}

globalOMorningStar = {
  \key aes \major
%  \override Staff.TimeSignature #'style = #'()
%  \override Staff.TimeSignature #'stencil = #ly:text-interface::print
%  \override Staff.TimeSignature #'text = #tsMarkup
  \override Staff.TimeSignature  #'stencil = #(lambda (grob) (dotted-time grob "3" "4."))
  \time 9/8
  \partial 2
%  \skip 4*8 \bar "||" \skip 4*8 \bar "||" 
%  \skip 4*8 \bar "||" \skip 4*5 \partial 4*3 \skip 4*3 \bar "|."
}

globalbOMorningStar = {
  \key aes \major
%  \override Staff.TimeSignature #'style = #'()
  \override Staff.TimeSignature #'stencil = #ly:text-interface::print
  \override Staff.TimeSignature #'text = #tsMarkupA
%  \override Staff.TimeSignature  #'stencil = #(lambda (grob) (dotted-time grob "3" "4."))
  \time 9/8
  \partial 2 \skip 8*18 \skip 8*18 \skip 8*18 \skip 8*18 \partial 8*3 \skip 8*3 \bar "||" 
  \override Staff.TimeSignature #'stencil = #ly:text-interface::print
  \override Staff.TimeSignature #'text = #tsMarkupB
  \time 6/8
  \partial 8
  \skip 8*19  \bar "||"
  \override Staff.TimeSignature #'stencil = #ly:text-interface::print
  \override Staff.TimeSignature #'text = #tsMarkupA
  \time 9/8
  \skip 8*18 \skip 8*18 \partial 8*5 \skip 8*5 \bar "||" 
   
%  \skip 4*8 \bar "||" \skip 4*8 \bar "||" \break 
%  \skip 4*8 \bar "||" \skip 4*5 \partial 4*3 \skip 4*3 \bar "|."
}

globalAmenOMorningStar = {
%  \skip 4*4 \bar "|."
}

saMusicOMorningStar = {
  \oneVoice
  <ees' c'>8 <ees' c'>8( <f' des'>8) <g' bes>8 <aes' c'>4.( ~ <aes' c'>8 <g' bes>8) <aes' c'>8 \voiceOne <<{bes'8([ aes'8) <bes' ees'>8]} \context Voice = altoOne { \voiceTwo ees'4}>> \oneVoice <c'' ees'>4. ~ <c'' ees'>4
  <ees' c'>8 <ees' c'>8( <aes' ees'>8) <c'' aes'>8 <ees'' c''>4.( ~ <ees'' c''>8 <des'' bes'>8) <c'' aes'>8 <c'' aes'>8( <bes' ees'>8) <aes' c'>8 <bes' ees'>4. ~ <bes' ees'>4
  \voiceOne <<{ees'8 ees'8([ g'8) <bes' g'>8]} \context Voice = altoOne { \voiceTwo ees'8 ees'4}>> <<{des''4.( ~ des''8[ c''8) <bes' g'>8]} \context Voice = altoOne { \voiceTwo g'4. ~ g'4}>> \oneVoice <c'' aes'>8( <bes' ees'>8) <aes' c'>8 <bes' ees'>4. ~ <bes' ees'>4
  \voiceOne <<{ees'8 ees'8([ g'8) <bes' g'>8]} \context Voice = altoOne { \voiceTwo ees'8 ees'4}>> <<{des''4.( ~ des''8[ c''8) <bes' g'>8]} \context Voice = altoOne { \voiceTwo g'4. ~ g'4}>> <<{c''8( bes'8) aes'8} \context Voice = altoOne { \voiceTwo aes'4 aes'8}>> \oneVoice <ees'' g'>2. ~ <ees'' g'>4
  <ees'' g'>8 <f'' des''>4 <ees'' c''>8 <des'' bes'>4 <bes' g'>8 <ees'' c'>4 <des'' bes'>8 <c'' aes'>4 
  \voiceOne <<{aes'8} \context Voice = altoOne { \voiceTwo aes'8}>> \oneVoice <des'' bes'>4 <c'' aes'>8 <bes' g'>4 <bes' g'>8 <c'' aes'>4 <<{aes'8} \context Voice = altoOne { \voiceTwo aes'8}>> \oneVoice <ees'' g'>4\fermata
  \voiceOne <<{ees'8 ees'8([ g'8) <g' des'>8]} \context Voice = altoOne { \voiceTwo ees'8 ees'4}>> \oneVoice <aes' c'>4.( ~ <aes' c'>8 <g' bes>8) <aes' ees'>8 \voiceOne <<{bes'8( aes'8) <bes' ees'>8} \context Voice = altoOne { \voiceTwo ees'4 s8}>> \oneVoice <c'' ees'>4. ~ <c'' ees'>4
  <c'' ees'>8 \voiceOne <<{des''8( c''8) <des'' aes'>8} \context Voice = altoOne { \voiceTwo aes'4 s8}>> <<{ees''4. ~ ees''8( c''8) <aes' ees'>8} \context Voice = altoOne { \voiceTwo aes'4. ~ aes'4 s8}>> \oneVoice <c'' ees'>4 <bes' des'>8 <aes' c'>4. ~ <aes' c'>4
}

saAmenOMorningStar = {
%  <bes' ees'>2 <bes' d'>2
}

tbMusicOMorningStar = {
  \oneVoice 
  r8 r4. r4 <aes aes,>8 <aes aes,>4 <aes aes,>8 <g ees>4 <g ees>8 \voiceOne <<{aes4 aes8 aes4} \context Voice = bassOne { \voiceTwo aes4 aes8 aes4}>> \oneVoice 
  r8 r4. r4 <aes aes,>8 <aes aes,>4 <aes aes,>8 <aes aes,>4 <aes aes,>8 <g ees>4 <g ees>8 <g ees>4
  r8 r4. r4 <bes ees>8 <bes ees>4 <bes ees>8 <aes ees>4 <aes ees>8 <g ees>4 <g ees>8 <g ees>4
  r8 r4. r4 <bes ees>8 <bes ees>4 <bes ees>8 \voiceOne <<{aes4} \context Voice = bassOne { \voiceTwo aes4}>> \oneVoice <aes f>8 <bes ees>4 <bes ees>8 <bes ees>4. ~ <bes ees>4
  <ees' ees>8 <ees' ees>4 <ees' ees>8 <ees' ees>4 <ees' ees>8 <ees' ees>4 <ees' ees>8 <ees' aes>4
  <c' aes>8 <ees' ees>4 <ees' ees>8 <ees' ees>4 <ees' ees>8 \voiceOne <<{aes4} \context Voice = bassOne { \voiceTwo aes4}>> \oneVoice <aes f>8 <bes ees>4\fermata
  \voiceOne <<{ees8 ees4 ees8} \context Voice = bassOne { \voiceTwo ees8 ees4 ees8}>> \oneVoice <aes aes,>4 <aes aes,>8 <aes aes,>4 <aes aes,>8 <g ees>4 <g ees>8 \voiceOne <<{aes4 aes8 aes4 aes8} \context Voice = bassOne { \voiceTwo aes4 aes8 aes4 aes8}>> 
  \oneVoice <aes f>4 <aes f>8 <c' ees>4 <c' ees>8 <c' ees>4 <c' ees>8 <aes ees>4 <g ees>8 <aes aes,>4. ~ <aes aes,>4
  
}

tbAmenOMorningStar = {
%  <g ees>2 <f bes,>2
}

verseAOMorningStar = \lyricmode {
  The sky no long -- er o -- ver -- cast,
  The night of gloom -- y er -- ror past,
  The bright, the glo -- rious Morn -- ing Star
  Ex- tends his in --  fluence wide and far.
}

verseBOMorningStar = \lyricmode {
  The gen -- tle dew of truth dis --  tils
  Re -- fresh -- ing val -- leys, plains and hills;
  Each soul that seeks in Christ his good
  Is now sus --  tained with heaven -- ly food.
}

verseCOMorningStar = \lyricmode {
  The spir -- it cries with -- in us, Come!
  The bride the Church in -- vites us home;
  E'en so, come quick -- ly, bless -- ed Lord,
  And be by heaven and earth a -- dored.
}

chorusSAOMorningStar = \lyricmode {
  O Morn -- ing Star! still near -- er draw,
  Shine thro' thy Word, un -- fold thy law!
  Then shall we see the light in -- crease,
  A Sun of right -- eous -- ness and peace.
}

chorusTBOMorningStar = \lyricmode {
  O Morn -- ing Star! still near -- er draw,
  Shine thro' thy Word, un -- fold thy law!
  Then shall we see, then shall we see the light in -- crease,
  A Sun, a Sun of right -- eous -- ness and peace.
}

lyrAmen = \lyricmode {
  A -- men.
}
  
\paper {
  scoreTitleMarkup = \markup {
    \override #'(baseline-skip . 3.5)
    \column {
      \fill-line { \fromproperty #'header:dedication }
      \override #'(baseline-skip . 3.5)
      \column {
        \huge \bigger \bold
        \fill-line {
          \fromproperty #'header:opusleft
          { \bigger \fromproperty #'header:title }
          \fromproperty #'header:opusright
        }
        \fill-line {
          \large \smaller \bold
          \bigger \fromproperty #'header:subtitle
        }
        \fill-line {
          \smaller \bold
          \fromproperty #'header:subsubtitle
        }
        \fill-line {
          \fromproperty #'header:poet
          { \large \bold \fromproperty #'header:incipit }
          \fromproperty #'header:composer
        }
        \fill-line {
          \fromproperty #'header:meter
          \fromproperty #'header:arranger
        }
      }
    }
  }
  
  oddHeaderMarkup = \markup {
    \column {
      \fill-line {
    %% force the header to take some space, otherwise the
    %% page layout becomes a complete mess.
    " "
        %% Copyright header field only on first page.
        %% \on-the-fly #first-page \fromproperty #'header:copyright
      }
      \fill-line {
        %% Tagline header field only on last page.
        %% \on-the-fly #last-page \fromproperty #'header:tagline
      }
    }
  }

  evenHeaderMarkup = \markup {
    \column {
      \fill-line {
    %% force the header to take some space, otherwise the
    %% page layout becomes a complete mess.
    " "
        %% Copyright header field only on first page.
        %% \on-the-fly #first-page \fromproperty #'header:copyright
      }
      \fill-line {
        %% Tagline header field only on last page.
        %% \on-the-fly #last-page \fromproperty #'header:tagline
      }
    }
  }

  oddFooterMarkup = \markup
  \fill-line {
    \on-the-fly #not-first-page \fromproperty #'header:instrument
    \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
  }

  evenFooterMarkup = \markup
  \fill-line {
    \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
    \on-the-fly #not-first-page \fromproperty #'header:instrument
    ""
  }

}


\score { 
  \context ChoirStaff <<
    \context Staff = sa { <<
      \clef treble
      {\globalbOMorningStar \globalAmenOMorningStar}
      \context Voice = VA { \saMusicOMorningStar}
      \lyricsto "VA" \context Lyrics = lyricsUno {\verseAOMorningStar \chorusSAOMorningStar}
      \lyricsto "VA" \context Lyrics = lyricsDue {\verseBOMorningStar}
      \lyricsto "VA" \context Lyrics = lyricsTre {\verseCOMorningStar}
    >> }
    \context Staff = tb { <<
      \clef bass
      \globalbOMorningStar
      \context Voice = VC {\tbMusicOMorningStar \tbAmenOMorningStar }
      \lyricsto "VC" \context Lyrics = lyricsTUno {\verseAOMorningStar \chorusTBOMorningStar}
      \lyricsto "VC" \context Lyrics = lyricsTDue {\verseBOMorningStar}
      \lyricsto "VC" \context Lyrics = lyricsTTre {\verseCOMorningStar}
    >> }
  >>

  \midi {
   }
  \layout {
    indent = 0.0\pt
    pagenumber = 1
    \context {
       \Staff minimumVerticalExtent = #'(-1.0 . 1.0)
    }
  }
  \header {
    title = "O Morning Star!"
    incipit = "55671 71212 35513"
    poet = "Rev. 22:16, 17, 20; Mal 4:2"
    composer = "Geo. F. Root (1820-1895)"
    instrument = "Quartet and Piano"
    lastupdated = "2006-06-17"
    mutopiatitle = "O Morning Star!"
    mutopiacomposer = "RootGF"
    mutopiainstrument = "Quartet and Piano"
    date = "1881"
    source = "Cincinatti: Church, John:1884"
    style = "Hymn"
    copyright = "Creative Commons Attribution-ShareAlike 3.0"
    maintainer = "Brian M. Ames"
    maintainerEmail = "bmames@apk.net"
    maintainerWeb = "http://junior.apk.net/~bmames"
    moreInfo = "The source for this is available at the Library of Congress American Memories collection at the following URL:<br /><a href='http://memory.loc.gov/cgi-bin/ampage?collId=mussm&amp;fileName=sm/sm1884/15400/15435/mussm15435.db&amp;recNum=0&amp;itemLink=D?mussm:1:./temp/~ammem_CeV5::&amp;linkText=0'>http://memory.loc.gov/cgi-bin/ampage?collId=mussm&amp;fileName=sm/sm1884/15400/15435/mussm15435.db&amp;recNum=0&amp;itemLink=D?mussm:1:./temp/~ammem_CeV5::&amp;linkText=0</a>"

 footer = "Mutopia-2007/09/07-1031"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2007. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
  }
}
