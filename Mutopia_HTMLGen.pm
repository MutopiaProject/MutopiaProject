#!/usr/bin/perl -w
#
# Mutopia_HTMLGen.pm
# Subroutines to help with generating HTML pages from html-in/* files.

package Mutopia_HTMLGen;

# use strict;	# Must declare variables with "my" or "use vars"
use Mutopia_Archive; # helpful subroutines
use POSIX qw(strftime);
use Time::Local;
use utf8;
use vars qw(%RDF_DATA);

my %RDF_DATA;
my $OUTPUT_FILE;

# makeHTML(\%RDF_DATA)
# Read *.html-in, fill with generated data, and write *.html
#
sub makeHTML($) {
    my $rdf_ref = shift;

    %RDF_DATA = %$rdf_ref; 
    chdir "html-in" or die "cannot chdir to html-in: $!";
    my @infiles = glob("*.html-in");
    chdir "..";

    for my $infile(@infiles) {
        open (IN, "<:utf8", "html-in/$infile") or die "cannot open $infile: $!";
        local $_ = join "", <IN>;
        close IN;
    
        # stick warning message in
        my $msg = <<________EOM;$msg=~s/^ {8}//gm;s/<head/\n$msg\n<head/;
        <!--*********************************************************
            ** Automatically generated from $infile.
            ** Any changes made to this file will be lost!
            *********************************************************-->
________EOM

        ($OUTPUT_FILE = $infile) =~ s/\.html-in$/.html/
                or die "invalid filename: $infile";

        replace_placeholders(\$_);

        open OUT, ">:utf8", "$OUTPUT_FILE" or die "cannot open >$OUTPUT_FILE: $!";
        print OUT $_;
        close OUT;

        undef $OUTPUT_FILE;
    }

    chdir "html-in" or die "cannot chdir to html-in: $!";
    @infiles = glob("*.rss-in");
    chdir "..";

    for my $infile(@infiles) {
        open (IN, "<:utf8", "html-in/$infile") or die "cannot open $infile: $!";
        local $_ = join "", <IN>;
        close IN;

        ($OUTPUT_FILE = $infile) =~ s/\.rss-in$/.rss/
                or die "invalid filename: $infile";

        replace_placeholders(\$_);

        open OUT, ">:utf8", "$OUTPUT_FILE" or die "cannot open >$OUTPUT_FILE: $!";
        print OUT $_;
        close OUT;

        undef $OUTPUT_FILE;
    }
}

# replace_placeholders(\$html)
# Replaces placeholders like [[ code ]] with generated HTML
#
sub replace_placeholders($) {
    my $html = shift;

    # Execute the contents of [[ ]] brackets in the HTML, and substitute
    # the value returned.  The trickery with "eval" is to ensure that we
    # see the error messages generated, if there were any.
    
    1 while $$html =~ s(\[\[(.*?)\]\])(
        my $return;
        eval "\$return = (sub{$1})->()";
        die $@ if $@;
        $return;
    )ges;
}

###################################################################
# Subroutines to generate useful fragments of HTML.  The variable
# %RDF_DATA contains the collection data, and $OUTPUT_FILE contains
# the name of the file currently being outputted to.
###################################################################

sub BROWSE_BY_COMPOSER {
    my %comps = Mutopia_Archive::getData("datafiles/composers.dat");
    my $html = "";
    for my $k (sort {Mutopia_Archive::byComposer($a,$b)} keys %comps) {

        # How many pieces by this composer?
	open (SEARCHCACHE, '<:utf8', 'datafiles/searchcache.dat')
            or die "cannot open datafiles/searchcache.dat: $!";
	my $noofpieces = 0;
	my $finish = 0;
	do {
            chomp(my $templine = <SEARCHCACHE>);
	    if ($templine =~ /^composerK:$k/) { $noofpieces++ }
	    if ($templine =~ /^date/) { $finish = 1 }
        } until (($finish == 1) || (eof SEARCHCACHE));
        close(SEARCHCACHE);
        
        $html .= "<a href='cgibin/make-table.cgi?Composer=$k'>";
        $html .= $comps{$k} . "</a> [$noofpieces]<br />\n";
    }
    return $html;
}

