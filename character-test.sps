<?xml version="1.0" encoding="UTF-8"?>
<structure version="2" schemafile="RPGDoc.xsd" workingxmlfile="character-test.xml" templatexmlfile="">
	<nspair prefix="xs" uri="http://www.w3.org/2001/XMLSchema"/>
	<template>
		<match overwrittenxslmatch="/"/>
		<children>
			<template>
				<match match="RPGDoc"/>
				<children>
					<template>
						<match match="character"/>
						<children>
							<template>
								<match match="name"/>
								<children>
									<xpath allchildren="1"/>
								</children>
							</template>
							<text fixtext=" the "/>
							<template>
								<match match="species"/>
								<children>
									<template>
										<match match="name"/>
										<children>
											<xpath allchildren="1"/>
										</children>
									</template>
								</children>
							</template>
							<template>
								<match match="item-list"/>
								<children>
									<table dynamic="1">
										<properties border="0"/>
										<children>
											<tableheader>
												<children>
													<tablerow>
														<children>
															<tablecol>
																<children>
																	<text fixtext="Equipment"/>
																</children>
															</tablecol>
														</children>
													</tablerow>
												</children>
											</tableheader>
											<tablebody>
												<children>
													<tablerow>
														<children>
															<tablecol>
																<children>
																	<template>
																		<match match="item"/>
																		<children>
																			<table dynamic="1">
																				<properties border="0"/>
																				<children>
																					<tableheader>
																						<children>
																							<tablerow>
																								<children>
																									<tablecol>
																										<children>
																											<text fixtext="name"/>
																										</children>
																									</tablecol>
																									<tablecol>
																										<children>
																											<text fixtext="type"/>
																										</children>
																									</tablecol>
																									<tablecol>
																										<children>
																											<text fixtext="reach"/>
																										</children>
																									</tablecol>
																									<tablecol>
																										<children>
																											<text fixtext="wt"/>
																										</children>
																									</tablecol>
																									<tablecol>
																										<children>
																											<text fixtext="qlt"/>
																										</children>
																									</tablecol>
																									<tablecol>
																										<properties align="center"/>
																										<children>
																											<text fixtext="imp"/>
																										</children>
																									</tablecol>
																									<tablecol>
																										<children>
																											<text fixtext="res"/>
																										</children>
																									</tablecol>
																									<tablecol>
																										<children>
																											<text fixtext="description"/>
																										</children>
																									</tablecol>
																								</children>
																							</tablerow>
																						</children>
																					</tableheader>
																					<tablebody>
																						<children>
																							<tablerow>
																								<children>
																									<tablecol>
																										<children>
																											<template>
																												<match match="name"/>
																												<children>
																													<xpath allchildren="1"/>
																												</children>
																											</template>
																										</children>
																									</tablecol>
																									<tablecol>
																										<children>
																											<template>
																												<match match="type"/>
																												<children>
																													<xpath allchildren="1"/>
																												</children>
																											</template>
																										</children>
																									</tablecol>
																									<tablecol>
																										<children>
																											<template>
																												<match match="reach"/>
																												<children>
																													<xpath allchildren="1"/>
																												</children>
																											</template>
																										</children>
																									</tablecol>
																									<tablecol>
																										<children>
																											<template>
																												<match match="wt"/>
																												<children>
																													<xpath allchildren="1"/>
																												</children>
																											</template>
																										</children>
																									</tablecol>
																									<tablecol>
																										<children>
																											<template>
																												<match match="qlt"/>
																												<children>
																													<xpath allchildren="1"/>
																												</children>
																											</template>
																										</children>
																									</tablecol>
																									<tablecol>
																										<children>
																											<template>
																												<match match="imp"/>
																												<children>
																													<table dynamic="1">
																														<properties border="0"/>
																														<children>
																															<tableheader>
																																<children>
																																	<tablerow>
																																		<children>
																																			<tablecol>
																																				<children>
																																					<text fixtext="type"/>
																																				</children>
																																			</tablecol>
																																			<tablecol>
																																				<children>
																																					<text fixtext="value"/>
																																				</children>
																																			</tablecol>
																																		</children>
																																	</tablerow>
																																</children>
																															</tableheader>
																															<tablebody>
																																<children>
																																	<tablerow>
																																		<children>
																																			<tablecol>
																																				<children>
																																					<template>
																																						<match match="type"/>
																																						<children>
																																							<xpath allchildren="1"/>
																																						</children>
																																					</template>
																																				</children>
																																			</tablecol>
																																			<tablecol>
																																				<children>
																																					<template>
																																						<match match="value"/>
																																						<children>
																																							<xpath allchildren="1"/>
																																						</children>
																																					</template>
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
																										</children>
																									</tablecol>
																									<tablecol>
																										<children>
																											<template>
																												<match match="res"/>
																												<children>
																													<xpath allchildren="1"/>
																												</children>
																											</template>
																										</children>
																									</tablecol>
																									<tablecol>
																										<children>
																											<template>
																												<match match="description"/>
																												<children>
																													<xpath allchildren="1"/>
																												</children>
																											</template>
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
							<newline/>
							<template>
								<match match="item-list"/>
								<children>
									<template>
										<match match="item"/>
										<children>
											<template>
												<match match="name"/>
												<children>
													<xpath allchildren="1"/>
												</children>
											</template>
											<text fixtext=" ("/>
											<template>
												<match match="imp"/>
												<children>
													<template>
														<match match="type"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
													<text fixtext=": "/>
													<template>
														<match match="value"/>
														<children>
															<xpath allchildren="1"/>
														</children>
													</template>
												</children>
											</template>
											<text fixtext="), "/>
										</children>
									</template>
								</children>
							</template>
							<newline/>
						</children>
					</template>
				</children>
			</template>
		</children>
	</template>
	<template>
		<match match="item-list"/>
		<children>
			<xpath allchildren="1"/>
		</children>
	</template>
	<pagelayout>
		<properties pagemultiplepages="0" pagenumberingformat="1" pagenumberingstartat="1" paperheight="11in" papermarginbottom="0.79in" papermarginleft="0.6in" papermarginright="0.6in" papermargintop="0.79in" paperwidth="8.5in"/>
	</pagelayout>
</structure>
