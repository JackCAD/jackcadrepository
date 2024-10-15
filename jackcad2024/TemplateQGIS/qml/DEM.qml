<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis minScale="1e+08" styleCategories="AllStyleCategories" version="3.28.3-Firenze" hasScaleBasedVisibilityFlag="0" maxScale="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal fetchMode="0" mode="0" enabled="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <elevation zscale="1" symbology="Line" enabled="0" band="1" zoffset="0">
    <data-defined-properties>
      <Option type="Map">
        <Option type="QString" value="" name="name"/>
        <Option name="properties"/>
        <Option type="QString" value="collection" name="type"/>
      </Option>
    </data-defined-properties>
    <profileLineSymbol>
      <symbol is_animated="0" type="line" clip_to_extent="1" frame_rate="10" alpha="1" name="" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleLine" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" value="0" name="align_dash_pattern"/>
            <Option type="QString" value="square" name="capstyle"/>
            <Option type="QString" value="5;2" name="customdash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="customdash_map_unit_scale"/>
            <Option type="QString" value="MM" name="customdash_unit"/>
            <Option type="QString" value="0" name="dash_pattern_offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="dash_pattern_offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="dash_pattern_offset_unit"/>
            <Option type="QString" value="0" name="draw_inside_polygon"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="232,113,141,255" name="line_color"/>
            <Option type="QString" value="solid" name="line_style"/>
            <Option type="QString" value="0.6" name="line_width"/>
            <Option type="QString" value="MM" name="line_width_unit"/>
            <Option type="QString" value="0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="0" name="ring_filter"/>
            <Option type="QString" value="0" name="trim_distance_end"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_end_map_unit_scale"/>
            <Option type="QString" value="MM" name="trim_distance_end_unit"/>
            <Option type="QString" value="0" name="trim_distance_start"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="trim_distance_start_map_unit_scale"/>
            <Option type="QString" value="MM" name="trim_distance_start_unit"/>
            <Option type="QString" value="0" name="tweak_dash_pattern_on_corners"/>
            <Option type="QString" value="0" name="use_custom_dash"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="width_map_unit_scale"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </profileLineSymbol>
    <profileFillSymbol>
      <symbol is_animated="0" type="fill" clip_to_extent="1" frame_rate="10" alpha="1" name="" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </data_defined_properties>
        <layer class="SimpleFill" enabled="1" locked="0" pass="0">
          <Option type="Map">
            <Option type="QString" value="3x:0,0,0,0,0,0" name="border_width_map_unit_scale"/>
            <Option type="QString" value="232,113,141,255" name="color"/>
            <Option type="QString" value="bevel" name="joinstyle"/>
            <Option type="QString" value="0,0" name="offset"/>
            <Option type="QString" value="3x:0,0,0,0,0,0" name="offset_map_unit_scale"/>
            <Option type="QString" value="MM" name="offset_unit"/>
            <Option type="QString" value="35,35,35,255" name="outline_color"/>
            <Option type="QString" value="no" name="outline_style"/>
            <Option type="QString" value="0.26" name="outline_width"/>
            <Option type="QString" value="MM" name="outline_width_unit"/>
            <Option type="QString" value="solid" name="style"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </profileFillSymbol>
  </elevation>
  <customproperties>
    <Option type="Map">
      <Option type="bool" value="false" name="WMSBackgroundLayer"/>
      <Option type="bool" value="false" name="WMSPublishDataSourceUrl"/>
      <Option type="int" value="0" name="embeddedWidgets/count"/>
      <Option type="QString" value="Value" name="identify/format"/>
    </Option>
  </customproperties>
  <pipe-data-defined-properties>
    <Option type="Map">
      <Option type="QString" value="" name="name"/>
      <Option name="properties"/>
      <Option type="QString" value="collection" name="type"/>
    </Option>
  </pipe-data-defined-properties>
  <pipe>
    <provider>
      <resampling zoomedInResamplingMethod="nearestNeighbour" zoomedOutResamplingMethod="nearestNeighbour" enabled="false" maxOversampling="2"/>
    </provider>
    <rasterrenderer opacity="1" type="singlebandpseudocolor" classificationMin="15" classificationMax="25" band="1" alphaBand="-1" nodataColor="">
      <rasterTransparency/>
      <minMaxOrigin>
        <limits>None</limits>
        <extent>WholeRaster</extent>
        <statAccuracy>Estimated</statAccuracy>
        <cumulativeCutLower>0.02</cumulativeCutLower>
        <cumulativeCutUpper>0.98</cumulativeCutUpper>
        <stdDevFactor>2</stdDevFactor>
      </minMaxOrigin>
      <rastershader>
        <colorrampshader minimumValue="15" classificationMode="2" labelPrecision="4" colorRampType="INTERPOLATED" clip="0" maximumValue="25">
          <colorramp type="gradient" name="[source]">
            <Option type="Map">
              <Option type="QString" value="43,131,186,171" name="color1"/>
              <Option type="QString" value="215,174,25,169" name="color2"/>
              <Option type="QString" value="cw" name="direction"/>
              <Option type="QString" value="0" name="discrete"/>
              <Option type="QString" value="gradient" name="rampType"/>
              <Option type="QString" value="rgb" name="spec"/>
              <Option type="QString" value="0.25;171,221,164,255;rgb;cw:0.5;255,255,191,255;rgb;cw:0.75;253,174,97,255;rgb;cw" name="stops"/>
            </Option>
          </colorramp>
          <item label="15.0000" value="15" color="#2b83ba" alpha="171"/>
          <item label="15.5000" value="15.5" color="#4595b6" alpha="188"/>
          <item label="16.0000" value="16" color="#5ea7b1" alpha="205"/>
          <item label="16.5000" value="16.5" color="#78b9ad" alpha="221"/>
          <item label="17.0000" value="17" color="#91cba8" alpha="238"/>
          <item label="17.5000" value="17.5" color="#abdda4" alpha="255"/>
          <item label="18.0000" value="18" color="#bce4a9" alpha="255"/>
          <item label="18.5000" value="18.5" color="#cdebaf" alpha="255"/>
          <item label="19.0000" value="19" color="#ddf1b4" alpha="255"/>
          <item label="19.5000" value="19.5" color="#eef8ba" alpha="255"/>
          <item label="20.0000" value="20" color="#ffffbf" alpha="255"/>
          <item label="20.5000" value="20.5" color="#ffefac" alpha="255"/>
          <item label="21.0000" value="21" color="#fedf99" alpha="255"/>
          <item label="21.5000" value="21.5" color="#fece87" alpha="255"/>
          <item label="22.0000" value="22" color="#fdbe74" alpha="255"/>
          <item label="22.5000" value="22.5" color="#fdae61" alpha="255"/>
          <item label="23.0000" value="23" color="#f5ae53" alpha="238"/>
          <item label="23.5000" value="23.5" color="#eeae44" alpha="221"/>
          <item label="24.0000" value="24" color="#e6ae36" alpha="203"/>
          <item label="24.5000" value="24.5" color="#dfae28" alpha="186"/>
          <item label="25.0000" value="25" color="#d7ae19" alpha="169"/>
          <rampLegendSettings useContinuousLegend="1" prefix="" orientation="2" maximumLabel="" suffix="" minimumLabel="" direction="0">
            <numericFormat id="basic">
              <Option type="Map">
                <Option type="invalid" name="decimal_separator"/>
                <Option type="int" value="6" name="decimals"/>
                <Option type="int" value="0" name="rounding_type"/>
                <Option type="bool" value="false" name="show_plus"/>
                <Option type="bool" value="true" name="show_thousand_separator"/>
                <Option type="bool" value="false" name="show_trailing_zeros"/>
                <Option type="invalid" name="thousand_separator"/>
              </Option>
            </numericFormat>
          </rampLegendSettings>
        </colorrampshader>
      </rastershader>
    </rasterrenderer>
    <brightnesscontrast contrast="78" brightness="-130" gamma="1"/>
    <huesaturation saturation="0" colorizeStrength="100" colorizeGreen="128" invertColors="0" colorizeBlue="128" colorizeRed="255" colorizeOn="0" grayscaleMode="0"/>
    <rasterresampler maxOversampling="2"/>
    <resamplingStage>resamplingFilter</resamplingStage>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