sub BROWSE_BY_INSTRUMENT {
    my %insts = Mutopia_Archive::getData("datafiles/instruments.dat");
    my $html = "";
    for my $k (sort {Mutopia_Archive::byInstrument($a,$b)} keys %insts) {
    
        # How many pieces for this instrument?
	open (SEARCHCACHE, '<:utf8', 'datafiles/searchcache.dat')
            or die "cannot open datafiles/searchcache.dat: $!";
	my $noofpieces = 0;
	my $finish = 0;
	do {
            chomp(my $templine = <SEARCHCACHE>);
	    if ( ($templine =~ /^instruments:/) &&
	         ( $templine =~ /$k/ )) { $noofpieces++ }
            if (($k eq "Harp") and ($templine =~ /Harpsichord/)) { $noofpieces-- }
	    if ($templine =~ /^licence/) { $finish = 1 }
        } until (($finish == 1) || (eof SEARCHCACHE));
        close(SEARCHCACHE);

        $html .= "<a href='cgibin/make-table.cgi?Instrument=$k'>";
        $html .= $insts{$k} . "</a> [$noofpieces]<br />\n";
    }
    return $html;
}

sub BROWSE_BY_STYLE {
    my %styles = Mutopia_Archive::getData("datafiles/styles.dat");
    my $html = "";
    for my $k (sort keys %styles) {
    
        # How many pieces in this style?
	open (SEARCHCACHE, '<:utf8', 'datafiles/searchcache.dat')
            or die "cannot open datafiles/searchcache.dat: $!";
	my $noofpieces = 0;
	my $finish = 0;
	do {
            chomp(my $templine = <SEARCHCACHE>);
	    if ($templine =~ /^style:$styles{$k}/) { $noofpieces++ }
	    if ($templine =~ /^title/) { $finish = 1 }
        } until (($finish == 1) || (eof SEARCHCACHE));
        close(SEARCHCACHE);

        $html .= "<a href='cgibin/make-table.cgi?Style=$k'>";
        $html .= $styles{$k} . "</a> [$noofpieces]<br />\n";
    }
    return $html;
}

sub BROWSE_COLLECTIONS {
    open (COLLECTIONS, '<:utf8', 'datafiles/collections.dat');
    my $lineread;
    my $colname;
    my $coldesc;
    my $html = "<ul>\n";
    do {
        chomp($lineread = <COLLECTIONS>);
        $lineread =~ /^(\w+):([\w\W]+):/;
        $colname = $1;
        $coldesc = $2;

        $html .= "<li><a href=\"cgibin/make-table.cgi?collection=";
        $html .= $colname . "&amp;preview=1\">" . $coldesc . "</a></li>\n";
    } until (eof COLLECTIONS);

    $html .= "</ul>\n";
    close (COLLECTIONS);
    
    return $html;
}

sub COMPOSER_OPTIONS {
    my %comps = Mutopia_Archive::getData("datafiles/composers.dat");
    my $html = "";
    for my $k (sort {Mutopia_Archive::byComposer($a,$b)} keys %comps) {
        $html .= "<option value='$k'>" . $comps{$k} . "</option>\n";
    } 
    return $html;
}

sub COMPOSER_LIST {
    my %comps = Mutopia_Archive::getData("datafiles/composers.dat");
    my $html = "";
    for my $k (sort {Mutopia_Archive::byComposer($a,$b)} keys %comps) {
        $html .= $k . ", ";
    }
    return substr($html, 0, -2);
}

sub INSTRUMENT_OPTIONS {
    my %insts = Mutopia_Archive::getData("datafiles/instruments.dat");
    my $html = "";         
    for my $k (sort {Mutopia_Archive::byInstrument($a,$b)} keys %insts) {
        $html .= "<option value='$k'>" . $insts{$k} . "</option>\n";
    } 
    return $html;
}

