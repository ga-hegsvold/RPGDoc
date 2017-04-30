<?xml version="1.0" encoding="UTF-8"?>
<structure version="2" schemafile="schemas\Path.xsd" workingxmlfile="test\Path.xml">
	<nspair prefix="n1" uri="http://heim.ifi.uio.no/gahegsvo/rpg/RPGDoc"/>
	<nspair prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
	<template>
		<styles border-style="none"/>
		<match overwrittenxslmatch="/"/>
		<children>
			<paragraph paragraphtag="div">
				<styles border-style="solid" border-width="thin" padding-left="0.5cm"/>
				<children>
					<template>
						<match match="n1:Path"/>
						<children>
							<template>
								<match match="n1:path-name"/>
								<children>
									<paragraph paragraphtag="h1">
										<children>
											<xpath allchildren="1">
												<styles font-family="Times New Roman"/>
											</xpath>
										</children>
									</paragraph>
								</children>
							</template>
							<template>
								<match match="n1:philosophy"/>
								<children>
									<paragraph paragraphtag="h2">
										<children>
											<text fixtext="Philosophy:">
												<styles font-family="Times New Roman"/>
											</text>
										</children>
									</paragraph>
									<paragraph paragraphtag="p">
										<children>
											<text fixtext=" ">
												<styles font-family="Times New Roman"/>
											</text>
											<xpath allchildren="1">
												<styles font-family="Times New Roman" font-size="x-small"/>
											</xpath>
										</children>
									</paragraph>
								</children>
							</template>
							<template>
								<match match="n1:path-level"/>
								<children>
									<paragraph paragraphtag="h2">
										<children>
											<template>
												<match match="n1:level-name"/>
												<children>
													<xpath allchildren="1">
														<styles font-family="Times New Roman"/>
													</xpath>
												</children>
											</template>
											<text fixtext=" (">
												<styles font-family="Times New Roman"/>
											</text>
											<template>
												<match match="n1:level-number"/>
												<children>
													<xpath allchildren="1">
														<styles font-family="Times New Roman"/>
													</xpath>
												</children>
											</template>
											<text fixtext="):">
												<styles font-family="Times New Roman"/>
											</text>
										</children>
									</paragraph>
									<template>
										<match match="n1:level-description"/>
										<children>
											<paragraph paragraphtag="p">
												<children>
													<xpath allchildren="1">
														<styles font-family="Times New Roman" font-size="x-small"/>
													</xpath>
												</children>
											</paragraph>
										</children>
									</template>
								</children>
							</template>
						</children>
					</template>
				</children>
			</paragraph>
		</children>
	</template>
	<pagelayout>
		<properties pagemultiplepages="0" pagenumberingformat="1" pagenumberingstartat="1" paperheight="11in" papermarginbottom="0.79in" papermarginleft="0.6in" papermarginright="0.6in" papermargintop="0.79in" paperwidth="8.5in"/>
	</pagelayout>
</structure>
