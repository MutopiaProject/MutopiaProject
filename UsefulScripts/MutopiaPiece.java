/*
 * Filename:         MutopiaPiece.java
 * Original author:  Chris Sawer
 *
 * Description:
 *   Class to store information about a Mutopia piece.
 */

import java.beans.*;
import java.io.*;
import java.lang.reflect.*;
import java.util.*;

public class MutopiaPiece
{
   private String lyFilename = null;
   private String filenameBase = null;
   private Boolean multipleLyFiles = null;
   private Boolean multipleMidFiles = null;
   private Boolean multiplePdfFiles = null;
   
   private String lilyVersion = null;
   private Integer previewWidth = null;
   private Integer previewHeight = null;
   
   private String title = null;
   private String composer = null;
   private String opus = null;
   private String poet = null;
   private String instrument = null;
   private String date = null;
   private String style = null;
   private String meter = null;
   private String arranger = null;
   private String source = null;
   private String copyright = null;
   private String footer = null;
   private String moreInfo = null;
   private String maintainer = null;
   private String maintainerEmail = null;
   private String maintainerWeb = null;
   
   // Map from (eg.) "title" -> this.title property
   private Map<String, PropertyDescriptor> piecePropertyMap;
   
   public MutopiaPiece(String lyFilename)
   {
      this.lyFilename = lyFilename;
      
      try
      {
         BeanInfo mutopiaPieceInfo = Introspector.getBeanInfo(this.getClass());
         PropertyDescriptor[] pieceProperties = mutopiaPieceInfo.getPropertyDescriptors();
         piecePropertyMap = new HashMap<String, PropertyDescriptor>();
         for (int i = 0; i < pieceProperties.length; i++)
         {
            piecePropertyMap.put(pieceProperties[i].getName(), pieceProperties[i]);
         }
      }
      catch (IntrospectionException ex) { System.err.println("IntrospectionException caught: " + ex); }
   }
   
   public void populateField(String field, String value)
   {
      if (piecePropertyMap.keySet().contains(field) ||
          (field.startsWith("mutopia") && piecePropertyMap.keySet().contains(field.substring(7))))
      {
         try
         {
            String fieldToSet = field;
            
            // If we are *NOT* setting a Mutopia field (eg. mutopiapiece), must check if property
            // is null before setting it - this is so Mutopia fields always take precedence
            if (field.startsWith("mutopia"))
            {
               fieldToSet = field.substring(7);
            }
            else
            {
               // Retrieve the appropriate getter
               Method getter = piecePropertyMap.get(fieldToSet).getReadMethod();
               Object property = getter.invoke(this);
               
               // If property is already set, set fieldToSet to null to prevent setting below
               if (property != null)
               {
                  fieldToSet = null;
               }
            }
            
            // Retrieve the appropriate setter and set property
            if (fieldToSet != null)
            {
               Method setter = piecePropertyMap.get(fieldToSet).getWriteMethod();
               setter.invoke(this, value);
            }
         }
         catch (Exception ex) { System.err.println("Exception caught while setting properties: " + ex); }
      }
      else
      {
         System.out.println("Warning: not found setter for field: " + field);
      }
   }
   
   public void deriveCompileStuff(String lilyCommandLine) throws IOException
   {
      String filenameBaseWithDir = lyFilename.substring(0, lyFilename.length() - 3);
      int lastSlash = filenameBaseWithDir.lastIndexOf(File.separatorChar);
      filenameBase = filenameBaseWithDir.substring(lastSlash + 1);
      
      multipleLyFiles = (new File(filenameBaseWithDir + "-lys.zip").exists());
      multipleMidFiles = (new File(filenameBaseWithDir + "-mids.zip").exists());
      multiplePdfFiles = (new File(filenameBaseWithDir + "-a4-pss.zip").exists());
      
      lilyVersion = getLilyVersion(lilyCommandLine);
      
      String previewFilename = filenameBaseWithDir + "-preview.png";
      if (new File(previewFilename).exists())
      {
         Process imgProcess = Runtime.getRuntime().exec("file " + previewFilename);
         try { imgProcess.waitFor(); } catch (Exception ex) {}
         BufferedReader imgInput = new BufferedReader(new InputStreamReader(imgProcess.getInputStream()));
         String imgString = imgInput.readLine();
         imgInput.close();
         
         int widthStart = imgString.indexOf("image data, ") + 12;
         int widthEnd = imgString.indexOf(" ", widthStart);
         previewWidth = new Integer(imgString.substring(widthStart, widthEnd));
         
         int heightStart = widthEnd + 3;
         int heightEnd = imgString.indexOf(",", heightStart);
         previewHeight = new Integer(imgString.substring(heightStart, heightEnd));
      }
   }

   public static String getLilyVersion(String lilyCommandLine) throws IOException
   {
      Process lilyProcess = Runtime.getRuntime().exec(lilyCommandLine + " -version");
      try { lilyProcess.waitFor(); } catch (Exception ex) {}
      BufferedReader lilyInput = new BufferedReader(new InputStreamReader(lilyProcess.getInputStream()));
      String longLilyVersion = lilyInput.readLine();
      lilyInput.close();
      return longLilyVersion.substring(longLilyVersion.lastIndexOf(' ') + 1);
   }

