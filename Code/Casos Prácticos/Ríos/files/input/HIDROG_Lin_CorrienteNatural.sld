<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0">
	<sld:NamedLayer>
		<sld:Name>IDENA_HIDROG_Lin_CorrienteNatural</sld:Name>
		<sld:UserStyle>
			<sld:Name>IDENA_HIDROG_Lin_CorrienteNatural</sld:Name>
			<sld:Title>IDENA_HIDROG_Lin_CorrienteNatural</sld:Title>
			<sld:FeatureTypeStyle>
				<sld:Name>name</sld:Name>
				<Rule>
					<Name>Río principal</Name>
					<Title>Río principal</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>TIPO</ogc:PropertyName>
							<ogc:Literal><![CDATA[Río principal]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<MaxScaleDenominator>3000000</MaxScaleDenominator>
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#0A93FC</CssParameter>
							<CssParameter name="stroke-width">2</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
							<CssParameter name="stroke-linejoin">round</CssParameter>
						</Stroke>
					</LineSymbolizer>
				</Rule>
				<Rule>
					<Name>Afluente principal</Name>
					<Title>Afluente principal</Title>
					<ogc:Filter>
						<ogc:Or>
							<ogc:PropertyIsEqualTo>
								<ogc:PropertyName>TIPO</ogc:PropertyName>
								<ogc:Literal><![CDATA[Afluente principal]]></ogc:Literal>
							</ogc:PropertyIsEqualTo>
							<ogc:PropertyIsEqualTo>
								<ogc:PropertyName>TIPO</ogc:PropertyName>
								<ogc:Literal><![CDATA[Afluente principal]]></ogc:Literal>
							</ogc:PropertyIsEqualTo>
							<ogc:PropertyIsEqualTo>
								<ogc:PropertyName>TIPO</ogc:PropertyName>
								<ogc:Literal><![CDATA[Afluente secundario]]></ogc:Literal>
							</ogc:PropertyIsEqualTo>
						</ogc:Or>
					</ogc:Filter>
					<MaxScaleDenominator>3000000</MaxScaleDenominator>
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#005ce6</CssParameter>
							<CssParameter name="stroke-width">1</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
							<CssParameter name="stroke-linejoin">round</CssParameter>
						</Stroke>
					</LineSymbolizer>
				</Rule>
				<Rule>
					<Name>Afluente secundario</Name>
					<Title>Afluente secundario</Title>
					<ogc:Filter>
						<ogc:Or>
							<ogc:PropertyIsEqualTo>
								<ogc:PropertyName>TIPO</ogc:PropertyName>
								<ogc:Literal><![CDATA[Afluente secundario]]></ogc:Literal>
							</ogc:PropertyIsEqualTo>
							<ogc:PropertyIsEqualTo>
								<ogc:PropertyName>TIPO</ogc:PropertyName>
								<ogc:Literal><![CDATA[Afluente principal]]></ogc:Literal>
							</ogc:PropertyIsEqualTo>
							<ogc:PropertyIsEqualTo>
								<ogc:PropertyName>TIPO</ogc:PropertyName>
								<ogc:Literal><![CDATA[Afluente secundario]]></ogc:Literal>
							</ogc:PropertyIsEqualTo>
						</ogc:Or>
					</ogc:Filter>
					<MaxScaleDenominator>3000000</MaxScaleDenominator>
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#73dfff</CssParameter>
							<CssParameter name="stroke-width">1</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
							<CssParameter name="stroke-linejoin">round</CssParameter>
						</Stroke>
					</LineSymbolizer>
				</Rule>
				<Rule>
					<Name>Afluente terciario</Name>
					<Title>Afluente terciario</Title>
					<ogc:Filter>
						<ogc:Or>
							<ogc:PropertyIsEqualTo>
								<ogc:PropertyName>TIPO</ogc:PropertyName>
								<ogc:Literal><![CDATA[Afluente terciario]]></ogc:Literal>
							</ogc:PropertyIsEqualTo>
							<ogc:PropertyIsEqualTo>
								<ogc:PropertyName>TIPO</ogc:PropertyName>
								<ogc:Literal><![CDATA[Afluente principal]]></ogc:Literal>
							</ogc:PropertyIsEqualTo>
							<ogc:PropertyIsEqualTo>
								<ogc:PropertyName>TIPO</ogc:PropertyName>
								<ogc:Literal><![CDATA[Afluente secundario]]></ogc:Literal>
							</ogc:PropertyIsEqualTo>
						</ogc:Or>
					</ogc:Filter>
					<MaxScaleDenominator>3000000</MaxScaleDenominator>
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#bee8ff</CssParameter>
							<CssParameter name="stroke-width">1</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
							<CssParameter name="stroke-linejoin">round</CssParameter>
						</Stroke>
					</LineSymbolizer>
				</Rule>
				<Rule>
					<Name>Otras corrientes</Name>
					<Title>Otras corrientes</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>TIPO</ogc:PropertyName>
							<ogc:Literal><![CDATA[Otras corrientes]]></ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<MaxScaleDenominator>3000000</MaxScaleDenominator>
					<LineSymbolizer>
						<Stroke>
							<CssParameter name="stroke">#bee8ff</CssParameter>
							<CssParameter name="stroke-width">1</CssParameter>
							<CssParameter name="stroke-dasharray">2 3 2 0</CssParameter>
							<CssParameter name="stroke-linecap">butt</CssParameter>
							<CssParameter name="stroke-linejoin">round</CssParameter>
						</Stroke>
					</LineSymbolizer>
				</Rule>
				<!--<Rule>
          <Name>Canales y acequias subterráneos</Name>
          <Title>Canales y acequias subterráneos</Title><ogc:Filter><ogc:PropertyIsEqualTo><ogc:PropertyName>TIPO</ogc:PropertyName> <ogc:Literal><![CDATA[Canales y acequias subterráneos]]></ogc:Literal> </ogc:PropertyIsEqualTo></ogc:Filter><MaxScaleDenominator>100000</MaxScaleDenominator><LineSymbolizer><Stroke><CssParameter
                name="stroke">#B6FCF5</CssParameter><CssParameter
                name="stroke-width">1</CssParameter></Stroke></LineSymbolizer></Rule>-->
				<!--<Rule>
          <Name>Canales y acequias</Name>
          <Title>Canales y acequias</Title><ogc:Filter><ogc:PropertyIsEqualTo><ogc:PropertyName>TIPO</ogc:PropertyName> <ogc:Literal><![CDATA[Canales y acequias]]></ogc:Literal> </ogc:PropertyIsEqualTo></ogc:Filter><MaxScaleDenominator>100000</MaxScaleDenominator><LineSymbolizer><Stroke><CssParameter
                name="stroke">#A3F2F2</CssParameter><CssParameter
                name="stroke-width">1</CssParameter><CssParameter
                name="stroke-linecap">butt</CssParameter><CssParameter
                name="stroke-linejoin">round</CssParameter></Stroke></LineSymbolizer><LineSymbolizer><Stroke><CssParameter
                name="stroke">#A3F2F2</CssParameter><CssParameter
                name="stroke-width">3</CssParameter><CssParameter
                name="stroke-dasharray">1 9</CssParameter></Stroke></LineSymbolizer></Rule>-->
			</sld:FeatureTypeStyle>
			<sld:FeatureTypeStyle>
        <Rule>
          <MaxScaleDenominator>100000</MaxScaleDenominator>
          <TextSymbolizer><Label><ogc:PropertyName>TEMATICO</ogc:PropertyName></Label><Font><CssParameter
                name="font-family">Calibri</CssParameter><CssParameter
                name="font-size">11</CssParameter><CssParameter
                name="font-style">italic</CssParameter></Font><LabelPlacement><LinePlacement><PerpendicularOffset>10</PerpendicularOffset></LinePlacement></LabelPlacement><Halo><Radius>1.5</Radius><Fill><CssParameter
                  name="fill">#F0F0F0</CssParameter></Fill></Halo><Fill><CssParameter
                name="fill">#005CE6</CssParameter></Fill><VendorOption 
              name="followLine">true</VendorOption><VendorOption
              name="group">yes</VendorOption></TextSymbolizer>
        </Rule>
			</sld:FeatureTypeStyle>
		</sld:UserStyle>
	</sld:NamedLayer>
</sld:StyledLayerDescriptor>