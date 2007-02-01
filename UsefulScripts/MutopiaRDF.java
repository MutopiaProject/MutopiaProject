import java.io.*;
import javax.xml.*;
import javax.xml.parsers.*;
import org.w3c.dom.*;

public class MutopiaRDF
{   
   private static String xmlIfy(String inputString)
   {
      // Turn URLs into <a href>s*/
      /*if (inputString.matches(".*http://.*"))
      {
         int urlStart = inputString.indexOf("http://", 0);
         int urlEnd = inputString.indexOf(" ", urlStart);
         if (urlEnd == -1) { urlEnd = inputString.length(); }
         String url = inputString.substring(urlStart, urlEnd);
         
         inputString = inputString.substring(0, urlStart) +
            "<a href=\"" + url + "\">" + url + "</a>" +
            inputString.substring(urlEnd, inputString.length());
      }*/
      
      // Replace & < > by escaped versions
      inputString = inputString.replaceAll("&", "&amp;amp;");
      inputString = inputString.replaceAll("<", "&amp;lt;");
      inputString = inputString.replaceAll(">", "&amp;gt;");
      
      return inputString;
   }
   
   private static void writeln(BufferedWriter wr, String str) throws IOException
   {
      wr.write(str);
      wr.newLine();
   }
   
   // Should already have called check consistency methods on the piece
   public static void outputRDF(MutopiaPiece piece, BufferedWriter wr) throws IOException
   {
      writeln(wr, "<?xml version=\"1.0\"?>");
      writeln(wr, "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"");
      writeln(wr, "         xmlns:mp=\"http://www.mutopiaproject.org/piece-data/0.1/\">");
      wr.newLine();
      writeln(wr, "<rdf:Description rdf:about=\".\">");
      writeln(wr, "    <mp:title>" + xmlIfy(piece.getTitle()) + "</mp:title>");
      writeln(wr, "    <mp:composer>" + piece.getComposer() + "</mp:composer>");
      writeln(wr, "    " + (piece.getOpus() != null ? "<mp:opus>" + xmlIfy(piece.getOpus()) + "</mp:opus>" : "<mp:opus/>"));
      writeln(wr, "    " + (piece.getPoet() != null ? "<mp:lyricist>" + xmlIfy(piece.getPoet()) + "</mp:lyricist>" : "<mp:lyricist/>"));
      writeln(wr, "    <mp:for>" + xmlIfy(piece.getInstrument()) + "</mp:for>");
      writeln(wr, "    " + (piece.getDate() != null ? "<mp:date>" + xmlIfy(piece.getDate()) + "</mp:date>" : "<mp:date/>"));
      writeln(wr, "    <mp:style>" + xmlIfy(piece.getStyle()) + "</mp:style>");
      writeln(wr, "    " + (piece.getMeter() != null ? "<mp:metre>" + xmlIfy(piece.getMeter()) + "</mp:metre>" : "<mp:metre/>"));
      writeln(wr, "    " + (piece.getArranger() != null ? "<mp:arranger>" + xmlIfy(piece.getArranger()) + "</mp:arranger>" : "<mp:arranger/>"));
      writeln(wr, "    <mp:source>" + xmlIfy(piece.getSource()) + "</mp:source>");
      writeln(wr, "    <mp:licence>" + piece.getCopyright() + "</mp:licence>");
      wr.newLine();
      writeln(wr, "    <mp:lyFile>" + piece.getFilenameBase() + (piece.getMultipleLyFiles() ? "-lys.zip" : ".ly") + "</mp:lyFile>");
      writeln(wr, "    <mp:midFile>" + piece.getFilenameBase() + (piece.getMultipleMidFiles() ? "-mids.zip" : ".mid") + "</mp:midFile>");
      writeln(wr, "    <mp:psFileA4>" + piece.getFilenameBase() + (piece.getMultiplePdfFiles() ? "-a4-pss.zip" : "-a4.ps.gz") + "</mp:psFileA4>");
      writeln(wr, "    <mp:pdfFileA4>" + piece.getFilenameBase() + (piece.getMultiplePdfFiles() ? "-a4-pdfs.zip" : "-a4.pdf") + "</mp:pdfFileA4>");
      writeln(wr, "    <mp:psFileLet>" + piece.getFilenameBase() + (piece.getMultiplePdfFiles() ? "-let-pss.zip" : "-let.ps.gz") + "</mp:psFileLet>");
      writeln(wr, "    <mp:pdfFileLet>" + piece.getFilenameBase() + (piece.getMultiplePdfFiles() ? "-let-pdfs.zip" : "-let.pdf") + "</mp:pdfFileLet>");
      writeln(wr, "    <mp:pngFile>" + piece.getFilenameBase() + "-preview.png</mp:pngFile>");
      writeln(wr, "    <mp:pngHeight>" + piece.getPreviewHeight() + "</mp:pngHeight>");
      writeln(wr, "    <mp:pngWidth>" + piece.getPreviewWidth() + "</mp:pngWidth>");
      wr.newLine();
      writeln(wr, "    <mp:id>" + piece.getFooter() + "</mp:id>");
      writeln(wr, "    " + (piece.getMaintainer() != null ? "<mp:maintainer>" + xmlIfy(piece.getMaintainer()) +
                            "</mp:maintainer>" : "<mp:maintainer/>"));
      writeln(wr, "    " + (piece.getMaintainerEmail() != null ? "<mp:maintainerEmail>" + piece.getMaintainerEmail() +
                            "</mp:maintainerEmail>" : "<mp:maintainerEmail/>"));
      writeln(wr, "    " + (piece.getMaintainerWeb() != null ? "<mp:maintainerWeb>" + piece.getMaintainerWeb() +
                            "</mp:maintainerWeb>" : "<mp:maintainerWeb/>"));
      writeln(wr, "    " + (piece.getMoreInfo() != null ? "<mp:moreInfo>" + piece.getMoreInfo() +
                            "</mp:moreInfo>" : "<mp:moreInfo/>"));
      writeln(wr, "    <mp:lilypondVersion>" + piece.getLilyVersion() + "</mp:lilypondVersion>");
      writeln(wr, "</rdf:Description>");
      wr.newLine();
      writeln(wr, "</rdf:RDF>");
   }
   
   private static String getText(Element mainElement, String descendant)
   {
      Node textElement = mainElement.getElementsByTagName(descendant).item(0).getFirstChild();
      return (textElement == null) ? null : textElement.getNodeValue();
   }
   
   public static MutopiaPiece inputRDF(String lyFilename)
   {
      MutopiaPiece piece = new MutopiaPiece(lyFilename);
      
      try
      {
         InputStream is = new FileInputStream(lyFilename);
         DocumentBuilder db = DocumentBuilderFactory.newInstance().newDocumentBuilder();
         Document rdfDoc = db.parse(is);
         
         // Find rdf:Description element...
         Element description = (Element)rdfDoc.getElementsByTagName("rdf:Description").item(0);
         
         piece.setTitle(getText(description, "mp:title"));
         piece.setComposer(getText(description, "mp:composer"));
         piece.setOpus(getText(description, "mp:opus"));
         piece.setPoet(getText(description, "mp:lyricist"));
         piece.setInstrument(getText(description, "mp:for"));
         piece.setDate(getText(description, "mp:date"));
         piece.setStyle(getText(description, "mp:style"));
         piece.setMeter(getText(description, "mp:metre"));
         piece.setArranger(getText(description, "mp:arranger"));
         piece.setSource(getText(description, "mp:source"));
         piece.setCopyright(getText(description, "mp:licence"));
         
         piece.setMultipleLyFiles(getText(description, "mp:lyFile").endsWith("-lys.zip"));
         piece.setMultipleMidFiles(getText(description, "mp:midFile").endsWith("-mids.zip"));
         piece.setMultiplePdfFiles(getText(description, "mp:psFileA4").endsWith("-a4-pss.zip"));
         
         piece.setFooter(getText(description, "mp:id"));
         piece.setMaintainer(getText(description, "mp:maintainer"));
         piece.setMaintainerEmail(getText(description, "mp:maintainerEmail"));
         piece.setMaintainerWeb(getText(description, "mp:maintainerWeb"));
         
         piece.setLilyVersion(getText(description, "mp:lilypondVersion"));
      }
      catch (Exception ex)
      {
         System.err.println(ex);
      }
      
      return piece;
   }
}
