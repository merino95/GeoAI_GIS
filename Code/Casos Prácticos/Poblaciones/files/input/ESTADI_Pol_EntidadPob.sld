<?xml version="1.0" encoding="UTF-8"?><sld:StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0">
  <sld:NamedLayer>
    <sld:Name>IDENA_ESTADI_Pol_EntidadPob</sld:Name>
    <sld:UserStyle>
      <sld:Name>IDENA_ESTADI_Pol_EntidadPob</sld:Name>
      <sld:Title>IDENA_ESTADI_Pol_EntidadPob</sld:Title>
      <sld:FeatureTypeStyle>
        <sld:Name>name</sld:Name>
        <sld:Rule>
          <sld:Name>Diseminado o sin delimitar en Catastro</sld:Name>
          <sld:Title>Diseminado o sin delimitar en Catastro</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>CORIGEN</ogc:PropertyName>
              <ogc:Literal>2</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:MinScaleDenominator>500.0</sld:MinScaleDenominator>
          <sld:MaxScaleDenominator>2000000.0</sld:MaxScaleDenominator>
          <sld:PolygonSymbolizer/>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Casco delimitado</sld:Name>
          <sld:Title>Casco delimitado</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>CORIGEN</ogc:PropertyName>
              <ogc:Literal>1</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:MinScaleDenominator>500.0</sld:MinScaleDenominator>
          <sld:MaxScaleDenominator>2000000.0</sld:MaxScaleDenominator>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#BEE8FF</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>