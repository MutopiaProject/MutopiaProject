%+++++++++++++++++++++++++++++++++++++++%
%                                       %
%      %%%%%%%%%%%%%%%%%%%%%%%%%        %
%      %      MIDI OUTPUt      %        %
%      %%%%%%%%%%%%%%%%%%%%%%%%%        %
%                                       %
%+++++++++++++++++++++++++++++++++++++++%

  % preliminary definitions

    stafftovoice = \midi {
      \context {
        \Staff
        \remove "Staff_performer"
      }
      \context {
        \Voice
        \consists "Staff_performer"
      }
    }

    backgroundVoice = {
      \set Staff.midiInstrument = #"recorder"
    }

    highlightedVoice= {
      \set midiInstrument = #"trumpet"
      \set Staff.midiMinimumVolume = #0.0
      \set Staff.midiMaximumVolume = #1.0
    }


  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %       No. 01: Jesu, meine Freude      %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    \book { % No. 01 ("Jesu, meine Freude") - complete
      \bookOutputSuffix "01-complete"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano" { \globalOne \sopOneFullVoice }
          \new Voice = "alto" { \globalOne \altOneFullVoice}
          \new Voice = "tenore" { \globalOne \tenOneFullVoice }
          \new Voice = "basso" { \globalOne \basOneFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 01 ("Jesu, meine Freude") - complete

    \book { % No. 01 ("Jesu, meine Freude") - soprano
      \bookOutputSuffix "01-soprano"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano" { \highlightedVoice  \globalOne \sopOneFullVoice }
          \new Voice = "alto" { \globalOne \altOneFullVoice}
          \new Voice = "tenore" { \globalOne \tenOneFullVoice }
          \new Voice = "basso" { \globalOne \basOneFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 01 ("Jesu, meine Freude") - soprano

    \book { % No. 01 ("Jesu, meine Freude") - alto
      \bookOutputSuffix "01-alto"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano" { \globalOne \sopOneFullVoice }
          \new Voice = "alto" { \highlightedVoice \globalOne \altOneFullVoice}
          \new Voice = "tenore" { \globalOne \tenOneFullVoice }
          \new Voice = "basso" { \globalOne \basOneFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 01 ("Jesu, meine Freude") - alto

    \book { % No. 01 ("Jesu, meine Freude") - alto
      \bookOutputSuffix "01-tenore"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano" { \globalOne \sopOneFullVoice }
          \new Voice = "alto" { \globalOne \altOneFullVoice}
          \new Voice = "tenore" { \highlightedVoice  \globalOne \tenOneFullVoice }
          \new Voice = "basso" { \globalOne \basOneFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 01 ("Jesu, meine Freude") - tenore

    \book { % No. 01 ("Jesu, meine Freude") - basso
      \bookOutputSuffix "01-basso"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano" { \globalOne \sopOneFullVoice }
          \new Voice = "alto" { \globalOne \altOneFullVoice}
          \new Voice = "tenore" { \globalOne \tenOneFullVoice }
          \new Voice = "basso" { \highlightedVoice \globalOne \basOneFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 01 ("Jesu, meine Freude") - basso


  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %       No. 02: Es ist nun nichts       %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
    \book { % No. 02 ("Es ist nun nichts") - complete
      \bookOutputSuffix "02-complete"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalTwo \sopITwoFullVoice }
          \new Voice = "soprano2" { \globalTwo \sopIITwoFullVoice }
          \new Voice = "alto" { \globalTwo \altTwoFullVoice}
          \new Voice = "tenore" { \globalTwo \tenTwoFullVoice }
          \new Voice = "basso" { \globalTwo \basTwoFullVoice }
        >>
        \stafftovoice
        
      } % end of score
    } %end of book No. 02 ("Es ist nun nichts") - complete

    \book { % No. 02 ("Es ist nun nichts") - soprano 1
      \bookOutputSuffix "02-soprano1"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \highlightedVoice \globalTwo \sopITwoFullVoice }
          \new Voice = "soprano2" { \globalTwo \sopIITwoFullVoice }
          \new Voice = "alto" { \globalTwo \altTwoFullVoice}
          \new Voice = "tenore" { \globalTwo \tenTwoFullVoice }
          \new Voice = "basso" { \globalTwo \basTwoFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 02 ("Es ist nun nichts") - soprano 1

    \book { % No. 02 ("Es ist nun nichts") - soprano 2
      \bookOutputSuffix "02-soprano2"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalTwo \sopITwoFullVoice }
          \new Voice = "soprano2" { \highlightedVoice \globalTwo \sopIITwoFullVoice }
          \new Voice = "alto" { \globalTwo \altTwoFullVoice}
          \new Voice = "tenore" { \globalTwo \tenTwoFullVoice }
          \new Voice = "basso" { \globalTwo \basTwoFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 02 ("Es ist nun nichts") - soprano 2

    \book { % No. 02 ("Es ist nun nichts") - alto
      \bookOutputSuffix "02-alto"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalTwo \sopITwoFullVoice }
          \new Voice = "soprano2" { \globalTwo \sopIITwoFullVoice }
          \new Voice = "alto" { \highlightedVoice \globalTwo \altTwoFullVoice}
          \new Voice = "tenore" { \globalTwo \tenTwoFullVoice }
          \new Voice = "basso" { \globalTwo \basTwoFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 02 ("Es ist nun nichts") - alto

    \book { % No. 02 ("Es ist nun nichts") - tenore
      \bookOutputSuffix "02-tenore"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalTwo \sopITwoFullVoice }
          \new Voice = "soprano2" { \globalTwo \sopIITwoFullVoice }
          \new Voice = "alto" { \globalTwo \altTwoFullVoice}
          \new Voice = "tenore" { \highlightedVoice \globalTwo \tenTwoFullVoice }
          \new Voice = "basso" {\globalTwo \basTwoFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 02 ("Es ist nun nichts") - tenore

    \book { % No. 02 ("Es ist nun nichts") - basso
      \bookOutputSuffix "02-basso"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalTwo \sopITwoFullVoice }
          \new Voice = "soprano2" { \globalTwo \sopIITwoFullVoice }
          \new Voice = "alto" {  \globalTwo \altTwoFullVoice}
          \new Voice = "tenore" { \globalTwo \tenTwoFullVoice }
          \new Voice = "basso" { \highlightedVoice \globalTwo \basTwoFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 02 ("Es ist nun nichts") - basso

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %     No. 03: Unter deinem Schirmen      %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    \book { % No. 03 ("Unter deinem Schirmen") - complete
      \bookOutputSuffix "03-complete"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalThree \sopIThreeFullVoice }
          \new Voice = "soprano2" { \globalThree \sopIIThreeFullVoice }
          \new Voice = "alto" { \globalThree \altThreeFullVoice}
          \new Voice = "tenore" { \globalThree \tenThreeFullVoice }
          \new Voice = "basso" { \globalThree \basThreeFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 03 ("Unter deinem Schirmen") - complete

    \book { % No. 03 ("Unter deinem Schirmen") - soprano 1
      \bookOutputSuffix "03-soprano1"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \highlightedVoice \globalThree \sopIThreeFullVoice }
          \new Voice = "soprano2" { \globalThree \sopIIThreeFullVoice }
          \new Voice = "alto" { \globalThree \altThreeFullVoice}
          \new Voice = "tenore" { \globalThree \tenThreeFullVoice }
          \new Voice = "basso" { \globalThree \basThreeFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 03 ("Unter deinem Schirmen") - soprano 1

    \book { % No. 03 ("Unter deinem Schirmen") - soprano 2
      \bookOutputSuffix "03-soprano2"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalThree \sopIThreeFullVoice }
          \new Voice = "soprano2" { \highlightedVoice \globalThree \sopIIThreeFullVoice }
          \new Voice = "alto" { \globalThree \altThreeFullVoice}
          \new Voice = "tenore" { \globalThree \tenThreeFullVoice }
          \new Voice = "basso" { \globalThree \basThreeFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 03 ("Unter deinem Schirmen") - soprano 2

    \book { % No. 03 ("Unter deinem Schirmen") - alto
      \bookOutputSuffix "03-alto"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalThree \sopIThreeFullVoice }
          \new Voice = "soprano2" { \globalThree \sopIIThreeFullVoice }
          \new Voice = "alto" { \highlightedVoice \globalThree \altThreeFullVoice}
          \new Voice = "tenore" { \globalThree \tenThreeFullVoice }
          \new Voice = "basso" { \globalThree \basThreeFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 03 ("Unter deinem Schirmen") - alto

    \book { % No. 03 ("Unter deinem Schirmen") - tenore
      \bookOutputSuffix "03-tenore"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalThree \sopIThreeFullVoice }
          \new Voice = "soprano2" { \globalThree \sopIIThreeFullVoice }
          \new Voice = "alto" { \globalThree \altThreeFullVoice}
          \new Voice = "tenore" { \highlightedVoice \globalThree \tenThreeFullVoice }
          \new Voice = "basso" {\globalThree \basThreeFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 03 ("Unter deinem Schirmen") - tenore

    \book { % No. 03 ("Unter deinem Schirmen") - basso
      \bookOutputSuffix "03-basso"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalThree \sopIThreeFullVoice }
          \new Voice = "soprano2" { \globalThree \sopIIThreeFullVoice }
          \new Voice = "alto" {  \globalThree \altThreeFullVoice}
          \new Voice = "tenore" { \globalThree \tenThreeFullVoice }
          \new Voice = "basso" { \highlightedVoice \globalThree \basThreeFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 03 ("Unter deinem Schirmen") - basso

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %         No. 04: Denn das Gesetz        %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
    \book { % No. 04 ("Denn das Gesetz") - complete
      \bookOutputSuffix "04-complete"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalFour \sopIFourFullVoice }
          \new Voice = "soprano2" { \globalFour \sopIIFourFullVoice }
          \new Voice = "alto" { \globalFour \altFourFullVoice}
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 04 ("Denn das Gesetz") - complete

    \book { % No. 04 ("Denn das Gesetz") - soprano 1
      \bookOutputSuffix "04-soprano1"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \highlightedVoice \globalFour \sopIFourFullVoice }
          \new Voice = "soprano2" { \globalFour \sopIIFourFullVoice }
          \new Voice = "alto" { \globalFour \altFourFullVoice}
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 04 ("Denn das Gesetz") - soprano 1

    \book { % No. 04 ("Denn das Gesetz") - soprano 2
      \bookOutputSuffix "04-soprano2"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalFour \sopIFourFullVoice }
          \new Voice = "soprano2" { \highlightedVoice \globalFour \sopIIFourFullVoice }
          \new Voice = "alto" { \globalFour \altFourFullVoice}
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 04 ("Denn das Gesetz") - soprano 2

    \book { % No. 04 ("Denn das Gesetz") - alto
      \bookOutputSuffix "04-alto"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalFour \sopIFourFullVoice }
          \new Voice = "soprano2" { \globalFour \sopIIFourFullVoice }
          \new Voice = "alto" { \highlightedVoice \globalFour \altFourFullVoice}
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 04 ("Denn das Gesetz") - alto

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %     No. 05: Trotz dem alten Drachen    %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
    \book { % No. 05 ("Trotz dem alten Drachen") - complete
      \bookOutputSuffix "05-complete"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalFive \sopIFiveFullVoice }
          \new Voice = "soprano2" { \globalFive \sopIIFiveFullVoice }
          \new Voice = "alto" { \globalFive \altFiveFullVoice}
          \new Voice = "tenore" { \globalFive \tenFiveFullVoice }
          \new Voice = "basso" { \globalFive \basFiveFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 05 ("Trotz dem alten Drachen") - complete

    \book { % No. 05 ("Trotz dem alten Drachen") - soprano 1
      \bookOutputSuffix "05-soprano1"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \highlightedVoice \globalFive \sopIFiveFullVoice }
          \new Voice = "soprano2" { \globalFive \sopIIFiveFullVoice }
          \new Voice = "alto" { \globalFive \altFiveFullVoice}
          \new Voice = "tenore" { \globalFive \tenFiveFullVoice }
          \new Voice = "basso" { \globalFive \basFiveFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 05 ("Trotz dem alten Drachen") - soprano 1

    \book { % No. 05 ("Trotz dem alten Drachen") - soprano 2
      \bookOutputSuffix "05-soprano2"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalFive \sopIFiveFullVoice }
          \new Voice = "soprano2" { \highlightedVoice \globalFive \sopIIFiveFullVoice }
          \new Voice = "alto" { \globalFive \altFiveFullVoice}
          \new Voice = "tenore" { \globalFive \tenFiveFullVoice }
          \new Voice = "basso" { \globalFive \basFiveFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 05 ("Trotz dem alten Drachen") - soprano 2

    \book { % No. 05 ("Trotz dem alten Drachen") - alto
      \bookOutputSuffix "05-alto"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalFive \sopIFiveFullVoice }
          \new Voice = "soprano2" { \globalFive \sopIIFiveFullVoice }
          \new Voice = "alto" { \highlightedVoice \globalFive \altFiveFullVoice}
          \new Voice = "tenore" { \globalFive \tenFiveFullVoice }
          \new Voice = "basso" { \globalFive \basFiveFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 05 ("Trotz dem alten Drachen") - alto

    \book { % No. 05 ("Trotz dem alten Drachen") - tenore
      \bookOutputSuffix "05-tenore"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalFive \sopIFiveFullVoice }
          \new Voice = "soprano2" { \globalFive \sopIIFiveFullVoice }
          \new Voice = "alto" { \globalFive \altFiveFullVoice}
          \new Voice = "tenore" { \highlightedVoice \globalFive \tenFiveFullVoice }
          \new Voice = "basso" {\globalFive \basFiveFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 05 ("Trotz dem alten Drachen") - tenore

    \book { % No. 05 ("Trotz dem alten Drachen") - basso
      \bookOutputSuffix "05-basso"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalFive \sopIFiveFullVoice }
          \new Voice = "soprano2" { \globalFive \sopIIFiveFullVoice }
          \new Voice = "alto" {  \globalFive \altFiveFullVoice}
          \new Voice = "tenore" { \globalFive \tenFiveFullVoice }
          \new Voice = "basso" { \highlightedVoice \globalFive \basFiveFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 05 ("Trotz dem alten Drachen") - basso

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % No 6.: Ihr aber seid nicht fleischlich %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
    \book { %No 6. ("Ihr aber seid nicht fleischlich") - complete
      \bookOutputSuffix "06-complete"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalSix \sopISixFullVoice }
          \new Voice = "soprano2" { \globalSix \sopIISixFullVoice }
          \new Voice = "alto" { \globalSix \altSixFullVoice}
          \new Voice = "tenore" { \globalSix \tenSixFullVoice }
          \new Voice = "basso" { \globalSix \basSixFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of bookNo 6. ("Ihr aber seid nicht fleischlich") - complete

    \book { %No 6. ("Ihr aber seid nicht fleischlich") - soprano 1
      \bookOutputSuffix "06-soprano1"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \highlightedVoice \globalSix \sopISixFullVoice }
          \new Voice = "soprano2" { \globalSix \sopIISixFullVoice }
          \new Voice = "alto" { \globalSix \altSixFullVoice}
          \new Voice = "tenore" { \globalSix \tenSixFullVoice }
          \new Voice = "basso" { \globalSix \basSixFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of bookNo 6. ("Ihr aber seid nicht fleischlich") - soprano 1

    \book { %No 6. ("Ihr aber seid nicht fleischlich") - soprano 2
      \bookOutputSuffix "06-soprano2"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalSix \sopISixFullVoice }
          \new Voice = "soprano2" { \highlightedVoice \globalSix \sopIISixFullVoice }
          \new Voice = "alto" { \globalSix \altSixFullVoice}
          \new Voice = "tenore" { \globalSix \tenSixFullVoice }
          \new Voice = "basso" { \globalSix \basSixFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of bookNo 6. ("Ihr aber seid nicht fleischlich") - soprano 2

    \book { %No 6. ("Ihr aber seid nicht fleischlich") - alto
      \bookOutputSuffix "06-alto"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalSix \sopISixFullVoice }
          \new Voice = "soprano2" { \globalSix \sopIISixFullVoice }
          \new Voice = "alto" { \highlightedVoice \globalSix \altSixFullVoice}
          \new Voice = "tenore" { \globalSix \tenSixFullVoice }
          \new Voice = "basso" { \globalSix \basSixFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of bookNo 6. ("Ihr aber seid nicht fleischlich") - alto

    \book { %No 6. ("Ihr aber seid nicht fleischlich") - tenore
      \bookOutputSuffix "06-tenore"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalSix \sopISixFullVoice }
          \new Voice = "soprano2" { \globalSix \sopIISixFullVoice }
          \new Voice = "alto" { \globalSix \altSixFullVoice}
          \new Voice = "tenore" { \highlightedVoice \globalSix \tenSixFullVoice }
          \new Voice = "basso" {\globalSix \basSixFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of bookNo 6. ("Ihr aber seid nicht fleischlich") - tenore

    \book { %No 6. ("Ihr aber seid nicht fleischlich") - basso
      \bookOutputSuffix "06-basso"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalSix \sopISixFullVoice }
          \new Voice = "soprano2" { \globalSix \sopIISixFullVoice }
          \new Voice = "alto" {  \globalSix \altSixFullVoice}
          \new Voice = "tenore" { \globalSix \tenSixFullVoice }
          \new Voice = "basso" { \highlightedVoice \globalSix \basSixFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of bookNo 6. ("Ihr aber seid nicht fleischlich") - basso

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %     No 07: Weg mit allen Schätzen      %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    \book { % No. 07 ("Weg mit allen Schätzen") - complete
      \bookOutputSuffix "07-complete"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano" { \globalSeven \sopSevenFullVoice }
          \new Voice = "alto" { \globalSeven \altSevenFullVoice}
          \new Voice = "tenore" { \globalSeven \tenSevenFullVoice }
          \new Voice = "basso" { \globalSeven \bassoevenFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 07 ("Weg mit allen Schätzen") - complete

    \book { % No. 07 ("Weg mit allen Schätzen") - soprano
      \bookOutputSuffix "07-soprano"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano" { \highlightedVoice  \globalSeven \sopSevenFullVoice }
          \new Voice = "alto" { \globalSeven \altSevenFullVoice}
          \new Voice = "tenore" { \globalSeven \tenSevenFullVoice }
          \new Voice = "basso" { \globalSeven \bassoevenFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 07 ("Weg mit allen Schätzen") - soprano

    \book { % No. 07 ("Weg mit allen Schätzen") - alto
      \bookOutputSuffix "07-alto"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano" { \globalSeven \sopSevenFullVoice }
          \new Voice = "alto" { \highlightedVoice \globalSeven \altSevenFullVoice}
          \new Voice = "tenore" { \globalSeven \tenSevenFullVoice }
          \new Voice = "basso" { \globalSeven \bassoevenFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 07 ("Weg mit allen Schätzen") - alto

    \book { % No. 07 ("Weg mit allen Schätzen") - alto
      \bookOutputSuffix "07-tenore"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano" { \globalSeven \sopSevenFullVoice }
          \new Voice = "alto" { \globalSeven \altSevenFullVoice}
          \new Voice = "tenore" { \highlightedVoice  \globalSeven \tenSevenFullVoice }
          \new Voice = "basso" { \globalSeven \bassoevenFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 07 ("Weg mit allen Schätzen") - tenore

    \book { % No. 07 ("Weg mit allen Schätzen") - basso
      \bookOutputSuffix "07-basso"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano" { \globalSeven \sopSevenFullVoice }
          \new Voice = "alto" { \globalSeven \altSevenFullVoice}
          \new Voice = "tenore" { \globalSeven \tenSevenFullVoice }
          \new Voice = "basso" { \highlightedVoice \globalSeven \bassoevenFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 07 ("Weg mit allen Schätzen") - basso

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %   No. 08: So aber Christus in euch ist %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
    \book { % No. 08 ("So aber Christus in euch ist") - complete
      \bookOutputSuffix "08-complete"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "alto" { \globalEight \altEightFullVoice }
          \new Voice = "tenore" { \globalEight \tenEightFullVoice }
          \new Voice = "alto" { \globalEight \basEightFullVoice}
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 08 ("So aber Christus in euch ist") - complete

    \book { % No. 08 ("So aber Christus in euch ist") - soprano 1
      \bookOutputSuffix "08-alto"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "alto" { \highlightedVoice \globalEight \altEightFullVoice }
          \new Voice = "tenore" { \globalEight \tenEightFullVoice }
          \new Voice = "alto" { \globalEight \basEightFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 08 ("So aber Christus in euch ist") - soprano 1

    \book { % No. 08 ("So aber Christus in euch ist") - soprano 2
      \bookOutputSuffix "08-tenore"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "alto" { \globalEight \altEightFullVoice }
          \new Voice = "tenore" { \highlightedVoice \globalEight \tenEightFullVoice }
          \new Voice = "alto" { \globalEight \basEightFullVoice}
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 08 ("So aber Christus in euch ist") - soprano 2

    \book { % No. 08 ("So aber Christus in euch ist") - basso
      \bookOutputSuffix "08-basso"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "alto" { \globalEight \altEightFullVoice }
          \new Voice = "tenore" { \globalEight \tenEightFullVoice }
          \new Voice = "alto" { \highlightedVoice \globalEight \basEightFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 08 ("So aber Christus in euch ist") - alto

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %       No 09: Gute Nacht, o Wesen       %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    \book { % No. 09 ("Gute Nacht, o Wesen") - complete
      \bookOutputSuffix "09-complete"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "sopranoI" { \globalNine \sopINineFullVoice }
          \new Voice = "sopranoII" { \globalNine \sopIINineFullVoice}
          \new Voice = "alto" { \globalNine \altNineFullVoice }
          \new Voice = "tenore" { \globalNine \tenNineFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 09 ("Gute Nacht, o Wesen") - complete


    \book { % No. 09 ("Gute Nacht, o Wesen") - soprano 1
      \bookOutputSuffix "09-soprano1"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "sopranoI" { \highlightedVoice  \globalNine \sopINineFullVoice }
          \new Voice = "sopranoII" { \globalNine \sopIINineFullVoice}
          \new Voice = "alto" { \globalNine \altNineFullVoice }
          \new Voice = "tenore" { \globalNine \tenNineFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 09 ("Gute Nacht, o Wesen") - soprano 1

    \book { % No. 09 ("Gute Nacht, o Wesen") - soprano 2
      \bookOutputSuffix "09-soprano2"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "sopranoI" { \globalNine \sopINineFullVoice }
          \new Voice = "sopranoII" { \highlightedVoice \globalNine \sopIINineFullVoice}
          \new Voice = "alto" { \globalNine \altNineFullVoice }
          \new Voice = "tenore" { \globalNine \tenNineFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 09 ("Gute Nacht, o Wesen") - soprano 2

    \book { % No. 09 ("Gute Nacht, o Wesen") - alto
      \bookOutputSuffix "09-alto"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "sopranoI" { \globalNine \sopINineFullVoice }
          \new Voice = "sopranoII" { \globalNine \sopIINineFullVoice}
          \new Voice = "alto" { \highlightedVoice  \globalNine \altNineFullVoice }
          \new Voice = "tenores" { \globalNine \tenNineFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 09 ("Gute Nacht, o Wesen") - alto

    \book { % No. 09 ("Gute Nacht, o Wesen") - tenore
      \bookOutputSuffix "09-tenore"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "sopranoI" { \globalNine \sopINineFullVoice }
          \new Voice = "sopranoII" { \globalNine \sopIINineFullVoice}
          \new Voice = "alto" { \globalNine \altNineFullVoice }
          \new Voice = "tenore" { \highlightedVoice \globalNine \tenNineFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 09 ("Gute Nacht, o Wesen") - tenore

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %       No. 10: So nun der Geist        %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
    \book { % No. 10 ("So nun der Geist") - soprano 1
      \bookOutputSuffix "10-complete"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalTen \sopITenFullVoice }
          \new Voice = "soprano2" { \globalTen \sopIITenFullVoice }
          \new Voice = "alto" { \globalTen \altTenFullVoice}
          \new Voice = "tenore" { \globalTen \tenTenFullVoice }
          \new Voice = "basso" { \globalTen \basTenFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 10 ("So nun der Geist") - complete

    \book { % No. 10 ("So nun der Geist") - soprano 1
      \bookOutputSuffix "10-soprano1"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \highlightedVoice \globalTen \sopITenFullVoice }
          \new Voice = "soprano2" { \globalTen \sopIITenFullVoice }
          \new Voice = "alto" { \globalTen \altTenFullVoice}
          \new Voice = "tenore" { \globalTen \tenTenFullVoice }
          \new Voice = "basso" { \globalTen \basTenFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 10 ("So nun der Geist") - soprano 1

    \book { % No. 10 ("So nun der Geist") - soprano 2
      \bookOutputSuffix "10-soprano2"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalTen \sopITenFullVoice }
          \new Voice = "soprano2" { \highlightedVoice \globalTen \sopIITenFullVoice }
          \new Voice = "alto" { \globalTen \altTenFullVoice}
          \new Voice = "tenore" { \globalTen \tenTenFullVoice }
          \new Voice = "basso" { \globalTen \basTenFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 10 ("So nun der Geist") - soprano 2

    \book { % No. 10 ("So nun der Geist") - alto
      \bookOutputSuffix "10-alto"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalTen \sopITenFullVoice }
          \new Voice = "soprano2" { \globalTen \sopIITenFullVoice }
          \new Voice = "alto" { \highlightedVoice \globalTen \altTenFullVoice}
          \new Voice = "tenore" { \globalTen \tenTenFullVoice }
          \new Voice = "basso" { \globalTen \basTenFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 10 ("So nun der Geist") - alto

    \book { % No. 10 ("So nun der Geist") - tenore
      \bookOutputSuffix "10-tenore"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalTen \sopITenFullVoice }
          \new Voice = "soprano2" { \globalTen \sopIITenFullVoice }
          \new Voice = "alto" { \globalTen \altTenFullVoice}
          \new Voice = "tenore" { \highlightedVoice \globalTen \tenTenFullVoice }
          \new Voice = "basso" {\globalTen \basTenFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 10 ("So nun der Geist") - tenore

    \book { % No. 10 ("So nun der Geist") - basso
      \bookOutputSuffix "10-basso"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano1" { \globalTen \sopITenFullVoice }
          \new Voice = "soprano2" { \globalTen \sopIITenFullVoice }
          \new Voice = "alto" {  \globalTen \altTenFullVoice}
          \new Voice = "tenore" { \globalTen \tenTenFullVoice }
          \new Voice = "basso" { \highlightedVoice \globalTen \basTenFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 10 ("So nun der Geist") - basso

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %   No. 11: Weicht, ihr Trauergeister   %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    \book { % No. 11 ("Weicht, ihr Trauergeister") - complete
      \bookOutputSuffix "11-complete"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano" { \globalEleven \sopElevenFullVoice }
          \new Voice = "alto" { \globalEleven \altElevenFullVoice}
          \new Voice = "tenore" { \globalEleven \tenElevenFullVoice }
          \new Voice = "basso" { \globalEleven \basElevenFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 11 ("Weicht, ihr Trauergeister") - complete

    \book { % No. 11 ("Weicht, ihr Trauergeister") - soprano
      \bookOutputSuffix "11-soprano"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano" { \highlightedVoice  \globalEleven \sopElevenFullVoice }
          \new Voice = "alto" { \globalEleven \altElevenFullVoice}
          \new Voice = "tenore" { \globalEleven \tenElevenFullVoice }
          \new Voice = "basso" { \globalEleven \basElevenFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 11 ("Weicht, ihr Trauergeister") - soprano

    \book { % No. 11 ("Weicht, ihr Trauergeister") - alto
      \bookOutputSuffix "11-alto"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano" { \globalEleven \sopElevenFullVoice }
          \new Voice = "alto" { \highlightedVoice \globalEleven \altElevenFullVoice}
          \new Voice = "tenore" { \globalEleven \tenElevenFullVoice }
          \new Voice = "basso" { \globalEleven \basElevenFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 11 ("Weicht, ihr Trauergeister") - alto

    \book { % No. 11 ("Weicht, ihr Trauergeister") - alto
      \bookOutputSuffix "11-tenore"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano" { \globalEleven \sopElevenFullVoice }
          \new Voice = "alto" { \globalEleven \altElevenFullVoice}
          \new Voice = "tenore" { \highlightedVoice  \globalEleven \tenElevenFullVoice }
          \new Voice = "basso" { \globalEleven \basElevenFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 11 ("Weicht, ihr Trauergeister") - tenore

    \book { % No. 11 ("Weicht, ihr Trauergeister") - basso
      \bookOutputSuffix "11-basso"
      \score {
        \unfoldRepeats
        \new Staff <<
          \backgroundVoice
          \new Voice = "soprano" { \globalEleven \sopElevenFullVoice }
          \new Voice = "alto" { \globalEleven \altElevenFullVoice}
          \new Voice = "tenore" { \globalEleven \tenElevenFullVoice }
          \new Voice = "basso" { \highlightedVoice \globalEleven \basElevenFullVoice }
        >>
        \stafftovoice
      } % end of score
    } %end of book No. 11 ("Weicht, ihr Trauergeister") - basso