sub STYLE_OPTIONS {
    my %styles = Mutopia_Archive::getData("datafiles/styles.dat");
    my $html = "";
    for my $k (sort keys %styles) {
        $html .= "<option value='$k'>" . $styles{$k} . "</option>\n";
    } 
    return $html;
}

sub STYLE_LIST {
    my %styles = Mutopia_Archive::getData("datafiles/styles.dat");
    my $html = "";
    for my $k (sort keys %styles) {
        $html .= $k . ", ";
    }
    return substr($html, 0, -2);
}

sub NUMBER_OF_PIECES {
    # returns the number of pieces (counted from musiccache.dat)
    
    open (CACHE, '<:utf8', 'datafiles/musiccache.dat');
    chomp(my $headerlength = <CACHE>);
    my $numberofpieces = 0;
    while (1) {
        chomp(my $templine = <CACHE>);
        if ($templine =~ /^[0-9]+:[0-9]+$/) { $numberofpieces++ }
	last if $templine eq "**********";
    }
    close(CACHE);
    return $numberofpieces;
}

sub LATEST_ADDITIONS($) {
    # returns HTML of links to the most recent pieces.
    # argument is the number of pieces to display
    
    #order by ID, most recent first
    my @recent = sort {
        $a->{id} =~ /-(\d+)$/ or die "invalid id: ", $a->{id};
        my $idA = $1;
        $b->{id} =~ /-(\d+)$/ or die "invalid id: ", $b->{id};
        my $idB = $1;

        return $idB <=> $idA;
    } values %RDF_DATA;
   
    # generate HTML listing for most recent pieces
    my $html = ""; 
    my $last_piece = (shift) - 1;
    for my $piece(@recent[0 .. $last_piece]) {
        my($date, $id) = $piece->{id} =~ m|-(\d+/\d+/\d+)-(\d+)$|
                or die "invalid id: " . $piece->{id};

        $html .= "<b>$date</b> - ";
        $html .= "<a href='cgibin/piece-info.cgi?id=$id'>";
        $html .= $piece->{title} . ", ";
        if ($piece->{composer} !~ /^(Anonymous|Traditional)$/) {
            $html .= "by ";
        }
        $html .= $piece->{composer};
        $html .= " - " . $piece->{opus} . " for " . $piece->{for};
        $html .= "</a><br />\n";
    }
    return $html;
}

sub LATEST_ADDITIONS_RSS($) {
    # returns XML of links to the most recent pieces.
    # argument is the number of pieces to display
        
    #order by ID, most recent first
    my @recent = sort {
        $a->{id} =~ /-(\d+)$/ or die "invalid id: ", $a->{id};
        my $idA = $1;
        $b->{id} =~ /-(\d+)$/ or die "invalid id: ", $b->{id}; 
        my $idB = $1;
        
        return $idB <=> $idA;
    } values %RDF_DATA;
    
    # generate XML listing for most recent pieces
    my $xml = "<pubDate>". strftime("%a, %d %b %Y %T %z", localtime()) . "</pubDate>\n";
    my ($fy, $fm, $fd) = $recent[0]->{id} =~ m|-(\d+)/(\d+)/(\d+)-\d+$|;
    $xml .= "<lastBuildDate>" . strftime("%a, %d %b %Y %T %z", localtime(timelocal(0, 0, 0, $fd, $fm - 1, $fy))) . "</lastBuildDate>\n\n";

    my $last_piece = (shift) - 1;
    for my $piece(@recent[0 .. $last_piece]) {
        my($y, $m, $d, $id) = $piece->{id} =~ m|-(\d+)/(\d+)/(\d+)-(\d+)$|
                or die "invalid id: " . $piece->{id};
    
        $xml .= "<item>\n";
        $xml .= "<title>" . $piece->{composer} . ": " . $piece->{title} . "</title>\n";
        $xml .= "<link>http://www.mutopiaproject.org/cgibin/piece-info.cgi?id=" . $id . "</link>\n";
        $xml .= "<guid>http://www.mutopiaproject.org/cgibin/piece-info.cgi?id=" . $id . "</guid>\n";
        $xml .= "<description>" . $piece->{title} . ", ";
        $xml .= $piece->{title} . ", ";
        if ($piece->{composer} !~ /^(Anonymous|Traditional)$/) {
            $xml .= "by ";
        }
        $xml .= $piece->{composer};
        $xml .= " - " . $piece->{opus} . " for " . $piece->{for};
        $xml .= "</description>\n";
        $xml .= "<pubDate>" . strftime("%a, %d %b %Y %T %z", localtime(timelocal(0, 0, 0, $d, $m - 1, $y))) . "</pubDate>\n";
        $xml .= "</item>\n\n";
    }
    return $xml;
}

