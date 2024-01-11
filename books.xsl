<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Books</title>
      </head>

      <body>
        <h1>List Books</h1>
        <ul>
        {
          for $x in doc("books.xml")/bookstore/book/title
          order by $x
          return <li>{$x}</li>
        }
      </ul>
      </body>
    </html>

  </xsl:template>












</xsl:stylesheet>

