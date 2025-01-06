<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis maxScale="0" minScale="1e+08" version="3.28.3-Firenze" styleCategories="AllStyleCategories" hasScaleBasedVisibilityFlag="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
    <Private>0</Private>
  </flags>
  <temporal mode="0" enabled="0" fetchMode="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <elevation symbology="Line" zscale="1" zoffset="0" enabled="0" band="1">
    <data-defined-properties>
      <Option type="Map">
        <Option name="name" type="QString" value=""/>
        <Option name="properties"/>
        <Option name="type" type="QString" value="collection"/>
      </Option>
    </data-defined-properties>
    <profileLineSymbol>
      <symbol force_rhr="0" name="" frame_rate="10" clip_to_extent="1" type="line" is_animated="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" class="SimpleLine" enabled="1" locked="0">
          <Option type="Map">
            <Option name="align_dash_pattern" type="QString" value="0"/>
            <Option name="capstyle" type="QString" value="square"/>
            <Option name="customdash" type="QString" value="5;2"/>
            <Option name="customdash_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="customdash_unit" type="QString" value="MM"/>
            <Option name="dash_pattern_offset" type="QString" value="0"/>
            <Option name="dash_pattern_offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="dash_pattern_offset_unit" type="QString" value="MM"/>
            <Option name="draw_inside_polygon" type="QString" value="0"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="line_color" type="QString" value="229,182,54,255"/>
            <Option name="line_style" type="QString" value="solid"/>
            <Option name="line_width" type="QString" value="0.6"/>
            <Option name="line_width_unit" type="QString" value="MM"/>
            <Option name="offset" type="QString" value="0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="ring_filter" type="QString" value="0"/>
            <Option name="trim_distance_end" type="QString" value="0"/>
            <Option name="trim_distance_end_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="trim_distance_end_unit" type="QString" value="MM"/>
            <Option name="trim_distance_start" type="QString" value="0"/>
            <Option name="trim_distance_start_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="trim_distance_start_unit" type="QString" value="MM"/>
            <Option name="tweak_dash_pattern_on_corners" type="QString" value="0"/>
            <Option name="use_custom_dash" type="QString" value="0"/>
            <Option name="width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </profileLineSymbol>
    <profileFillSymbol>
      <symbol force_rhr="0" name="" frame_rate="10" clip_to_extent="1" type="fill" is_animated="0" alpha="1">
        <data_defined_properties>
          <Option type="Map">
            <Option name="name" type="QString" value=""/>
            <Option name="properties"/>
            <Option name="type" type="QString" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer pass="0" class="SimpleFill" enabled="1" locked="0">
          <Option type="Map">
            <Option name="border_width_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="color" type="QString" value="229,182,54,255"/>
            <Option name="joinstyle" type="QString" value="bevel"/>
            <Option name="offset" type="QString" value="0,0"/>
            <Option name="offset_map_unit_scale" type="QString" value="3x:0,0,0,0,0,0"/>
            <Option name="offset_unit" type="QString" value="MM"/>
            <Option name="outline_color" type="QString" value="35,35,35,255"/>
            <Option name="outline_style" type="QString" value="no"/>
            <Option name="outline_width" type="QString" value="0.26"/>
            <Option name="outline_width_unit" type="QString" value="MM"/>
            <Option name="style" type="QString" value="solid"/>
          </Option>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" type="QString" value=""/>
              <Option name="properties"/>
              <Option name="type" type="QString" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </profileFillSymbol>
  </elevation>
  <customproperties>
    <Option type="Map">
      <Option name="WMSBackgroundLayer" type="bool" value="false"/>
      <Option name="WMSPublishDataSourceUrl" type="bool" value="false"/>
      <Option name="embeddedWidgets/count" type="int" value="0"/>
      <Option name="identify/format" type="QString" value="Value"/>
    </Option>
  </customproperties>
  <pipe-data-defined-properties>
    <Option type="Map">
      <Option name="name" type="QString" value=""/>
      <Option name="properties"/>
      <Option name="type" type="QString" value="collection"/>
    </Option>
  </pipe-data-defined-properties>
  <pipe>
    <provider>
      <resampling enabled="false" zoomedInResamplingMethod="nearestNeighbour" zoomedOutResamplingMethod="nearestNeighbour" maxOversampling="2"/>
    </provider>
    <rasterrenderer alphaBand="-1" type="paletted" nodataColor="" opacity="1" band="1">
      <rasterTransparency/>
      <minMaxOrigin>
        <limits>None</limits>
        <extent>WholeRaster</extent>
        <statAccuracy>Estimated</statAccuracy>
        <cumulativeCutLower>0.02</cumulativeCutLower>
        <cumulativeCutUpper>0.98</cumulativeCutUpper>
        <stdDevFactor>2</stdDevFactor>
      </minMaxOrigin>
      <colorPalette>
        <paletteEntry label="0" value="0" color="#000000" alpha="255"/>
        <paletteEntry label="1" value="1" color="#051600" alpha="255"/>
        <paletteEntry label="2" value="2" color="#001e0f" alpha="255"/>
        <paletteEntry label="3" value="3" color="#130c00" alpha="255"/>
        <paletteEntry label="4" value="4" color="#161600" alpha="255"/>
        <paletteEntry label="5" value="5" color="#001a3d" alpha="255"/>
        <paletteEntry label="6" value="6" color="#052600" alpha="255"/>
        <paletteEntry label="7" value="7" color="#002916" alpha="255"/>
        <paletteEntry label="8" value="8" color="#043600" alpha="255"/>
        <paletteEntry label="9" value="9" color="#003717" alpha="255"/>
        <paletteEntry label="10" value="10" color="#172600" alpha="255"/>
        <paletteEntry label="11" value="11" color="#173600" alpha="255"/>
        <paletteEntry label="12" value="12" color="#002823" alpha="255"/>
        <paletteEntry label="13" value="13" color="#00293c" alpha="255"/>
        <paletteEntry label="14" value="14" color="#003927" alpha="255"/>
        <paletteEntry label="15" value="15" color="#003837" alpha="255"/>
        <paletteEntry label="16" value="16" color="#2d1800" alpha="255"/>
        <paletteEntry label="17" value="17" color="#2f2e00" alpha="255"/>
        <paletteEntry label="18" value="18" color="#001450" alpha="255"/>
        <paletteEntry label="19" value="19" color="#000e73" alpha="255"/>
        <paletteEntry label="20" value="20" color="#003350" alpha="255"/>
        <paletteEntry label="21" value="21" color="#002d71" alpha="255"/>
        <paletteEntry label="22" value="22" color="#044600" alpha="255"/>
        <paletteEntry label="23" value="23" color="#004617" alpha="255"/>
        <paletteEntry label="24" value="24" color="#045600" alpha="255"/>
        <paletteEntry label="25" value="25" color="#005716" alpha="255"/>
        <paletteEntry label="26" value="26" color="#164600" alpha="255"/>
        <paletteEntry label="27" value="27" color="#165600" alpha="255"/>
        <paletteEntry label="28" value="28" color="#004626" alpha="255"/>
        <paletteEntry label="29" value="29" color="#004834" alpha="255"/>
        <paletteEntry label="30" value="30" color="#005625" alpha="255"/>
        <paletteEntry label="31" value="31" color="#005836" alpha="255"/>
        <paletteEntry label="32" value="32" color="#036601" alpha="255"/>
        <paletteEntry label="33" value="33" color="#006717" alpha="255"/>
        <paletteEntry label="34" value="34" color="#037601" alpha="255"/>
        <paletteEntry label="35" value="35" color="#007716" alpha="255"/>
        <paletteEntry label="36" value="36" color="#166600" alpha="255"/>
        <paletteEntry label="37" value="37" color="#177600" alpha="255"/>
        <paletteEntry label="38" value="38" color="#006626" alpha="255"/>
        <paletteEntry label="39" value="39" color="#006636" alpha="255"/>
        <paletteEntry label="40" value="40" color="#007627" alpha="255"/>
        <paletteEntry label="41" value="41" color="#007636" alpha="255"/>
        <paletteEntry label="42" value="42" color="#274600" alpha="255"/>
        <paletteEntry label="43" value="43" color="#255600" alpha="255"/>
        <paletteEntry label="44" value="44" color="#354700" alpha="255"/>
        <paletteEntry label="45" value="45" color="#365500" alpha="255"/>
        <paletteEntry label="46" value="46" color="#266700" alpha="255"/>
        <paletteEntry label="47" value="47" color="#267700" alpha="255"/>
        <paletteEntry label="48" value="48" color="#376600" alpha="255"/>
        <paletteEntry label="49" value="49" color="#367600" alpha="255"/>
        <paletteEntry label="50" value="50" color="#004845" alpha="255"/>
        <paletteEntry label="51" value="51" color="#00465a" alpha="255"/>
        <paletteEntry label="52" value="52" color="#005744" alpha="255"/>
        <paletteEntry label="53" value="53" color="#005957" alpha="255"/>
        <paletteEntry label="54" value="54" color="#004d73" alpha="255"/>
        <paletteEntry label="55" value="55" color="#006845" alpha="255"/>
        <paletteEntry label="56" value="56" color="#006855" alpha="255"/>
        <paletteEntry label="57" value="57" color="#007646" alpha="255"/>
        <paletteEntry label="58" value="58" color="#007756" alpha="255"/>
        <paletteEntry label="59" value="59" color="#006766" alpha="255"/>
        <paletteEntry label="60" value="60" color="#006776" alpha="255"/>
        <paletteEntry label="61" value="61" color="#007866" alpha="255"/>
        <paletteEntry label="62" value="62" color="#007776" alpha="255"/>
        <paletteEntry label="63" value="63" color="#4c1700" alpha="255"/>
        <paletteEntry label="64" value="64" color="#4d3200" alpha="255"/>
        <paletteEntry label="65" value="65" color="#6d1000" alpha="255"/>
        <paletteEntry label="66" value="66" color="#6e3400" alpha="255"/>
        <paletteEntry label="67" value="67" color="#504e00" alpha="255"/>
        <paletteEntry label="68" value="68" color="#4d7000" alpha="255"/>
        <paletteEntry label="69" value="69" color="#6f5000" alpha="255"/>
        <paletteEntry label="70" value="70" color="#706d00" alpha="255"/>
        <paletteEntry label="71" value="71" color="#000b95" alpha="255"/>
        <paletteEntry label="72" value="72" color="#002587" alpha="255"/>
        <paletteEntry label="73" value="73" color="#002797" alpha="255"/>
        <paletteEntry label="74" value="74" color="#003686" alpha="255"/>
        <paletteEntry label="75" value="75" color="#003698" alpha="255"/>
        <paletteEntry label="76" value="76" color="#002eb1" alpha="255"/>
        <paletteEntry label="77" value="77" color="#000bc4" alpha="255"/>
        <paletteEntry label="78" value="78" color="#001cdf" alpha="255"/>
        <paletteEntry label="79" value="79" color="#002ec4" alpha="255"/>
        <paletteEntry label="80" value="80" color="#0031e9" alpha="255"/>
        <paletteEntry label="81" value="81" color="#004688" alpha="255"/>
        <paletteEntry label="82" value="82" color="#004699" alpha="255"/>
        <paletteEntry label="83" value="83" color="#005887" alpha="255"/>
        <paletteEntry label="84" value="84" color="#005699" alpha="255"/>
        <paletteEntry label="85" value="85" color="#0046aa" alpha="255"/>
        <paletteEntry label="86" value="86" color="#0046b4" alpha="255"/>
        <paletteEntry label="87" value="87" color="#0056aa" alpha="255"/>
        <paletteEntry label="88" value="88" color="#0056b4" alpha="255"/>
        <paletteEntry label="89" value="89" color="#006686" alpha="255"/>
        <paletteEntry label="90" value="90" color="#006699" alpha="255"/>
        <paletteEntry label="91" value="91" color="#007587" alpha="255"/>
        <paletteEntry label="92" value="92" color="#007698" alpha="255"/>
        <paletteEntry label="93" value="93" color="#0066a9" alpha="255"/>
        <paletteEntry label="94" value="94" color="#0066b4" alpha="255"/>
        <paletteEntry label="95" value="95" color="#0076a9" alpha="255"/>
        <paletteEntry label="96" value="96" color="#0076b4" alpha="255"/>
        <paletteEntry label="97" value="97" color="#004ec4" alpha="255"/>
        <paletteEntry label="98" value="98" color="#0052e5" alpha="255"/>
        <paletteEntry label="99" value="99" color="#006ec5" alpha="255"/>
        <paletteEntry label="100" value="100" color="#006de5" alpha="255"/>
        <paletteEntry label="101" value="101" color="#5050fe" alpha="255"/>
        <paletteEntry label="102" value="102" color="#038701" alpha="255"/>
        <paletteEntry label="103" value="103" color="#008816" alpha="255"/>
        <paletteEntry label="104" value="104" color="#039701" alpha="255"/>
        <paletteEntry label="105" value="105" color="#009717" alpha="255"/>
        <paletteEntry label="106" value="106" color="#178600" alpha="255"/>
        <paletteEntry label="107" value="107" color="#179700" alpha="255"/>
        <paletteEntry label="108" value="108" color="#008825" alpha="255"/>
        <paletteEntry label="109" value="109" color="#008836" alpha="255"/>
        <paletteEntry label="110" value="110" color="#009825" alpha="255"/>
        <paletteEntry label="111" value="111" color="#009736" alpha="255"/>
        <paletteEntry label="112" value="112" color="#0ab103" alpha="255"/>
        <paletteEntry label="113" value="113" color="#00a828" alpha="255"/>
        <paletteEntry label="114" value="114" color="#00a736" alpha="255"/>
        <paletteEntry label="115" value="115" color="#00b736" alpha="255"/>
        <paletteEntry label="116" value="116" color="#268600" alpha="255"/>
        <paletteEntry label="117" value="117" color="#269700" alpha="255"/>
        <paletteEntry label="118" value="118" color="#368600" alpha="255"/>
        <paletteEntry label="119" value="119" color="#369700" alpha="255"/>
        <paletteEntry label="120" value="120" color="#008946" alpha="255"/>
        <paletteEntry label="121" value="121" color="#008856" alpha="255"/>
        <paletteEntry label="122" value="122" color="#009746" alpha="255"/>
        <paletteEntry label="123" value="123" color="#009756" alpha="255"/>
        <paletteEntry label="124" value="124" color="#008866" alpha="255"/>
        <paletteEntry label="125" value="125" color="#008976" alpha="255"/>
        <paletteEntry label="126" value="126" color="#009766" alpha="255"/>
        <paletteEntry label="127" value="127" color="#009677" alpha="255"/>
        <paletteEntry label="128" value="128" color="#00a646" alpha="255"/>
        <paletteEntry label="129" value="129" color="#00a656" alpha="255"/>
        <paletteEntry label="130" value="130" color="#00b746" alpha="255"/>
        <paletteEntry label="131" value="131" color="#00b756" alpha="255"/>
        <paletteEntry label="132" value="132" color="#00a666" alpha="255"/>
        <paletteEntry label="133" value="133" color="#00a576" alpha="255"/>
        <paletteEntry label="134" value="134" color="#00b766" alpha="255"/>
        <paletteEntry label="135" value="135" color="#00b776" alpha="255"/>
        <paletteEntry label="136" value="136" color="#09ca04" alpha="255"/>
        <paletteEntry label="137" value="137" color="#00c427" alpha="255"/>
        <paletteEntry label="138" value="138" color="#00c533" alpha="255"/>
        <paletteEntry label="139" value="139" color="#00d527" alpha="255"/>
        <paletteEntry label="140" value="140" color="#00d536" alpha="255"/>
        <paletteEntry label="141" value="141" color="#08e903" alpha="255"/>
        <paletteEntry label="142" value="142" color="#00e82d" alpha="255"/>
        <paletteEntry label="143" value="143" color="#2cc900" alpha="255"/>
        <paletteEntry label="144" value="144" color="#2fe900" alpha="255"/>
        <paletteEntry label="145" value="145" color="#00c546" alpha="255"/>
        <paletteEntry label="146" value="146" color="#00c556" alpha="255"/>
        <paletteEntry label="147" value="147" color="#00d546" alpha="255"/>
        <paletteEntry label="148" value="148" color="#00d656" alpha="255"/>
        <paletteEntry label="149" value="149" color="#00c666" alpha="255"/>
        <paletteEntry label="150" value="150" color="#00c576" alpha="255"/>
        <paletteEntry label="151" value="151" color="#00d566" alpha="255"/>
        <paletteEntry label="152" value="152" color="#00d776" alpha="255"/>
        <paletteEntry label="153" value="153" color="#00e446" alpha="255"/>
        <paletteEntry label="154" value="154" color="#00e457" alpha="255"/>
        <paletteEntry label="155" value="155" color="#00f349" alpha="255"/>
        <paletteEntry label="156" value="156" color="#00f357" alpha="255"/>
        <paletteEntry label="157" value="157" color="#00e565" alpha="255"/>
        <paletteEntry label="158" value="158" color="#00e476" alpha="255"/>
        <paletteEntry label="159" value="159" color="#00f366" alpha="255"/>
        <paletteEntry label="160" value="160" color="#00f477" alpha="255"/>
        <paletteEntry label="161" value="161" color="#468600" alpha="255"/>
        <paletteEntry label="162" value="162" color="#489700" alpha="255"/>
        <paletteEntry label="163" value="163" color="#568600" alpha="255"/>
        <paletteEntry label="164" value="164" color="#559700" alpha="255"/>
        <paletteEntry label="165" value="165" color="#46a800" alpha="255"/>
        <paletteEntry label="166" value="166" color="#46b500" alpha="255"/>
        <paletteEntry label="167" value="167" color="#55a800" alpha="255"/>
        <paletteEntry label="168" value="168" color="#6f9100" alpha="255"/>
        <paletteEntry label="169" value="169" color="#6eb100" alpha="255"/>
        <paletteEntry label="170" value="170" color="#4fcb00" alpha="255"/>
        <paletteEntry label="171" value="171" color="#4ee900" alpha="255"/>
        <paletteEntry label="172" value="172" color="#65c400" alpha="255"/>
        <paletteEntry label="173" value="173" color="#66d500" alpha="255"/>
        <paletteEntry label="174" value="174" color="#76c400" alpha="255"/>
        <paletteEntry label="175" value="175" color="#76d500" alpha="255"/>
        <paletteEntry label="176" value="176" color="#6ee800" alpha="255"/>
        <paletteEntry label="177" value="177" color="#008986" alpha="255"/>
        <paletteEntry label="178" value="178" color="#008697" alpha="255"/>
        <paletteEntry label="179" value="179" color="#009886" alpha="255"/>
        <paletteEntry label="180" value="180" color="#009796" alpha="255"/>
        <paletteEntry label="181" value="181" color="#0086a9" alpha="255"/>
        <paletteEntry label="182" value="182" color="#0086b4" alpha="255"/>
        <paletteEntry label="183" value="183" color="#0096a8" alpha="255"/>
        <paletteEntry label="184" value="184" color="#0096b4" alpha="255"/>
        <paletteEntry label="185" value="185" color="#00a587" alpha="255"/>
        <paletteEntry label="186" value="186" color="#00a896" alpha="255"/>
        <paletteEntry label="187" value="187" color="#00b786" alpha="255"/>
        <paletteEntry label="188" value="188" color="#00b29b" alpha="255"/>
        <paletteEntry label="189" value="189" color="#00a8a6" alpha="255"/>
        <paletteEntry label="190" value="190" color="#00a6b4" alpha="255"/>
        <paletteEntry label="191" value="191" color="#00b5a5" alpha="255"/>
        <paletteEntry label="192" value="192" color="#00b5b3" alpha="255"/>
        <paletteEntry label="193" value="193" color="#0086c2" alpha="255"/>
        <paletteEntry label="194" value="194" color="#0085d4" alpha="255"/>
        <paletteEntry label="195" value="195" color="#0096c2" alpha="255"/>
        <paletteEntry label="196" value="196" color="#0097d3" alpha="255"/>
        <paletteEntry label="197" value="197" color="#008ae6" alpha="255"/>
        <paletteEntry label="198" value="198" color="#00aec4" alpha="255"/>
        <paletteEntry label="199" value="199" color="#00afe6" alpha="255"/>
        <paletteEntry label="200" value="200" color="#00c586" alpha="255"/>
        <paletteEntry label="201" value="201" color="#00c596" alpha="255"/>
        <paletteEntry label="202" value="202" color="#00d686" alpha="255"/>
        <paletteEntry label="203" value="203" color="#00d696" alpha="255"/>
        <paletteEntry label="204" value="204" color="#00c4a7" alpha="255"/>
        <paletteEntry label="205" value="205" color="#00c3b6" alpha="255"/>
        <paletteEntry label="206" value="206" color="#00d6a6" alpha="255"/>
        <paletteEntry label="207" value="207" color="#00d5b5" alpha="255"/>
        <paletteEntry label="208" value="208" color="#00e78d" alpha="255"/>
        <paletteEntry label="209" value="209" color="#00e6ad" alpha="255"/>
        <paletteEntry label="210" value="210" color="#00c5c3" alpha="255"/>
        <paletteEntry label="211" value="211" color="#00c6d4" alpha="255"/>
        <paletteEntry label="212" value="212" color="#00d6c6" alpha="255"/>
        <paletteEntry label="213" value="213" color="#00d7d4" alpha="255"/>
        <paletteEntry label="214" value="214" color="#00cfe5" alpha="255"/>
        <paletteEntry label="215" value="215" color="#00e7cb" alpha="255"/>
        <paletteEntry label="216" value="216" color="#00ebe6" alpha="255"/>
        <paletteEntry label="217" value="217" color="#931300" alpha="255"/>
        <paletteEntry label="218" value="218" color="#903200" alpha="255"/>
        <paletteEntry label="219" value="219" color="#b11700" alpha="255"/>
        <paletteEntry label="220" value="220" color="#b13500" alpha="255"/>
        <paletteEntry label="221" value="221" color="#8f4f00" alpha="255"/>
        <paletteEntry label="222" value="222" color="#906f00" alpha="255"/>
        <paletteEntry label="223" value="223" color="#c51300" alpha="255"/>
        <paletteEntry label="224" value="224" color="#c93200" alpha="255"/>
        <paletteEntry label="225" value="225" color="#f80200" alpha="255"/>
        <paletteEntry label="226" value="226" color="#e23500" alpha="255"/>
        <paletteEntry label="227" value="227" color="#ca5100" alpha="255"/>
        <paletteEntry label="228" value="228" color="#ca6f00" alpha="255"/>
        <paletteEntry label="229" value="229" color="#e35200" alpha="255"/>
        <paletteEntry label="230" value="230" color="#e47300" alpha="255"/>
        <paletteEntry label="231" value="231" color="#908e00" alpha="255"/>
        <paletteEntry label="232" value="232" color="#8fc800" alpha="255"/>
        <paletteEntry label="233" value="233" color="#8fe800" alpha="255"/>
        <paletteEntry label="234" value="234" color="#acc900" alpha="255"/>
        <paletteEntry label="235" value="235" color="#ade900" alpha="255"/>
        <paletteEntry label="236" value="236" color="#ca8f00" alpha="255"/>
        <paletteEntry label="237" value="237" color="#c9b000" alpha="255"/>
        <paletteEntry label="238" value="238" color="#e69000" alpha="255"/>
        <paletteEntry label="239" value="239" color="#e7af00" alpha="255"/>
        <paletteEntry label="240" value="240" color="#cdca00" alpha="255"/>
        <paletteEntry label="241" value="241" color="#cee900" alpha="255"/>
        <paletteEntry label="242" value="242" color="#e7ce00" alpha="255"/>
        <paletteEntry label="243" value="243" color="#eae800" alpha="255"/>
        <paletteEntry label="244" value="244" color="#bfbfbf" alpha="255"/>
        <paletteEntry label="245" value="245" color="#af8b00" alpha="255"/>
        <paletteEntry label="246" value="246" color="#af6f00" alpha="255"/>
        <paletteEntry label="247" value="247" color="#af5300" alpha="255"/>
        <paletteEntry label="248" value="248" color="#00b32f" alpha="255"/>
        <paletteEntry label="249" value="249" color="#afa700" alpha="255"/>
        <paletteEntry label="250" value="250" color="#00b39f" alpha="255"/>
        <paletteEntry label="251" value="251" color="#1fb300" alpha="255"/>
        <paletteEntry label="252" value="252" color="#8fb300" alpha="255"/>
        <paletteEntry label="253" value="253" color="#0000af" alpha="255"/>
        <paletteEntry label="254" value="254" color="#57b300" alpha="255"/>
        <paletteEntry label="255" value="255" color="#fefefe" alpha="255"/>
      </colorPalette>
      <colorramp name="[source]" type="randomcolors">
        <Option/>
      </colorramp>
    </rasterrenderer>
    <brightnesscontrast gamma="1" contrast="0" brightness="0"/>
    <huesaturation saturation="0" colorizeGreen="128" grayscaleMode="0" colorizeStrength="100" colorizeRed="255" invertColors="0" colorizeOn="0" colorizeBlue="128"/>
    <rasterresampler maxOversampling="2"/>
    <resamplingStage>resamplingFilter</resamplingStage>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
