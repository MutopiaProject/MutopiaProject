\version "2.16.0"

#(define-markup-command (list-item layout props text) (markup-list?)
  (interpret-markup layout props
   #{\markup \override #'(line-width . 92)
     \line { \hspace #3 • \column { \wordwrap-lines { #text } }} #}))

\markup {
  \override #'(line-width . 100)
  \column {
    \vspace #2
    \fill-line {\bold "Benjamin Blake" }
    \vspace #1
    \justify {
      Benjamin Blake (born 22 February 1751, in Hackney (London), Died
      in London 1827) was an English violinist, viola player and
      composer. Most of what is known about him comes from information
      he supplied for Sainsbury’s dictionary in 1824.  As a boy he was
      taught the violin by Antonín Kammel, and later by Wilhelm Cramer,
      leader of the Italian Opera orchestra at the King’s Theatre. Blake
      himself played the violin in this orchestra from about 1775, and
      also at the Concert of Ancient Music. He came into public
      prominence however as a viola player. He was principal and soloist
      at the Professional Concert from 1785 to 1793, appearing regularly
      in string quartets with Cramer. He also played the viola at the
      Prince of Wales’s musical evenings, and his unusual interest in
      this instrument led to his publishing 18 duos for violin and viola
      in the 1780s. After the 1793 season Blake resigned from public
      performance. He was already studying the piano under Clementi to
      equip himself as a teacher, and though he continued to play the
      viola for the Prince of Wales he lived almost entirely by teaching
      until 1820 when he retired. Some of his duos merit revival, as
      also his sonatas for violin and piano, which were published in
      score and show an interesting taste for minor keys; the violin
      parts are called ‘accompaniments’ on the title page, but wrongly.
    }
    \vspace #0.5
    \justify { Blake's published works: }
    \vspace #0.4
    \list-item {
      [Op. 1] Six Duets for a violin and tenor.
      Publisher: London : Printed for W. Napier (c1780)
    }
    \list-item {
      [Op. 2] A Second Sett of 6 Duetts for a violin and tenor.
      Publisher: London : J. Blundell, (1781)
    }
    \list-item {
      [Op. 3] A Third Sett of 6 Duetts for a violin and tenor. Printed
      for the Author: London, (1785)
    }
    \list-item {
      [Op. 4] Six sonatas for the piano forte with an accompaniment
      for a violin. Printed for the author by Preston & Son, (1794)
    }
    \list-item {
      [Op. 5] Nine Divertimentos, for the Piano Forte, with an
      Accompaniment for a violin ad libitum.
      Publisher: London : Birchall, for the Author, (1811)
    }
    \list-item {
      [Op. 6] A miscellaneous collection of vocal music, with a
      separate accompaniment for the harp or piano forte; composed and
      respectfully dedicated (by permission) to the Right Honble. the
      Countess of Bridgewater. (1814). Contents: The Indian girl — A
      supplication / the words by Captain William Blake — A touch at
      the times — The beggars petition / the words by Thomas Moss
    }
    \list-item {
      [Op. 7] A Duet for violin and tenor. Publisher: London :
      Birchall (c1820)
    }
    \list-item {
      [Op. 9] Three Solos for the tenor with an accompaniment for the
      violoncello (c1825) (with a note that they may also be played on
      a violin)
    }
    \list-item {
      op.8 is missing
    }
  }
}
