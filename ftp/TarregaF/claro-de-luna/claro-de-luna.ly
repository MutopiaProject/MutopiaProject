\version "2.18.2"

% Acknowledgments:
% This typesetting was done from IMSLP item 293004 which was contributed
% by the Gaylord Music Library at Washington University, St. Louis.
% It remains true to Alier's plate with the exception that four typographical 
% errors have been corrected in this typesetting (see "%Alier" in comments below).

\header {
 title = "CLARO DE LUNA"
 subtitle = "Adagio Sostenuto de la Sonata Op. 27 № 2 de Beethoven"
 composer = "Arr: de F. Tárrega"
 style = "Classical"
 date = "c.1885" % Beethoven d.1827, Tarrega d.1909, Alier d.1938
 source = "Madrid: Ildefonso Alier, n.d. Plate 5754" % via IMSLP293004
 mytagline = \markup{ \column { \vspace #2 \smaller \italic "Ildefonso Alier (1864-1938), Editor de Musica, Madrid.  Placa № 5754. IMSLP № 293004."} }

 %            o_
 %       (\___\/_____/)
 %  ~ ~ ~ ~ ~ / ~ ~ ~ ~ ~ ~ ~ 
 maintainer = "Jeffrey Olson"
 maintainerEmail = "gmail's jjocanoe"
 license = "Public Domain" 

 mutopiacomposer = "TarregaF"
 mutopiatitle = "Claro de Luna (Beethoven's Moonlight Sonata)"
 mutopiadate = "c.1885"
 mutopiasource = "Madrid: Ildefonso Alier, n.d. Plate 5754"
 mutopiainstrument = "Guitar"

 footer = "Mutopia-2015/12/03-2074"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper{
  page-count = #4
  %#(set-paper-size "a4")      %uncomment to test specific paper size
  %#(set-paper-size "letter")  %uncomment to test specific paper size
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  top-margin = 12\mm
  bottom-margin = 12\mm
  ragged-last-bottom = ##f
  print-first-page-number = ##t
  evenHeaderMarkup = \oddHeaderMarkup % so all page numbers to right
  oddFooterMarkup = \markup { \column {
      \fill-line { \on-the-fly #first-page \column { \vspace #1 \fromproperty #'header:copyright } } 
      \fill-line { \on-the-fly #last-page \fromproperty #'header:mytagline }
    }
  }
  evenFooterMarkup = \oddFooterMarkup
}


% capo is the bbarre function from Mutopia-2014/04/22-1951 specialized for invocation brevity.
% It takes a numeric arg that can look like a suffix, e.g. \capo5 vs. \bbarre #"C.5".
capo =
#(define-music-function (barre location str music) (number? ly:music?)
   % had to include RestEvent for this piece
   (let ((elts (extract-named-music music '(RestEvent NoteEvent EventChord))))
     (if (pair? elts)
         (let ((first-element (first elts))
               (last-element (last elts)))
           (set! (ly:music-property first-element 'articulations)
                 (cons (make-music 'TextSpanEvent 'span-direction -1)
                       (ly:music-property first-element 'articulations)))
           (set! (ly:music-property last-element 'articulations)
                 (cons (make-music 'TextSpanEvent 'span-direction 1)
                       (ly:music-property last-element 'articulations))))))
   #{
       \textSpannerUp
       \once \override TextSpanner #'font-size = #-2
       \once \override TextSpanner #'font-shape = #'upright
       \once \override TextSpanner #'staff-padding = #3
       \once \override TextSpanner #'style = #'dashed-line
       \once \override TextSpanner #'to-barline = ##f
       \once \override TextSpanner #'bound-details =
            #`((left
                (text . ,#{ #(format #f "C.~d " str) #})
                (Y . 0)
                (padding . 0.25)
                (attach-dir . -1))
	       (right
		(text . ,#{ \markup { \draw-line #'( 0 . -.5) } #})
		(Y . 0)
		(padding . 0.25)
		(attach-dir . 1)))
       $music
   #})


% left hand fingering locations
fingerLeft   = \set fingeringOrientations = #'(left)

% string number locations
stringRight = \set stringNumberOrientations = #'(right)

% tuplet controls
hideTupletNumber = \override TupletNumber.stencil = ##f
hideTupletBracket = \override TupletBracket.bracket-visibility = ##f

% dynamics
cres = _\markup{ \italic "cresc." }
decres = _\markup{ \italic "decresc." }
dotSpan = \override DynamicTextSpanner.style = #'dotted-line

upperVoice = \transpose c c' {
  \voiceOne
  \mark \markup{ \smaller "6.ª en Re."}
  \slurDown \tieDown
  \hideTupletNumber
  \hideTupletBracket
  \stringRight
  \tuplet 3/2 4 { <a-2>8_\markup{ \concat{ \smaller \bold \italic "sempre  " \dynamic pp }} <d'-4> f'  a d' f'  a d' f'  a d' f' } | %1
  \tuplet 3/2 4 { a8 d' f'  a d' f'  a d' f'  a d' f' } | %2a
  \tuplet 3/2 4 { \capo1{ bes8 d' f'  bes d' f'}  \capo3{ bes ees' g'  bes ees' g'} } | %3a
  \tuplet 3/2 4 { <a-2>8 <cis'-3> <g'-4>  <a-2> <d'-4> f'  a d' e'  g cis' e' } | %4a
  \tuplet 3/2 4 { f8 a d'  f a d'  f a d'  r <d'\3> <f'\2> } | %5a
  \tuplet 3/2 4 { r8 <e'\0> <g'\2>  <a\4> <e'\0> <g'\2>  a <e'\0> g'  a e' <g'\2> } | %6a
  \tuplet 3/2 4 { r8 <d'\3> <f'\2>  a d' f'  r d' g'  bes d' g' } | %7a
  \tuplet 3/2 4 { \capo1{ r8 c' f'  a c' f'}  \capo3{ r8 <bes-3> <e'\2>  r <e'-3> <bes'-4>} } | %8a
  \tuplet 3/2 4 { \capo3{ r8 f' a'  c' f' a'} }
  \capo1 {
    \tuplet 3/2 4 { a c' f'  a c' f' } | %9a
    \tuplet 3/2 4 { aes8 c' f'  aes c' f'  aes c' f'  r c' f' } | %10a
    \tuplet 3/2 4 { r8 c' ges'  r c' ges'  r c' ges'  r c' ges' } | %11a
    \tuplet 3/2 4 { r8 des' f'  r c' f'  r d' f' }
  }
  \tuplet 3/2 4 { r d' f' } | %12a
  \tuplet 3/2 4 { \capo3{ r8 c' ees'  r c' ees'  r c' d'  r c' d'} } | %13a
  \tuplet 3/2 4 { \capo4{ r8 c' ees'  g c' ees'} }
  \capo3 {
    \tuplet 3/2 4 { r b d'  g b d' } | %14a
    \tuplet 3/2 4 { r8 c' ees'  c' ees' g'  c' e' g'  c' e' g' } | %15a
    \tuplet 3/2 4 { <des'-3>8 <f'-4> <aes'-2>  des' <f'-4> <aes'-2> }
  }
  \tuplet 3/2 4 { <des'\3> <f'\2> aes' }
  \capo3 {
    \tuplet 3/2 4 { b f' aes' } | %16a
    \tuplet 3/2 4 { c'8 e' g'  c' e' g'  c' e' g'  c' e' g'  } | %17a
    \tuplet 3/2 4 { des'8( f' aes'  des') f' aes' }
  }
  \tuplet 3/2 4 { des' f' aes' }
  \capo3 {
    \tuplet 3/2 4 {b f' aes' } | %18a
    \tuplet 3/2 4 { c'8 e' g'  c' e' g' }
  }
  \tuplet 3/2 4 { \capo2{ c' ees' fis'  c' ees' fis'}  } | %19a
  \capo3 {
    \tuplet 3/2 4 { c'8 d' a'  c' d' a'  bes d' g'  bes d' g'  } | %20a
    \tuplet 3/2 4 { aes8 c' ees'  aes c' ees'  <g-3> bes e'  g bes e'  } | %21a
    \tuplet 3/2 4 { d8 g bes  d g bes } %Alier's first bes looks more like a c'
  }
  \tuplet 3/2 4 { \capo2{d g a  d fis a}  } | %22a
  \tuplet 3/2 4 { \capo3{g8 bes d'  bes d' g'}  \capo5{d' g' bes'  d' g' bes'}  } | %23a
  \tuplet 3/2 4 { \capo7{d'8 a' c''  d' a' c''  d' a' c''  d' a' c''}  } | %24a
  \tuplet 3/2 4 { \capo5{d'8 g' bes'  d' g' bes'}  \capo6{cis' g' bes'}  \capo5{d' g' bes'}  } | %25a
  \tuplet 3/2 4 { \capo3{<e'\2>8 g' a'  e' g' a'  e' g' a'  e' g' a'}  } | %26a
  \tuplet 3/2 4 { \capo10{f'8 a' d''  f' a' d''}  \capo3{e' g' bes'}  \capo6{d' f' b'}  } | %27a
  \tuplet 3/2 4 { \capo5{cis''8 cis'!\< e'  a' cis' e'\!  bes'\> cis' e'}  \capo3{g' cis' e'\!}  } | %28a
  \tuplet 3/2 4 { r8 cis' e'  a cis' e'  bes! cis' e'  <g\0> cis' e'  } | %29a
  \tuplet 3/2 4 { \capo10{r8 f'\< a'  d'' f' a'\!  f''\> f' a'  d'' f' a'\!}  } | %30a
  \tuplet 3/2 4 { r8 f\< a  d' f a\!  f'\> f a  d' f a\!  } | %31a
  \tuplet 3/2 4 { e8 <bes-2>( g)  <cis'-1> bes e'  \capo5{<cis'-1> <g'-3\2>( <e'\2>)}  \capo6{bes' g' cis''}  } | %32a
  \tuplet 3/2 4 { \capo7{f8 d' a  f'( d') <a'-4>} }
  \capo10 {
    \tuplet 3/2 4 { <f'-1> d'' a'  f''( d'') a'  } | %33a
    \tuplet 3/2 4 { d'8 gis'( f')  <b'\2> gis' d'' }
  }
  \tuplet 3/2 4 { <b'\2> <f''-1> <d''-3\2>  <gis''-1> <f''-3\2> <b''-4>  } | %34a
  \tuplet 3/2 4 { <g\0>8 <cis'\4>( <bes\4>)  <e'\3> <cis'\4> <g'\2>  \capo9{e' bes' g'  cis'' bes' e''}  } | %35a
  \tuplet 3/2 4 { <cis''-1>8 <g'-3\2> <bes'-1>  <e'-3\2> <g'-1> <cis'-1>  e' <bes-2> <cis'-1>  <g-4> <bes\3> e  } | %36a
  \tuplet 3/2 4 { g8 cis e  <bes,-1> <cis-1> <g,\6>  <e\5> <g\0> <bes-4\4>  <d\5> <g\0> <bes-4\4> } | %37a
  \tuplet 3/2 4 { r8 <g\4>( <a\4>)  <bes-4\4> <a-4\4> <g\0>  e g bes  d g bes } | %38a
  \tuplet 3/2 4 { r8 g( a)  bes a g  ees g bes  d g bes } | %39a
  \dotSpan
  \tuplet 3/2 4 { r8 g(\decresc a)  bes a g  <f\5> <d\0> <d'\3>  d f d' } | %40a
  \tuplet 3/2 4 { \capo5{e8 bes d'  e bes d'} }
  \capo7 {
    \tuplet 3/2 4 { e a cis'  e a cis'\! } | %41a
    \tuplet 3/2 4 { f8 a d' }
  }
  \tuplet 3/2 4 { <a\4> <d'\3> <f'\2>  a d' f'  a d' f' } | %42a %Alier had bes instead of first d'
  \tuplet 3/2 4 { a8 <e'\0> <g'\2>  a e' g'  a e' g'  a e' g' } | %43a
  \tuplet 3/2 4 {  a8 d' f'   a d' f'   bes d' g'   bes d' g' } | %44a
  \tuplet 3/2 4 {  a8 c' f'   a c' f' }
  \capo3 {
    \tuplet 3/2 4 {  g bes e'   c' e' bes' } | %45a
    \tuplet 3/2 4 {  f8 f' a'  c' f' a'  c' f' a' }
  }
  \capo5 {
    \tuplet 3/2 4 {  c' f' a' } | %46a
    \tuplet 3/2 4 {  c'8 g' bes'  c' g' bes'  c' g' bes'  c' g' bes' } | %47a
    \tuplet 3/2 4 {  c'8 f'\cres a'  c' f' a'  cis' g' a'  d' f' a' } | %48a
  }
  \tuplet 3/2 4 {  e'8 g' a'  e' g' a'  \capo10{f' a' d''  f' a' d''} } | %49a
  \tuplet 3/2 4 {  \capo3{ees'8 g' bes'  ees' g' bes'} }
  \capo5 {
    \tuplet 3/2 4 {  cis' g' a'  cis' g' a' } | %50a
    \tuplet 3/2 4 {  d'8 f' a'  d' f' a'  d' fis' a'  d' fis' a'  } | %51a
    \tuplet 3/2 4 {  ees'8\< g' bes'  ees' g' bes'\! }
  }
  \tuplet 3/2 4 {  ees'\> g' bes' }
  \capo5 {
    \tuplet 3/2 4 {  cis' g' bes'\!  } | %52a
    \tuplet 3/2 4 {  d8 fis' a'  d' fis' a'  d' fis' a'  d' fis' a' } | %53a
    \tuplet 3/2 4 {  ees'8\< g' bes'  ees' g' bes'\!  ees'\> g' bes'  cis' g' bes'\!  } | %54a
    \tuplet 3/2 4 {  d'8 fis' a'  d' fis' a'  d' g' bes'  d' g' bes' } | %55a
    \tuplet 3/2 4 {  c'8 g' bes'  c' g' bes'  c' g' bes' }
  }
  \capo3 {
    \tuplet 3/2 4 {  c' f' a' } | %56a
    \tuplet 3/2 4 {  bes8 f' a'  bes e' g' }
  }
  \tuplet 3/2 4 {  \capo2{a e' g'}  a d' f' } | %57a
  \tuplet 3/2 4 {  g8 d'\cres e'  g d' e'  a d' e'  bes d' e' } | %58a
  \tuplet 3/2 4 {  a8 d'\p f'  a d' f'  a cis' e'  a cis' e' } | %59a
  \tuplet 3/2 4 {  d8 a\pp f'  a d' f'  a d' f'  a d' f'  } | %60a
  \tuplet 3/2 4 {  r8 <e'\0> <g'-4\2>   <a-3\4> <e'\0> <g'-4\2>   a e' g'   a e' g' } | %61a
  \tuplet 3/2 4 {  \capo10{<d\0>8 <f'\3>\< <d'\4>  <a'\2> <f'\3> d''  a' <f''-4> <d''-1>}  <a''-4> <f''-1> <d''-2>\! } | %62a
  \tuplet 3/2 4 {  cis''8( e'')\> <bes'-3\2>  <cis''-1> <g'\2> bes'  <e'\0> <g'-3\2> <bes\4> } cis'4\! | %63a
  \tuplet 3/2 4 {  \capo10{<d\0>8 <f'\3>\< <d'\4>  <a'\2> <f'\3> d''  a' <f''-4> <d''-1>}  <a''-4> <f''-1> <d''-2>\! } | %64a
  \tuplet 3/2 4 {  cis''8( e'')\> bes'  cis'' g' bes'  e' g' bes } cis'4\! | %65a
  \tuplet 3/2 4 {  \capo7{<d' f>8 a d'  f' d' a}  r f a  d' a f } | %66a
  s1 | %67a
  r2 <d' a f> | %68a
  <d' a f>2\fermata r | %69a
}

lowerVoice = {
  \voiceTwo
  \fingerLeft
  \stringRight
  d'1 | c' | bes2 g | a a |
  d2. <a'\4 d>8. a'16 | %5b
  <a'-3 cis'-1>2. <a' cis'>8. <a'\4>16 | %6b
  <a'\4 d>2 <bes' g-3> | %7b
  <a' c'>2 <g'-2 c'-1\4>4 <c''-2 c'-1> | %8b %Alier had d' instead of c' in 2nd chord
  <f' f>2 f | %9b
  f2. <aes' f'>8. aes'16 | %10b
  ees'2 s2 | %11b
  <aes' des'-4\5>4 <aes' c'> <aes' b> <g'\0 b> | %12b
  <g' c'>2 <aes'\4 f>4 <f' a\6> | %13b
  <g' g>2 <g'\4 g\6> | %14b
  c'2. c'4 | %15b
  <c'-1>4 <f'-1> <aes'\4> f' | %16b
  c'2. c'4 | %17b
  c'4 f' aes' f' | %18b
  c'2 a | %19b
  fis2 <bes' g> | %20b
  <aes' c'>2 <cis'-2> | %21b
  d2 d | %22b
  g2. g'8. d''16 | %23b
  <d'' fis'>2. fis'8. d''16 | %24b
  g'2 e'!4 d' | %25b
  <e'' cis'>2. cis'4 | %26b
  <f'' d'>2 g4\decres gis | %27b
  a2\p s | %28b
  a2 s | %29b
  a2 s | %30b
  a2 s | %31b
  a2 a | %32b
  a2 a | %33b
  a2 a | %34b
  a2 a | %35b
  s1 | %36b
  s1 | %37b
  <cis'-1 a-3>2 e'4 d' | %38b
  <cis' a>2 ees'4 d' | %39b
  <cis' a>2 bes | %40b
  g2 a | %41b
  d2. <a' d>8. a'16 | %42b
  <a' cis'>2. <a' cis'>8. a'16 | %43b
  <a' d>2 <bes' g> | %44b
  <a' c'>2 c'4 c' | %45b
  f2. f'8. c''16 | % 46b
  <c'' e'\5>2. <c'' e'>8. c''16 | % 47b
  <c'' f'>2 e'4 d' | %48b
  <e'' cis'>2 <f'' d'> | %49b
  <ees'' g>2 <cis'' a> | %50b
  <d'' d'>2. d'4 | %51b
  d'4 g' bes' g' | %52b
  <d'\5>2. d'4 | %53b
  d'4 g' bes' g' | %54b %Alier had e' instead of d'
  <d'' d'>2 <d'' g>2 | %55b
  <c'' e'>2. f'4 | %56b
  d'4 e' cis' d' | %57b
  bes2 a4 g | %58b
  <a' a>2 <a' a> | %59b
  <d' d>2. a8. <a' a>16 | %60b
  cis'2. a8. <a' a>16 | %61b
  d2. d'8. d'16 | %62b
  a2. a8. a16 | %63b
  d2. d'8. d'16 | %64b
  a2. a8. a16 | %65b
  \dotSpan
  d2\decresc d' | %66b
  \hideTupletNumber
  \stemUp
  \tuplet 3/2 4 { a8( <d'\5>) f'  a' f' d'  a d' a  f a f } | %67b
  \stemDown
  d2\!\pp d2 | %68b
  d2\fermata r | %69b
}

middleVoice = \transpose c c' {
  \voiceThree
  \stemDown \slurDown \tieDown
  s1 * 10 | %1-10
  aes4 aes aes <aes ees>8. aes16 | %11
  s1 * 40 | %12-51
  ees'2 s | %52
  s1 * 6 | %53-58
  s2. a8. a16 | %59
  s1 * 3 | %60-62
  \hideTupletNumber
  \slurUp
  s2. \tuplet 3/2 4 { \capo5{ \once \override NoteColumn.force-hshift = #1.3 bes8( a) g} } | %63
  s1 | %64
  s2. \tuplet 3/2 4 { \capo5{ \once \override NoteColumn.force-hshift = #1.3 bes8( a) g} } | %65
  s1 * 4 | %60-69
}

\score {
  <<
    \new Staff = "guitar"
    <<
      \clef "treble"
      \time 4/4
      \key d \minor
      \mergeDifferentlyHeadedOn
      \mergeDifferentlyDottedOn
      \context Voice = "upperVoice" \upperVoice
      \context Voice = "lowerVoice" \lowerVoice
      \context Voice = "middleVoice" \middleVoice
    >>
  >>
  \layout {
  }
}
\score {
  <<
    \set Staff.midiInstrument = #"acoustic guitar (nylon)"
    \clef "treble"
    \time 4/4
    \key d \minor
    \context Voice = "upperVoice" \upperVoice
    \context Voice = "lowerVoice" \lowerVoice
    \context Voice = "middleVoice" \middleVoice
  >>
  \midi {
    \tempo 4 = 60
    \transposition c % guitar plays octave lower than written
    \context{
      \Voice
      \remove "Dynamic_performer"
    }
  }
}
