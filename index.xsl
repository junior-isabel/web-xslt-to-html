<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">

    <html lang="en">

      <head>
        <title>Cd Catalog</title>
        <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <style type="text/css">
        table {
          border: 1px solid #000,
        }
        </style>
      </head>

      <body>
        <h2>Catalog</h2>
        <xsl:apply-templates />
        
      </body>
    </html>
  </xsl:template>

  <xsl:template match="cd">
 
  <xsl:choose>
  <xsl:when test="price &gt; 10">
    <tr bgcolor="#8f8">
      <td>
        <xsl:value-of select="artist" />
      </td>
      <td>
        <xsl:value-of select="title" />
      </td>
      <td>
      <xsl:value-of select="company" />
      </td>
      <td>
      <xsl:value-of select="price" />
      </td>
      <td>
      <xsl:value-of select="year" />
      </td>
    </tr>
    </xsl:when>
    <xsl:otherwise>
    <tr bgcolor="#faa">
      <td>
        <xsl:value-of select="artist" />
      </td>
      <td>
        <xsl:value-of select="title" />
      </td>
      <td>
      <xsl:value-of select="company" />
      </td>
      <td>
      <xsl:value-of select="price" />
      </td>
      <td>
      <xsl:value-of select="year" />
      </td>
    </tr>
    </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="catalog">
<table border="1">
          <thead>
            <tr>
              <th>Artist</th>
              <th>Title</th>
              <th>Company</th>
              <th>Price</th>
              <th>Year</th>
            </tr>
          </thead>
          <tbody>
            <xsl:apply-templates select="cd" />
          </tbody>

        </table>
  </xsl:template>

</xsl:stylesheet>






