<?xml version="1.0" encoding="UTF-8"?><sld:StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0">
  <sld:NamedLayer>
    <sld:Name>IDENA_ESTADI_Pol_ZonNav2000</sld:Name>
    <sld:UserStyle>
      <sld:Name>IDENA_ESTADI_Pol_ZonNav2000</sld:Name>
      <sld:Title>IDENA_ESTADI_Pol_ZonNav2000</sld:Title>
      <sld:FeatureTypeStyle>
        <sld:Name>name</sld:Name>
        <sld:Rule>
          <sld:MaxScaleDenominator>3000000.0</sld:MaxScaleDenominator>
          <sld:PolygonSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#002673</sld:CssParameter>
              <sld:CssParameter name="stroke-linecap">round</sld:CssParameter>
              <sld:CssParameter name="stroke-width">0.6</sld:CssParameter>
            </sld:Stroke>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:MaxScaleDenominator>750000.0</sld:MaxScaleDenominator>
          <sld:TextSymbolizer>
            <sld:Label>
              <ogc:PropertyName>ZONA</ogc:PropertyName>
            </sld:Label>
            <sld:Font>
              <sld:CssParameter name="font-family">Calibri</sld:CssParameter>
              <sld:CssParameter name="font-size">12</sld:CssParameter>
              <sld:CssParameter name="font-style">normal</sld:CssParameter>
              <sld:CssParameter name="font-weight">bold</sld:CssParameter>
            </sld:Font>
            <sld:LabelPlacement>
              <sld:PointPlacement>
                <sld:AnchorPoint>
                  <sld:AnchorPointX>0.5</sld:AnchorPointX>
                  <sld:AnchorPointY>0.5</sld:AnchorPointY>
                </sld:AnchorPoint>
              </sld:PointPlacement>
            </sld:LabelPlacement>
            <sld:Halo>
              <sld:Radius>1</sld:Radius>
              <sld:Fill>
                <sld:CssParameter name="fill">#F0F0F0</sld:CssParameter>
              </sld:Fill>
            </sld:Halo>
            <sld:Fill>
              <sld:CssParameter name="fill">#002673</sld:CssParameter>
            </sld:Fill>
          </sld:TextSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>