\version "2.19.7"
%  hiragana lyrics

tsfooter = \markup {
\column {
  \line {"Arranged by:  Nagai, Iwai and Obata, Kenhachiro"}
  \line {"Source:  Seiyo gakufu Nihon zokkyokushu,  pub. Miki Shoten, Osaka, 1895."}
  \line {"English title:  \"A Collection of Japanese Popular Music.\""}
  \line {"Copyright Public Domain  Typeset by Tom Potter 2007"}
  \line {"http://www.daisyfield.com/music/"}
}
}

\paper {
  top-margin = 2 \cm
  bottom-margin = 2 \cm
%  oddFooterMarkup = \tsfooter
}


\header {
mutopiatitle = "Echigo Jishi"
mutopiacomposer = "Traditional"
mutopiapoet = ""    %  
mutopiaopus = ""    %  
mutopiainstrument = "Koto"
date = ""    %  optional - date piece composed
source = "Nagai, Iwai and Obata, Kenhachiro, \"Seiyo gakufu Nihon zokkyokushu\", pub. Miki Shoten, Osaka, 1895.  English title, \"A Collection of Japanese Popular Music.\" "
style = "Folk"
license = "Public Domain"
maintainer = "patrick stanistreet"
maintainerEmail = "haematopus@gmail.com"
maintainerWeb = "http://www.daisyfield.com/music/"
moreInfo = "Typeset by Tom Potter, 2007."  

%title = "越後獅子"
title = "えちご  ぢし"
subtitle = "Echigo Jishi"
composer = "Arr. Y. Nagai, K. Obata"

 footer = "Mutopia-2014/07/27-1985"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper  {
%annotate-spacing = ##t
top-margin = 2 \cm
bottom-margin = 3 \cm
}

kotoOne =  {
\set melismaBusyProperties = #'()
    a'8  [ a'8 b'8 a'8 ]    | 
% 2
    b'8 [ a'8 b'8 c''8 ]    | 
% 3
    e''8 [ c''8 b'8 a'8 ]    | 
% 4
    f'4. r8    | 
\break
% 5
    f'8 [ a'8 b'8 a'8 ]    | 
% 6
    f'4. e'8    | 
% 7
    f'8 [ a'8 f'8 e'8 ]    | 
% 8
    d'8 [ d'8 d'8 e'8 ]    | 
\break
% 9
    f'8  [ e'8 b8 d'8 ]    | 
\barNumberCheck #10
    e'4. r8    | 
% 11
    d'8  d'4  e'8    | 
% 12
    f'8 f'4 e'8    | 
\break
% 13
    a'8 [ a'8 b'8 a'8 ]    | 
% 14
    b'4 c''8 [ e''8 ]    | 
% 15
    fis''8 fis''4 e''8    | 
% 16
    c''8 [ c''8 c''8 e''8 ]    | 
\break
% 17
    fis''8 fis''4 e''8    | 
% 18
    c''8 [ e''16 c''16 ] b'8 [ a'8 ]    | 
% 19
    b'8 [ c''8 e''8 a'8 ]    | 
\barNumberCheck #20
    c''8 [ b'8 a'8 f'8 ]    | 
\break
% 21
    e'4. f'8    | 
% 22
    a'8 [ b'8 ] c''4    | 
% 23
    e''4 c''8 [ b'8 ]    | 
% 24
    a'4 a'8 [ f'8 ]    | 
\break
% 25
    a'4. b'8    | 
% 26
    c''8 [ b'8 a'8 f'8 ]    | 
% 27
    e'4. e'8    | 
% 28
    b'8 [ c''8 c''8 b'8 ]    | 
\break
% 29
    c''8 [ e''8 c''8 b'8 ]    | 
\barNumberCheck #30
    a'8 [ b'8 c''8 a'8 ]    | 
% 31
    f'8 [ a'16 f'16 ] e'8 [ d'8 ]    | 
% 32
    e'8 [ f'8 ] a'16 [ a'16 a'16 a'16 ]    | 
\break
% 33
    b'8 [ b'8 ] c''8 [ c''16 c''16 ]    | 
% 34
    b'8 [ c''16 b'16 ] a'8 [ b'16 a'16 ]    | 