sub ALL_PIECES {
 # returns HTML of links to all pieces in the archive (made from the cache)
 my $html = "";
 
 open (CACHE, '<:utf8', 'datafiles/musiccache.dat');

 chomp (my $headerlength = <CACHE>);
 seek CACHE, $headerlength, 0;

 until (eof CACHE) {
  chomp (my $checkline = <CACHE>);
  if ($checkline ne "**********") { print "ERROR in the datafile - rebuild cache"; }
  chomp (my $idno = <CACHE>);
  chomp (my $midrif = <CACHE>);
  chomp (my $musicnm = <CACHE>);
  chomp (my $lyfile = <CACHE>);
  chomp (my $midfile = <CACHE>);
  chomp (my $a4psfile = <CACHE>);
  chomp (my $a4pdffile = <CACHE>);
  chomp (my $letpsfile = <CACHE>);
  chomp (my $letpdffile = <CACHE>);
  chomp (my $pngfile = <CACHE>);
  chomp (my $pngheight = <CACHE>);
  chomp (my $pngwidth = <CACHE>);
  chomp (my $title = <CACHE>);
  chomp (my $composer = <CACHE>);
  chomp (my $opus = <CACHE>);
  chomp (my $lyricist = <CACHE>);
  chomp (my $instrument = <CACHE>);
  chomp (my $date = <CACHE>);
  chomp (my $style = <CACHE>);
  chomp (my $metre = <CACHE>);
  chomp (my $arranger = <CACHE>);
  chomp (my $source = <CACHE>);
  chomp (my $copyright = <CACHE>);
  chomp (my $id = <CACHE>);
  chomp (my $maintainer = <CACHE>);
  chomp (my $maintaineremail = <CACHE>);
  chomp (my $maintainerweb = <CACHE>);
  chomp (my $extrainfo = <CACHE>);
  chomp (my $lilypondversion = <CACHE>);
  chomp (my $collections = <CACHE>);
  chomp (my $printurl = <CACHE>);
  
  if ($opus eq "") { $opus = "&nbsp;" }
  
  $html .= "<tr><td>".$composer."</td><td><a href=\"cgibin/piece-info.cgi?id=".$idno."\">";
  $html .= $title."</a></td><td>".$opus."</td><td>".$instrument."</td></tr>\n";
 }

 close(CACHE);
 return $html;
}

