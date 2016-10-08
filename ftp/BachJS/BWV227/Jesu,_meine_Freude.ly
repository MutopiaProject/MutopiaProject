\version "2.19.22"

\header {
  title = \markup { \normal-text \fontsize #3.5 "Jesu, meine Freude" }
  subtitle  = \markup {\normal-text "BWV 227" }
  composer = "Johann Sebastian Bach (1685-1750)"
  poet = \markup{\column{ "Johann Franck (1618-1677)" 
                          "Römer 8:1,2,9,10,11"}
         }
  
  mutopiatitle = "Jesu, meine Freude"
  mutopiacomposer = "BachJS"
  mutopiapoet = "Johann Franck"
  mutopiaopus = "BWV 227"
  mutopiainstrument = "SSATB"
  source = "Ameln, 1965"
  maintainer = "Jonathan Scholbach"
  maintainerEmail = "j[dot]scholbach[at]posteo[dot]de"
  maintainerWeb = "jonathan-scholbach.de"
}

% errata in the edition of Konrad Ameln:
% bar 153: in the basso, the quarter fis on beat 1 was corrected to an eigth
% bar 154: the eigth d on beat 3 was corrected to dis

% original breaks and page breaks are reprouduced via \oBreak and \oPageBreak, 
% the only deviation from the original source occurs in No. 11, 
% where the present edition uses the same breaking pattern as in No. 1 (i.e. after bar No. 461), 
% while the Ameln edition breaks after bar No. 460

% numeration of the parts in square brackets were added for practical reasons

%+++++++++++++++++++++++++++++++++++++++%
%                                       %
%      %%%%%%%%%%%%%%%%%%%%%%%%%        %
%      %         INPUT         %        %
%      %%%%%%%%%%%%%%%%%%%%%%%%%        %
%                                       %
%+++++++++++++++++++++++++++++++++++++++%

% this is for correcting the X-offset after a volta bar; 
% without this override lyrics are clashing with the bar
alignNotesAfterVolta = \once \override NoteColumn.X-offset = #2

oBreak = { \break }
oPageBreak = { \pageBreak}

\include "01.ily"
\include "02.ily"
\include "03.ily"
\include "04.ily"
\include "05.ily"
\include "06.ily"
\include "07.ily"
\include "08.ily"
\include "09.ily"
\include "10.ily"
\include "11.ily"

%+++++++++++++++++++++++++++++++++++++++%
%                                       %
%      %%%%%%%%%%%%%%%%%%%%%%%%%        %
%      %       PDF OUTPUT      %        %
%      %%%%%%%%%%%%%%%%%%%%%%%%%        %
%                                       %
%+++++++++++++++++++++++++++++++++++++++%

  #(set-global-staff-size 14.5)

  \book { % this book is for printing the sheet
    
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %       No. 01: Jesu, meine Freude      %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
    \markup {
      \vspace #2
      \fontsize #3 "[1.] Choral"
    }
    \noPageBreak
    \score { % No. 1: Jesu, meine Freude
      \new StaffGroup <<
        \new Staff
        <<
          \set Staff.instrumentName = "Soprano"
          \new Voice = "sopranoOneVoice" { \globalOne \sopOneFullVoice }
        >>
        \new Lyrics \lyricsto "sopranoOneVoice" { \sopranoOneLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Alto"
          \new Voice = "alto" { \globalOne \altOneFullVoice }
        >>
        \new Lyrics \lyricsto "alto" { \altoOneLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Tenore"
          \new Voice = "tenoreOneVoice" { \clef "G_8" \globalOne \tenOneFullVoice }
        >>
        \new Lyrics \lyricsto "tenoreOneVoice" { \tenoreOneLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Basso"
          \new Voice = "bassoOneVoice" { \clef bass \globalOne \basOneFullVoice }
        >>
        \new Lyrics \lyricsto "bassoOneVoice" { \bassoOneLyrics }
      >> %end of StaffGroup

      \layout { }
    } %end of score No. 1: Jesu, meine Freude

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %       No. 02: Es ist nun nichts       %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
    \markup {
      \vspace #2
      \fontsize #3 "[2.]"
    }
    \noPageBreak
    \score { % No. 02: Es ist nun nichts

      \new StaffGroup <<
        \new Staff
        <<
          \set Staff.instrumentName = "Soprano I"
          \new Voice = "sopranoITwoVoice" { \globalTwo \sopITwoFullVoice }
        >>
        \new Lyrics \lyricsto "sopranoITwoVoice" { \sopranoITwoLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Soprano II"
          \new Voice = "sopranoIITwoVoice" { \globalTwo \sopIITwoFullVoice }
        >>
        \new Lyrics \lyricsto "sopranoIITwoVoice" { \sopranoIITwoLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Alto"
          \new Voice = "alto" { \globalTwo \altTwoFullVoice }
        >>
        \new Lyrics \lyricsto "alto" { \altoTwoLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Tenore"
          \new Voice = "tenoreOneVoice" { \clef "G_8" \globalTwo \tenTwoFullVoice }
        >>
        \new Lyrics \lyricsto "tenoreOneVoice" { \tenoreTwoLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Basso"
          \new Voice = "bassoOneVoice" { \clef bass \globalTwo \basTwoFullVoice }
        >>
        \new Lyrics \lyricsto "bassoOneVoice" { \bassoTwoLyrics }
      >> %end of StaffGroup

      \layout { }
    } %end of No. 02: Es ist nun nichts

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %      No. 03: Unter deinem Schirmen     %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
    \pageBreak
    \markup {
      \vspace #2
      \fontsize #3 "[3.] Choral"
    }
    \noPageBreak
    \score { %No. 03: Unter deinem Schirmen
      \new StaffGroup <<
        \new Staff
        <<
          \set Staff.instrumentName = "Soprano I"
          \new Voice = "sopranoIThreeVoice" { \globalThree \sopIThreeFullVoice }
        >>
        \new Lyrics \lyricsto "sopranoIThreeVoice" { \sopranoIThreeLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Soprano II"
          \new Voice = "sopranoIIThreeVoice" { \globalThree \sopIIThreeFullVoice }
        >>
        \new Lyrics \lyricsto "sopranoIIThreeVoice" { \sopranoIIThreeLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Alto"
          \new Voice = "alto" { \globalThree \altThreeFullVoice }
        >>
        \new Lyrics \lyricsto "alto" { \altoThreeLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Tenore"
          \new Voice = "tenoreThreeVoice" { \clef "G_8" \globalThree \tenThreeFullVoice }
        >>
        \new Lyrics \lyricsto "tenoreThreeVoice" { \tenoreThreeLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Basso"
          \new Voice = "bassoThreeVoice" { \clef bass \globalThree \basThreeFullVoice }
        >>
        \new Lyrics \lyricsto "bassoThreeVoice" { \bassoThreeLyrics }
      >> %end of StaffGroup

      \layout { }
    } %end of score No. 03: Unter deinem Schirmen
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %         No. 04: Denn das Gesetz        %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
    \markup {
      \vspace #2
      \fontsize #3 "[4.]"
    }
    \noPageBreak
    \score { % No. 04: Denn das Gesetz des Geistes
      \new StaffGroup <<
        \new Staff
        <<
          \set Staff.instrumentName = "Soprano I"
          \new Voice = "sopranoIFourVoice" { \globalFour \sopIFourFullVoice }
        >>
        \new Lyrics \lyricsto "sopranoIFourVoice" { \sopranoIFourLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Soprano II"
          \new Voice = "sopranoIIFourVoice" { \globalFour \sopIIFourFullVoice }
        >>
        \new Lyrics \lyricsto "sopranoIIFourVoice" { \sopranoIIFourLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Alto"
          \new Voice = "alto" { \globalFour \altFourFullVoice }
        >>
        \new Lyrics \lyricsto "alto" { \altoFourLyrics }
      >> % end of StaffGroup
      \layout { }
    } %end of score No. 04: Denn das Gesetz des Geistes
    
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %     No. 05: Trotz dem alten Drachen    %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    \markup {
      \vspace #2
      \fontsize #3 "[5.] "
    }
    \noPageBreak
    \score { %No. 05: Trotz dem alten Drachen
      \new StaffGroup <<
        \new Staff
        <<
          \set Staff.instrumentName = "Soprano I"
          \new Voice = "sopranoIFiveVoice" { \globalFive \sopIFiveFullVoice }
        >>
        \new Lyrics \lyricsto "sopranoIFiveVoice" { \sopranoIFiveLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Soprano II"
          \new Voice = "sopranoIIFiveVoice" { \globalFive \sopIIFiveFullVoice }
        >>
        \new Lyrics \lyricsto "sopranoIIFiveVoice" { \sopranoIIFiveLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Alto"
          \new Voice = "alto" { \globalFive \altFiveFullVoice }
        >>
        \new Lyrics \lyricsto "alto" { \altoFiveLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Tenore"
          \new Voice = "tenoreFiveVoice" { \clef "G_8" \globalFive \tenFiveFullVoice }
        >>
        \new Lyrics \lyricsto "tenoreFiveVoice" { \tenoreFiveLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Basso"
          \new Voice = "bassoFiveVoice" { \clef bass \globalFive \basFiveFullVoice }
        >>
        \new Lyrics \lyricsto "bassoFiveVoice" { \bassoFiveLyrics }
      >> %end of StaffGroup

      \layout { }
    } %end of score No. 05: Trotz dem alten Drachen
    
    
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % No. 06: Ihr aber seid nicht fleischlich%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \markup {
      \vspace #2
      \fontsize #3 "[6.]"
    }
    \noPageBreak
    \score { % No. 06: Ihr aber seid nicht fleischlich

      \new StaffGroup <<
        \new Staff
        <<
          \set Staff.instrumentName = "Soprano I"
          \new Voice = "sopISixVoice" { \globalSix \sopISixFullVoice }
        >>
        \new Lyrics \lyricsto "sopISixVoice" { \sopISixLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Soprano II"
          \new Voice = "sopIISixVoice" { \globalSix \sopIISixFullVoice }
        >>
        \new Lyrics \lyricsto "sopIISixVoice" { \sopIISixLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Alto"
          \new Voice = "alt" { \globalSix \altSixFullVoice }
        >>
        \new Lyrics \lyricsto "alt" { \altSixLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Tenore"
          \new Voice = "tenOneVoice" { \clef "G_8" \globalSix \tenSixFullVoice }
        >>
        \new Lyrics \lyricsto "tenOneVoice" { \tenSixLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Basso"
          \new Voice = "basOneVoice" { \clef bass \globalSix \basSixFullVoice }
        >>
        \new Lyrics \lyricsto "basOneVoice" { \basSixLyrics }
      >> %end of StaffGroup

      \layout { }
    } %end of score No. 06: Ihr aber seid nicht fleischlich    
    
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %     No. 07: Weg mit allen Schätzen     %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    \markup {
      \vspace #2
      \fontsize #3 "[7.] Choral"
    }
    \noPageBreak
    \score { % No. 07: "Weg mit allen Schätzen"
      \new StaffGroup <<
        \new Staff
        <<
          \set Staff.instrumentName = "Soprano"
          \new Voice = "sopranoSevenVoice" { \globalSeven \sopSevenFullVoice }
        >>
        \new Lyrics \lyricsto "sopranoSevenVoice" { \sopranoSevenLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Alto"
          \new Voice = "alto" { \globalSeven \altSevenFullVoice }
        >>
        \new Lyrics \lyricsto "alto" { \altoSevenLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Tenore"
          \new Voice = "tenoreSevenVoice" { \clef "G_8" \globalSeven \tenSevenFullVoice }
        >>
        \new Lyrics \lyricsto "tenoreSevenVoice" { \tenoreSevenLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Basso"
          \new Voice = "bassoevenVoice" { \clef bass \globalSeven \bassoevenFullVoice }
        >>
        \new Lyrics \lyricsto "bassoevenVoice" { \bassoevenLyrics }
      >> %end of StaffGroup

      \layout { }
    } %end of score No. 07: "Weg mit allen Schätzen"

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %  No. 08: So aber Christus in euch ist  %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
    \markup {
      \vspace #2
      \fontsize #3 "[8.]"
    }
    \noPageBreak
    \score { % No. 08: So aber Christus in euch ist
      \new StaffGroup <<
        \new Staff
        <<
          \set Staff.instrumentName = "Alto"
          \new Voice = "altoEightVoice" { \globalEight \altEightFullVoice }
        >>
        \new Lyrics \lyricsto "altoEightVoice" { \altoEightLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Tenore"
          \new Voice = "tenoreEightVoice" { \clef "G_8" \globalEight \tenEightFullVoice }
        >>
        \new Lyrics \lyricsto "tenoreEightVoice" { \tenoreEightLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Basso"
          \new Voice = "basso" { \clef bass \globalEight \basEightFullVoice }
        >>
        \new Lyrics \lyricsto "basso" { \bassoEightLyrics }
      >> % end of StaffGroup
      \layout { }
    } %end of score No. 08: So aber Christus in euch ist
    

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %       No. 09: Gute Nacht, o Wesen     %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
    \markup {
      \vspace #2
      \fontsize #3 "[9.]"
    }
    \noPageBreak
    \score { % No. 09: Gute Nacht, o Wesen
      \new StaffGroup <<
        \new Staff
        <<
          \set Staff.instrumentName = "Soprano I"
          \new Voice = "sopINineVoice" { \globalNine \sopINineFullVoice }
        >>
        \new Lyrics \lyricsto "sopINineVoice" { \sopINineLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Soprano II"
          \new Voice = "sopII" { \globalNine \sopIINineFullVoice }
        >>
        \new Lyrics \lyricsto "sopII" { \sopIINineLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Alto"
          \new Voice = "altNineVoice" { \globalNine \altNineFullVoice }
        >>
        \new Lyrics \lyricsto "altNineVoice" { \altNineLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Tenore"
          \new Voice = "tenNineVoice" { \clef "G_8" \globalNine \tenNineFullVoice }
        >>
        \new Lyrics \lyricsto "tenNineVoice" { \tenNineLyrics }
      >> %end of StaffGroup

      \layout { }
    } %end of score No. 09: Gute Nacht, o Wesen

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %        No. 10: So nun der Geist       %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
    \markup {
      \vspace #2
      \fontsize #3 "[10.]"
    }
    \noPageBreak
    \score { % No. 10: So nun der Geist

      \new StaffGroup <<
        \new Staff
        <<
          \set Staff.instrumentName = "Soprano I"
          \new Voice = "sopITenVoice" { \globalTen \sopITenFullVoice }
        >>
        \new Lyrics \lyricsto "sopITenVoice" { \sopITenLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Soprano II"
          \new Voice = "sopIITenVoice" { \globalTen \sopIITenFullVoice }
        >>
        \new Lyrics \lyricsto "sopIITenVoice" { \sopIITenLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Alto"
          \new Voice = "alt" { \globalTen \altTenFullVoice }
        >>
        \new Lyrics \lyricsto "alt" { \altTenLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Tenore"
          \new Voice = "tenOneVoice" { \clef "G_8" \globalTen \tenTenFullVoice }
        >>
        \new Lyrics \lyricsto "tenOneVoice" { \tenTenLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Basso"
          \new Voice = "basOneVoice" { \clef bass \globalTen \basTenFullVoice }
        >>
        \new Lyrics \lyricsto "basOneVoice" { \basTenLyrics }
      >> %end of StaffGroup

      \layout { }
    } %end of No. 10: So nun der Geist
    
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %   No. 11: Weicht, ihr Trauergeister   %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
    \markup {
      \vspace #2
      \fontsize #3 "[11.] Choral "
    }
    \noPageBreak
    \score { %Choral 11: Weicht, ihr Trauergeister
      \new StaffGroup <<
        \new Staff
        <<
          \set Staff.instrumentName = "Soprano"
          \new Voice = "sopranoElevenVoice" { \globalEleven \sopElevenFullVoice }
        \new Lyrics \lyricsto "sopranoElevenVoice" { \sopranoElevenLyrics }
        >>
        \new Staff
        <<
          \set Staff.instrumentName = "Alto"
          \new Voice = "alto" { \globalEleven \altElevenFullVoice }
        >>
        \new Lyrics \lyricsto "alto" { \altoElevenLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Tenore"
          \new Voice = "tenoreElevenVoice" { \clef "G_8" \globalEleven \tenElevenFullVoice }
        >>
        \new Lyrics \lyricsto "tenoreElevenVoice" { \tenoreElevenLyrics }

        \new Staff
        <<
          \set Staff.instrumentName = "Basso"
          \new Voice = "bassoElevenVoice" { \clef bass \globalEleven \basElevenFullVoice }
        >>
        \new Lyrics \lyricsto "bassoElevenVoice" { \bassoElevenLyrics }
      >> %end of StaffGroup

      \layout { }
    } %end of score: Choral 11: Weicht, ihr Trauergeister

  } % end of book (print sheet)

\include "midi.ily"