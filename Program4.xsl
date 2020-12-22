<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
		<body>
			<center>
				<h2>Patients Information</h2>
				<table border="1">
					<tr bgcolor="red">
						<th>name</th>
						<th>ssn</th>
						<th>age</th>
						<th>room_no</th>
						<th>primary_insurance_company</th>
						<th>medical_problems</th>
						<th>drug_allergy</th>
					</tr>
					<xsl:for-each select="Patients/Patient">
					<tr bgcolor="skyblue">
						<td><xsl:value-of select="name/firstname"/></td>
						<td><xsl:value-of select="ssn"/></td>
						<td><xsl:value-of select="age"/></td>
						<td><xsl:value-of select="room_no"/></td>
						<td><xsl:value-of select="primary_insurance_company"/></td>
						<td><xsl:value-of select="primary_insurance_company/medical_problems"/></td>
						<td><xsl:value-of select="primary_insurance_company/drug_allergy"/></td>
					</tr>
				</xsl:for-each>
				</table>
			</center>
		
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