sub HEAD($) {
    # returns nice index, to go at top of document.  Puts main body
    # of document in a table.  Must be used with TAIL.

    my $dontlinkto = shift;
    
    my $html = <<____EOH; $html =~ s/^ *//gm; # trim leading whitespace 
    <table width="100%" border="0"><tr><td> </td></tr></table>

    <table border="1" width="95%" cellpadding="10" cellspacing="0"
       bgcolor="#edfaff" align="center" summary="Mutopia Project logo and
       links to mirrors"><tr>

    <td align="center"><img src="images/logo-small.png" alt="Mutopia Project Logo"
       width="186" height="61" /></td>
    <td align="center"><b>All music in the Mutopia Project is free to
    download, print out, perform and distribute.<br /> 
    [[ NUMBER_OF_PIECES() ]] pieces of music are now available.</b></td>
    <td align="center">
      Save our bandwidth - use a mirror!<br />
      <!-- <a href="http://ibiblio.org/mutopia/" title="Mirror in the USA">USA</a> | -->
      <a href="http://www.mutopiaproject.org/" title="Main site in Canada"><b>Canada</b></a> |
      <a href="http://mutopia.planetmirror.com/" title="Mirror in Australia">Australia</a> |

      <!-- <a href="http://gd.tuwien.ac.at/art/Mutopia/" title="Mirror in Austria">Austria</a> | -->
      <a href="http://eremita.di.uminho.pt/mutopia/" title="Mirror in Portugal">Portugal</a><br />
      <a href="ftp://ibiblio.org/pub/multimedia/mutopia/" title="FTP in USA">Mutopia Archive via FTP</a>
    </td>
    </tr>
    <tr><td colspan="3" align="center">

    [[ INDEX("$dontlinkto") ]]

    [[ BREAK() ]]
____EOH
    return $html;
}

sub HEAD_DE($) {
    # returns nice index, to go at top of document.  Puts main body
    # of document in a table.  Must be used with TAIL.

    my $dontlinkto = shift;
    
    my $html = <<____EOH; $html =~ s/^ *//gm; # trim leading whitespace 
    <table width="100%" border="0"><tr><td> </td></tr></table>

    <table border="1" width="95%" cellpadding="10" cellspacing="0"
       bgcolor="#edfaff" align="center" summary="Logo des Mutopia-Projektes
       und Links zu Mirrorsites"><tr>

    <td align="center"><img src="images/logo-small.png" alt="Logo des Mutopia-Projektes"
       width="186" height="61" /></td>
    <td align="center"><b>Die gesamte Musik aus dem Mutopia-Projekt kann frei
    heruntergeladen, ausgedruckt, aufgeführt und weitergegeben werden. Bisher
    sind <i>[[ NUMBER_OF_PIECES() ]]</i> Musikstücke vorhanden!</b></td>
    <td align="center">
    <table border="0" cellpadding="0" cellspacing="2">
    <tr><td align="center"><a href="http://www.MutopiaProject.org/">http://www.MutopiaProject.org/</a>
    </td><td align="center"><a href="http://www.MutopiaProject.org/"><img src="images/can.png" width="32" height="16" border="0" alt="Use server in Canada" /></a></td></tr>
    <tr><td align="center"><a href="http://ibiblio.org/mutopia/">http://ibiblio.org/mutopia/</a>
    </td><td align="center"><a href="http://ibiblio.org/mutopia/"><img src="images/usa.png" width="32" height="17" border="0" alt="Use server in the USA" /></a></td></tr>
    <tr><td align="center"><a href="http://mutopia-gd.tuwien.ac.at/">http://mutopia-gd.tuwien.ac.at/</a>
    </td><td align="center"><a href="http://mutopia-gd.tuwien.ac.at/"><img src="images/eu.png" width="32" height="21" border="0" alt="Use server in the EU" /></a></td></tr>
    <tr><td align="center"><a href="http://mutopia.planetmirror.com/">http://mutopia.planetmirror.com/</a>
    </td><td align="center"><a href="http://mutopia.planetmirror.com/"><img src="images/aus.png" width="32" height="16" border="0" alt="Use server in Australia" /></a></td></tr></table>
    </td>
    </tr>
    <tr><td colspan="3" align="center">

    [[ INDEX_DE("$dontlinkto") ]]

    [[ BREAK() ]]
____EOH
    return $html;
}