   public boolean checkFieldConsistency(boolean checkFooter)
   {
      boolean returnValue = true;
      
      // Title is mandatory
      if (getTitle() == null)
      {
         returnValue = false;
         System.err.println("Missing title");
      }
      
      // Composer is mandatory
      if (getComposer() == null)
      {
         returnValue = false;
         System.err.println("Missing composer");
      }
      else if (!MutopiaMaps.composerMap.keySet().contains(getComposer()))
      {
         returnValue = false;
         System.err.println("Invalid composer: " + getComposer());
      }
      
      // Instrument is mandatory
      if (getInstrument() == null)
      {
         returnValue = false;
         System.err.println("Missing instrument");
      }
      
      // Style is mandatory
      if (getStyle() == null)
      {
         returnValue = false;
         System.err.println("Missing style");
      }
      else if (!MutopiaMaps.styleMap.keySet().contains(getStyle()))
      {
         returnValue = false;
         System.err.println("Invalid style: " + getStyle());
      }
      
      // Source is mandatory
      if (getSource() == null)
      {
         returnValue = false;
         System.err.println("Missing source");
      }
      
      // Copyright is mandatory
      if (getCopyright() == null)
      {
         returnValue = false;
         System.err.println("Missing copyright (licence)");
      }
      else if (!MutopiaMaps.licenceMapNew.keySet().contains(getCopyright()))
      {
         returnValue = false;
         System.err.println("Invalid copyright (licence): " + getCopyright());
      }
      
      // Footer is mandatory
      if (checkFooter && (getFooter() == null))
      {
         returnValue = false;
         System.err.println("Missing footer");
      }
      
      return returnValue;
   }
   
   public boolean checkCompileConsistency()
   {
      boolean returnValue = true;
      
      // LilyPond version must have been looked up
      if (lilyVersion == null)
      {
         returnValue = false;
         System.err.println("LilyPond version not looked up");
      }
      
      // Preview width + height must have been looked up
      if ((previewWidth == null) || (previewHeight == null))
      {
         returnValue = false;
         System.err.println("Preview image size not looked up");
      }
      
      return returnValue;
   }
   
   // Public getters
   
   public String getFilenameBase()
   {
      return filenameBase;
   }
   
   public void setMultipleLyFiles(boolean multipleLyFiles)
   {
      this.multipleLyFiles = multipleLyFiles;
   }
   
   public boolean getMultipleLyFiles()
   {
      return multipleLyFiles;
   }
   
   public void setMultipleMidFiles(boolean multipleMidFiles)
   {
      this.multipleMidFiles = multipleMidFiles;
   }
   
   public boolean getMultipleMidFiles()
   {
      return multipleMidFiles;
   }
   
   public void setMultiplePdfFiles(boolean multiplePdfFiles)
   {
      this.multiplePdfFiles = multiplePdfFiles;
   }
   
   public boolean getMultiplePdfFiles()
   {
      return multiplePdfFiles;
   }
   
   public void setLilyVersion(String lilyVersion)
   {
      this.lilyVersion = lilyVersion;
   }
   
   public String getLilyVersion()
   {
      return lilyVersion;
   }
   
   public void setPreviewWidth(String previewWidth)
   {
      this.previewWidth = new Integer(previewWidth);   
   }
   
   public Integer getPreviewWidth()
   {
      return previewWidth;
   }
   
   public void setPreviewHeight(String previewHeight)
   {
      this.previewHeight = new Integer(previewHeight);   
   }
   
   public Integer getPreviewHeight()
   {
      return previewHeight;
   }
   
   // Public getters and setters
   public void setTitle(String title)
   {
      this.title = title;
   }
   
   public String getTitle()
   {
      return title;
   }
   
   public void setComposer(String composer)
   {
      this.composer = composer;
   }
   
   public String getComposer()
   {
      return composer;
   }
   
   public void setOpus(String opus)
   {
      this.opus = opus;
   }
   
   public String getOpus()
   {
      return opus;
   }
   
   public void setPoet(String poet)
   {
      this.poet = poet;
   }
   
   public String getPoet()
   {
      return poet;
   }
   
   public void setInstrument(String instrument)
   {
      this.instrument = instrument;
   }
   
   public String getInstrument()
   {
      return instrument;
   }
   
   public void setDate(String date)
   {
      this.date = date;
   }
   
   public String getDate()
   {
      return date;
   }
   
   public void setStyle(String style)
   {
      this.style = style;
   }
   
   public String getStyle()
   {
      return style;
   }
   
   public void setMeter(String meter)
   {
      this.meter = meter;
   }
   
   public String getMeter()
   {
      return meter;
   }
   
   public void setArranger(String arranger)
   {
      this.arranger = arranger;
   }
   
   public String getArranger()
   {
      return arranger;
   }
   
   public void setSource(String source)
   {
      this.source = source;
   }
   
   public String getSource()
   {
      return source;
   }
   
   public void setCopyright(String copyright)
   {
      this.copyright = copyright;
   }
   
   public String getCopyright()
   {
      return copyright;
   }
   
   public void setFooter(String footer)
   {
      this.footer = footer;
   }
   
   public String getFooter()
   {
      return footer;
   }
   
   public void setMoreInfo(String moreInfo)
   {
      this.moreInfo = moreInfo;
   }
   
   public String getMoreInfo()
   {
      return moreInfo;
   }
   
   public void setMaintainer(String maintainer)
   {
      this.maintainer = maintainer;
   }
   
   public String getMaintainer()
   {
      return maintainer;
   }
   
   public void setMaintainerEmail(String maintainerEmail)
   {
      this.maintainerEmail = maintainerEmail;
   }
   
   public String getMaintainerEmail()
   {
      return maintainerEmail;
   }
   
   public void setMaintainerWeb(String maintainerWeb)
   {
      this.maintainerWeb = maintainerWeb;
   }
   
   public String getMaintainerWeb()
   {
      return maintainerWeb;
   }
}
