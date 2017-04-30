<?xml version="1.0" encoding="UTF-8"?>
<structure version="2" schemafile="RPGDoc.xsd" workingxmlfile="test.xml" templatexmlfile="">
	<nspair prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
	<template>
		<match overwrittenxslmatch="/"/>
		<children>
			<template>
				<match match="RPGDoc"/>
				<children>
					<template>
						<match match="adventure"/>
						<children>
							<paragraph paragraphtag="h1">
								<children>
									<template>
										<match match="title"/>
										<children>
											<xpath allchildren="1">
												<styles color="olive" font-family="Exocet"/>
											</xpath>
										</children>
									</template>
								</children>
							</paragraph>
							<paragraph paragraphtag="h2">
								<children>
									<template>
										<match match="subtitle"/>
										<children>
											<xpath allchildren="1">
												<styles color="olive" font-family="Exocet"/>
											</xpath>
										</children>
									</template>
								</children>
							</paragraph>
							<list>
								<styles margin-bottom="0" margin-top="0"/>
								<properties start="1" type="disc"/>
								<children>
									<listrow>
										<children>
											<text fixtext="Author:">
												<styles color="olive"/>
											</text>
											<text fixtext=" "/>
											<template>
												<match match="author"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</listrow>
									<listrow>
										<children>
											<text fixtext="Version:">
												<styles color="olive"/>
											</text>
											<text fixtext=" "/>
											<template>
												<match match="version"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</listrow>
									<listrow>
										<children>
											<text fixtext="Setting:">
												<styles color="olive"/>
											</text>
											<text fixtext=" "/>
											<template>
												<match match="setting"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</listrow>
									<listrow>
										<children>
											<text fixtext="System:">
												<styles color="olive"/>
											</text>
											<text fixtext=" "/>
											<template>
												<match match="system"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
										</children>
									</listrow>
								</children>
							</list>
							<paragraph paragraphtag="div">
								<children>
									<template>
										<match match="chap1"/>
										<children>
											<paragraph paragraphtag="h3">
												<children>
													<template>
														<match match="title"/>
														<children>
															<xpath allchildren="1">
																<styles color="olive" font-family="Exocet"/>
															</xpath>
														</children>
													</template>
												</children>
											</paragraph>
											<paragraph paragraphtag="div">
												<children>
													<template>
														<match match="p"/>
														<children>
															<template>
																<match match="title"/>
																<children>
																	<xpath allchildren="1">
																		<styles color="olive" font-variant="small-caps"/>
																	</xpath>
																</children>
															</template>
															<paragraph paragraphtag="div">
																<children>
																	<xpath restofcontents="1"/>
																</children>
															</paragraph>
														</children>
													</template>
												</children>
											</paragraph>
											<paragraph paragraphtag="div">
												<children>
													<template>
														<match match="chap2"/>
														<children>
															<paragraph paragraphtag="h4">
																<children>
																	<template>
																		<match match="title"/>
																		<children>
																			<xpath allchildren="1">
																				<styles color="olive" font-family="Exocet"/>
																			</xpath>
																		</children>
																	</template>
																</children>
															</paragraph>
															<paragraph paragraphtag="div">
																<children>
																	<template>
																		<match match="p"/>
																		<children>
																			<template>
																				<match match="title"/>
																				<children>
																					<xpath allchildren="1">
																						<styles color="olive" font-variant="small-caps"/>
																					</xpath>
																				</children>
																			</template>
																			<paragraph paragraphtag="div">
																				<children>
																					<xpath restofcontents="1"/>
																				</children>
																			</paragraph>
																		</children>
																	</template>
																</children>
															</paragraph>
															<paragraph paragraphtag="div">
																<children>
																	<template>
																		<match match="chap3"/>
																		<children>
																			<paragraph paragraphtag="h5">
																				<children>
																					<template>
																						<match match="title"/>
																						<children>
																							<xpath allchildren="1">
																								<styles color="olive" font-family="Exocet"/>
																							</xpath>
																						</children>
																					</template>
																				</children>
																			</paragraph>
																			<paragraph paragraphtag="div">
																				<children>
																					<template>
																						<match match="p"/>
																						<children>
																							<template>
																								<match match="title"/>
																								<children>
																									<xpath allchildren="1">
																										<styles color="olive" font-variant="small-caps"/>
																									</xpath>
																								</children>
																							</template>
																							<paragraph paragraphtag="div">
																								<children>
																									<xpath restofcontents="1"/>
																								</children>
																							</paragraph>
																						</children>
																					</template>
																				</children>
																			</paragraph>
																		</children>
																	</template>
																</children>
															</paragraph>
														</children>
													</template>
												</children>
											</paragraph>
										</children>
									</template>
								</children>
							</paragraph>
						</children>
					</template>
				</children>
			</template>
		</children>
	</template>
	<template>
		<match match="adventure"/>
		<children>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="author"/>
		<children>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="career"/>
		<children>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="chap1"/>
		<children>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="chap2"/>
		<children>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="chap3"/>
		<children>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="character"/>
		<children>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="culture"/>
		<children>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="culture-list"/>
		<children>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="description"/>
		<children>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="em"/>
		<children>
			<xpath allchildren="1">
				<styles font-style="italic"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="ht"/>
		<children>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="item"/>
		<children>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="item-list"/>
		<children>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="movement"/>
		<children>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="p"/>
		<children>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="paraphrase"/>
		<children>
			<paragraph paragraphtag="p">
				<children>
					<xpath allchildren="1">
						<styles border-color="olive" border-style="solid" border-width="thin" color="olive" font-style="italic" padding="2mm"/>
					</xpath>
				</children>
			</paragraph>
		</children>
	</template>
	<template>
		<match match="quote"/>
		<children>
			<text fixtext="&quot;">
				<styles font-style="italic"/>
			</text>
			<xpath allchildren="1">
				<styles font-style="italic"/>
			</xpath>
			<text fixtext="&quot;">
				<styles font-style="italic"/>
			</text>
		</children>
	</template>
	<template>
		<match match="strong"/>
		<children>
			<xpath allchildren="1">
				<styles font-weight="bold"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="talent-list"/>
		<children>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="title"/>
		<children>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="tm"/>
		<children>
			<xpath allchildren="1">
				<styles font-variant="small-caps"/>
			</xpath>
		</children>
	</template>
	<template>
		<match match="type"/>
		<children>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="value"/>
		<children>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="version"/>
		<children>
			<xpath allchildren="1"/>
		</children>
	</template>
	<template>
		<match match="wt"/>
		<children>
			<xpath allchildren="1"/>
		</children>
	</template>
	<pagelayout>
		<properties pagemultiplepages="0" pagenumberingformat="1" pagenumberingstartat="1" paperheight="11.69in" papermarginbottom="0.79in" papermarginleft="0.6in" papermarginright="0.6in" papermargintop="0.79in" paperwidth="8.27in"/>
		<coverpage>
			<template>
				<match overwrittenxslmatch="/"/>
				<children>
					<table>
						<properties align="center" width="80%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<properties rowspan="2" width="20"/>
											</tablecol>
											<tablecol>
												<properties height="50"/>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<children>
													<paragraph paragraphtag="fieldset">
														<children>
															<paragraph paragraphtag="center">
																<children>
																	<paragraph paragraphtag="h1">
																		<children>
																			<newline/>
																			<template>
																				<match match="RPGDoc"/>
																				<children>
																					<template>
																						<match match="adventure"/>
																						<children>
																							<template>
																								<match match="title"/>
																								<children>
																									<xpath allchildren="1">
																										<styles color="olive" font-family="Exocet"/>
																									</xpath>
																								</children>
																							</template>
																						</children>
																					</template>
																				</children>
																			</template>
																			<newline/>
																			<newline/>
																		</children>
																	</paragraph>
																	<paragraph paragraphtag="h2">
																		<children>
																			<template>
																				<match match="RPGDoc"/>
																				<children>
																					<template>
																						<match match="adventure"/>
																						<children>
																							<template>
																								<match match="author"/>
																								<children>
																									<xpath allchildren="1">
																										<styles color="olive"/>
																									</xpath>
																								</children>
																							</template>
																						</children>
																					</template>
																				</children>
																			</template>
																			<newline/>
																			<newline/>
																		</children>
																	</paragraph>
																</children>
															</paragraph>
														</children>
													</paragraph>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
		</coverpage>
		<footerall>
			<template>
				<match overwrittenxslmatch="/"/>
				<children>
					<table topdown="0">
						<properties width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<styles padding="0"/>
												<properties colspan="2" height="30"/>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<styles padding="0"/>
												<properties colspan="2"/>
												<children>
													<line>
														<properties color="black" size="1"/>
													</line>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<styles font-size="smaller" padding="0"/>
												<properties align="center" colspan="2"/>
												<children>
													<pagenumber>
														<styles font-weight="bold"/>
													</pagenumber>
													<text fixtext=" ">
														<styles font-weight="bold"/>
													</text>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
		</footerall>
		<headereven>
			<template>
				<match overwrittenxslmatch="/"/>
				<children>
					<table topdown="0">
						<properties width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<styles padding="0"/>
												<properties colspan="2" height="30"/>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<styles font-size="smaller" padding="0"/>
												<properties align="left" width="150"/>
											</tablecol>
											<tablecol>
												<styles font-size="smaller" padding="0"/>
												<properties align="right"/>
												<children>
													<template>
														<styles font-weight="bold"/>
														<match match="RPGDoc"/>
														<children>
															<template>
																<match match="adventure"/>
																<children>
																	<template>
																		<match match="title"/>
																		<children>
																			<xpath allchildren="1"/>
																		</children>
																	</template>
																</children>
															</template>
														</children>
													</template>
													<text fixtext=" ">
														<styles font-weight="bold"/>
													</text>
												</children>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<styles padding="0"/>
												<properties colspan="2"/>
												<children>
													<line>
														<properties color="black" size="1"/>
													</line>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
		</headereven>
		<headerodd>
			<template>
				<match overwrittenxslmatch="/"/>
				<children>
					<table topdown="0">
						<properties width="100%"/>
						<children>
							<tablebody>
								<children>
									<tablerow>
										<children>
											<tablecol>
												<styles padding="0"/>
												<properties colspan="2" height="30"/>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<styles font-size="smaller" padding="0"/>
												<properties align="left"/>
												<children>
													<template>
														<match match="RPGDoc"/>
														<children>
															<template>
																<match match="adventure"/>
																<children>
																	<template>
																		<match match="title"/>
																		<children>
																			<xpath allchildren="1">
																				<styles font-weight="bold"/>
																			</xpath>
																		</children>
																	</template>
																</children>
															</template>
														</children>
													</template>
												</children>
											</tablecol>
											<tablecol>
												<styles font-size="smaller" padding="0"/>
												<properties align="right" width="150"/>
											</tablecol>
										</children>
									</tablerow>
									<tablerow>
										<children>
											<tablecol>
												<styles padding="0"/>
												<properties colspan="2"/>
												<children>
													<line>
														<properties color="black" size="1"/>
													</line>
												</children>
											</tablecol>
										</children>
									</tablerow>
								</children>
							</tablebody>
						</children>
					</table>
				</children>
			</template>
		</headerodd>
	</pagelayout>
</structure>