sub INDEXHEAD {
    # I thought I'd stick this in here rather than in index.html-in as
    # we might want to put it differently in the CD version. Possibly.
    # I don't know - feel free to move it back!
    my $html = <<____EOH; $html =~ s/^ *//gm; # trim leading whitespace
<div style="float: right; margin: 10px; width: 30%;">
<div style="background: white; border: 1px solid black; padding: 10px 10px 1px 10px; margin: 10px;">

<center>
    <form action="cgibin/make-table.cgi" method="get">
    <input type="text" name="searchingfor" size="20" />
    <input type="submit" value="Search" />
    </form>
</center>

<p><b>Browse by composer:</b> <a href="cgibin/make-table.cgi?Composer=BachJS">Bach</a>, <a href="cgibin/make-table.cgi?Composer=BeethovenLv">Beethoven</a>, <a href="cgibin/make-table.cgi?Composer=ChopinFF">Chopin</a>, <a href="cgibin/make-table.cgi?Composer=DiabelliA">Diabelli</a>, <a href="cgibin/make-table.cgi?Composer=HandelGF">Handel</a>, <a href="cgibin/make-table.cgi?Composer=MozartWA">Mozart</a>, <a href="cgibin/make-table.cgi?Composer=SchumannR">Schumann</a>, <a href="cgibin/make-table.cgi?Composer=SorF">Sor</a>. <a href="browse.html#byComposer">[Full list of composers]</a></p>
<p><b>Browse by instrument:</b> <a href="cgibin/make-table.cgi?Instrument=Piano">Piano</a>, <a href="cgibin/make-table.cgi?Instrument=Voice">Vocal</a>, <a href="cgibin/make-table.cgi?Instrument=Organ">Organ</a>, <a href="cgibin/make-table.cgi?Instrument=Violin">Violin</a>, <a href="cgibin/make-table.cgi?Instrument=Guitar">Guitar</a>, <a href="cgibin/make-table.cgi?Instrument=Orchestra">Orchestra</a>. <a href="browse.html#byInstrument">[Full list of instruments]</a></p>

<p align="center"><b><a href="piece-list.html">List all music</a></b></p>
</div>
<div style="background: white; border: 1px solid black; padding: 1px 10px 1px 10px; margin: 10px;">
    <h4 align="center"><b>Latest additions</b> [<a href="latestadditions.html">More...</a>]</h4>
    <p>
    [[ LATEST_ADDITIONS(8) ]]
    </p>
</div>
</div>
       
____EOH
    return $html;
}

sub INDEXHEAD_DE {
    my $html = <<____EOH; $html =~ s/^ *//gm; # trim leading whitespace
    <p align="center"><b>Latest additions</b> (<a href="latestadditions.html">
       more...</a>)</p>
    <p>
    
    [[ LATEST_ADDITIONS(6) ]]
    
    </p>
    </td>

    <td align="center">
    <form action="cgibin/make-table.cgi" method="get">
    <input type="text" name="searchingfor" size="30" />
    <input type="submit" value="Search" />
    </form>
    <p><a href="piece-list.de.html">Alle Stücke anzeigen </a></p>
    <p>Alternatively try an <a href="advsearch.de.html">advanced search</a>,<br />
       or browse by... <a href="browse.de.html#byComposer">Composer</a>,
       <a href="browse.de.html#byInstrument">Instrument</a><br />
       or <a href="browse.de.html#byStyle">Musical Style</a></p>
    <!--<p><a href="http://www.cs.helsinki.fi/group/cbrahms/demoengine/">Search by melody with C-Brahms melody-based search</a></p>-->
       
    [[ BREAK() ]]
____EOH
    return $html;
}

sub BREAK {
    # When using HEAD and TAIL, use BREAK to start a new table.
    my $html = <<____EOH; $html =~ s/^ *//gm; # trim leading whitespace
    </td></tr>
    </table>

    <!-- Spacer table -->
    <table width="100%" border="0"><tr><td> </td></tr></table>

    <table border="1" width="98%" cellpadding="10" cellspacing="0"
       bgcolor="#edfaff" align="center">
    <tr><td align="left">
____EOH
    return $html;
}

