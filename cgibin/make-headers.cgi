#!/usr/bin/perl -T
#
# make-headers.cgi

use POSIX;

read(STDIN, $buffer, $ENV{'CONTENT_LENGTH'});
@pairs = split(/&/, $buffer);
foreach $pair (@pairs) {
 ($name, $value) = split(/=/,$pair);
 $value =~ tr/+/ /;
 $value =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C", hex($1))/eg;
 $FORM{$name} = $value;
}

# Check for problems with the various fields
$errors = 0;
if ($FORM{mutopiatitle} eq "") {$error[$errors] = "No title given";$errors++} else {$mutopiatitle = $FORM{mutopiatitle} }
if (($FORM{mutopiacomposer} eq "new") or ($FORM{mutopiacomposer} eq "")) {
 if ($FORM{newmutopiacomposer} eq "") {$error[$errors] = "No composer selected";$errors++} else {$mutopiacomposer = $FORM{newmutopiacomposer} }
} else {$mutopiacomposer = $FORM{mutopiacomposer} }
$mutopiapoet = $FORM{mutopiapoet};
$mutopiaopus = $FORM{mutopiaopus};
$mutopiainstrument = "";
if ($FORM{mutopiainstrument1} ne "") { $mutopiainstrument = $FORM{mutopiainstrument1} }
if ($FORM{mutopiainstrument2} ne "") {
 if ($mutopiainstrument eq "") { $mutopiainstrument = $FORM{mutopiainstrument2} } else {
  $mutopiainstrument = $mutopiainstrument . ", " . $FORM{mutopiainstrument2}
 }
}
if ($FORM{newmutopiainstrument} ne "") {
 if ($mutopiainstrument eq "") { $mutopiainstrument = $FORM{newmutopiainstrument} } else {
  $mutopiainstrument = $mutopiainstrument . ", " . $FORM{newmutopiainstrument}
 }
}
if ($mutopiainstrument eq "") {$error[$errors] = "No instrument given";$errors++}
$date = $FORM{date};
if ($FORM{source} eq "") {$error[$errors] = "No source given";$errors++} else {$source = $FORM{source} }
if ($FORM{style} eq "") {$error[$errors] = "No style selected";$errors++} else {$style = $FORM{style} }
if ($FORM{copyright} eq "") {$error[$errors] = "No copyright selected";$errors++} else {$copyright = $FORM{copyright} }
if ($FORM{maintainer} eq "") {$error[$errors] = "No maintainer specified";$errors++} else {$maintainer = $FORM{maintainer} }
$maintainerEmail = $FORM{maintainerEmail};
$maintainerWeb = $FORM{maintainerWeb};
if ($FORM{lastupdated} eq "") {$error[$errors] = "Date the piece was last updated not given";$errors++} else {$lastupdated = $FORM{lastupdated} }

# Report any problems and print out the header if there were none
print "Content-type:text/html\n\n";
print "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n";
print "<!DOCTYPE html\n";
print "     PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\n";
print "    \"DTD/xhtml1-transitional.dtd\">\n";
print "<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n\n";
print "<head><title>Mutopia Headers</title>\n";
print "<meta content=\"text/html; charset=utf-8\" ";
print "http-equiv=\"Content-Type\" />\n</head>\n\n";
print "<body bgcolor=\"#ffffff\">\n\n";
print "<center><h2>Mutopia Headers</h2></center>\n\n";

if ($errors == 0) {
 print "<p>The information you entered generated no errors, and a suitable header section is ";
 print "displayed below. If you want to make any changes, do so in the boxes at the bottom ";
 print "of the page, and click on &quot;Create Headers&quot; again.</p>\n\n";
 print "<p><b>Don't forget to add the appropriate header fields which print information at the top of ";
 print "the music, ie. title, subtitle, composer, poet, opus, arranger, instrument and meter!</b></p>\n\n";
 print "<br /><br />\n\n<pre>\n";
 print "\\header {\n";
 print " mutopiatitle = &quot;" . $mutopiatitle . "&quot;\n";
 print " mutopiacomposer = &quot;" . $mutopiacomposer . "&quot;\n";
 if ($mutopiapoet ne "") {print " mutopiapoet = &quot;" . $mutopiapoet . "&quot;\n";}
 if ($mutopiaopus ne "") {print " mutopiaopus = &quot;" . $mutopiaopus . "&quot;\n";}
 print " mutopiainstrument = &quot;" . $mutopiainstrument . "&quot;\n";
 if ($date ne "") {print " date = &quot;" . $date . "&quot;\n";}
 if ($source ne "") {print " source = &quot;" . $source . "&quot;\n";}
 print " style = &quot;" . $style . "&quot;\n";
 print " copyright = &quot;" . $copyright . "&quot;\n";
 print " maintainer = &quot;" . $maintainer . "&quot;\n";
 if ($maintainerEmail ne "") {print " maintainerEmail = &quot;" . $maintainerEmail . "&quot;\n";}
 if ($maintainerWeb ne "") {print " maintainerWeb = &quot;" . $maintainerWeb . "&quot;\n";}
 print " lastupdated = &quot;" . $lastupdated . "&quot;\n";
 print "}\n";
 print "</pre>\n<br /><br />\n\n";
}