% 35
    f'8 [ e'8 d'8 d'8 ]    | 

% 36
%  this was not an acceptable solution as the rest was not printed
%  lyric on the rest requires a note, although hidden. rest is not printed
%   \hideNotes  e'8  \unHideNotes  e'8 [ f'8 a'8 ] | 

%    r8  e'8  [ f'8  a'8 ]    | 
\once \override TextScript #'extra-offset = #'(-1 . -2.5)
\once \override TextScript #'font-name = #"Sazanami Mincho"
    r8_\markup{ \fontsize #2 {つ} }    e'8 [ f'8 a'8 ]    | 
\break

% 37
    f'8 [ e'8 ] b8 [ b16 b16 ]    | 
% 38
    b8 [ d'8 ] e'4    | 
% 39
    r8 c''8 ( e''4 )    | 
\barNumberCheck #40
    c''8 [ b'8 a'8 b'8 ]    | 
\break
% 41
    c''8 ( [ a'8 ) ] f'4    | 
% 42
    e'8 [ d'8 e'8 a'8 ]    | 
% 43
    f'4. e'8    | 
% 44
    f'8 [ f'16 f'16 ] e'8 [ d'8 ]    | 
\break
% 45
    d'8 [ e'8 ] r8 b'16. ( [ a'32 ]    | 
% 46
    f'4 ) f'4 (    | 
% 47
    e'4 ) r4 
\bar "|."
}


romajiOne =  \lyricmode { 
%   when using skips in lyrics the numeric part is ignored
%   each note without lyrics requires a skip except for rests
% 1
    \skip8  \skip8  \skip8  \skip8    |
% 2
    \skip8  \skip8  \skip8  \skip8    |
% 3
    \skip8  \skip8  \skip8  \skip8    |
% 4
    \skip8    |
% 5
    \skip8  \skip8  \skip8  \skip8    |
% 6
    \skip8  \skip8    |
% 7
    \skip8  \skip8  \skip8  \skip8    |
% 8
    \skip8  \skip8  \skip8  \skip8    |
% 9
    \skip8  \skip8  \skip8  \skip8    |
%10
    \skip8    |
%11
    \skip8  "O no"  "ga"    |
%12
    "su"  "ga ta"  "wo"    |
%13
    "ha"  "na"  "to"  "mi"    |
%14
    "te     " __  _  _    |
%15 
    "  "  "ni    " __  _    |
%16
    "wa    " __  _  "ni    " __  _    |
%17
    "  "  "sai    " __  _    |
%18
    "ta    " __  _ _  "ri"  \skip8    |
%19
    "  "  "sa"  "ka  " __  _    |
%20
    "se    " __  _  "ta    " __  _    | 
%21
    "ri"  "so"    |
%22
    "ko"  "na"  "o"    | 
%23
    "ke"  "sa    " __ _    |
%24
    "ni"  "i"  "na"    |
%25
    "ko"  "to"    | 
%26
    "i    " __ _  "wa   " __ _    |
%27
    "re"  \skip8    | 
%28
    \skip8  "ne"  "ma"  "ri"    |  
%29
    "ne"  "ma"  "ra"  "zu"    | 
%30
    "ma"  "chi"  "a"  "ka"    |
%31
    "su   "  __ _ _ _  "go"    |
%32
    "za"  "re"  "ha"  "na"  "shi"  "ma"    | 
%33 
    "shou"  \skip8  "kon"  "ko"  "ma"    |      %  shiyo -> shou  
%34
    "tsu"  "no   " __  _  "ko"  "ka"  \skip8    |  
%35
    "ge"  "te"  \skip8  "ma"    |  

%36
%    note markup will be used for lyric on rest
     "no"  "ha"  "no"    |
%    "tsu"  "no"  "ha"  "no"    |
%    "ツ"  "ノ"  "ハ"  "ノ"    |
%     "ノ"  "ハ"  "ノ"    |  %  lyric anomaly with rest -- see katakanaOne

%37 
    "yo"  "ni"  "kon"  "ko"  "ma"    |
%38
    "ya"  "ka"  "ni"    | 
%39
    "hi"  "i"    | 
%40
    "te    " __  _ _  "u"    | 
%41
    "to    " __ _ _    | 
%42
    "ya    " __ _ _  "shi"    |
%43
    "shi    " __ _    |
%44
    "no    " __ _ _ _ _    |
%45
    "  "  \skip8  "kiyo    " __ _    |
%46
    \skip4  "ku    " __  \skip8    | 
}

katakanaOne =  \lyricmode { 
%   when using skips in lyrics the numeric part is ignored
%   each note without lyrics requires a skip except for rests
% 1
    \skip8  \skip8  \skip8  \skip8    |
% 2
    \skip8  \skip8  \skip8  \skip8    |
% 3
    \skip8  \skip8  \skip8  \skip8    |
% 4
    \skip8    |
% 5
    \skip8  \skip8  \skip8  \skip8    |
% 6
    \skip8  \skip8    |  
% 7
    \skip8  \skip8  \skip8  \skip8    |
% 8
    \skip8  \skip8  \skip8  \skip8    |
% 9
    \skip8  \skip8  \skip8  \skip8    |
%10
    \skip8    |    
%11
    \skip8  "オノ"  "ガ"    |
%12 
    "ス"  "ガタ"  "ヲ"    | 
%13
    "ハ"  "ナ"  "ト"  "ミ"    |
%14
    "テ " __  _  _    |
%15 
    "  "  "ニ " __  _    |
%16
    "ワ " __  _  "ニ " __  _    |
%17
    "  "  "サイ " __  _    |
%18
    "タ " __  _ _  "リ"  \skip8    |
%19
    "  "  "サ"  "カ" __  _    |
%20
    "セ " __  _  "タ " __  _    | 
%21
    "リ"  "ソ"    |
%22
    "コ"  "ナ"  "オ"    |
%23
    "ケ"  "サ " __ _    |
%24
    "ニ"  "イ"  "ナ"    |
%25
    "コ"  "ト"    |
%26
    "イ " __ _  "ワ " __ _    |
%27
    "レ"  \skip8    |
%28
    \skip8  "ネ"  "マ"  "リ"    |  
%29
    "ネ"  "マ"  "ラ"  "ス"    | 
%30
    "マ"  "チ"  "ア"  "カ"    |
%31
    "ス"  __ _ _ _  "ゴ"    |
%32
    "ザ"  "レ"  "ハ"  "ナ"  "シ"  "マ"    | 
%33 
    "ショ"  \skip8  "コン"  "コ"  "マ"    |
%34
    "ツ"  "ノ " __  _  "コ"  "カ"  \skip8    |
%35
    "ゲ"  "テ"  \skip8  "マ"    |

%36
%  ly wont put lyric on a rest - alternative is note markup 
     "ノ"  "ハ"  "ノ"    |
%    "ツ"  "ノ"  "ハ"  "ノ"    |    %  see melody for tsu markup

%37 
    "ヨ"  "ニ"  "コン"  "コ"  "マ"    |
%38
    "ヤ"  "カ"  "ニ"    |
%39
    "ヒ"  "イ"    |
%40
    "テ " __  _ _  "ウ"    | 
%41
    "ト " __ _ _    |
%42
    "ヤ " __ _ _  "シ"    |
%43
    "シ " __ _    |
%44
    "ノ " __ _ _ _ _    |
%45
    "  "  \skip8  "キョ " __ _    |
%46
    \skip4  "ク " __  \skip8    | 
}


hiraganaOne =  \lyricmode { 
%   when using skips in lyrics the numeric part is ignored
%   each note without lyrics requires a skip except for rests
% 1
    \skip8  \skip8  \skip8  \skip8    |
% 2
    \skip8  \skip8  \skip8  \skip8    |
% 3
    \skip8  \skip8  \skip8  \skip8    |
% 4
    \skip8    |
% 5
    \skip8  \skip8  \skip8  \skip8    |
% 6
    \skip8  \skip8    |  
% 7
    \skip8  \skip8  \skip8  \skip8    |
% 8
    \skip8  \skip8  \skip8  \skip8    |
% 9
    \skip8  \skip8  \skip8  \skip8    |
%10
    \skip8    |    
%11
    \skip8  "おの"  "が"    |
%12 
    "す"  "がた"  "を"    | 
%13
    "は"  "な"  "と"  "み"    |
%14
    "て " __  _  _    |
%15 
    "  "  "に " __  _    |
%16
    "わ " __  _  "に " __  _    |
%17
    "  "  "さい " __  _    |
%18
    "た " __  _ _  "り"  \skip8    |
%19
    "  "  "さ"  "か" __  _    |
%20
    "せ " __  _  "た " __  _    | 
%21
    "り"  "そ"    |
%22
    "こ"  "な"  "お"    |
%23
    "け"  "さ " __ _    |
%24
    "に"  "い"  "な"    |
%25
    "こ"  "と"    |
%26
    "い " __ _  "わ " __ _    |
%27
    "れ"  \skip8    |
%28
    \skip8  "ね"  "ま"  "り"    |  
%29
    "ね"  "ま"  "ら"  "ず"    | 
%30
    "ま"  "ち"  "あ"  "か"    |
%31
    "す"  __ _ _ _  "ご"    |
%32
    "ざ"  "れ"  "は"  "な"  "し"  "ま"    | 
%33 
    "しよ"  \skip8  "こん"  "こ"  "ま"    |    %  shiyo -> shou
%34
    "つ"  "の " __  _  "こ"  "か"  \skip8    |
%35
    "げ"  "て"  \skip8  "ま"    |

%36
%  ly wont put lyric on a rest - alternative is note markup 
     "の"  "は"  "の"    |
%    "つ"  "の"  "は"  "の"    |    %  see melody for tsu markup

%37 
    "よ"  "に"  "こん"  "こ"  "ま"    |
%38
    "や"  "か"  "に"    |
%39
    "ひ"  "い"    |
%40
    "て " __  _ _  "う"    | 
%41
    "と " __ _ _    |
%42
    "や " __ _ _  "し"    |
%43
    "し " __ _    |
%44
    "の " __ _ _ _ _    |
%45
    "  "  \skip8  "きよ " __ _    |
%46
    \skip4  "く " __  \skip8    | 
}


\score  {
\new Staff  = "melody"  <<
  \time 2/4 
  \clef "treble"
  \key c \major
  \tempo  4 = 90
  \set Staff.midiInstrument = "koto"
  \new Voice = "kotoOne" { \kotoOne }


\new Lyrics  \with  { alignBelowContext = "melody" }
  \lyricsto "kotoOne"   {
    \override LyricText #'font-size = #-1
    \override LyricSpace #'minimum-distance = #1.0  
    \romajiOne
}

\new Lyrics  \with  { alignBelowContext = "melody" }
  \lyricsto "kotoOne"   {
    \override LyricText #'font-name = #"Sazanami Mincho"
    \override LyricText #'font-size = #2
    \override LyricSpace #'minimum-distance = #1.0  
    \hiraganaOne
}

>>

\layout  {
  \context {
    \Score
    \override SeparationItem #'padding = #0.2
  }
}

\midi  { }
}