sub TAIL($) {
    # returns index and disclaimer for bottom of document.  Puts
    # main body of document in a "window".  Must be used with HEAD.

    my $dontlinkto = shift;
    my $html = <<____EOH; $html =~ s/^ *//gm; # trim leading whitespace 
    [[ BREAK() ]]
    
    <!-- XXX Valid XHTML button -->
    <p align="center">
    
    [[ INDEX("$dontlinkto") ]]
    
    </p>
	<p><font size="-1em"><b>Disclaimer: The Mutopia
    Project is run by volunteers, and the material within it is provided
    "as-is".  NO WARRANTY of any kind is made, including fitness
    for any particular purpose.  No claim is made as to the accuracy or the
    factual, editorial or musical correctness of any of the material
    provided here.</b></font></p>
    </td></tr></table>

    <!-- Spacer table -->
    <table width="100%" border="0"><tr><td> </td></tr></table>

____EOH
    return $html;
}

sub TAIL_DE($) {
    # returns index and disclaimer for bottom of document.  Puts
    # main body of document in a "window".  Must be used with HEAD.

    my $dontlinkto = shift;
    my $html = <<____EOH; $html =~ s/^ *//gm; # trim leading whitespace 
    [[ BREAK() ]]
    
    <!-- XXX Valid XHTML button -->
    <p align="center">
    
    [[ INDEX_DE("$dontlinkto") ]]
    
    </p>
	<p><font size="-1em"><b>Disclaimer: The Mutopia
    Project is run by volunteers, and the material within it is provided
    "as-is".  NO WARRANTY of any kind is made, including fitness
    for any particular purpose.  No claim is made as to the accuracy or the
    factual, editorial or musical correctness of any of the material
    provided here.</b></font></p>
    </td></tr></table>

    <!-- Spacer table -->
    <table width="100%" border="0"><tr><td> </td></tr></table>

____EOH
    return $html;
}

sub INDEX($) {
    my $dontlinkto = shift;
    my $html = "";
    my $currpage = 0;
    
    my @pages = ("index", "Home",
                 "browse", "Browse the Archive",
                 "advsearch", "Advanced Search",
                 "legal", "License Details",
                 "contribute", "How to Contribute",
                 "projects", "In Progress",
                 "contact", "Contact and Discussion");

    # We don't want the current page to be made a link
    for($currpage = 0; $currpage < (@pages); $currpage += 2) {
       if ($pages[$currpage] eq $dontlinkto) {
          $html = $html . $pages[$currpage+1];
       } else {
          $html = $html . "<a href=\"" . $pages[$currpage] . ".html\">" .
             $pages[$currpage+1] . "</a>";
       }
       
    # The last link on the line doesn't want a "|" after it; the rest do
       if ($currpage != (@pages) - 2) { $html = $html . " |\n" }
          else { $html = $html . "\n" }
    }

    return $html;
}

sub INDEX_DE($) {
    my $dontlinkto = shift;
    my $html = "";
    my $currpage = 0;
    
    my @pages = ("index", "Startseite",
                 "browse", "Archiv durchblättern",
                 "advsearch", "Erweiterte Suche",
                 "help", "Hilfe",
                 "legal", "Rechtliche Angelegenheiten",
                 "contribute", "Etwas beitragen",
                 "newsletters", "Newsletter",
                 "projects", "In Arbeit");

    # We don't want the current page to be made a link
    for($currpage = 0; $currpage < (@pages); $currpage += 2) {
       if ($pages[$currpage] eq $dontlinkto) {
          $html = $html . $pages[$currpage+1];
       } else {
          $html = $html . "<a href=\"" . $pages[$currpage] . ".de.html\">" .
             $pages[$currpage+1] . "</a>";
       }
       
    # The last link on the line doesn't want a "|" after it; the rest do
       if ($currpage != (@pages) - 2) { $html = $html . " |\n" }
          else { $html = $html . "\n" }
    }

    return $html;
};

1;
