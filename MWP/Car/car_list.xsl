<?xml version="1.0" encoding="UTF-8"?>
  <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
      <html>
        <head>
          <link rel="stylesheet" href="css/car_style.css"/> <!--Get css file-->
        </head>
        <body>
          <table border="2px"> <!--Create a table-->
            <xsl:for-each select="list/car"> <!--Get each of the car tab-->
              <xsl:sort select="model"/><!--Sort table by car model-->
              <tr>
                <td id="IMAGE"><img><xsl:attribute name="src"><xsl:value-of select="image"/></xsl:attribute></img></td> <!--Get image from the image tab-->
                <td>
                  <div id="MODEL"><xsl:value-of select="model"/></div><!--Get car model-->
                  <!--Get car mileage, capacity, transmission, type, and location and put in one line-->
                  <div id="SMALL"> 
                    <xsl:value-of select="mileage"/> | 
                    <xsl:value-of select="capacity"/> |
                    <xsl:value-of select="transmission"/>|
                    <xsl:value-of select="type"/>|
                    <xsl:value-of select="location"/><br/>
                  </div>
                  <div id="PRICE"><xsl:value-of select="price"/></div> <!--Get car price-->
                  <div id="DESC">"<xsl:value-of select="desc"/>"</div> <br/> <!--Get car description-->
                  <div id="DEALER"><xsl:value-of select="dealer"/>|<b><xsl:value-of select="owner"/></b></div> <!--Get car dealer and ownership-->
                </td>
              </tr>
            </xsl:for-each>
          </table>
        </body>
      </html>
    </xsl:template>
  </xsl:stylesheet>