if ($errors > 0) {
 print "<p>The information you entered was not complete. Errors generated were as follows:</p>\n\n<ul>\n";
 $loop = 0;
 until ($loop == $errors) {
  print "<li>" . $error[$loop] . "</li>\n";
  $loop++;
 }
 print "</ul>\n\n<p>Please make the necessary corrections and any changes in the boxes below, ";
 print "and click on &quot;Create Headers&quot; again.</p>\n\n<br /><br />\n\n";
}

print "<form action=\"make-headers.cgi\" method=\"post\">\n";
print "Title: <input type=\"text\" name=\"mutopiatitle\" size=\"40\"";
if ($mutopiatitle ne "") { print " value=\"" . $mutopiatitle . "\""}
print " /><br />\n";

print "Composer: <input type=\"text\" name=\"mutopiacomposer\" size=\"40\"";
if ($mutopiacomposer ne "") { print " value=\"" . $mutopiacomposer . "\""}
print " /><br />\n";

print "Lyricist/Poet <i>(Optional)</i>: <input type=\"text\" name=\"mutopiapoet\" size=\"40\"";
if ($mutopiapoet ne "") { print " value=\"" . $mutopiapoet . "\""}
print " /><br />\n";

print "Opus <i>(Optional)</i>: <input type=\"text\" name=\"mutopiaopus\" size=\"10\"";
if ($mutopiaopus ne "") { print " value=\"" . $mutopiaopus . "\""}
print " /><br />\n";

print "Instrument(s): <input type=\"text\" name=\"newmutopiainstrument\" size=\"40\"";
if ($mutopiainstrument ne "") { print " value=\"" . $mutopiainstrument . "\""}
print " /><br />\n";

print "Date <i>(Optional)</i>: <input type=\"text\" name=\"date\" size=\"10\"";
if ($date ne "") { print " value=\"" . $date . "\""}
print " /><br />\n";

print "Source: <input type=\"text\" name=\"source\" size=\"20\"";
if ($source ne "") { print " value=\"" . $source . "\""}
print " /><br />\n";

print "Style: <select name=\"style\">\n";
open(STY,"../datafiles/styles.dat");
until (eof STY) {
 chomp ($encsty = <STY>);
 chomp ($formsty = <STY>);
 print "<option value=\"" . $formsty . "\"";
 if ($formsty eq $style) { print " selected=\"1\"" }
 print ">" . $formsty . "</option>\n";
}
close(STY);
print "</select><br />\n";

print "Copyright: <select name=\"copyright\">\n";
print "<option value=\"Creative Commons Attribution-ShareAlike 2.5\"";
if ($copyright eq "Creative Commons Attribution-ShareAlike 2.5") { print " selected=\"1\"" }
print ">Creative Commons Attribution-ShareAlike 2.5</option>\n";
print "<option value=\"Creative Commons Attribution 2.5\"";
if ($copyright eq "Creative Commons Attribution 2.5") { print " selected=\"1\"" }
print ">Creative Commons Attribution 2.5</option>\n";
print "<option value=\"Public Domain\"";
if ($copyright eq "Public Domain") { print " selected=\"1\"" }
print ">Public Domain</option>\n";
print "</select><br />\n";

print "Maintainer: <input type=\"text\" name=\"maintainer\" size=\"40\"";
if ($maintainer ne "") { print " value=\"" . $maintainer . "\""}
print " /><br />\n";

print "Maintainer's e-mail address <i>(Optional)</i>: <input type=\"text\" name=\"maintainerEmail\" size=\"40\"";
if ($maintainerEmail ne "") { print " value=\"" . $maintainerEmail . "\""}
print " /><br />\n";

print "Maintainer's website address <i>(Optional)</i>: <input type=\"text\" name=\"maintainerWeb\" size=\"40\"";
if ($maintainerWeb ne "") { print " value=\"" . $maintainerWeb . "\""}
print " /><br />\n";

print "Date the piece was last updated (eg. 2001/May/22): <input type=\"text\" name=\"lastupdated\" size=\"11\"";
if ($lastupdated ne "") { print " value=\"" . $lastupdated . "\""}
print " />\n\n";

print "<br /><br />\n\n";
print "<center><input type=\"submit\" value=\"Create headers\" /></center>\n</form>\n\n";

print "<center><p><a href=\"contribute.cgi\">Return to the page on how to contribute to Mutopia</a></p>\n";
print "<p><a href=\"../index.html\">Return to the Mutopia home page</a></p></center>\n";
print "</body>\n</html>\n";
