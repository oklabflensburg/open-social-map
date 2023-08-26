# SQL Documentation

*This file is managed by the GitHub actions and should not be edited manually*



## Addr


```sql
SELECT * FROM addr;
```

```sql
 gid | tlid | fromhn | tohn | side | zip | plus4 | fromtyp | totyp | fromarmid | toarmid | arid | mtfcc | statefp
-----+------+--------+------+------+-----+-------+---------+-------+-----------+---------+------+-------+---------
(0 rows)
```



## Topology


```sql
SELECT * FROM topology;
```

```sql
 id | name | srid | precision | hasz
----+------+------+-----------+------
(0 rows)
```



## Layer


```sql
SELECT * FROM layer;
```

```sql
 topology_id | layer_id | schema_name | table_name | feature_column | feature_type | level | child_id
-------------+----------+-------------+------------+----------------+--------------+-------+----------
(0 rows)
```



## Zcta5


```sql
SELECT * FROM zcta5;
```

```sql
 gid | statefp | zcta5ce | classfp | mtfcc | funcstat | aland | awater | intptlat | intptlon | partflg | the_geom
-----+---------+---------+---------+-------+----------+-------+--------+----------+----------+---------+----------
(0 rows)
```



## Geocode Settings


```sql
SELECT * FROM geocode_settings;
```

```sql
 name | setting | unit | category | short_desc
------+---------+------+----------+------------
(0 rows)
```



## Geocode Settings Default


```sql
SELECT * FROM geocode_settings_default;
```

```sql
 name                           | setting | unit    | category  | short_desc
--------------------------------+---------+---------+-----------+---------------------------------------------------------------------------------------------------------------------------------------------
 debug_geocode_address          | false   | boolean | debug     | outputs debug information in notice log such as queries when geocode_addresss is called if true
 debug_geocode_intersection     | false   | boolean | debug     | outputs debug information in notice log such as queries when geocode_intersection is called if true
 debug_normalize_address        | false   | boolean | debug     | outputs debug information in notice log such as queries and intermediate expressions when normalize_address is called if true
 debug_reverse_geocode          | false   | boolean | debug     | if true, outputs debug information in notice log such as queries and intermediate expressions when reverse_geocode
 reverse_geocode_numbered_roads | 0       | integer | rating    | For state and county highways, 0 - no preference in name, 1 - prefer the numbered highway name, 2 - prefer local state/county name
 use_pagc_address_parser        | false   | boolean | normalize | If set to true, will try to use the address_standardizer extension (via pagc_normalize_address) instead of tiger normalize_address built on
 zip_penalty                    | 2       | numeric | rating    | As input to rating will add (ref_zip - tar_zip)*zip_penalty where ref_zip is input address and tar_zip is a target address candidate
(7 rows)
```



## Direction Lookup


```sql
SELECT * FROM direction_lookup;
```

```sql
 name       | abbrev
------------+--------
 WEST       | W
 W          | W
 SW         | SW
 SOUTH-WEST | SW
 SOUTHWEST  | SW
 SOUTH-EAST | SE
 SOUTHEAST  | SE
 SOUTH_WEST | SW
 SOUTH_EAST | SE
 SOUTH      | S
 SOUTH WEST | SW
 SOUTH EAST | SE
 SE         | SE
 S          | S
 NW         | NW
 NORTH-WEST | NW
 NORTHWEST  | NW
 NORTH-EAST | NE
 NORTHEAST  | NE
 NORTH_WEST | NW
 NORTH_EAST | NE
 NORTH      | N
 NORTH WEST | NW
 NORTH EAST | NE
 NE         | NE
 N          | N
 EAST       | E
 E          | E
(28 rows)
```



## Secondary Unit Lookup


```sql
SELECT * FROM secondary_unit_lookup;
```

```sql
 name       | abbrev
------------+--------
 APARTMENT  | APT
 APT        | APT
 BASEMENT   | BSMT
 BSMT       | BSMT
 BUILDING   | BLDG
 BLDG       | BLDG
 DEPARTMENT | DEPT
 DEPT       | DEPT
 FLOOR      | FL
 FL         | FL
 FRONT      | FRNT
 FRNT       | FRNT
 HANGAR     | HNGR
 HNGR       | HNGR
 LOBBY      | LBBY
 LBBY       | LBBY
 LOT        | LOT
 LOWER      | LOWR
 LOWR       | LOWR
 OFFICE     | OFC
 OFC        | OFC
 PENTHOUSE  | PH
 PH         | PH
 PIER       | PIER
 REAR       | REAR
 ROOM       | RM
 RM         | RM
 SIDE       | SIDE
 SLIP       | SLIP
 SPACE      | SPC
 SPC        | SPC
 STOP       | STOP
 SUITE      | STE
 STE        | STE
 TRAILER    | TRLR
 TRLR       | TRLR
 UNIT       | UNIT
 UPPER      | UPPR
 UPPR       | UPPR
(39 rows)
```



## State Lookup


```sql
SELECT * FROM state_lookup;
```

```sql
 st_code | name                           | abbrev | statefp
---------+--------------------------------+--------+---------
       1 | Alabama                        | AL     |      01
       2 | Alaska                         | AK     |      02
      60 | American Samoa                 | AS     |      60
       4 | Arizona                        | AZ     |      04
       5 | Arkansas                       | AR     |      05
       6 | California                     | CA     |      06
       8 | Colorado                       | CO     |      08
       9 | Connecticut                    | CT     |      09
      10 | Delaware                       | DE     |      10
      11 | District of Columbia           | DC     |      11
      64 | Federated States of Micronesia | FM     |      64
      12 | Florida                        | FL     |      12
      13 | Georgia                        | GA     |      13
      66 | Guam                           | GU     |      66
      15 | Hawaii                         | HI     |      15
      16 | Idaho                          | ID     |      16
      17 | Illinois                       | IL     |      17
      18 | Indiana                        | IN     |      18
      19 | Iowa                           | IA     |      19
      20 | Kansas                         | KS     |      20
      21 | Kentucky                       | KY     |      21
      22 | Louisiana                      | LA     |      22
      23 | Maine                          | ME     |      23
      68 | Marshall Islands               | MH     |      68
      24 | Maryland                       | MD     |      24
      25 | Massachusetts                  | MA     |      25
      26 | Michigan                       | MI     |      26
      27 | Minnesota                      | MN     |      27
      28 | Mississippi                    | MS     |      28
      29 | Missouri                       | MO     |      29
      30 | Montana                        | MT     |      30
      31 | Nebraska                       | NE     |      31
      32 | Nevada                         | NV     |      32
      33 | New Hampshire                  | NH     |      33
      34 | New Jersey                     | NJ     |      34
      35 | New Mexico                     | NM     |      35
      36 | New York                       | NY     |      36
      37 | North Carolina                 | NC     |      37
      38 | North Dakota                   | ND     |      38
      69 | Northern Mariana Islands       | MP     |      69
      39 | Ohio                           | OH     |      39
      40 | Oklahoma                       | OK     |      40
      41 | Oregon                         | OR     |      41
      70 | Palau                          | PW     |      70
      42 | Pennsylvania                   | PA     |      42
      72 | Puerto Rico                    | PR     |      72
      44 | Rhode Island                   | RI     |      44
      45 | South Carolina                 | SC     |      45
      46 | South Dakota                   | SD     |      46
      47 | Tennessee                      | TN     |      47
      48 | Texas                          | TX     |      48
      49 | Utah                           | UT     |      49
      50 | Vermont                        | VT     |      50
      78 | Virgin Islands                 | VI     |      78
      51 | Virginia                       | VA     |      51
      53 | Washington                     | WA     |      53
      54 | West Virginia                  | WV     |      54
      55 | Wisconsin                      | WI     |      55
      56 | Wyoming                        | WY     |      56
(59 rows)
```



## Street Type Lookup


```sql
SELECT * FROM street_type_lookup;
```

```sql
 name             | abbrev        | is_hw
------------------+---------------+-------
 ALLEE            | Aly           | False
 ALLEY            | Aly           | False
 ALLY             | Aly           | False
 ALY              | Aly           | False
 ANEX             | Anx           | False
 ANNEX            | Anx           | False
 ANNX             | Anx           | False
 ANX              | Anx           | False
 ARC              | Arc           | False
 ARCADE           | Arc           | False
 AV               | Ave           | False
 AVE              | Ave           | False
 AVEN             | Ave           | False
 AVENU            | Ave           | False
 AVENUE           | Ave           | False
 AVN              | Ave           | False
 AVNUE            | Ave           | False
 BAYOO            | Byu           | False
 BAYOU            | Byu           | False
 BCH              | Bch           | False
 BEACH            | Bch           | False
 BEND             | Bnd           | False
 BND              | Bnd           | False
 BLF              | Blf           | False
 BLUF             | Blf           | False
 BLUFF            | Blf           | False
 BLUFFS           | Blfs          | False
 BOT              | Btm           | False
 BOTTM            | Btm           | False
 BOTTOM           | Btm           | False
 BTM              | Btm           | False
 BLVD             | Blvd          | False
 BOUL             | Blvd          | False
 BOULEVARD        | Blvd          | False
 BOULV            | Blvd          | False
 BR               | Br            | False
 BRANCH           | Br            | False
 BRNCH            | Br            | False
 BRDGE            | Brg           | False
 BRG              | Brg           | False
 BRIDGE           | Brg           | False
 BRK              | Brk           | False
 BROOK            | Brk           | False
 BROOKS           | Brks          | False
 BURG             | Bg            | False
 BURGS            | Bgs           | False
 BYP              | Byp           | False
 BYPA             | Byp           | False
 BYPAS            | Byp           | False
 BYPASS           | ByP           | False
 BYPS             | Byp           | False
 CAMP             | Cp            | False
 CMP              | Cp            | False
 CP               | Cp            | False
 CANYN            | Cyn           | False
 CANYON           | Cyn           | False
 CNYN             | Cyn           | False
 CYN              | Cyn           | False
 CAPE             | Cpe           | False
 CPE              | Cpe           | False
 CAUSEWAY         | Cswy          | False
 CAUSWAY          | Cswy          | False
 CSWY             | Cswy          | False
 CEN              | Ctr           | False
 CENT             | Ctr           | False
 CENTER           | Ctr           | False
 CENTR            | Ctr           | False
 CENTRE           | Ctr           | False
 CNTER            | Ctr           | False
 CNTR             | Ctr           | False
 CTR              | Ctr           | False
 CENTERS          | Ctrs          | False
 CIR              | Cir           | False
 CIRC             | Cir           | False
 CIRCL            | Cir           | False
 CIRCLE           | Cir           | False
 CRCL             | Cir           | False
 CRCLE            | Cir           | False
 CIRCLES          | Cirs          | False
 CLF              | Clf           | False
 CLIFF            | Clf           | False
 CLFS             | Clfs          | False
 CLIFFS           | Clfs          | False
 CLB              | Clb           | False
 CLUB             | Clb           | False
 COMMON           | Cmn           | False
 COR              | Cor           | False
 CORNER           | Cor           | False
 CORNERS          | Cors          | False
 CORS             | Cors          | False
 COURSE           | Crse          | False
 CRSE             | Crse          | False
 COURT            | Ct            | False
 CRT              | Ct            | False
 CT               | Ct            | False
 COURTS           | Cts           | False
 COVE             | Cv            | False
 CV               | Cv            | False
 COVES            | Cvs           | False
 CK               | Crk           | False
 CR               | Crk           | False
 CREEK            | Crk           | False
 CRK              | Crk           | False
 CRECENT          | Cres          | False
 CRES             | Cres          | False
 CRESCENT         | Cres          | False
 CRESENT          | Cres          | False
 CRSCNT           | Cres          | False
 CRSENT           | Cres          | False
 CRSNT            | Cres          | False
 CREST            | Crst          | False
 CROSSING         | Xing          | False
 CRSSING          | Xing          | False
 CRSSNG           | Xing          | False
 XING             | Xing          | False
 CROSSROAD        | Xrd           | False
 CURVE            | Curv          | False
 DALE             | Dl            | False
 DL               | Dl            | False
 DAM              | Dm            | False
 DM               | Dm            | False
 DIV              | Dv            | False
 DIVIDE           | Dv            | False
 DV               | Dv            | False
 DVD              | Dv            | False
 DR               | Dr            | False
 DRIV             | Dr            | False
 DRIVE            | Dr            | False
 DRV              | Dr            | False
 DRIVES           | Drs           | False
 EST              | Est           | False
 ESTATE           | Est           | False
 ESTATES          | Ests          | False
 ESTS             | Ests          | False
 EXT              | Ext           | False
 EXTENSION        | Ext           | False
 EXTN             | Ext           | False
 EXTNSN           | Ext           | False
 EXTENSIONS       | Exts          | False
 EXTS             | Exts          | False
 FALL             | Fall          | False
 FALLS            | Fls           | False
 FLS              | Fls           | False
 FERRY            | Fry           | False
 FRRY             | Fry           | False
 FRY              | Fry           | False
 FIELD            | Fld           | False
 FLD              | Fld           | False
 FIELDS           | Flds          | False
 FLDS             | Flds          | False
 FLAT             | Flt           | False
 FLT              | Flt           | False
 FLATS            | Flts          | False
 FLTS             | Flts          | False
 FORD             | Frd           | False
 FRD              | Frd           | False
 FORDS            | Frds          | False
 FORG             | Frg           | False
 FORGE            | Frg           | False
 FRG              | Frg           | False
 FORGES           | Frgs          | False
 FORK             | Frk           | False
 FRK              | Frk           | False
 FORKS            | Frks          | False
 FRKS             | Frks          | False
 FORT             | Ft            | False
 FRT              | Ft            | False
 FT               | Ft            | False
 GARDEN           | Gdn           | False
 GARDN            | Gdn           | False
 GDN              | Gdn           | False
 GRDEN            | Gdn           | False
 GRDN             | Gdn           | False
 GARDENS          | Gdns          | False
 GDNS             | Gdns          | False
 GRDNS            | Gdns          | False
 GATEWAY          | Gtwy          | False
 GATEWY           | Gtwy          | False
 GATWAY           | Gtwy          | False
 GTWAY            | Gtwy          | False
 GTWY             | Gtwy          | False
 GLEN             | Gln           | False
 GLN              | Gln           | False
 GLENS            | Glns          | False
 GREEN            | Grn           | False
 GRN              | Grn           | False
 GREENS           | Grns          | False
 GROV             | Grv           | False
 GROVE            | Grv           | False
 GRV              | Grv           | False
 GROVES           | Grvs          | False
 HARB             | Hbr           | False
 HARBOR           | Hbr           | False
 HARBR            | Hbr           | False
 HBR              | Hbr           | False
 HRBOR            | Hbr           | False
 HARBORS          | Hbrs          | False
 HAVEN            | Hvn           | False
 HAVN             | Hvn           | False
 HVN              | Hvn           | False
 HEIGHT           | Hts           | False
 HEIGHTS          | Hts           | False
 HGTS             | Hts           | False
 HT               | Hts           | False
 HTS              | Hts           | False
 HILL             | Hl            | False
 HL               | Hl            | False
 HILLS            | Hls           | False
 HLS              | Hls           | False
 HLLW             | Holw          | False
 HOLLOW           | Holw          | False
 HOLLOWS          | Holw          | False
 HOLW             | Holw          | False
 HOLWS            | Holw          | False
 INLET            | Inlt          | False
 INLT             | Inlt          | False
 IS               | Is            | False
 ISLAND           | Is            | False
 ISLND            | Is            | False
 ISLANDS          | Iss           | False
 ISLNDS           | Iss           | False
 ISS              | Iss           | False
 ISLE             | Isle          | False
 ISLES            | Isle          | False
 JCT              | Jct           | False
 JCTION           | Jct           | False
 JCTN             | Jct           | False
 JUNCTION         | Jct           | False
 JUNCTN           | Jct           | False
 JUNCTON          | Jct           | False
 JCTNS            | Jcts          | False
 JCTS             | Jcts          | False
 JUNCTIONS        | Jcts          | False
 KEY              | Ky            | False
 KY               | Ky            | False
 KEYS             | Kys           | False
 KYS              | Kys           | False
 KNL              | Knl           | False
 KNOL             | Knl           | False
 KNOLL            | Knl           | False
 KNLS             | Knls          | False
 KNOLLS           | Knls          | False
 LAKE             | Lk            | False
 LK               | Lk            | False
 LAKES            | Lks           | False
 LKS              | Lks           | False
 LAND             | Land          | False
 LANDING          | Lndg          | False
 LNDG             | Lndg          | False
 LNDNG            | Lndg          | False
 LA               | Ln            | False
 LANE             | Ln            | False
 LANES            | Ln            | False
 LN               | Ln            | False
 LGT              | Lgt           | False
 LIGHT            | Lgt           | False
 LIGHTS           | Lgts          | False
 LF               | Lf            | False
 LOAF             | Lf            | False
 LCK              | Lck           | False
 LOCK             | Lck           | False
 LCKS             | Lcks          | False
 LOCKS            | Lcks          | False
 LDG              | Ldg           | False
 LDGE             | Ldg           | False
 LODG             | Ldg           | False
 LODGE            | Ldg           | False
 LOOP             | Loop          | False
 LOOPS            | Loop          | False
 MALL             | Mall          | False
 MANOR            | Mnr           | False
 MNR              | Mnr           | False
 MANORS           | Mnrs          | False
 MNRS             | Mnrs          | False
 MDW              | Mdw           | False
 MEADOW           | Mdw           | False
 MDWS             | Mdws          | False
 MEADOWS          | Mdws          | False
 MEDOWS           | Mdws          | False
 MEWS             | Mews          | False
 MILL             | Ml            | False
 ML               | Ml            | False
 MILLS            | Mls           | False
 MLS              | Mls           | False
 MISSION          | Msn           | False
 MISSN            | Msn           | False
 MSN              | Msn           | False
 MSSN             | Msn           | False
 MOTORWAY         | Mtwy          | False
 MNT              | Mt            | False
 MOUNT            | Mt            | False
 MT               | Mt            | False
 MNTAIN           | Mtn           | False
 MNTN             | Mtn           | False
 MOUNTAIN         | Mtn           | False
 MOUNTIN          | Mtn           | False
 MTIN             | Mtn           | False
 MTN              | Mtn           | False
 MNTNS            | Mtns          | False
 MOUNTAINS        | Mtns          | False
 NCK              | Nck           | False
 NECK             | Nck           | False
 ORCH             | Orch          | False
 ORCHARD          | Orch          | False
 ORCHRD           | Orch          | False
 OVAL             | Oval          | False
 OVL              | Oval          | False
 OVERPASS         | Opas          | False
 PARK             | Park          | False
 PK               | Park          | False
 PRK              | Park          | False
 PARKS            | Park          | False
 PARKWAY          | Pkwy          | False
 PARKWY           | Pkwy          | False
 PKWAY            | Pkwy          | False
 PKWY             | Pkwy          | False
 PKY              | Pkwy          | False
 PARKWAYS         | Pkwy          | False
 PKWYS            | Pkwy          | False
 PASS             | Pass          | False
 PASSAGE          | Psge          | False
 PATH             | Path          | False
 PATHS            | Path          | False
 PIKE             | Pike          | False
 PIKES            | Pike          | False
 PINE             | Pne           | False
 PINES            | Pnes          | False
 PNES             | Pnes          | False
 PL               | Pl            | False
 PLACE            | Pl            | False
 PLAIN            | Pln           | False
 PLN              | Pln           | False
 PLAINES          | Plns          | False
 PLAINS           | Plns          | False
 PLNS             | Plns          | False
 PLAZA            | Plz           | False
 PLZ              | Plz           | False
 PLZA             | Plz           | False
 POINT            | Pt            | False
 PT               | Pt            | False
 POINTS           | Pts           | False
 PTS              | Pts           | False
 PORT             | Prt           | False
 PRT              | Prt           | False
 PORTS            | Prts          | False
 PRTS             | Prts          | False
 PR               | Pr            | False
 PRAIRIE          | Pr            | False
 PRARIE           | Pr            | False
 PRR              | Pr            | False
 RAD              | Radl          | False
 RADIAL           | Radl          | False
 RADIEL           | Radl          | False
 RADL             | Radl          | False
 RAMP             | Ramp          | False
 RANCH            | Rnch          | False
 RANCHES          | Rnch          | False
 RNCH             | Rnch          | False
 RNCHS            | Rnch          | False
 RAPID            | Rpd           | False
 RPD              | Rpd           | False
 RAPIDS           | Rpds          | False
 RPDS             | Rpds          | False
 REST             | Rst           | False
 RST              | Rst           | False
 RDG              | Rdg           | False
 RDGE             | Rdg           | False
 RIDGE            | Rdg           | False
 RDGS             | Rdgs          | False
 RIDGES           | Rdgs          | False
 RIV              | Riv           | False
 RIVER            | Riv           | False
 RIVR             | Riv           | False
 RVR              | Riv           | False
 RD               | Rd            | False
 ROAD             | Rd            | False
 RDS              | Rds           | False
 ROADS            | Rds           | False
 ROW              | Row           | False
 RUE              | Rue           | False
 RUN              | Run           | False
 SERVICE DRIVE    | Svc Dr        | False
 SERVICE DR       | Svc Dr        | False
 SERVICE ROAD     | Svc Rd        | False
 SERVICE RD       | Svc Rd        | False
 SHL              | Shl           | False
 SHOAL            | Shl           | False
 SHLS             | Shls          | False
 SHOALS           | Shls          | False
 SHOAR            | Shr           | False
 SHORE            | Shr           | False
 SHR              | Shr           | False
 SHOARS           | Shrs          | False
 SHORES           | Shrs          | False
 SHRS             | Shrs          | False
 SKYWAY           | Skwy          | False
 SPG              | Spg           | False
 SPNG             | Spg           | False
 SPRING           | Spg           | False
 SPRNG            | Spg           | False
 SPGS             | Spgs          | False
 SPNGS            | Spgs          | False
 SPRINGS          | Spgs          | False
 SPRNGS           | Spgs          | False
 SPUR             | Spur          | False
 SPURS            | Spur          | False
 SQ               | Sq            | False
 SQR              | Sq            | False
 SQRE             | Sq            | False
 SQU              | Sq            | False
 SQUARE           | Sq            | False
 SQRS             | Sqs           | False
 SQUARES          | Sqs           | False
 STA              | Sta           | False
 STATION          | Sta           | False
 STATN            | Sta           | False
 STN              | Sta           | False
 STRA             | Stra          | False
 STRAV            | Stra          | False
 STRAVE           | Stra          | False
 STRAVEN          | Stra          | False
 STRAVENUE        | Stra          | False
 STRAVN           | Stra          | False
 STRVN            | Stra          | False
 STRVNUE          | Stra          | False
 STREAM           | Strm          | False
 STREME           | Strm          | False
 STRM             | Strm          | False
 ST               | St            | False
 STR              | St            | False
 STREET           | St            | False
 STRT             | St            | False
 STREETS          | Sts           | False
 SMT              | Smt           | False
 SUMIT            | Smt           | False
 SUMITT           | Smt           | False
 SUMMIT           | Smt           | False
 TER              | Ter           | False
 TERR             | Ter           | False
 TERRACE          | Ter           | False
 THROUGHWAY       | Trwy          | False
 TRACE            | Trce          | False
 TRACES           | Trce          | False
 TRCE             | Trce          | False
 TRACK            | Trak          | False
 TRACKS           | Trak          | False
 TRAK             | Trak          | False
 TRK              | Trak          | False
 TRKS             | Trak          | False
 TRAFFICWAY       | Trfy          | False
 TRFY             | Trfy          | False
 TR               | Trl           | False
 TRAIL            | Trl           | False
 TRAILS           | Trl           | False
 TRL              | Trl           | False
 TRLS             | Trl           | False
 TUNEL            | Tunl          | False
 TUNL             | Tunl          | False
 TUNLS            | Tunl          | False
 TUNNEL           | Tunl          | False
 TUNNELS          | Tunl          | False
 TUNNL            | Tunl          | False
 UNDERPASS        | Upas          | False
 UN               | Un            | False
 UNION            | Un            | False
 UNIONS           | Uns           | False
 VALLEY           | Vly           | False
 VALLY            | Vly           | False
 VLLY             | Vly           | False
 VLY              | Vly           | False
 VALLEYS          | Vlys          | False
 VLYS             | Vlys          | False
 VDCT             | Via           | False
 VIA              | Via           | False
 VIADCT           | Via           | False
 VIADUCT          | Via           | False
 VIEW             | Vw            | False
 VW               | Vw            | False
 VIEWS            | Vws           | False
 VWS              | Vws           | False
 VILL             | Vlg           | False
 VILLAG           | Vlg           | False
 VILLAGE          | Vlg           | False
 VILLG            | Vlg           | False
 VILLIAGE         | Vlg           | False
 VLG              | Vlg           | False
 VILLAGES         | Vlgs          | False
 VLGS             | Vlgs          | False
 VILLE            | Vl            | False
 VL               | Vl            | False
 VIS              | Vis           | False
 VIST             | Vis           | False
 VISTA            | Vis           | False
 VST              | Vis           | False
 VSTA             | Vis           | False
 WALK             | Walk          | False
 WALKS            | Walk          | False
 WALL             | Wall          | False
 WAY              | Way           | False
 WY               | Way           | False
 WAYS             | Ways          | False
 WELL             | Wl            | False
 WELLS            | Wls           | False
 WLS              | Wls           | False
 BYU              | Byu           | False
 BLFS             | Blfs          | False
 BRKS             | Brks          | False
 BG               | Bg            | False
 BGS              | Bgs           | False
 CTRS             | Ctrs          | False
 CIRS             | Cirs          | False
 CMN              | Cmn           | False
 CTS              | Cts           | False
 CVS              | Cvs           | False
 CRST             | Crst          | False
 XRD              | Xrd           | False
 CURV             | Curv          | False
 DRS              | Drs           | False
 FRDS             | Frds          | False
 FRGS             | Frgs          | False
 GLNS             | Glns          | False
 GRNS             | Grns          | False
 GRVS             | Grvs          | False
 HBRS             | Hbrs          | False
 LGTS             | Lgts          | False
 MTWY             | Mtwy          | False
 MTNS             | Mtns          | False
 OPAS             | Opas          | False
 PSGE             | Psge          | False
 PNE              | Pne           | False
 RTE              | Rte           | False
 SKWY             | Skwy          | False
 SQS              | Sqs           | False
 STS              | Sts           | False
 TRWY             | Trwy          | False
 UPAS             | Upas          | False
 UNS              | Uns           | False
 WL               | Wl            | False
 CAM              | Cam           | True
 CAM.             | Cam           | True
 CAMINO           | Cam           | True
 CO HWY           | Co Hwy        | True
 COUNTY HWY       | Co Hwy        | True
 COUNTY HIGHWAY   | Co Hwy        | True
 COUNTY HIGH WAY  | Co Hwy        | True
 COUNTY ROAD      | Co Rd         | True
 COUNTY RD        | Co Rd         | True
 CO RD            | Co Rd         | True
 CORD             | Co Rd         | True
 CO RTE           | Co Rte        | True
 COUNTY ROUTE     | Co Rte        | True
 CO ST AID HWY    | Co St Aid Hwy | True
 EXP              | Expy          | True
 EXPR             | Expy          | True
 EXPRESS          | Expy          | True
 EXPRESSWAY       | Expy          | True
 EXPW             | Expy          | True
 EXPY             | Expy          | True
 FARM RD          | Farm Rd       | True
 FIRE RD          | Fire Rd       | True
 FOREST RD        | Forest Rd     | True
 FOREST ROAD      | Forest Rd     | True
 FOREST RTE       | Forest Rte    | True
 FOREST ROUTE     | Forest Rte    | True
 FREEWAY          | Fwy           | True
 FREEWY           | Fwy           | True
 FRWAY            | Fwy           | True
 FRWY             | Fwy           | True
 FWY              | Fwy           | True
 HIGHWAY          | Hwy           | True
 HIGHWY           | Hwy           | True
 HIWAY            | Hwy           | True
 HIWY             | Hwy           | True
 HWAY             | Hwy           | True
 HWY              | Hwy           | True
 I                | I-            | True
 I-               | I-            | True
 INTERSTATE       | I-            | True
 INTERSTATE ROUTE | I-            | True
 INTERSTATE RTE   | I-            | True
 INTERSTATE RTE.  | I-            | True
 INTERSTATE RT    | I-            | True
 ROUTE            | Rte           | True
 RT               | Rte           | True
 STATE HWY        | State Hwy     | True
 STATE HIGHWAY    | State Hwy     | True
 STATE HIGH WAY   | State Hwy     | True
 STATE RD         | State Rd      | True
 STATE ROAD       | State Rd      | True
 STATE ROUTE      | State Rte     | True
 STATE RTE        | State Rte     | True
 TPK              | Tpke          | True
 TPKE             | Tpke          | True
 TRNPK            | Tpke          | True
 TRPK             | Tpke          | True
 TURNPIKE         | Tpke          | True
 TURNPK           | Tpke          | True
 US HWY           | US Hwy        | True
 US HIGHWAY       | US Hwy        | True
 US HIGH WAY      | US Hwy        | True
 U.S.             | US Hwy        | True
 US RTE           | US Rte        | True
 US ROUTE         | US Rte        | True
 US RT            | US Rte        | True
 USFS HWY         | USFS Hwy      | True
 USFS HIGHWAY     | USFS Hwy      | True
 USFS HIGH WAY    | USFS Hwy      | True
 USFS RD          | USFS Rd       | True
 USFS ROAD        | USFS Rd       | True
(609 rows)
```



## Place Lookup


```sql
SELECT * FROM place_lookup;
```

```sql
 st_code | state | pl_code | name
---------+-------+---------+------
(0 rows)
```



## County Lookup


```sql
SELECT * FROM county_lookup;
```

```sql
 st_code | state | co_code | name
---------+-------+---------+------
(0 rows)
```



## Countysub Lookup


```sql
SELECT * FROM countysub_lookup;
```

```sql
 st_code | state | co_code | county | cs_code | name
---------+-------+---------+--------+---------+------
(0 rows)
```



## Zip Lookup All


```sql
SELECT * FROM zip_lookup_all;
```

```sql
 zip | st_code | state | co_code | county | cs_code | cousub | pl_code | place | cnt
-----+---------+-------+---------+--------+---------+--------+---------+-------+-----
(0 rows)
```



## Zip Lookup Base


```sql
SELECT * FROM zip_lookup_base;
```

```sql
 zip | state | county | city | statefp
-----+-------+--------+------+---------
(0 rows)
```



## Zip Lookup


```sql
SELECT * FROM zip_lookup;
```

```sql
 zip | st_code | state | co_code | county | cs_code | cousub | pl_code | place | cnt
-----+---------+-------+---------+--------+---------+--------+---------+-------+-----
(0 rows)
```



## County


```sql
SELECT * FROM county;
```

```sql
 gid | statefp | countyfp | countyns | cntyidfp | name | namelsad | lsad | classfp | mtfcc | csafp | cbsafp | metdivfp | funcstat | aland | awater | intptlat | intptlon | the_geom
-----+---------+----------+----------+----------+------+----------+------+---------+-------+-------+--------+----------+----------+-------+--------+----------+----------+----------
(0 rows)
```



## State


```sql
SELECT * FROM state;
```

```sql
 gid | region | division | statefp | statens | stusps | name | lsad | mtfcc | funcstat | aland | awater | intptlat | intptlon | the_geom
-----+--------+----------+---------+---------+--------+------+------+-------+----------+-------+--------+----------+----------+----------
(0 rows)
```



## Place


```sql
SELECT * FROM place;
```

```sql
 gid | statefp | placefp | placens | plcidfp | name | namelsad | lsad | classfp | cpi | pcicbsa | pcinecta | mtfcc | funcstat | aland | awater | intptlat | intptlon | the_geom
-----+---------+---------+---------+---------+------+----------+------+---------+-----+---------+----------+-------+----------+-------+--------+----------+----------+----------
(0 rows)
```



## Zip State


```sql
SELECT * FROM zip_state;
```

```sql
 zip | stusps | statefp
-----+--------+---------
(0 rows)
```



## Zip State Loc


```sql
SELECT * FROM zip_state_loc;
```

```sql
 zip | stusps | statefp | place
-----+--------+---------+-------
(0 rows)
```



## Cousub


```sql
SELECT * FROM cousub;
```

```sql
 gid | statefp | countyfp | cousubfp | cousubns | cosbidfp | name | namelsad | lsad | classfp | mtfcc | cnectafp | nectafp | nctadvfp | funcstat | aland | awater | intptlat | intptlon | the_geom
-----+---------+----------+----------+----------+----------+------+----------+------+---------+-------+----------+---------+----------+----------+-------+--------+----------+----------+----------
(0 rows)
```



## Edges


```sql
SELECT * FROM edges;
```

```sql
 gid | statefp | countyfp | tlid | tfidl | tfidr | mtfcc | fullname | smid | lfromadd | ltoadd | rfromadd | rtoadd | zipl | zipr | featcat | hydroflg | railflg | roadflg | olfflg | passflg | divroad | exttyp | ttyp | deckedroad | artpath | persist | gcseflg | offsetl | offsetr | tnidf | tnidt | the_geom
-----+---------+----------+------+-------+-------+-------+----------+------+----------+--------+----------+--------+------+------+---------+----------+---------+---------+--------+---------+---------+--------+------+------------+---------+---------+---------+---------+---------+-------+-------+----------
(0 rows)
```



## Addrfeat


```sql
SELECT * FROM addrfeat;
```

```sql
 gid | tlid | statefp | aridl | aridr | linearid | fullname | lfromhn | ltohn | rfromhn | rtohn | zipl | zipr | edge_mtfcc | parityl | parityr | plus4l | plus4r | lfromtyp | ltotyp | rfromtyp | rtotyp | offsetl | offsetr | the_geom
-----+------+---------+-------+-------+----------+----------+---------+-------+---------+-------+------+------+------------+---------+---------+--------+--------+----------+--------+----------+--------+---------+---------+----------
(0 rows)
```



## Featnames


```sql
SELECT * FROM featnames;
```

```sql
 gid | tlid | fullname | name | predirabrv | pretypabrv | prequalabr | sufdirabrv | suftypabrv | sufqualabr | predir | pretyp | prequal | sufdir | suftyp | sufqual | linearid | mtfcc | paflag | statefp
-----+------+----------+------+------------+------------+------------+------------+------------+------------+--------+--------+---------+--------+--------+---------+----------+-------+--------+---------
(0 rows)
```



## Tabblock20


```sql
SELECT * FROM tabblock20;
```

```sql
 statefp | countyfp | tractce | blockce | geoid | name | mtfcc | ur | uace | uatype | funcstat | aland | awater | intptlat | intptlon | the_geom | housing | pop
---------+----------+---------+---------+-------+------+-------+----+------+--------+----------+-------+--------+----------+----------+----------+---------+-----
(0 rows)
```



## Faces


```sql
SELECT * FROM faces;
```

```sql
 gid | tfid | statefp00 | countyfp00 | tractce00 | blkgrpce00 | blockce00 | cousubfp00 | submcdfp00 | conctyfp00 | placefp00 | aiannhfp00 | aiannhce00 | comptyp00 | trsubfp00 | trsubce00 | anrcfp00 | elsdlea00 | scsdlea00 | unsdlea00 | uace00 | cd108fp | sldust00 | sldlst00 | vtdst00 | zcta5ce00 | tazce00 | ugace00 | puma5ce00 | statefp | countyfp | tractce | blkgrpce | blockce | cousubfp | submcdfp | conctyfp | placefp | aiannhfp | aiannhce | comptyp | trsubfp | trsubce | anrcfp | ttractce | tblkgpce | elsdlea | scsdlea | unsdlea | uace | cd111fp | sldust | sldlst | vtdst | zcta5ce | tazce | ugace | puma5ce | csafp | cbsafp | metdivfp | cnectafp | nectafp | nctadvfp | lwflag | offset | atotal | intptlat | intptlon | the_geom | tractce20 | blkgrpce20 | blockce20 | countyfp20 | statefp20
-----+------+-----------+------------+-----------+------------+-----------+------------+------------+------------+-----------+------------+------------+-----------+-----------+-----------+----------+-----------+-----------+-----------+--------+---------+----------+----------+---------+-----------+---------+---------+-----------+---------+----------+---------+----------+---------+----------+----------+----------+---------+----------+----------+---------+---------+---------+--------+----------+----------+---------+---------+---------+------+---------+--------+--------+-------+---------+-------+-------+---------+-------+--------+----------+----------+---------+----------+--------+--------+--------+----------+----------+----------+-----------+------------+-----------+------------+-----------
(0 rows)
```



## Loader Platform


```sql
SELECT * FROM loader_platform;
```

```sql
 os      | declare_sect                                                                                                                                                                                                                                                                                                                                             | pgbin   | wget       | unzip_command                                                                                                                                                                                                                                                                                                                                                                                  | psql    | path_sep | loader       | environ_set_command | county_process_command
---------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------+------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------+----------+--------------+---------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 windows | set TMPDIR=${staging_fold}\temp\
set UNZIPTOOL="C:\Program Files\7-Zip\7z.exe"
set WGETTOOL="C:\wget\wget.exe"
set PGBIN=C:\Program Files\PostgreSQL\15\bin\
set PGPORT=5432
set PGHOST=localhost
set PGUSER=postgres
set PGPASSWORD=yourpasswordhere
set PGDATABASE=geocoder
set PSQL="%PGBIN%psql"
set SHP2PGSQL="%PGBIN%shp2pgsql"
cd ${staging_fold} | %PGBIN% | %WGETTOOL% | del %TMPDIR%\*.* /Q
%PSQL% -c "DROP SCHEMA IF EXISTS ${staging_schema} CASCADE;"
%PSQL% -c "CREATE SCHEMA ${staging_schema};"
%PSQL% -c "DO language 'plpgsql' $$ BEGIN IF NOT EXISTS (SELECT * FROM information_schema.schemata WHERE schema_name = '${data_schema}' ) THEN CREATE SCHEMA ${data_schema}; END IF;  END $$"
for /r %%z in (*.zip) do %UNZIPTOOL% e %%z  -o%TMPDIR%
cd %TMPDIR% | %PSQL%  | \        | %SHP2PGSQL%  | set                 | for /r %%z in (*${table_name}*.dbf) do (${loader} -D -s 4269 -g the_geom -W "latin1" %%z tiger_staging.${state_abbrev}_${table_name} | ${psql} & ${psql} -c "SELECT loader_load_staged_data(lower('${state_abbrev}_${table_name}'), lower('${state_abbrev}_${lookup_name}'));")
 sh      | TMPDIR="${staging_fold}/temp/"
UNZIPTOOL=unzip
WGETTOOL="/usr/bin/wget"
export PGBIN=/usr/lib/postgresql/15/bin
export PGPORT=5432
export PGHOST=localhost
export PGUSER=postgres
export PGPASSWORD=yourpasswordhere
export PGDATABASE=geocoder
PSQL=${PGBIN}/psql
SHP2PGSQL=shp2pgsql
cd ${staging_fold}                                                |         | wget       | rm -f ${TMPDIR}/*.*
${PSQL} -c "DROP SCHEMA IF EXISTS ${staging_schema} CASCADE;"
${PSQL} -c "CREATE SCHEMA ${staging_schema};"
for z in *.zip; do $UNZIPTOOL -o -d $TMPDIR $z; done
cd $TMPDIR;                                                                                                                                                                                               | ${PSQL} | /        | ${SHP2PGSQL} | export              | for z in *${table_name}*.dbf; do
${loader} -D -s 4269 -g the_geom -W "latin1" $z ${staging_schema}.${state_abbrev}_${table_name} | ${psql}
${PSQL} -c "SELECT loader_load_staged_data(lower('${state_abbrev}_${table_name}'), lower('${state_abbrev}_${lookup_name}'));"
done
(2 rows)
```



## Loader Variables


```sql
SELECT * FROM loader_variables;
```

```sql
 tiger_year | website_root                                | staging_fold | data_schema | staging_schema
------------+---------------------------------------------+--------------+-------------+----------------
       2022 | https://www2.census.gov/geo/tiger/TIGER2022 | /gisdata     | tiger_data  | tiger_staging
(1 rows)
```



## Loader Lookuptables


```sql
SELECT * FROM loader_lookuptables;
```

```sql
 process_order | lookup_name | table_name | single_mode | load  | level_county | level_state | level_nation | post_load_process                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | single_geom_mode | insert_mode | pre_load_process                                                                                                                                                                                                                                                                                                                      | columns_exclude                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | website_root_override
---------------+-------------+------------+-------------+-------+--------------+-------------+--------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------
            10 | tract       | tract      | True        | True  | False        | True        | False        | ${psql} -c "ALTER TABLE ${staging_schema}.${state_abbrev}_${table_name} RENAME geoid TO tract_id; SELECT loader_load_staged_data(lower('${state_abbrev}_${table_name}'), lower('${state_abbrev}_${lookup_name}')); "
	${psql} -c "CREATE INDEX ${data_schema}_${state_abbrev}_${lookup_name}_the_geom_gist ON ${data_schema}.${state_abbrev}_${lookup_name} USING gist(the_geom);"
	${psql} -c "VACUUM ANALYZE ${data_schema}.${state_abbrev}_${lookup_name};"
	${psql} -c "ALTER TABLE ${data_schema}.${state_abbrev}_${lookup_name} ADD CONSTRAINT chk_statefp CHECK (statefp = '${state_fips}');"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | False            | c           | ${psql} -c "CREATE TABLE ${data_schema}.${state_abbrev}_${lookup_name}(CONSTRAINT pk_${state_abbrev}_${lookup_name} PRIMARY KEY (tract_id) ) INHERITS(tiger.${lookup_name}); "                                                                                                                                                        | ['gid']                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | NULL
            11 | tabblock20  | tabblock20 | True        | True  | False        | True        | False        | ${psql} -c "SELECT loader_load_staged_data(lower('${state_abbrev}_${table_name}'), lower('${state_abbrev}_${lookup_name}')); "
${psql} -c "ALTER TABLE ${data_schema}.${state_abbrev}_${lookup_name} ADD CONSTRAINT chk_statefp CHECK (statefp = '${state_fips}');"
${psql} -c "CREATE INDEX ${data_schema}_${state_abbrev}_${lookup_name}_the_geom_gist ON ${data_schema}.${state_abbrev}_${lookup_name} USING gist(the_geom);"
${psql} -c "vacuum analyze ${data_schema}.${state_abbrev}_${lookup_name};"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | False            | c           | ${psql} -c "CREATE TABLE ${data_schema}.${state_abbrev}_${lookup_name}(CONSTRAINT pk_${state_abbrev}_${lookup_name} PRIMARY KEY (geoid)) INHERITS(tiger.${lookup_name});"                                                                                                                                                             | ['gid']                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | NULL
            12 | bg          | bg         | True        | False | False        | True        | False        | ${psql} -c "ALTER TABLE ${staging_schema}.${state_abbrev}_${table_name} RENAME geoid TO bg_id;  SELECT loader_load_staged_data(lower('${state_abbrev}_${table_name}'), lower('${state_abbrev}_${lookup_name}')); "
${psql} -c "ALTER TABLE ${data_schema}.${state_abbrev}_${lookup_name} ADD CONSTRAINT chk_statefp CHECK (statefp = '${state_fips}');"
${psql} -c "CREATE INDEX ${data_schema}_${state_abbrev}_${lookup_name}_the_geom_gist ON ${data_schema}.${state_abbrev}_${lookup_name} USING gist(the_geom);"
${psql} -c "vacuum analyze ${data_schema}.${state_abbrev}_${lookup_name};"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | False            | c           | ${psql} -c "CREATE TABLE ${data_schema}.${state_abbrev}_${lookup_name}(CONSTRAINT pk_${state_abbrev}_${lookup_name} PRIMARY KEY (bg_id)) INHERITS(tiger.${lookup_name});"                                                                                                                                                             | ['gid']                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | NULL
             2 | county_all  | county     | True        | True  | False        | False       | True         | ${psql} -c "ALTER TABLE ${staging_schema}.${table_name} RENAME geoid TO cntyidfp;  SELECT loader_load_staged_data(lower('${table_name}'), lower('${lookup_name}'));"
	${psql} -c "CREATE INDEX ${data_schema}_${table_name}_the_geom_gist ON ${data_schema}.${lookup_name} USING gist(the_geom);"
	${psql} -c "CREATE UNIQUE INDEX uidx_${data_schema}_${lookup_name}_statefp_countyfp ON ${data_schema}.${lookup_name} USING btree(statefp,countyfp);"
	${psql} -c "CREATE TABLE ${data_schema}.${lookup_name}_lookup ( CONSTRAINT pk_${lookup_name}_lookup PRIMARY KEY (st_code, co_code)) INHERITS (tiger.county_lookup);"
	${psql} -c "VACUUM ANALYZE ${data_schema}.${lookup_name};"
	${psql} -c "INSERT INTO ${data_schema}.${lookup_name}_lookup(st_code, state, co_code, name) SELECT CAST(s.statefp as integer), s.abbrev, CAST(c.countyfp as integer), c.name FROM ${data_schema}.${lookup_name} As c INNER JOIN state_lookup As s ON s.statefp = c.statefp;"
	${psql} -c "VACUUM ANALYZE ${data_schema}.${lookup_name}_lookup;"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | False            | c           | ${psql} -c "CREATE TABLE ${data_schema}.${lookup_name}(CONSTRAINT pk_${data_schema}_${lookup_name} PRIMARY KEY (cntyidfp),CONSTRAINT uidx_${data_schema}_${lookup_name}_gid UNIQUE (gid)  ) INHERITS(tiger.county); "                                                                                                                 | NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | NULL
             1 | state_all   | state      | True        | True  | False        | False       | True         | ${psql} -c "SELECT loader_load_staged_data(lower('${table_name}'), lower('${lookup_name}')); "
	${psql} -c "CREATE INDEX ${data_schema}_${lookup_name}_the_geom_gist ON ${data_schema}.${lookup_name} USING gist(the_geom);"
	${psql} -c "VACUUM ANALYZE ${data_schema}.${lookup_name}"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | False            | c           | ${psql} -c "CREATE TABLE ${data_schema}.${lookup_name}(CONSTRAINT pk_${lookup_name} PRIMARY KEY (statefp),CONSTRAINT uidx_${lookup_name}_stusps  UNIQUE (stusps), CONSTRAINT uidx_${lookup_name}_gid UNIQUE (gid) ) INHERITS(tiger.state); "                                                                                          | NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | NULL
             3 | place       | place      | True        | True  | False        | True        | False        | ${psql} -c "ALTER TABLE ${staging_schema}.${state_abbrev}_${table_name} RENAME geoid TO plcidfp;SELECT loader_load_staged_data(lower('${state_abbrev}_${table_name}'), lower('${state_abbrev}_${lookup_name}')); ALTER TABLE ${data_schema}.${state_abbrev}_${lookup_name} ADD CONSTRAINT uidx_${state_abbrev}_${lookup_name}_gid UNIQUE (gid);"
${psql} -c "CREATE INDEX idx_${state_abbrev}_${lookup_name}_soundex_name ON ${data_schema}.${state_abbrev}_${lookup_name} USING btree (soundex(name));"
${psql} -c "CREATE INDEX ${data_schema}_${state_abbrev}_${lookup_name}_the_geom_gist ON ${data_schema}.${state_abbrev}_${lookup_name} USING gist(the_geom);"
${psql} -c "ALTER TABLE ${data_schema}.${state_abbrev}_${lookup_name} ADD CONSTRAINT chk_statefp CHECK (statefp = '${state_fips}');"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | False            | c           | ${psql} -c "CREATE TABLE ${data_schema}.${state_abbrev}_${lookup_name}(CONSTRAINT pk_${state_abbrev}_${table_name} PRIMARY KEY (plcidfp) ) INHERITS(tiger.place);"                                                                                                                                                                    | NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | NULL
             4 | cousub      | cousub     | True        | True  | False        | True        | False        | ${psql} -c "ALTER TABLE ${staging_schema}.${state_abbrev}_${table_name} RENAME geoid TO cosbidfp;SELECT loader_load_staged_data(lower('${state_abbrev}_${table_name}'), lower('${state_abbrev}_${lookup_name}')); ALTER TABLE ${data_schema}.${state_abbrev}_${lookup_name} ADD CONSTRAINT chk_statefp CHECK (statefp = '${state_fips}');"
${psql} -c "CREATE INDEX ${data_schema}_${state_abbrev}_${lookup_name}_the_geom_gist ON ${data_schema}.${state_abbrev}_${lookup_name} USING gist(the_geom);"
${psql} -c "CREATE INDEX idx_${data_schema}_${state_abbrev}_${lookup_name}_countyfp ON ${data_schema}.${state_abbrev}_${lookup_name} USING btree(countyfp);"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | False            | c           | ${psql} -c "CREATE TABLE ${data_schema}.${state_abbrev}_${lookup_name}(CONSTRAINT pk_${state_abbrev}_${lookup_name} PRIMARY KEY (cosbidfp), CONSTRAINT uidx_${state_abbrev}_${lookup_name}_gid UNIQUE (gid)) INHERITS(tiger.${lookup_name});"                                                                                         | NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | NULL
            13 | zcta5_raw   | zcta520    | True        | False | False        | False       | True         | ${psql} -c "ALTER TABLE tiger.zcta5 DROP CONSTRAINT IF EXISTS enforce_geotype_the_geom; CREATE TABLE ${data_schema}.zcta5_all(CONSTRAINT pk_zcta5_all PRIMARY KEY (zcta5ce,statefp), CONSTRAINT uidx_${lookup_name}_all_gid UNIQUE (gid)) INHERITS(tiger.zcta5);"
${psql} -c "SELECT loader_load_staged_data(lower('${table_name}'), lower('${lookup_name}'));"
${psql} -c "INSERT INTO ${data_schema}.zcta5_all(statefp, zcta5ce, classfp, mtfcc, funcstat, aland, awater, intptlat, intptlon, partflg, the_geom) SELECT  s.statefp, z.zcta5,  z.classfp, z.mtfcc, z.funcstat, z.aland, z.awater, z.intptlat, z.intptlon, CASE WHEN ST_Covers(s.the_geom, z.the_geom) THEN 'N' ELSE 'Y' END, ST_SnapToGrid(ST_Transform(CASE WHEN ST_Covers(s.the_geom, z.the_geom) THEN ST_SimplifyPreserveTopology(ST_Transform(z.the_geom,2163),1000) ELSE ST_SimplifyPreserveTopology(ST_Intersection(ST_Transform(s.the_geom,2163), ST_Transform(z.the_geom,2163)),1000)  END,4269), 0.000001) As geom FROM ${data_schema}.zcta5_raw AS z INNER JOIN tiger.state AS s ON (ST_Covers(s.the_geom, z.the_geom) or ST_Overlaps(s.the_geom, z.the_geom) );"
	${psql} -c "DROP TABLE ${data_schema}.zcta5_raw; CREATE INDEX idx_${data_schema}_zcta5_all_the_geom_gist ON ${data_schema}.zcta5_all USING gist(the_geom);"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | False            | c           | ${psql} -c "CREATE TABLE ${data_schema}.${lookup_name}( zcta5 character varying(5), classfp character varying(2),mtfcc character varying(5), funcstat character varying(1), aland double precision, awater double precision, intptlat character varying(11), intptlon character varying(12), the_geom geometry(MultiPolygon,4269) );" | ['gid', 'geoid', 'geoid10', 'geoid20', 'partflg']                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | NULL
             6 | faces       | faces      | True        | True  | True         | False       | False        | ${psql} -c "CREATE INDEX ${data_schema}_${state_abbrev}_${table_name}_the_geom_gist ON ${data_schema}.${state_abbrev}_${lookup_name} USING gist(the_geom);"
	${psql} -c "CREATE INDEX idx_${data_schema}_${state_abbrev}_${lookup_name}_tfid ON ${data_schema}.${state_abbrev}_${lookup_name} USING btree (tfid);"
	${psql} -c "CREATE INDEX idx_${data_schema}_${state_abbrev}_${table_name}_countyfp ON ${data_schema}.${state_abbrev}_${table_name} USING btree (countyfp);"
	${psql} -c "ALTER TABLE ${data_schema}.${state_abbrev}_${lookup_name} ADD CONSTRAINT chk_statefp CHECK (statefp = '${state_fips}');"
	${psql} -c "vacuum analyze ${data_schema}.${state_abbrev}_${lookup_name};"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | False            | c           | ${psql} -c "CREATE TABLE ${data_schema}.${state_abbrev}_${table_name}(CONSTRAINT pk_${state_abbrev}_${lookup_name} PRIMARY KEY (gid)) INHERITS(tiger.${lookup_name});"                                                                                                                                                                | ['gid', 'geoid', 'cpi', 'suffix1ce', 'statefp00', 'statefp10', 'countyfp00', 'countyfp10', 'tractce00', 'tractce10', 'blkgrpce00', 'blkgrpce10', 'blockce00', 'blockce10', 'cousubfp00', 'submcdfp00', 'conctyfp00', 'placefp00', 'aiannhfp00', 'aiannhce00', 'comptyp00', 'trsubfp00', 'trsubce00', 'anrcfp00', 'elsdlea00', 'scsdlea00', 'unsdlea00', 'uace00', 'cd108fp', 'sldust00', 'sldlst00', 'vtdst00', 'zcta5ce00', 'tazce00', 'ugace00', 'puma5ce00', 'vtdst10', 'tazce10', 'uace10', 'puma5ce10', 'tazce', 'uace', 'vtdst', 'zcta5ce10', 'puma5ce', 'ugace10', 'pumace10', 'estatefp', 'ugace', 'blockce', 'pumace20', 'sdadmlea', 'uace20'] | NULL
             7 | featnames   | featnames  | True        | True  | True         | False       | False        | ${psql} -c "CREATE INDEX idx_${data_schema}_${state_abbrev}_${lookup_name}_snd_name ON ${data_schema}.${state_abbrev}_${table_name} USING btree (soundex(name));"
${psql} -c "CREATE INDEX idx_${data_schema}_${state_abbrev}_${lookup_name}_lname ON ${data_schema}.${state_abbrev}_${table_name} USING btree (lower(name));"
${psql} -c "CREATE INDEX idx_${data_schema}_${state_abbrev}_${lookup_name}_tlid_statefp ON ${data_schema}.${state_abbrev}_${table_name} USING btree (tlid,statefp);"
${psql} -c "ALTER TABLE ${data_schema}.${state_abbrev}_${lookup_name} ADD CONSTRAINT chk_statefp CHECK (statefp = '${state_fips}');"
${psql} -c "vacuum analyze ${data_schema}.${state_abbrev}_${lookup_name};"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | False            | a           | ${psql} -c "CREATE TABLE ${data_schema}.${state_abbrev}_${table_name}(CONSTRAINT pk_${state_abbrev}_${table_name} PRIMARY KEY (gid)) INHERITS(tiger.${table_name});ALTER TABLE ${data_schema}.${state_abbrev}_${table_name} ALTER COLUMN statefp SET DEFAULT '${state_fips}';"                                                        | ['gid', 'statefp']                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | NULL
             8 | edges       | edges      | True        | True  | True         | False       | False        | ${psql} -c "ALTER TABLE ${data_schema}.${state_abbrev}_${table_name} ADD CONSTRAINT chk_statefp CHECK (statefp = '${state_fips}');"
${psql} -c "CREATE INDEX idx_${data_schema}_${state_abbrev}_${lookup_name}_tlid ON ${data_schema}.${state_abbrev}_${table_name} USING btree (tlid);"
${psql} -c "CREATE INDEX idx_${data_schema}_${state_abbrev}_${lookup_name}tfidr ON ${data_schema}.${state_abbrev}_${table_name} USING btree (tfidr);"
${psql} -c "CREATE INDEX idx_${data_schema}_${state_abbrev}_${lookup_name}_tfidl ON ${data_schema}.${state_abbrev}_${table_name} USING btree (tfidl);"
${psql} -c "CREATE INDEX idx_${data_schema}_${state_abbrev}_${lookup_name}_countyfp ON ${data_schema}.${state_abbrev}_${table_name} USING btree (countyfp);"
${psql} -c "CREATE INDEX ${data_schema}_${state_abbrev}_${table_name}_the_geom_gist ON ${data_schema}.${state_abbrev}_${table_name} USING gist(the_geom);"
${psql} -c "CREATE INDEX idx_${data_schema}_${state_abbrev}_${lookup_name}_zipl ON ${data_schema}.${state_abbrev}_${lookup_name} USING btree (zipl);"
${psql} -c "CREATE TABLE ${data_schema}.${state_abbrev}_zip_state_loc(CONSTRAINT pk_${state_abbrev}_zip_state_loc PRIMARY KEY(zip,stusps,place)) INHERITS(tiger.zip_state_loc);"
${psql} -c "INSERT INTO ${data_schema}.${state_abbrev}_zip_state_loc(zip,stusps,statefp,place) SELECT DISTINCT e.zipl, '${state_abbrev}', '${state_fips}', p.name FROM ${data_schema}.${state_abbrev}_edges AS e INNER JOIN ${data_schema}.${state_abbrev}_faces AS f ON (e.tfidl = f.tfid OR e.tfidr = f.tfid) INNER JOIN ${data_schema}.${state_abbrev}_place As p ON(f.statefp = p.statefp AND f.placefp = p.placefp ) WHERE e.zipl IS NOT NULL;"
${psql} -c "CREATE INDEX idx_${data_schema}_${state_abbrev}_zip_state_loc_place ON ${data_schema}.${state_abbrev}_zip_state_loc USING btree(soundex(place));"
${psql} -c "ALTER TABLE ${data_schema}.${state_abbrev}_zip_state_loc ADD CONSTRAINT chk_statefp CHECK (statefp = '${state_fips}');"
${psql} -c "vacuum analyze ${data_schema}.${state_abbrev}_${lookup_name};"
${psql} -c "vacuum analyze ${data_schema}.${state_abbrev}_zip_state_loc;"
${psql} -c "CREATE TABLE ${data_schema}.${state_abbrev}_zip_lookup_base(CONSTRAINT pk_${state_abbrev}_zip_state_loc_city PRIMARY KEY(zip,state, county, city, statefp)) INHERITS(tiger.zip_lookup_base);"
${psql} -c "INSERT INTO ${data_schema}.${state_abbrev}_zip_lookup_base(zip,state,county,city, statefp) SELECT DISTINCT e.zipl, '${state_abbrev}', c.name,p.name,'${state_fips}'  FROM ${data_schema}.${state_abbrev}_edges AS e INNER JOIN tiger.county As c  ON (e.countyfp = c.countyfp AND e.statefp = c.statefp AND e.statefp = '${state_fips}') INNER JOIN ${data_schema}.${state_abbrev}_faces AS f ON (e.tfidl = f.tfid OR e.tfidr = f.tfid) INNER JOIN ${data_schema}.${state_abbrev}_place As p ON(f.statefp = p.statefp AND f.placefp = p.placefp ) WHERE e.zipl IS NOT NULL;"
${psql} -c "ALTER TABLE ${data_schema}.${state_abbrev}_zip_lookup_base ADD CONSTRAINT chk_statefp CHECK (statefp = '${state_fips}');"
${psql} -c "CREATE INDEX idx_${data_schema}_${state_abbrev}_zip_lookup_base_citysnd ON ${data_schema}.${state_abbrev}_zip_lookup_base USING btree(soundex(city));" | False            | a           | ${psql} -c "CREATE TABLE ${data_schema}.${state_abbrev}_${table_name}(CONSTRAINT pk_${state_abbrev}_${table_name} PRIMARY KEY (gid)) INHERITS(tiger.${table_name});"                                                                                                                                                                  | ['gid', 'geoid', 'divroad']                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | NULL
             9 | addr        | addr       | True        | True  | True         | False       | False        | ${psql} -c "ALTER TABLE ${data_schema}.${state_abbrev}_${lookup_name} ADD CONSTRAINT chk_statefp CHECK (statefp = '${state_fips}');"
	${psql} -c "CREATE INDEX idx_${data_schema}_${state_abbrev}_${lookup_name}_least_address ON tiger_data.${state_abbrev}_addr USING btree (least_hn(fromhn,tohn) );"
	${psql} -c "CREATE INDEX idx_${data_schema}_${state_abbrev}_${table_name}_tlid_statefp ON ${data_schema}.${state_abbrev}_${table_name} USING btree (tlid, statefp);"
	${psql} -c "CREATE INDEX idx_${data_schema}_${state_abbrev}_${table_name}_zip ON ${data_schema}.${state_abbrev}_${table_name} USING btree (zip);"
	${psql} -c "CREATE TABLE ${data_schema}.${state_abbrev}_zip_state(CONSTRAINT pk_${state_abbrev}_zip_state PRIMARY KEY(zip,stusps)) INHERITS(tiger.zip_state); "
	${psql} -c "INSERT INTO ${data_schema}.${state_abbrev}_zip_state(zip,stusps,statefp) SELECT DISTINCT zip, '${state_abbrev}', '${state_fips}' FROM ${data_schema}.${state_abbrev}_${lookup_name} WHERE zip is not null;"
	${psql} -c "ALTER TABLE ${data_schema}.${state_abbrev}_zip_state ADD CONSTRAINT chk_statefp CHECK (statefp = '${state_fips}');"
	${psql} -c "vacuum analyze ${data_schema}.${state_abbrev}_${lookup_name};"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | False            | a           | ${psql} -c "CREATE TABLE ${data_schema}.${state_abbrev}_${lookup_name}(CONSTRAINT pk_${state_abbrev}_${table_name} PRIMARY KEY (gid)) INHERITS(tiger.${table_name});ALTER TABLE ${data_schema}.${state_abbrev}_${lookup_name} ALTER COLUMN statefp SET DEFAULT '${state_fips}';"                                                      | ['gid', 'statefp', 'fromarmid', 'toarmid']                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | NULL
             9 | addrfeat    | addrfeat   | True        | False | True         | False       | False        | ${psql} -c "ALTER TABLE ${data_schema}.${state_abbrev}_${lookup_name} ADD CONSTRAINT chk_statefp CHECK (statefp = '${state_fips}');"
	${psql} -c "vacuum analyze ${data_schema}.${state_abbrev}_${lookup_name};"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | True             | a           | ${psql} -c "CREATE TABLE ${data_schema}.${state_abbrev}_${lookup_name}(CONSTRAINT pk_${state_abbrev}_${table_name} PRIMARY KEY (gid)) INHERITS(tiger.${table_name});ALTER TABLE ${data_schema}.${state_abbrev}_${lookup_name} ALTER COLUMN statefp SET DEFAULT '${state_fips}';"                                                      | ['gid', 'statefp', 'fromarmid', 'toarmid']                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | NULL
(13 rows)
```



## Tract


```sql
SELECT * FROM tract;
```

```sql
 gid | statefp | countyfp | tractce | tract_id | name | namelsad | mtfcc | funcstat | aland | awater | intptlat | intptlon | the_geom
-----+---------+----------+---------+----------+------+----------+-------+----------+-------+--------+----------+----------+----------
(0 rows)
```



## Tabblock


```sql
SELECT * FROM tabblock;
```

```sql
 gid | statefp | countyfp | tractce | blockce | tabblock_id | name | mtfcc | ur | uace | funcstat | aland | awater | intptlat | intptlon | the_geom
-----+---------+----------+---------+---------+-------------+------+-------+----+------+----------+-------+--------+----------+----------+----------
(0 rows)
```



## Bg


```sql
SELECT * FROM bg;
```

```sql
 gid | statefp | countyfp | tractce | blkgrpce | bg_id | namelsad | mtfcc | funcstat | aland | awater | intptlat | intptlon | the_geom
-----+---------+----------+---------+----------+-------+----------+-------+----------+-------+--------+----------+----------+----------
(0 rows)
```



## Pagc Gaz


```sql
SELECT * FROM pagc_gaz;
```

```sql
  id | seq | word                     | stdword                   | token | is_custom
-----+-----+--------------------------+---------------------------+-------+-----------
   1 |   1 | AB                       | ALBERTA                   |    11 | False
   2 |   2 | AB                       | ALBERTA                   |     1 | False
   3 |   3 | AB                       | ALBERTA                   |     6 | False
   4 |   1 | AFB                      | AIR FORCE BASE            |     1 | False
   5 |   1 | A F B                    | AIR FORCE BASE            |     1 | False
   6 |   1 | AIR FORCE BASE           | AIR FORCE BASE            |     1 | False
   8 |   2 | AK                       | ALASKA                    |     1 | False
  11 |   2 | AL                       | ALABAMA                   |     1 | False
  14 |   2 | ALA                      | ALABAMA                   |     1 | False
  17 |   2 | ALABAMA                  | ALABAMA                   |     1 | False
  19 |   2 | ALASKA                   | ALASKA                    |     1 | False
  20 |   1 | ALBERTA                  | ALBERTA                   |    11 | False
  21 |   2 | ALBERTA                  | ALBERTA                   |     1 | False
  23 |   2 | AR                       | ARKANSAS                  |     1 | False
  26 |   2 | ARIZ                     | ARIZONA                   |     1 | False
  29 |   2 | ARIZONA                  | ARIZONA                   |     1 | False
  31 |   2 | ARK                      | ARKANSAS                  |     1 | False
  34 |   2 | ARKANSAS                 | ARKANSAS                  |     1 | False
  36 |   2 | AZ                       | ARIZONA                   |     1 | False
  38 |   1 | B C                      | BRITISH COLUMBIA          |    11 | False
  39 |   2 | B C                      | BRITISH COLUMBIA          |     1 | False
  40 |   3 | B C                      | BRITISH COLUMBIA          |     6 | False
  41 |   1 | BC                       | BRITISH COLUMBIA          |    11 | False
  42 |   2 | BC                       | BRITISH COLUMBIA          |     1 | False
  43 |   3 | BC                       | BRITISH COLUMBIA          |     6 | False
  44 |   1 | BRITISH COLUMBIA         | BRITISH COLUMBIA          |    11 | False
  45 |   2 | BRITISH COLUMBIA         | BRITISH COLUMBIA          |     1 | False
  47 |   2 | CA                       | CALIFORNIA                |     1 | False
  49 |   4 | CA                       | CANADA                    |    12 | False
  50 |   5 | CA                       | CARRE                     |     2 | False
  52 |   2 | CALIF                    | CALIFORNIA                |     1 | False
  55 |   2 | CALIFORNIA               | CALIFORNIA                |     1 | False
  56 |   1 | CANADA                   | CANADA                    |    12 | False
  57 |   2 | CANADA                   | CANADA                    |     1 | False
  59 |   2 | CO                       | COLORADO                  |     1 | False
  61 |   1 | COLOMBIE BRITANNIQUE     | BRITISH COLUMBIA          |    11 | False
  62 |   2 | COLOMBIE BRITANNIQUE     | BRITISH COLUMBIA          |     1 | False
  64 |   2 | COLORADO                 | COLORADO                  |     1 | False
  66 |   2 | CONN                     | CONNECTICUT               |     1 | False
  69 |   2 | CONNECTICUT              | CONNECTICUT               |     1 | False
  71 |   2 | CT                       | CONNECTICUT               |     1 | False
  74 |   2 | DC                       | DC                        |     1 | False
  77 |   3 | DE                       | DELAWARE                  |     1 | False
  79 |   2 | DEL                      | DELAWARE                  |     1 | False
  82 |   2 | DELAWARE                 | DELAWARE                  |     1 | False
  84 |   2 | DC                       | DISTRICT OF COLUMBIA      |     1 | False
  85 |   2 | EL PASO                  | EL PASO                   |     1 | False
  87 |   2 | FL                       | FLORIDA                   |     1 | False
  90 |   2 | FLA                      | FLORIDA                   |     1 | False
  93 |   2 | FLORIDA                  | FLORIDA                   |     1 | False
  94 |   1 | FRKS                     | FORKS                     |     1 | False
  96 |   2 | GA                       | GEORGIA                   |     1 | False
  99 |   2 | GEORGIA                  | GEORGIA                   |     1 | False
 101 |   2 | HAWAII                   | HAWAII                    |     1 | False
 103 |   2 | HI                       | HAWAII                    |     1 | False
 106 |   2 | IA                       | IOWA                      |     1 | False
 109 |   2 | ID                       | IDAHO                     |     1 | False
 112 |   2 | IDAHO                    | IDAHO                     |     1 | False
 114 |   2 | IL                       | ILLINOIS                  |     1 | False
 116 |   1 | ILE DU PRINCE EDOUARD    | PRINCE EDWARD ISLAND      |    11 | False
 117 |   2 | ILE DU PRINCE EDOUARD    | PRINCE EDWARD ISLAND      |     1 | False
 119 |   2 | ILL                      | ILLINOIS                  |     1 | False
 122 |   2 | ILLINOIS                 | ILLINOIS                  |     1 | False
 124 |   2 | IN                       | INDIANA                   |     1 | False
 127 |   2 | IND                      | INDIANA                   |     1 | False
 130 |   2 | INDIANA                  | INDIANA                   |     1 | False
 132 |   2 | IOWA                     | IOWA                      |     1 | False
 134 |   2 | KANSAS                   | KANSAS                    |     1 | False
 136 |   2 | KENT                     | KENTUCKY                  |     1 | False
 139 |   2 | KENTUCKY                 | KENTUCKY                  |     1 | False
 141 |   2 | KS                       | KANSAS                    |     1 | False
 144 |   2 | KY                       | KENTUCKY                  |     1 | False
 147 |   2 | LA                       | LOUISIANA                 |     1 | False
 149 |   1 | LABRADOR                 | NEWFOUNDLAND AND LABRADOR |    11 | False
 150 |   2 | LABRADOR                 | NEWFOUNDLAND AND LABRADOR |     1 | False
 152 |   2 | LOUISIANA                | LOUISIANA                 |     1 | False
 154 |   2 | MA                       | MASSACHUSETTS             |     1 | False
 156 |   4 | MA                       | MANOR                     |     2 | False
 158 |   2 | MAINE                    | MAINE                     |     1 | False
 159 |   1 | MANITOBA                 | MANITOBA                  |    11 | False
 160 |   2 | MANITOBA                 | MANITOBA                  |     1 | False
 162 |   2 | MARYLAND                 | MARYLAND                  |     1 | False
 164 |   2 | MASS                     | MASSACHUSETTS             |     1 | False
 167 |   2 | MASSACHUSETTS            | MASSACHUSETTS             |     1 | False
 168 |   1 | MB                       | MANITOBA                  |    11 | False
 169 |   2 | MB                       | MANITOBA                  |     1 | False
 170 |   3 | MB                       | MANITOBA                  |     6 | False
 172 |   2 | MD                       | MARYLAND                  |     1 | False
 175 |   2 | ME                       | MAINE                     |     1 | False
 178 |   2 | MI                       | MICHIGAN                  |     1 | False
 181 |   2 | MICH                     | MICHIGAN                  |     1 | False
 184 |   2 | MICHIGAN                 | MICHIGAN                  |     1 | False
 186 |   2 | MINN                     | MINNESOTA                 |     1 | False
 189 |   2 | MINNESOTA                | MINNESOTA                 |     1 | False
 191 |   2 | MISSISSIPPI              | MISSISSIPPI               |     1 | False
 193 |   2 | MISSOURI                 | MISSOURI                  |     1 | False
 195 |   2 | MN                       | MINNESOTA                 |     1 | False
 198 |   2 | MO                       | MISSOURI                  |     1 | False
 201 |   2 | MONT                     | MONTANA                   |     1 | False
 204 |   2 | MONTANA                  | MONTANA                   |     1 | False
 206 |   2 | MT                       | MONTANA                   |     1 | False
 209 |   2 | MS                       | MISSISSIPPI               |     1 | False
 212 |   2 | N CAROLINA               | NORTH CAROLINA            |     1 | False
 214 |   2 | N DAKOTA                 | NORTH DAKOTA              |     1 | False
 215 |   1 | NB                       | NEW BRUNSWICK             |    11 | False
 216 |   2 | NB                       | NEW BRUNSWICK             |     1 | False
 217 |   3 | NB                       | NEW BRUNSWICK             |     6 | False
 219 |   2 | NC                       | NORTH CAROLINA            |     1 | False
 222 |   2 | ND                       | NORTH DAKOTA              |     1 | False
 225 |   2 | NE                       | NEBRASKA                  |     1 | False
 228 |   2 | NEB                      | NEBRASKA                  |     1 | False
 231 |   2 | NEBRASKA                 | NEBRASKA                  |     1 | False
 233 |   2 | NEV                      | NEVADA                    |     1 | False
 236 |   2 | NEVADA                   | NEVADA                    |     1 | False
 237 |   1 | NEW BRUNSWICK            | NEW BRUNSWICK             |    11 | False
 238 |   2 | NEW BRUNSWICK            | NEW BRUNSWICK             |     1 | False
 240 |   2 | NEW HAMPSHIRE            | NEW HAMPSHIRE             |     1 | False
 242 |   2 | NEW JERSEY               | NEW JERSEY                |     1 | False
 244 |   2 | NEW MEXICO               | NEW MEXICO                |     1 | False
 246 |   2 | NEW YORK                 | NEW YORK                  |     1 | False
 247 |   1 | NEWFOUNDLAND             | NEWFOUNDLAND AND LABRADOR |    11 | False
 248 |   2 | NEWFOUNDLAND             | NEWFOUNDLAND AND LABRADOR |     1 | False
 249 |   1 | NF                       | NEWFOUNDLAND AND LABRADOR |    11 | False
 250 |   2 | NF                       | NEWFOUNDLAND AND LABRADOR |     1 | False
 251 |   3 | NF                       | NEWFOUNDLAND AND LABRADOR |     6 | False
 253 |   2 | NH                       | NEW HAMPSHIRE             |     1 | False
 256 |   2 | NJ                       | NEW JERSEY                |     1 | False
 258 |   1 | NL                       | NEWFOUNDLAND AND LABRADOR |    11 | False
 259 |   2 | NL                       | NEWFOUNDLAND AND LABRADOR |     1 | False
 260 |   3 | NL                       | NEWFOUNDLAND AND LABRADOR |     6 | False
 262 |   2 | NM                       | NEW MEXICO                |     1 | False
 265 |   2 | NORTH CAROLINA           | NORTH CAROLINA            |     1 | False
 267 |   2 | NORTH DAKOTA             | NORTH DAKOTA              |     1 | False
 268 |   1 | NORTHWEST                | NORTHWEST                 |    22 | False
 269 |   1 | NORTHWEST TERRITORIES    | NORTHWEST TERRITORIES     |    11 | False
 270 |   2 | NORTHWEST TERRITORIES    | NORTHWEST TERRITORIES     |     1 | False
 271 |   1 | NOUVEAU BRUNSWICK        | NEW BRUNSWICK             |    11 | False
 272 |   2 | NOUVEAU BRUNSWICK        | NEW BRUNSWICK             |     1 | False
 273 |   1 | NOUVELLE ECOSSE          | NOVA SCOTIA               |    11 | False
 274 |   2 | NOUVELLE ECOSSE          | NOVA SCOTIA               |     1 | False
 275 |   1 | NOVA SCOTIA              | NOVA SCOTIA               |    11 | False
 276 |   2 | NOVA SCOTIA              | NOVA SCOTIA               |     1 | False
 277 |   1 | NS                       | NOVA SCOTIA               |    11 | False
 278 |   2 | NS                       | NOVA SCOTIA               |     1 | False
 279 |   3 | NS                       | NOVA SCOTIA               |     6 | False
 280 |   1 | NT                       | NORTHWEST TERRITORIES     |    11 | False
 281 |   2 | NT                       | NORTHWEST TERRITORIES     |     1 | False
 282 |   3 | NT                       | NORTHWEST TERRITORIES     |     6 | False
 283 |   1 | NU                       | NUNAVUT                   |    11 | False
 284 |   2 | NU                       | NUNAVUT                   |     1 | False
 285 |   3 | NU                       | NUNAVUT                   |     6 | False
 286 |   1 | NUNAVUT                  | NUNAVUT                   |    11 | False
 287 |   2 | NUNAVUT                  | NUNAVUT                   |     1 | False
 289 |   2 | NV                       | NEVADA                    |     1 | False
 292 |   2 | NY                       | NEW YORK                  |     1 | False
 295 |   2 | OH                       | OHIO                      |     1 | False
 298 |   2 | OHIO                     | OHIO                      |     1 | False
 300 |   2 | OK                       | OKLAHOMA                  |     1 | False
 303 |   2 | OKLA                     | OKLAHOMA                  |     1 | False
 306 |   2 | OKLAHOMA                 | OKLAHOMA                  |     1 | False
 307 |   1 | ON                       | ONTARIO                   |    11 | False
 308 |   2 | ON                       | ONTARIO                   |     1 | False
 309 |   3 | ON                       | ONTARIO                   |     6 | False
 310 |   1 | ONT                      | ONTARIO                   |    11 | False
 311 |   2 | ONT                      | ONTARIO                   |     1 | False
 312 |   3 | ONT                      | ONTARIO                   |     6 | False
 313 |   1 | ONTARIO                  | ONTARIO                   |    11 | False
 314 |   2 | ONTARIO                  | ONTARIO                   |     1 | False
 316 |   2 | OR                       | OREGON                    |     1 | False
 319 |   2 | ORE                      | OREGON                    |     1 | False
 322 |   2 | OREGON                   | OREGON                    |     1 | False
 324 |   2 | PA                       | PENNSYLVANIA              |     1 | False
 326 |   1 | PE                       | PRINCE EDWARD ISLAND      |    11 | False
 327 |   2 | PE                       | PRINCE EDWARD ISLAND      |     1 | False
 328 |   3 | PE                       | PRINCE EDWARD ISLAND      |     6 | False
 329 |   1 | PEI                      | PRINCE EDWARD ISLAND      |    11 | False
 330 |   2 | PEI                      | PRINCE EDWARD ISLAND      |     1 | False
 331 |   3 | PEI                      | PRINCE EDWARD ISLAND      |     6 | False
 333 |   2 | PENN                     | PENNSYLVANIA              |     1 | False
 336 |   2 | PENNA                    | PENNSYLVANIA              |     1 | False
 339 |   2 | PENNSYLVANIA             | PENNSYLVANIA              |     1 | False
 340 |   1 | PQ                       | QUEBEC                    |    11 | False
 341 |   2 | PQ                       | QUEBEC                    |     1 | False
 342 |   3 | PQ                       | QUEBEC                    |     6 | False
 344 |   2 | PR                       | PUERTO RICO               |     1 | False
 346 |   1 | PRINCE EDWARD ISLAND     | PRINCE EDWARD ISLAND      |    11 | False
 347 |   2 | PRINCE EDWARD ISLAND     | PRINCE EDWARD ISLAND      |     1 | False
 349 |   2 | PUERTO RICO              | PUERTO RICO               |     1 | False
 350 |   1 | QC                       | QUEBEC                    |    11 | False
 351 |   2 | QC                       | QUEBEC                    |     1 | False
 352 |   3 | QC                       | QUEBEC                    |     6 | False
 353 |   1 | QUEBEC                   | QUEBEC                    |    11 | False
 354 |   2 | QUEBEC                   | QUEBEC                    |     1 | False
 356 |   2 | RHODE ISLAND             | RHODE ISLAND              |     1 | False
 358 |   2 | RI                       | RHODE ISLAND              |     1 | False
 361 |   2 | S CAROLINA               | SOUTH CAROLINA            |     1 | False
 363 |   2 | S DAKOTA                 | SOUTH DAKOTA              |     1 | False
 364 |   1 | SASK                     | SASKATCHEWAN              |    11 | False
 365 |   2 | SASK                     | SASKATCHEWAN              |     1 | False
 366 |   1 | SASKATCHEWAN             | SASKATCHEWAN              |    11 | False
 367 |   2 | SASKATCHEWAN             | SASKATCHEWAN              |     1 | False
 369 |   2 | SC                       | SOUTH CAROLINA            |     1 | False
 372 |   2 | SD                       | SOUTH DAKOTA              |     1 | False
 374 |   1 | SK                       | SASKATCHEWAN              |    11 | False
 375 |   2 | SK                       | SASKATCHEWAN              |     1 | False
 376 |   3 | SK                       | SASKATCHEWAN              |     6 | False
 378 |   2 | SOUTH CAROLINA           | SOUTH CAROLINA            |     1 | False
 380 |   2 | SOUTH DAKOTA             | SOUTH DAKOTA              |     1 | False
 382 |   2 | TENN                     | TENNESSEE                 |     1 | False
 385 |   2 | TENNESSEE                | TENNESSEE                 |     1 | False
 386 |   1 | TERRE NEUVE              | NEWFOUNDLAND              |    11 | False
 387 |   2 | TERRE NEUVE              | NEWFOUNDLAND              |     1 | False
 388 |   1 | TERRITOIRES DU NORD OUES | NORTHWEST TERRITORIES     |    11 | False
 389 |   2 | TERRITOIRES DU NORD OUES | NORTHWEST TERRITORIES     |     1 | False
 391 |   2 | TEX                      | TEXAS                     |     1 | False
 394 |   2 | TEXAS                    | TEXAS                     |     1 | False
 396 |   2 | TN                       | TENNESSEE                 |     1 | False
 399 |   2 | TX                       | TEXAS                     |     1 | False
 401 |   2 | U S                      | US                        |     1 | False
 402 |   3 | U S                      | USA                       |    12 | False
 403 |   1 | U S A                    | USA                       |    12 | False
 404 |   1 | UNITED STATES OF AMERICA | USA                       |    12 | False
 405 |   2 | US                       | US                        |     1 | False
 406 |   3 | US                       | USA                       |    12 | False
 407 |   1 | USA                      | USA                       |    12 | False
 409 |   2 | UT                       | UTAH                      |     1 | False
 412 |   2 | UTAH                     | UTAH                      |     1 | False
 414 |   2 | VA                       | VIRGINIA                  |     1 | False
 417 |   2 | VERMONT                  | VERMONT                   |     1 | False
 419 |   2 | VIRGINIA                 | VIRGINIA                  |     1 | False
 421 |   2 | VT                       | VERMONT                   |     1 | False
 424 |   2 | W VIRGINIA               | WEST VIRGINIA             |     1 | False
 426 |   2 | WA                       | WASHINGTON                |     1 | False
 429 |   2 | WASH                     | WASHINGTON                |     1 | False
 432 |   2 | WASHINGTON               | WASHINGTON                |     1 | False
 434 |   2 | WEST VIRGINIA            | WEST VIRGINIA             |     1 | False
 436 |   2 | WI                       | WISCONSIN                 |     1 | False
 439 |   2 | WISC                     | WISCONSIN                 |     1 | False
 442 |   2 | WISCONSIN                | WISCONSIN                 |     1 | False
 444 |   2 | WV                       | WEST VIRGINIA             |     1 | False
 447 |   2 | WY                       | WYOMING                   |     1 | False
 450 |   2 | WYOMING                  | WYOMING                   |     1 | False
 451 |   1 | YK                       | YUKON                     |    11 | False
 452 |   2 | YK                       | YUKON                     |     1 | False
 453 |   3 | YK                       | YUKON                     |     6 | False
 454 |   1 | YT                       | YUKON                     |    11 | False
 455 |   2 | YT                       | YUKON                     |     1 | False
 456 |   3 | YT                       | YUKON                     |     6 | False
 457 |   1 | YUKON                    | YUKON                     |    11 | False
 458 |   2 | YUKON                    | YUKON                     |     1 | False
 459 |   1 | BOIS D ARC               | BOIS D ARC                |    10 | False
 460 |   1 | BOIS D'ARC               | BOIS D ARC                |    10 | False
 461 |   1 | CAMP H M SMITH           | CAMP H M SMITH            |    10 | False
 462 |   1 | CAMP HM SMITH            | CAMP H M SMITH            |    10 | False
 463 |   1 | COEUR D ALENE            | COEUR D ALENE             |    10 | False
 464 |   1 | COEUR D'ALENE            | COEUR D ALENE             |    10 | False
 465 |   1 | D HANIS                  | D HANIS                   |    10 | False
 466 |   1 | D'HANIS                  | D HANIS                   |    10 | False
 467 |   1 | EL PASO                  | EL PASO                   |    10 | False
 468 |   1 | FORT GEORGE G MEADE      | FORT GEORGE G MEADE       |    10 | False
 469 |   1 | FORT GEORGE MEADE        | FORT GEORGE G MEADE       |    10 | False
 470 |   1 | FORT MEADE               | FORT GEORGE G MEADE       |    10 | False
 471 |   1 | LAND O LAKES             | LAND O LAKES              |    10 | False
 472 |   1 | LAND O'LAKES             | LAND O LAKES              |    10 | False
 473 |   1 | M C B H KANEOHE BAY      | M C B H KANEOHE BAY       |    10 | False
 474 |   1 | MCBH KANEOHE BAY         | M C B H KANEOHE BAY       |    10 | False
 475 |   1 | N VAN                    | NORTH VANCOUVER           |    10 | False
 476 |   1 | N VANCOUVER              | NORTH VANCOUVER           |    10 | False
 477 |   1 | NO VANCOUVER             | NORTH VANCOUVER           |    10 | False
 478 |   1 | NORTH VANCOUVER          | NORTH VANCOUVER           |    10 | False
 479 |   1 | O BRIEN                  | O BRIEN                   |    10 | False
 480 |   1 | O'BRIEN                  | O BRIEN                   |    10 | False
 481 |   1 | O FALLON                 | O FALLON                  |    10 | False
 482 |   1 | O'FALLON                 | O FALLON                  |    10 | False
 483 |   1 | O NEALS                  | O NEALS                   |    10 | False
 484 |   1 | O'NEALS                  | O NEALS                   |    10 | False
 485 |   1 | ROUND O                  | ROUND O                   |    10 | False
 486 |   1 | S COFFEYVILLE            | SOUTH COFFEYVILLE         |    10 | False
 487 |   1 | SOUTH COFFEYVILLE        | SOUTH COFFEYVILLE         |    10 | False
 488 |   1 | U S A F ACADEMY          | U S A F ACADEMY           |    10 | False
 489 |   1 | USAF ACADEMY             | U S A F ACADEMY           |    10 | False
 490 |   1 | W VAN                    | WEST VANCOUVER            |    10 | False
 491 |   1 | W VANCOUVER              | WEST VANCOUVER            |    10 | False
 492 |   1 | WEST VANCOUVER           | WEST VANCOUVER            |    10 | False
 493 |   1 | AU GRES                  | AU GRES                   |    10 | False
 494 |   1 | AU SABLE FORKS           | AU SABLE FORKS            |    10 | False
 495 |   1 | AU SABLE FRKS            | AU SABLE FORKS            |    10 | False
 496 |   1 | AU TRAIN                 | AU TRAIN                  |    10 | False
 497 |   1 | AVON BY THE SEA          | AVON BY THE SEA           |    10 | False
 498 |   1 | AVON BY SEA              | AVON BY THE SEA           |    10 | False
 499 |   1 | BAYOU LA BATRE           | BAYOU LA BATRE            |    10 | False
 500 |   1 | BIRD IN HAND             | BIRD IN HAND              |    10 | False
 501 |   1 | CAMDEN ON GAULEY         | CAMDEN ON GAULEY          |    10 | False
 502 |   1 | CARDIFF BY THE SEA       | CARDIFF BY THE SEA        |    10 | False
 503 |   1 | CARDIFF BY SEA           | CARDIFF BY THE SEA        |    10 | False
 504 |   1 | CASTLETON ON HUDSON      | CASTLETON ON HUDSON       |    10 | False
 505 |   1 | CAVE IN ROCK             | CAVE IN ROCK              |    10 | False
 506 |   1 | CORNWALL ON HUDSON       | CORNWALL ON HUDSON        |    10 | False
 507 |   1 | CROTON ON HUDSON         | CROTON ON HUDSON          |    10 | False
 508 |   1 | DE BEQUE                 | DE BEQUE                  |    10 | False
 509 |   1 | DE BERRY                 | DE BERRY                  |    10 | False
 510 |   1 | DE FOREST                | DE FOREST                 |    10 | False
 511 |   1 | DE GRAFF                 | DE GRAFF                  |    10 | False
 512 |   1 | DE KALB                  | DE KALB                   |    10 | False
 513 |   1 | DE KALB JUNCTION         | DE KALB JUNCTION          |    10 | False
 514 |   1 | DE LAND                  | DE LAND                   |    10 | False
 515 |   1 | DE LEON                  | DE LEON                   |    10 | False
 516 |   1 | DE LEON SPRINGS          | DE LEON SPRINGS           |    10 | False
 517 |   1 | DE MOSSVILLE             | DE MOSSVILLE              |    10 | False
 518 |   1 | DE PERE                  | DE PERE                   |    10 | False
 519 |   1 | DE PEYSTER               | DE PEYSTER                |    10 | False
 520 |   1 | DE QUEEN                 | DE QUEEN                  |    10 | False
 521 |   1 | DE RUYTER                | DE RUYTER                 |    10 | False
 522 |   1 | DE SMET                  | DE SMET                   |    10 | False
 523 |   1 | DE SOTO                  | DE SOTO                   |    10 | False
 524 |   1 | DE TOUR VILLAGE          | DE TOUR VILLAGE           |    10 | False
 525 |   1 | DE VALLS BLUFF           | DE VALLS BLUFF            |    10 | False
 526 |   1 | VALLS BLUFF              | DE VALLS BLUFF            |    10 | False
 527 |   1 | DE WITT                  | DE WITT                   |    10 | False
 528 |   1 | DE YOUNG                 | DE YOUNG                  |    10 | False
 529 |   1 | DU BOIS                  | DU BOIS                   |    10 | False
 530 |   1 | DU PONT                  | DU PONT                   |    10 | False
 531 |   1 | DU QUOIN                 | DU QUOIN                  |    10 | False
 532 |   1 | E MC KEESPORT            | EAST MC KEESPORT          |    10 | False
 533 |   1 | E MCKEESPORT             | EAST MC KEESPORT          |    10 | False
 534 |   1 | EAST MC KEESPORT         | EAST MC KEESPORT          |    10 | False
 535 |   1 | EAST MCKEESPORT          | EAST MC KEESPORT          |    10 | False
 536 |   1 | EL CAJON                 | EL CAJON                  |    10 | False
 537 |   1 | EL CAMPO                 | EL CAMPO                  |    10 | False
 538 |   1 | EL CENTRO                | EL CENTRO                 |    10 | False
 539 |   1 | EL CERRITO               | EL CERRITO                |    10 | False
 540 |   1 | EL DORADO                | EL DORADO                 |    10 | False
 541 |   1 | EL DORADO HILLS          | EL DORADO HILLS           |    10 | False
 542 |   1 | EL DORADO SPRINGS        | EL DORADO SPRINGS         |    10 | False
 543 |   1 | EL MIRAGE                | EL MIRAGE                 |    10 | False
 544 |   1 | EL MONTE                 | EL MONTE                  |    10 | False
 545 |   1 | EL NIDO                  | EL NIDO                   |    10 | False
 546 |   1 | EL PASO                  | EL PASO                   |    10 | False
 547 |   1 | EL PRADO                 | EL PRADO                  |    10 | False
 548 |   1 | EL RENO                  | EL RENO                   |    10 | False
 549 |   1 | EL RITO                  | EL RITO                   |    10 | False
 550 |   1 | EL SEGUNDO               | EL SEGUNDO                |    10 | False
 551 |   1 | EL SOBRANTE              | EL SOBRANTE               |    10 | False
 552 |   1 | FALLS OF ROUGH           | FALLS OF ROUGH            |    10 | False
 553 |   1 | FOND DU LAC              | FOND DU LAC               |    10 | False
 554 |   1 | FORKS OF SALMON          | FORKS OF SALMON           |    10 | False
 555 |   1 | FORT MC COY              | FORT MC COY               |    10 | False
 556 |   1 | FORT MCCOY               | FORT MC COY               |    10 | False
 557 |   1 | FORT MC KAVETT           | FORT MC KAVETT            |    10 | False
 558 |   1 | FORT MCKAVETT            | FORT MC KAVETT            |    10 | False
 559 |   1 | FT MITCHELL              | FORT MITCHELL             |    10 | False
 560 |   1 | FORT MITCHELL            | FORT MITCHELL             |    10 | False
 561 |   1 | FT MYER                  | FORT MYER                 |    10 | False
 562 |   1 | FORT MYER                | FORT MYER                 |    10 | False
 563 |   1 | FT WARREN AFB            | FORT WARREN AFB           |    10 | False
 564 |   1 | FORT WARREN AFB          | FORT WARREN AFB           |    10 | False
 565 |   1 | HASTINGS ON HUDSON       | HASTINGS ON HUDSON        |    10 | False
 566 |   1 | HAVRE DE GRACE           | HAVRE DE GRACE            |    10 | False
 567 |   1 | HI HAT                   | HI HAT                    |    10 | False
 568 |   1 | HO HO KUS                | HO HO KUS                 |    10 | False
 569 |   1 | HOWEY IN THE HILLS       | HOWEY IN THE HILLS        |    10 | False
 570 |   1 | HOWEY IN HILLS           | HOWEY IN THE HILLS        |    10 | False
 571 |   1 | ISLE LA MOTTE            | ISLE LA MOTTE             |    10 | False
 572 |   1 | ISLE OF PALMS            | ISLE OF PALMS             |    10 | False
 573 |   1 | ISLE OF SPRINGS          | ISLE OF SPRINGS           |    10 | False
 574 |   1 | JAY EM                   | JAY EM                    |    10 | False
 575 |   1 | KING OF PRUSSIA          | KING OF PRUSSIA           |    10 | False
 576 |   1 | LA BARGE                 | LA BARGE                  |    10 | False
 577 |   1 | LA BELLE                 | LA BELLE                  |    10 | False
 578 |   1 | LA CANADA FLINTRIDGE     | LA CANADA FLINTRIDGE      |    10 | False
 579 |   1 | LA CENTER                | LA CENTER                 |    10 | False
 580 |   1 | LA CONNER                | LA CONNER                 |    10 | False
 581 |   1 | LA COSTE                 | LA COSTE                  |    10 | False
 582 |   1 | LA CRESCENT              | LA CRESCENT               |    10 | False
 583 |   1 | LA CRESCENTA             | LA CRESCENTA              |    10 | False
 584 |   1 | LA CROSSE                | LA CROSSE                 |    10 | False
 585 |   1 | LA FARGE                 | LA FARGE                  |    10 | False
 586 |   1 | LA FARGEVILLE            | LA FARGEVILLE             |    10 | False
 587 |   1 | LA FAYETTE               | LA FAYETTE                |    10 | False
 588 |   1 | LA FERIA                 | LA FERIA                  |    10 | False
 589 |   1 | LA FOLLETTE              | LA FOLLETTE               |    10 | False
 590 |   1 | LA FONTAINE              | LA FONTAINE               |    10 | False
 591 |   1 | LA GRANDE                | LA GRANDE                 |    10 | False
 592 |   1 | LA GRANGE                | LA GRANGE                 |    10 | False
 593 |   1 | LA GRANGE PARK           | LA GRANGE PARK            |    10 | False
 594 |   1 | LA HABRA                 | LA HABRA                  |    10 | False
 595 |   1 | LA HARPE                 | LA HARPE                  |    10 | False
 596 |   1 | LA HONDA                 | LA HONDA                  |    10 | False
 597 |   1 | LA JARA                  | LA JARA                   |    10 | False
 598 |   1 | LA JOLLA                 | LA JOLLA                  |    10 | False
 599 |   1 | LA JOSE                  | LA JOSE                   |    10 | False
 600 |   1 | LA JOYA                  | LA JOYA                   |    10 | False
 601 |   1 | LA JUNTA                 | LA JUNTA                  |    10 | False
 602 |   1 | LA LOMA                  | LA LOMA                   |    10 | False
 603 |   1 | LA LUZ                   | LA LUZ                    |    10 | False
 604 |   1 | LA MADERA                | LA MADERA                 |    10 | False
 605 |   1 | LA MARQUE                | LA MARQUE                 |    10 | False
 606 |   1 | LA MESA                  | LA MESA                   |    10 | False
 607 |   1 | LA MIRADA                | LA MIRADA                 |    10 | False
 608 |   1 | LA MOILLE                | LA MOILLE                 |    10 | False
 609 |   1 | LA MONTE                 | LA MONTE                  |    10 | False
 610 |   1 | LA MOTTE                 | LA MOTTE                  |    10 | False
 611 |   1 | LA PALMA                 | LA PALMA                  |    10 | False
 612 |   1 | LA PINE                  | LA PINE                   |    10 | False
 613 |   1 | LA PLACE                 | LA PLACE                  |    10 | False
 614 |   1 | LA PLATA                 | LA PLATA                  |    10 | False
 615 |   1 | LA PORTE                 | LA PORTE                  |    10 | False
 616 |   1 | LA PORTE CITY            | LA PORTE CITY             |    10 | False
 617 |   1 | LA PRAIRIE               | LA PRAIRIE                |    10 | False
 618 |   1 | LA PUENTE                | LA PUENTE                 |    10 | False
 619 |   1 | LA QUINTA                | LA QUINTA                 |    10 | False
 620 |   1 | LA RUE                   | LA RUE                    |    10 | False
 621 |   1 | LA RUSSELL               | LA RUSSELL                |    10 | False
 622 |   1 | LA SALLE                 | LA SALLE                  |    10 | False
 623 |   1 | LA VALLE                 | LA VALLE                  |    10 | False
 624 |   1 | LA VERGNE                | LA VERGNE                 |    10 | False
 625 |   1 | LA VERKIN                | LA VERKIN                 |    10 | False
 626 |   1 | LA VERNE                 | LA VERNE                  |    10 | False
 627 |   1 | LA VERNIA                | LA VERNIA                 |    10 | False
 628 |   1 | LA VETA                  | LA VETA                   |    10 | False
 629 |   1 | LA VISTA                 | LA VISTA                  |    10 | False
 630 |   1 | LAC DU FLAMBEAU          | LAC DU FLAMBEAU           |    10 | False
 631 |   1 | LAKE IN THE HILLS        | LAKE IN THE HILLS         |    10 | False
 632 |   1 | LAKE IN HILLS            | LAKE IN THE HILLS         |    10 | False
 633 |   1 | LE CENTER                | LE CENTER                 |    10 | False
 634 |   1 | LE CLAIRE                | LE CLAIRE                 |    10 | False
 635 |   1 | LE GRAND                 | LE GRAND                  |    10 | False
 636 |   1 | LE MARS                  | LE MARS                   |    10 | False
 637 |   1 | LE RAYSVILLE             | LE RAYSVILLE              |    10 | False
 638 |   1 | LE ROY                   | LE ROY                    |    10 | False
 639 |   1 | LE SUEUR                 | LE SUEUR                  |    10 | False
 640 |   1 | LE VERNE                 | LU VERNE                  |    10 | False
 641 |   1 | LU VERNE                 | LU VERNE                  |    10 | False
 642 |   1 | MARINE ON SAINT CROIX    | MARINE ON SAINT CROIX     |    10 | False
 643 |   1 | MC ADENVILLE             | MC ADENVILLE              |    10 | False
 644 |   1 | MCADENVILLE              | MC ADENVILLE              |    10 | False
 645 |   1 | MC ALISTER               | MC ALISTER                |    10 | False
 646 |   1 | MCALISTER                | MC ALISTER                |    10 | False
 647 |   1 | MC ALISTERVILLE          | MC ALISTERVILLE           |    10 | False
 648 |   1 | MCALISTERVILLE           | MC ALISTERVILLE           |    10 | False
 649 |   1 | MC ALPIN                 | MC ALPIN                  |    10 | False
 650 |   1 | MCALPIN                  | MC ALPIN                  |    10 | False
 651 |   1 | MC ANDREWS               | MC ANDREWS                |    10 | False
 652 |   1 | MCANDREWS                | MC ANDREWS                |    10 | False
 653 |   1 | MC ARTHUR                | MC ARTHUR                 |    10 | False
 654 |   1 | MCARTHUR                 | MC ARTHUR                 |    10 | False
 655 |   1 | MC BAIN                  | MC BAIN                   |    10 | False
 656 |   1 | MCBAIN                   | MC BAIN                   |    10 | False
 657 |   1 | MC BEE                   | MC BEE                    |    10 | False
 658 |   1 | MCBEE                    | MC BEE                    |    10 | False
 659 |   1 | MC CALL CREEK            | MC CALL CREEK             |    10 | False
 660 |   1 | MCCALL CREEK             | MC CALL CREEK             |    10 | False
 661 |   1 | MC CALLA                 | MC CALLA                  |    10 | False
 662 |   1 | MCCALLA                  | MC CALLA                  |    10 | False
 663 |   1 | MC CALLSBURG             | MC CALLSBURG              |    10 | False
 664 |   1 | MCCALLSBURG              | MC CALLSBURG              |    10 | False
 665 |   1 | MC CAMEY                 | MC CAMEY                  |    10 | False
 666 |   1 | MCCAMEY                  | MC CAMEY                  |    10 | False
 667 |   1 | MC CARLEY                | MC CARLEY                 |    10 | False
 668 |   1 | MCCARLEY                 | MC CARLEY                 |    10 | False
 669 |   1 | MC CARR                  | MC CARR                   |    10 | False
 670 |   1 | MCCARR                   | MC CARR                   |    10 | False
 671 |   1 | MC CASKILL               | MC CASKILL                |    10 | False
 672 |   1 | MCCASKILL                | MC CASKILL                |    10 | False
 673 |   1 | MC CAULLEY               | MC CAULLEY                |    10 | False
 674 |   1 | MCCAULLEY                | MC CAULLEY                |    10 | False
 675 |   1 | MC CAYSVILLE             | MC CAYSVILLE              |    10 | False
 676 |   1 | MCCAYSVILLE              | MC CAYSVILLE              |    10 | False
 677 |   1 | MC CLAVE                 | MC CLAVE                  |    10 | False
 678 |   1 | MCCLAVE                  | MC CLAVE                  |    10 | False
 679 |   1 | MC CLELLAND              | MC CLELLAND               |    10 | False
 680 |   1 | MCCLELLAND               | MC CLELLAND               |    10 | False
 681 |   1 | MC CLELLANDTOWN          | MC CLELLANDTOWN           |    10 | False
 682 |   1 | MCCLELLANDTOWN           | MC CLELLANDTOWN           |    10 | False
 683 |   1 | MC CLELLANVILLE          | MC CLELLANVILLE           |    10 | False
 684 |   1 | MCCLELLANVILLE           | MC CLELLANVILLE           |    10 | False
 685 |   1 | MC CLURE                 | MC CLURE                  |    10 | False
 686 |   1 | MCCLURE                  | MC CLURE                  |    10 | False
 687 |   1 | MC CLURG                 | MC CLURG                  |    10 | False
 688 |   1 | MCCLURG                  | MC CLURG                  |    10 | False
 689 |   1 | MC COLL                  | MC COLL                   |    10 | False
 690 |   1 | MCCOLL                   | MC COLL                   |    10 | False
 691 |   1 | MC COMB                  | MC COMB                   |    10 | False
 692 |   1 | MCCOMB                   | MC COMB                   |    10 | False
 693 |   1 | MC CONNELL               | MC CONNELL                |    10 | False
 694 |   1 | MCCONNELL                | MC CONNELL                |    10 | False
 695 |   1 | MC CONNELLS              | MC CONNELLS               |    10 | False
 696 |   1 | MCCONNELLS               | MC CONNELLS               |    10 | False
 697 |   1 | MC CONNELLSBURG          | MC CONNELLSBURG           |    10 | False
 698 |   1 | MCCONNELLSBURG           | MC CONNELLSBURG           |    10 | False
 699 |   1 | MC COOK                  | MC COOK                   |    10 | False
 700 |   1 | MCCOOK                   | MC COOK                   |    10 | False
 701 |   1 | MC COOL                  | MC COOL                   |    10 | False
 702 |   1 | MCCOOL                   | MC COOL                   |    10 | False
 703 |   1 | MC COOL JUNCTION         | MC COOL JUNCTION          |    10 | False
 704 |   1 | MCCOOL JUNCTION          | MC COOL JUNCTION          |    10 | False
 705 |   1 | MC CORDSVILLE            | MC CORDSVILLE             |    10 | False
 706 |   1 | MCCORDSVILLE             | MC CORDSVILLE             |    10 | False
 707 |   1 | MC CORMICK               | MC CORMICK                |    10 | False
 708 |   1 | MCCORMICK                | MC CORMICK                |    10 | False
 709 |   1 | MC COY                   | MC COY                    |    10 | False
 710 |   1 | MCCOY                    | MC COY                    |    10 | False
 711 |   1 | MC CRACKEN               | MC CRACKEN                |    10 | False
 712 |   1 | MCCRACKEN                | MC CRACKEN                |    10 | False
 713 |   1 | MC CRORY                 | MC CRORY                  |    10 | False
 714 |   1 | MCCRORY                  | MC CRORY                  |    10 | False
 715 |   1 | MC CUNE                  | MC CUNE                   |    10 | False
 716 |   1 | MCCUNE                   | MC CUNE                   |    10 | False
 717 |   1 | MC CUTCHENVILLE          | MC CUTCHENVILLE           |    10 | False
 718 |   1 | MCCUTCHENVILLE           | MC CUTCHENVILLE           |    10 | False
 719 |   1 | MC DADE                  | MC DADE                   |    10 | False
 720 |   1 | MCDADE                   | MC DADE                   |    10 | False
 721 |   1 | MC DANIELS               | MC DANIELS                |    10 | False
 722 |   1 | MCDANIELS                | MC DANIELS                |    10 | False
 723 |   1 | MC DAVID                 | MC DAVID                  |    10 | False
 724 |   1 | MCDAVID                  | MC DAVID                  |    10 | False
 725 |   1 | MC DERMOTT               | MC DERMOTT                |    10 | False
 726 |   1 | MCDERMOTT                | MC DERMOTT                |    10 | False
 727 |   1 | MC DONALD                | MC DONALD                 |    10 | False
 728 |   1 | MCDONALD                 | MC DONALD                 |    10 | False
 729 |   1 | MC DONOUGH               | MC DONOUGH                |    10 | False
 730 |   1 | MCDONOUGH                | MC DONOUGH                |    10 | False
 731 |   1 | MC DOWELL                | MC DOWELL                 |    10 | False
 732 |   1 | MCDOWELL                 | MC DOWELL                 |    10 | False
 733 |   1 | MC EWEN                  | MC EWEN                   |    10 | False
 734 |   1 | MCEWEN                   | MC EWEN                   |    10 | False
 735 |   1 | MC FALL                  | MC FALL                   |    10 | False
 736 |   1 | MCFALL                   | MC FALL                   |    10 | False
 737 |   1 | MC FARLAND               | MC FARLAND                |    10 | False
 738 |   1 | MCFARLAND                | MC FARLAND                |    10 | False
 739 |   1 | MC GAHEYSVILLE           | MC GAHEYSVILLE            |    10 | False
 740 |   1 | MCGAHEYSVILLE            | MC GAHEYSVILLE            |    10 | False
 741 |   1 | MC GEE                   | MC GEE                    |    10 | False
 742 |   1 | MCGEE                    | MC GEE                    |    10 | False
 743 |   1 | MC GEHEE                 | MC GEHEE                  |    10 | False
 744 |   1 | MCGEHEE                  | MC GEHEE                  |    10 | False
 745 |   1 | MC GRADY                 | MC GRADY                  |    10 | False
 746 |   1 | MCGRADY                  | MC GRADY                  |    10 | False
 747 |   1 | MC GRATH                 | MC GRATH                  |    10 | False
 748 |   1 | MCGRATH                  | MC GRATH                  |    10 | False
 749 |   1 | MC GRAW                  | MC GRAW                   |    10 | False
 750 |   1 | MCGRAW                   | MC GRAW                   |    10 | False
 751 |   1 | MC GREGOR                | MC GREGOR                 |    10 | False
 752 |   1 | MCGREGOR                 | MC GREGOR                 |    10 | False
 753 |   1 | MC HENRY                 | MC HENRY                  |    10 | False
 754 |   1 | MCHENRY                  | MC HENRY                  |    10 | False
 755 |   1 | MC INTIRE                | MC INTIRE                 |    10 | False
 756 |   1 | MCINTIRE                 | MC INTIRE                 |    10 | False
 757 |   1 | MC INTOSH                | MC INTOSH                 |    10 | False
 758 |   1 | MCINTOSH                 | MC INTOSH                 |    10 | False
 759 |   1 | MC INTYRE                | MC INTYRE                 |    10 | False
 760 |   1 | MCINTYRE                 | MC INTYRE                 |    10 | False
 761 |   1 | MC KEAN                  | MC KEAN                   |    10 | False
 762 |   1 | MCKEAN                   | MC KEAN                   |    10 | False
 763 |   1 | MC KEE                   | MC KEE                    |    10 | False
 764 |   1 | MCKEE                    | MC KEE                    |    10 | False
 765 |   1 | MC KEES ROCKS            | MC KEES ROCKS             |    10 | False
 766 |   1 | MCKEES ROCKS             | MC KEES ROCKS             |    10 | False
 767 |   1 | MC KENNEY                | MC KENNEY                 |    10 | False
 768 |   1 | MCKENNEY                 | MC KENNEY                 |    10 | False
 769 |   1 | MC KENZIE                | MC KENZIE                 |    10 | False
 770 |   1 | MCKENZIE                 | MC KENZIE                 |    10 | False
 771 |   1 | MC KITTRICK              | MC KITTRICK               |    10 | False
 772 |   1 | MCKITTRICK               | MC KITTRICK               |    10 | False
 773 |   1 | MC LAIN                  | MC LAIN                   |    10 | False
 774 |   1 | MCLAIN                   | MC LAIN                   |    10 | False
 775 |   1 | MC LAUGHLIN              | MC LAUGHLIN               |    10 | False
 776 |   1 | MCLAUGHLIN               | MC LAUGHLIN               |    10 | False
 777 |   1 | MC LEAN                  | MC LEAN                   |    10 | False
 778 |   1 | MCLEAN                   | MC LEAN                   |    10 | False
 779 |   1 | MC LEANSBORO             | MC LEANSBORO              |    10 | False
 780 |   1 | MCLEANSBORO              | MC LEANSBORO              |    10 | False
 781 |   1 | MC LEANSVILLE            | MC LEANSVILLE             |    10 | False
 782 |   1 | MCLEANSVILLE             | MC LEANSVILLE             |    10 | False
 783 |   1 | MC LEOD                  | MC LEOD                   |    10 | False
 784 |   1 | MCLEOD                   | MC LEOD                   |    10 | False
 785 |   1 | MC LOUTH                 | MC LOUTH                  |    10 | False
 786 |   1 | MCLOUTH                  | MC LOUTH                  |    10 | False
 787 |   1 | MC MILLAN                | MC MILLAN                 |    10 | False
 788 |   1 | MCMILLAN                 | MC MILLAN                 |    10 | False
 789 |   1 | MC MINNVILLE             | MC MINNVILLE              |    10 | False
 790 |   1 | MCMINNVILLE              | MC MINNVILLE              |    10 | False
 791 |   1 | MC NABB                  | MC NABB                   |    10 | False
 792 |   1 | MCNABB                   | MC NABB                   |    10 | False
 793 |   1 | MC NEAL                  | MC NEAL                   |    10 | False
 794 |   1 | MCNEAL                   | MC NEAL                   |    10 | False
 795 |   1 | MC NEIL                  | MC NEIL                   |    10 | False
 796 |   1 | MCNEIL                   | MC NEIL                   |    10 | False
 797 |   1 | MC QUEENEY               | MC QUEENEY                |    10 | False
 798 |   1 | MCQUEENEY                | MC QUEENEY                |    10 | False
 799 |   1 | MC RAE                   | MC RAE                    |    10 | False
 800 |   1 | MCRAE                    | MC RAE                    |    10 | False
 801 |   1 | MC ROBERTS               | MC ROBERTS                |    10 | False
 802 |   1 | MCROBERTS                | MC ROBERTS                |    10 | False
 803 |   1 | MC SHERRYSTOWN           | MC SHERRYSTOWN            |    10 | False
 804 |   1 | MCSHERRYSTOWN            | MC SHERRYSTOWN            |    10 | False
 805 |   1 | MC VEYTOWN               | MC VEYTOWN                |    10 | False
 806 |   1 | MCVEYTOWN                | MC VEYTOWN                |    10 | False
 807 |   1 | MEADOWS OF DAN           | MEADOWS OF DAN            |    10 | False
 808 |   1 | MI WUK VILLAGE           | MI WUK VILLAGE            |    10 | False
 224 |   1 | NE                       | NE                        |    11 | False
 809 |   1 | MOUTH OF WILSON          | MOUTH OF WILSON           |    10 | False
 810 |   1 | MT ZION                  | MOUNT ZION                |    10 | False
 811 |   1 | MOUNT ZION               | MOUNT ZION                |    10 | False
 812 |   1 | PE ELL                   | PE ELL                    |    10 | False
 813 |   1 | POINT OF ROCKS           | POINT OF ROCKS            |    10 | False
 814 |   1 | PONCE DE LEON            | PONCE DE LEON             |    10 | False
 815 |   1 | PRAIRIE DU CHIEN         | PRAIRIE DU CHIEN          |    10 | False
 816 |   1 | PRAIRIE DU ROCHER        | PRAIRIE DU ROCHER         |    10 | False
 817 |   1 | PRAIRIE DU SAC           | PRAIRIE DU SAC            |    10 | False
 818 |   1 | RANCHO SANTA FE          | RANCHO SANTA FE           |    10 | False
 819 |   1 | RANCHOS DE TAOS          | RANCHOS DE TAOS           |    10 | False
 820 |   1 | SAINT JO                 | SAINT JO                  |    10 | False
 821 |   1 | SANTA FE                 | SANTA FE                  |    10 | False
 822 |   1 | SANTA FE SPRINGS         | SANTA FE SPRINGS          |    10 | False
 823 |   1 | S EL MONTE               | SOUTH EL MONTE            |    10 | False
 824 |   1 | SOUTH EL MONTE           | SOUTH EL MONTE            |    10 | False
 825 |   1 | SAINT COLUMBANS          | SAINT COLUMBANS           |    10 | False
 826 |   1 | ST COLUMBANS             | SAINT COLUMBANS           |    10 | False
 827 |   1 | SAINT JOHN               | SAINT JOHN                |    10 | False
 828 |   1 | ST JOHN                  | SAINT JOHN                |    10 | False
 829 |   1 | SAINT THOMAS             | SAINT THOMAS              |    10 | False
 830 |   1 | ST THOMAS                | SAINT THOMAS              |    10 | False
 831 |   1 | TOWNSHIP OF WASHINGTON   | TOWNSHIP OF WASHINGTON    |    10 | False
 832 |   1 | TRUTH OR CONSEQUENCES    | TRUTH OR CONSEQUENCES     |    10 | False
 833 |   1 | TY TY                    | TY TY                     |    10 | False
 834 |   1 | VILLAGE OF NAGOG WOODS   | VILLAGE OF NAGOG WOODS    |    10 | False
   7 |   1 | AK                       | AK                        |    11 | False
   9 |   3 | AK                       | AK                        |     6 | False
  10 |   1 | AL                       | AL                        |    11 | False
  12 |   3 | AL                       | AL                        |     6 | False
  13 |   1 | ALA                      | AL                        |    11 | False
  15 |   3 | ALA                      | AL                        |     6 | False
  16 |   1 | ALABAMA                  | AL                        |    11 | False
  18 |   1 | ALASKA                   | AK                        |    11 | False
  22 |   1 | AR                       | AR                        |    11 | False
  24 |   3 | AR                       | AR                        |     6 | False
  25 |   1 | ARIZ                     | AZ                        |    11 | False
  27 |   3 | ARIZ                     | AZ                        |     6 | False
  28 |   1 | ARIZONA                  | AZ                        |    11 | False
  30 |   1 | ARK                      | AR                        |    11 | False
  32 |   3 | ARK                      | AR                        |     6 | False
  33 |   1 | ARKANSAS                 | AR                        |    11 | False
  35 |   1 | AZ                       | AZ                        |    11 | False
  37 |   3 | AZ                       | AZ                        |     6 | False
  46 |   1 | CA                       | CA                        |    11 | False
  48 |   3 | CA                       | CA                        |     6 | False
  51 |   1 | CALIF                    | CA                        |    11 | False
  53 |   3 | CALIF                    | CA                        |     6 | False
  54 |   1 | CALIFORNIA               | CA                        |    11 | False
  58 |   1 | CO                       | CO                        |    11 | False
  60 |   3 | CO                       | CO                        |     6 | False
  63 |   1 | COLORADO                 | CO                        |    11 | False
  65 |   1 | CONN                     | CT                        |    11 | False
  67 |   3 | CONN                     | CT                        |     6 | False
  68 |   1 | CONNECTICUT              | CT                        |    11 | False
  70 |   1 | CT                       | CT                        |    11 | False
  72 |   3 | CT                       | CT                        |     6 | False
  73 |   1 | DC                       | DC                        |    11 | False
  75 |   3 | DC                       | DC                        |     6 | False
  76 |   1 | DE                       | DE                        |    11 | False
  78 |   1 | DEL                      | DE                        |    11 | False
  80 |   3 | DEL                      | DE                        |     6 | False
  81 |   1 | DELAWARE                 | DE                        |    11 | False
  83 |   1 | DC                       | DC                        |    11 | False
  86 |   1 | FL                       | FL                        |    11 | False
  88 |   3 | FL                       | FL                        |     6 | False
  89 |   1 | FLA                      | FL                        |    11 | False
  91 |   3 | FLA                      | FL                        |     6 | False
  92 |   1 | FLORIDA                  | FL                        |    11 | False
  95 |   1 | GA                       | GA                        |    11 | False
  97 |   3 | GA                       | GA                        |     6 | False
  98 |   1 | GEORGIA                  | GA                        |    11 | False
 100 |   1 | HAWAII                   | HI                        |    11 | False
 102 |   1 | HI                       | HI                        |    11 | False
 104 |   3 | HI                       | HI                        |     6 | False
 105 |   1 | IA                       | IA                        |    11 | False
 107 |   3 | IA                       | IA                        |     6 | False
 108 |   1 | ID                       | ID                        |    11 | False
 110 |   3 | ID                       | ID                        |     6 | False
 111 |   1 | IDAHO                    | ID                        |    11 | False
 113 |   1 | IL                       | IL                        |    11 | False
 115 |   3 | IL                       | IL                        |     6 | False
 118 |   1 | ILL                      | IL                        |    11 | False
 120 |   3 | ILL                      | IL                        |     6 | False
 121 |   1 | ILLINOIS                 | IL                        |    11 | False
 123 |   1 | IN                       | IN                        |    11 | False
 125 |   3 | IN                       | IN                        |     6 | False
 126 |   1 | IND                      | IN                        |    11 | False
 128 |   2 | IND                      | IN                        |     6 | False
 129 |   1 | INDIANA                  | IN                        |    11 | False
 131 |   1 | IOWA                     | IA                        |    11 | False
 133 |   1 | KANSAS                   | KS                        |    11 | False
 135 |   1 | KENT                     | KY                        |    11 | False
 137 |   3 | KENT                     | KY                        |     6 | False
 138 |   1 | KENTUCKY                 | KY                        |    11 | False
 140 |   1 | KS                       | KS                        |    11 | False
 142 |   3 | KS                       | KS                        |     6 | False
 143 |   1 | KY                       | KY                        |    11 | False
 145 |   3 | KY                       | KY                        |     6 | False
 146 |   1 | LA                       | LA                        |    11 | False
 148 |   3 | LA                       | LA                        |     6 | False
 151 |   1 | LOUISIANA                | LA                        |    11 | False
 153 |   1 | MA                       | MA                        |    11 | False
 155 |   3 | MA                       | MA                        |     6 | False
 157 |   1 | MAINE                    | ME                        |    11 | False
 161 |   1 | MARYLAND                 | MD                        |    11 | False
 163 |   1 | MASS                     | MA                        |    11 | False
 165 |   3 | MASS                     | MA                        |     6 | False
 166 |   1 | MASSACHUSETTS            | MA                        |    11 | False
 171 |   1 | MD                       | MD                        |    11 | False
 173 |   3 | MD                       | MD                        |     6 | False
 174 |   1 | ME                       | ME                        |    11 | False
 176 |   3 | ME                       | ME                        |     6 | False
 177 |   1 | MI                       | MI                        |    11 | False
 179 |   3 | MI                       | MI                        |     6 | False
 180 |   1 | MICH                     | MI                        |    11 | False
 182 |   3 | MICH                     | MI                        |     6 | False
 183 |   1 | MICHIGAN                 | MI                        |    11 | False
 185 |   1 | MINN                     | MN                        |    11 | False
 187 |   3 | MINN                     | MN                        |     6 | False
 188 |   1 | MINNESOTA                | MN                        |    11 | False
 190 |   1 | MISSISSIPPI              | MS                        |    11 | False
 192 |   1 | MISSOURI                 | MO                        |    11 | False
 194 |   1 | MN                       | MN                        |    11 | False
 196 |   3 | MN                       | MN                        |     6 | False
 197 |   1 | MO                       | MO                        |    11 | False
 199 |   3 | MO                       | MO                        |     6 | False
 200 |   1 | MONT                     | MT                        |    11 | False
 202 |   3 | MONT                     | MT                        |     6 | False
 203 |   1 | MONTANA                  | MT                        |    11 | False
 205 |   1 | MT                       | MT                        |    11 | False
 207 |   3 | MT                       | MT                        |     6 | False
 208 |   1 | MS                       | MS                        |    11 | False
 210 |   3 | MS                       | MS                        |     6 | False
 211 |   1 | N CAROLINA               | NC                        |    11 | False
 213 |   1 | N DAKOTA                 | ND                        |    11 | False
 218 |   1 | NC                       | NC                        |    11 | False
 220 |   3 | NC                       | NC                        |     6 | False
 221 |   1 | ND                       | ND                        |    11 | False
 223 |   3 | ND                       | ND                        |     6 | False
 226 |   3 | NE                       | NE                        |     6 | False
 227 |   1 | NEB                      | NE                        |    11 | False
 229 |   3 | NEB                      | NE                        |     6 | False
 230 |   1 | NEBRASKA                 | NE                        |    11 | False
 232 |   1 | NEV                      | NV                        |    11 | False
 234 |   3 | NEV                      | NV                        |     6 | False
 235 |   1 | NEVADA                   | NV                        |    11 | False
 239 |   1 | NEW HAMPSHIRE            | NH                        |    11 | False
 241 |   1 | NEW JERSEY               | NJ                        |    11 | False
 243 |   1 | NEW MEXICO               | NM                        |    11 | False
 245 |   1 | NEW YORK                 | NY                        |    11 | False
 252 |   1 | NH                       | NH                        |    11 | False
 254 |   3 | NH                       | NH                        |     6 | False
 255 |   1 | NJ                       | NJ                        |    11 | False
 257 |   3 | NJ                       | NJ                        |     6 | False
 261 |   1 | NM                       | NM                        |    11 | False
 263 |   3 | NM                       | NM                        |     6 | False
 264 |   1 | NORTH CAROLINA           | NC                        |    11 | False
 266 |   1 | NORTH DAKOTA             | ND                        |    11 | False
 288 |   1 | NV                       | NV                        |    11 | False
 290 |   3 | NV                       | NV                        |     6 | False
 291 |   1 | NY                       | NY                        |    11 | False
 293 |   3 | NY                       | NY                        |     6 | False
 294 |   1 | OH                       | OH                        |    11 | False
 296 |   3 | OH                       | OH                        |     6 | False
 297 |   1 | OHIO                     | OH                        |    11 | False
 299 |   1 | OK                       | OK                        |    11 | False
 301 |   3 | OK                       | OK                        |     6 | False
 302 |   1 | OKLA                     | OK                        |    11 | False
 304 |   3 | OKLA                     | OK                        |     6 | False
 305 |   1 | OKLAHOMA                 | OK                        |    11 | False
 315 |   1 | OR                       | OR                        |    11 | False
 317 |   3 | OR                       | OR                        |     6 | False
 318 |   1 | ORE                      | OR                        |    11 | False
 320 |   3 | ORE                      | OR                        |     6 | False
 321 |   1 | OREGON                   | OR                        |    11 | False
 323 |   1 | PA                       | PA                        |    11 | False
 325 |   3 | PA                       | PA                        |     6 | False
 332 |   1 | PENN                     | PA                        |    11 | False
 334 |   3 | PENN                     | PA                        |     6 | False
 335 |   1 | PENNA                    | PA                        |    11 | False
 337 |   3 | PENNA                    | PA                        |     6 | False
 338 |   1 | PENNSYLVANIA             | PA                        |    11 | False
 343 |   1 | PR                       | PR                        |    11 | False
 345 |   3 | PR                       | PR                        |     6 | False
 348 |   1 | PUERTO RICO              | PR                        |    11 | False
 355 |   1 | RHODE ISLAND             | RI                        |    11 | False
 357 |   1 | RI                       | RI                        |    11 | False
 359 |   3 | RI                       | RI                        |     6 | False
 360 |   1 | S CAROLINA               | SC                        |    11 | False
 362 |   1 | S DAKOTA                 | SD                        |    11 | False
 368 |   1 | SC                       | SC                        |    11 | False
 370 |   3 | SC                       | SC                        |     6 | False
 371 |   1 | SD                       | SD                        |    11 | False
 373 |   3 | SD                       | SD                        |     6 | False
 377 |   1 | SOUTH CAROLINA           | SC                        |    11 | False
 379 |   1 | SOUTH DAKOTA             | SD                        |    11 | False
 381 |   1 | TENN                     | TN                        |    11 | False
 383 |   3 | TENN                     | TN                        |     6 | False
 384 |   1 | TENNESSEE                | TN                        |    11 | False
 390 |   1 | TEX                      | TX                        |    11 | False
 392 |   3 | TEX                      | TX                        |     6 | False
 393 |   1 | TEXAS                    | TX                        |    11 | False
 395 |   1 | TN                       | TN                        |    11 | False
 397 |   3 | TN                       | TN                        |     6 | False
 398 |   1 | TX                       | TX                        |    11 | False
 400 |   3 | TX                       | TX                        |     6 | False
 408 |   1 | UT                       | UT                        |    11 | False
 410 |   3 | UT                       | UT                        |     6 | False
 411 |   1 | UTAH                     | UT                        |    11 | False
 413 |   1 | VA                       | VA                        |    11 | False
 415 |   3 | VA                       | VA                        |     6 | False
 416 |   1 | VERMONT                  | VT                        |    11 | False
 418 |   1 | VIRGINIA                 | VA                        |    11 | False
 420 |   1 | VT                       | VT                        |    11 | False
 422 |   3 | VT                       | VT                        |     6 | False
 423 |   1 | W VIRGINIA               | WV                        |    11 | False
 425 |   1 | WA                       | WA                        |    11 | False
 427 |   3 | WA                       | WA                        |     6 | False
 428 |   1 | WASH                     | WA                        |    11 | False
 430 |   3 | WASH                     | WA                        |     6 | False
 431 |   1 | WASHINGTON               | WA                        |    11 | False
 433 |   1 | WEST VIRGINIA            | WV                        |    11 | False
 435 |   1 | WI                       | WI                        |    11 | False
 437 |   3 | WI                       | WI                        |     6 | False
 438 |   1 | WISC                     | WI                        |    11 | False
 440 |   3 | WISC                     | WI                        |     6 | False
 441 |   1 | WISCONSIN                | WI                        |    11 | False
 443 |   1 | WV                       | WV                        |    11 | False
 445 |   3 | WV                       | WV                        |     6 | False
 446 |   1 | WY                       | WY                        |    11 | False
 448 |   3 | WY                       | WY                        |     6 | False
 449 |   1 | WYOMING                  | WY                        |    11 | False
 835 |   1 | ST LOUIS                 | SAINT LOUIS               |     7 | False
(835 rows)
```



## Pagc Lex


```sql
SELECT * FROM pagc_lex;
```

```sql
   id | seq | word                     | stdword                  | token | is_custom
------+-----+--------------------------+--------------------------+-------+-----------
 2934 |   1 | BAY STATE                | BAY STATE                |     5 | False
 2389 |   2 | STAT                     | STA                      |    24 | False
 2382 |   2 | STA                      | STA                      |    24 | False
 2403 |   2 | STATION                  | STA                      |    24 | False
 2407 |   2 | STATN                    | STA                      |    24 | False
 2394 |   1 | STATE HIGHWAY            | STATE HWY                |     6 | False
 2368 |   1 | ST HIGHWAY               | STATE HWY                |     6 | False
 2393 |   1 | STATE HI                 | STATE HWY                |     6 | False
 2369 |   1 | ST HWY                   | STATE HWY                |     6 | False
 2414 |   1 | STHWY                    | STATE HWY                |     6 | False
 2415 |   1 | STHY                     | STATE HWY                |     6 | False
 2367 |   1 | ST HI                    | STATE HWY                |     6 | False
 2413 |   1 | STHW                     | STATE HWY                |     6 | False
 2370 |   1 | ST HY                    | STATE HWY                |     6 | False
 2396 |   1 | STATE HY                 | STATE HWY                |     6 | False
 2373 |   1 | ST RD                    | STATE RD                 |     6 | False
  212 |   2 | AND                      | AND                      |     1 | False
 2395 |   1 | STATE HWY                | STATE HWY                |     6 | False
  413 |   2 | BYP                      | BYP                      |     2 | False
 2397 |   1 | STATE RD                 | STATE RD                 |     6 | False
 2374 |   1 | ST ROAD                  | STATE RD                 |     6 | False
 1561 |   2 | MANORS                   | MANOR                    |     1 | False
 2398 |   1 | STATE ROAD               | STATE RD                 |     6 | False
 2377 |   1 | ST RT                    | STATE RTE                |     6 | False
 1937 |   1 | PR ROUTE                 | STATE RTE                |     6 | False
 2399 |   1 | STATE ROUTE              | STATE RTE                |     6 | False
 2375 |   1 | ST ROUTE                 | STATE RTE                |     6 | False
 2401 |   1 | STATE RTE                | STATE RTE                |     6 | False
 2400 |   1 | STATE RT                 | STATE RTE                |     6 | False
 2379 |   1 | ST RTE                   | STATE RTE                |     6 | False
 2493 |   1 | TERR                     | TER                      |     2 | False
 2488 |   1 | TER                      | TER                      |     2 | False
 2555 |   1 | THRUWAY                  | TRWY                     |     2 | False
 2556 |   1 | THWY                     | TRWY                     |     2 | False
 2554 |   1 | THROUGHWAY               | TRWY                     |     2 | False
 2599 |   2 | TPK                      | TPKE                     |     6 | False
 2683 |   2 | TURNPK                   | TPKE                     |     6 | False
 2681 |   2 | TURNPIKE                 | TPKE                     |     6 | False
 2601 |   2 | TPKE                     | TPKE                     |     6 | False
 2679 |   2 | TURN                     | TPKE                     |     6 | False
 2496 |   1 | TFWY                     | TRFY                     |     2 | False
 2616 |   1 | TRAIL                    | TRL                      |     2 | False
 2631 |   1 | TRAILS                   | TRL                      |     2 | False
 2559 |   1 | TL                       | TRL                      |     2 | False
 2674 |   1 | TUNEL                    | TUNL                     |     2 | False
 2675 |   1 | TUNL                     | TUNL                     |     2 | False
 2673 |   1 | TUN                      | TUNL                     |     2 | False
 2676 |   1 | TUNNEL                   | TUNL                     |     2 | False
 2569 |   1 | TNPKE                    | TPKE                     |     2 | False
 2568 |   1 | TNPK                     | TPKE                     |     2 | False
 2682 |   1 | TURNPK                   | TPKE                     |     2 | False
 2680 |   1 | TURNPIKE                 | TPKE                     |     2 | False
 2678 |   1 | TURN                     | TPKE                     |     2 | False
 2665 |   1 | TRNPK                    | TPKE                     |     2 | False
 2600 |   1 | TPKE                     | TPKE                     |     2 | False
 2598 |   1 | TPK                      | TPKE                     |     2 | False
 2768 |   1 | U S HY                   | US HWY                   |     6 | False
 2782 |   1 | UNITED STATES HWY        | US HWY                   |     6 | False
 2764 |   1 | U S HGWY                 | US HWY                   |     6 | False
 2765 |   1 | U S HIGHWAY              | US HWY                   |     6 | False
 2781 |   1 | UNITED STATES HIGHWAY    | US HWY                   |     6 | False
 2807 |   1 | US HGWY                  | US HWY                   |     6 | False
 2808 |   1 | US HIGHWAY               | US HWY                   |     6 | False
 2809 |   1 | US HIWAY                 | US HWY                   |     6 | False
 2810 |   1 | US HWY                   | US HWY                   |     6 | False
 2811 |   1 | US HY                    | US HWY                   |     6 | False
 2819 |   1 | USHW                     | US HWY                   |     6 | False
 2820 |   1 | USHWY                    | US HWY                   |     6 | False
 2821 |   1 | USHY                     | US HWY                   |     6 | False
 2824 |   1 | USRT                     | US RTE                   |     6 | False
 2825 |   1 | USRTE                    | US RTE                   |     6 | False
 2816 |   1 | US RTE                   | US RTE                   |     6 | False
 2814 |   1 | US ROUTE                 | US RTE                   |     6 | False
 2770 |   1 | U S RT                   | US RTE                   |     6 | False
 2805 |   1 | US                       | US RTE                   |     6 | False
 2815 |   1 | US RT                    | US RTE                   |     6 | False
 2763 |   1 | U S                      | US RTE                   |     6 | False
 2769 |   1 | U S ROUTE                | US RTE                   |     6 | False
 2771 |   1 | U S RTE                  | US RTE                   |     6 | False
 2823 |   1 | USROUTE                  | US RTE                   |     6 | False
 2878 |   2 | VW                       | VW                       |     2 | False
 2869 |   1 | VLGE                     | VLG                      |     2 | False
 2866 |   1 | VLG                      | VLG                      |     2 | False
 2865 |   2 | VL                       | VLG                      |     2 | False
 2855 |   1 | VILLIAGE                 | VLG                      |     2 | False
 2854 |   1 | VILLGE                   | VLG                      |     2 | False
 2851 |   1 | VILLG                    | VLG                      |     2 | False
 2846 |   1 | VILLAGE                  | VLG                      |     2 | False
 2843 |   1 | VILLAG                   | VLG                      |     2 | False
 2861 |   2 | VISTA                    | VIS                      |     2 | False
 2859 |   2 | VIS                      | VIS                      |     2 | False
 2856 |   2 | VILLIAGE                 | VLG                      |    24 | False
 2838 |   2 | VILL                     | VLG                      |    24 | False
 2847 |   2 | VILLAGE                  | VLG                      |    24 | False
 2844 |   2 | VILLAG                   | VLG                      |    24 | False
 2870 |   2 | VLGE                     | VLG                      |    24 | False
 2852 |   2 | VILLG                    | VLG                      |    24 | False
 2867 |   2 | VLG                      | VLG                      |    24 | False
 2881 |   1 | WALK                     | WALK                     |     2 | False
 2903 |   1 | WK                       | WALK                     |     2 | False
 2884 |   1 | WALL                     | WALL                     |     2 | False
 2914 |   1 | WY                       | WAY                      |     2 | False
 2915 |   4 | WY                       | WAY                      |     6 | False
 2888 |   1 | WAY                      | WAY                      |     2 | False
  691 |   2 | CROSSING                 | XING                     |    24 | False
 2918 |   2 | XING                     | XING                     |    24 | False
  692 |   1 | CROSSINGS                | XING                     |    24 | False
  701 |   1 | CRSGS                    | XING                     |    24 | False
  704 |   2 | CRSSNG                   | XING                     |    24 | False
  700 |   2 | CRSG                     | XING                     |    24 | False
  688 |   1 | CROSS ROAD               | XRD                      |    24 | False
 1762 |   1 | NORTH                    | N                        |    22 | False
 1764 |   1 | NORTH EAST               | NE                       |    22 | False
 1766 |   1 | NORTH WEST               | NW                       |    22 | False
 1769 |   1 | NORTHEAST                | NE                       |    22 | False
 1771 |   1 | NTH                      | N                        |    22 | False
 1774 |   1 | NW                       | NW                       |    22 | False
 2931 |   1 | SERVICE DR               | SVC DR                   |     2 | False
 2932 |   1 | SERVICE DRIVE            | SVC DR                   |     2 | False
 2933 |   1 | SVC DR                   | SVC DR                   |     2 | False
 2392 |   2 | STATE                    | STATE RD                 |     6 | False
   59 |   1 | 20MI                     | TWENTY MILE              |     1 | False
   60 |   1 | 21ST                     | 21                       |     1 | False
   61 |   2 | 21ST                     | 21ST                     |    15 | False
   62 |   1 | 22ND                     | 22                       |     1 | False
   63 |   2 | 22ND                     | 22ND                     |    15 | False
   64 |   1 | 23 MI                    | TWENTY THREE MILE        |     1 | False
   65 |   1 | 23 MILE                  | TWENTY THREE MILE        |     1 | False
   66 |   1 | 23MI                     | TWENTY THREE MILE        |     1 | False
   67 |   1 | 23RD                     | 23                       |     1 | False
   68 |   2 | 23RD                     | 23RD                     |    15 | False
   69 |   1 | 2MI                      | TWO MILE                 |     1 | False
 2767 |   1 | U S HWY                  | US HWY                   |     6 | False
   70 |   1 | 3 / 4                    | 3/4                      |    25 | False
   71 |   1 | 3 / 8                    | 3/8                      |    25 | False
   72 |   1 | 3 MI                     | THREE MILE               |     1 | False
   73 |   1 | 3 MILE                   | THREE MILE               |     1 | False
   75 |   1 | 3/8                      | 3/8                      |    25 | False
   76 |   1 | 31ST                     | 31                       |     1 | False
   77 |   2 | 31ST                     | 31ST                     |    15 | False
   78 |   1 | 33RD                     | 33                       |     1 | False
   79 |   2 | 33RD                     | 33RD                     |    15 | False
   80 |   1 | 3MI                      | THREE MILE               |     1 | False
   81 |   1 | 3RD                      | 3                        |     1 | False
   82 |   2 | 3RD                      | 3RD                      |    15 | False
   83 |   1 | 4 CO                     | FOUR CORNERS             |     1 | False
   84 |   1 | 4 CORNERS                | FOUR CORNERS             |     1 | False
   85 |   1 | 4 FG                     | FOUR FLAGS               |     1 | False
   86 |   1 | 4 FLAGS                  | FOUR FLAGS               |     1 | False
   87 |   1 | 4 MI                     | FOUR MILE                |     1 | False
   88 |   1 | 4 MILE                   | FOUR MILE                |     1 | False
   89 |   1 | 4 SEASONS                | FOUR SEASONS             |     1 | False
   90 |   1 | 4 SN                     | FOUR SEASONS             |     1 | False
   91 |   1 | 41ST                     | 41                       |     1 | False
   92 |   2 | 41ST                     | 41ST                     |    15 | False
   93 |   1 | 43RD                     | 43                       |     1 | False
   94 |   2 | 43RD                     | 43RD                     |    15 | False
   95 |   1 | 4MI                      | FOUR MILE                |     1 | False
   96 |   1 | 4WD                      | FOUR WHEEL DRIVE TRAIL   |     2 | False
   97 |   1 | 4WD TRAIL                | FOUR WHEEL DRIVE TRAIL   |     2 | False
   98 |   1 | 4WD TRL                  | FOUR WHEEL DRIVE TRAIL   |     2 | False
   99 |   1 | 5 CEDARS                 | FIVE CEDARS              |     1 | False
  100 |   1 | 5 CO                     | FIVE CORNERS             |     1 | False
  101 |   1 | 5 CORNERS                | FIVE CORNERS             |     1 | False
  102 |   1 | 5 MI                     | FIVE MILE                |     1 | False
  103 |   1 | 5 MILE                   | FIVE MILE                |     1 | False
  104 |   1 | 5 POINTS                 | FIVE POINTS              |     1 | False
  105 |   1 | 5 PT                     | FIVE POINTS              |     1 | False
  106 |   1 | 5 TO                     | FIVE TOWN                |     1 | False
  107 |   1 | 51ST                     | 51                       |     1 | False
  108 |   2 | 51ST                     | 51                       |    15 | False
  109 |   1 | 53RD                     | 53                       |     1 | False
  110 |   2 | 53RD                     | 53RD                     |    15 | False
  111 |   1 | 5MI                      | FIVE MILE                |     1 | False
  112 |   1 | 6 FG                     | SIX FLAGS                |     1 | False
  113 |   1 | 6 FLAGS                  | SIX FLAGS                |     1 | False
  114 |   1 | 6 MI                     | SIX MILE                 |     1 | False
  115 |   1 | 6 MILE                   | SIX MILE                 |     1 | False
  116 |   1 | 61ST                     | 61                       |     1 | False
  117 |   2 | 61ST                     | 61ST                     |    15 | False
  118 |   1 | 63RD                     | 63                       |     1 | False
  119 |   2 | 63RD                     | 63RD                     |    15 | False
  120 |   1 | 6MI                      | SIX MILE                 |     1 | False
  121 |   1 | 7 CO                     | SEVEN CORNERS            |     1 | False
  122 |   2 | 7 CO                     | SEVEN CORNERS            |    24 | False
  123 |   1 | 7 CORNERS                | SEVEN CORNERS            |     1 | False
  124 |   2 | 7 CORNERS                | SEVEN CORNERS            |    24 | False
  125 |   1 | 7 MI                     | SEVEN MILE               |     1 | False
  126 |   1 | 7 MILE                   | SEVEN MILE               |     1 | False
  127 |   1 | 71ST                     | 71                       |     1 | False
  128 |   2 | 71ST                     | 71ST                     |    15 | False
  129 |   1 | 73RD                     | 73                       |     1 | False
  130 |   2 | 73RD                     | 73RD                     |    15 | False
  131 |   1 | 7MI                      | SEVEN MILE               |     1 | False
  132 |   1 | 8 MI                     | EIGHT MILE               |     1 | False
  133 |   1 | 8 MILE                   | EIGHT MILE               |     1 | False
  134 |   1 | 81ST                     | 81                       |     1 | False
  135 |   2 | 81ST                     | 81ST                     |    15 | False
  136 |   1 | 83RD                     | 83                       |     1 | False
  137 |   2 | 83RD                     | 83RD                     |    15 | False
  138 |   1 | 8MI                      | EIGHT MILE               |     1 | False
  139 |   1 | 9 MI                     | NINE MILE                |     1 | False
  140 |   1 | 9 MILE                   | NINE MILE                |     1 | False
  141 |   1 | 91ST                     | 91                       |     1 | False
  142 |   2 | 91ST                     | 91ST                     |    15 | False
  143 |   1 | 93RD                     | 93                       |     1 | False
  144 |   2 | 93RD                     | 93RD                     |    15 | False
  145 |   1 | 9MI                      | NINE MILE                |     1 | False
  146 |   1 | A                        | A                        |    18 | False
  148 |   1 | A F B                    | AIR FORCE BASE           |     1 | False
  149 |   2 | A F B                    | AIR FORCE BASE           |    24 | False
  150 |   1 | A F S                    | AIR FORCE BASE           |     1 | False
  151 |   2 | A F S                    | AIR FORCE BASE           |    24 | False
  152 |   1 | A LA DERECHA             | A LA DERECHA             |    16 | False
  153 |   4 | AB                       | ABBEY                    |     2 | False
  154 |   1 | ABBEY                    | ABBEY                    |     1 | False
  155 |   2 | ABBEY                    | ABBEY                    |     2 | False
  156 |   1 | AC                       | ACRES                    |     2 | False
  157 |   1 | ACAD                     | ACADEMY                  |     1 | False
  158 |   1 | ACADE                    | ACADEMIA                 |     1 | False
  159 |   1 | ACADEMIA                 | ACADEMIA                 |     1 | False
  160 |   1 | ACADEMY                  | ACADEMY                  |     1 | False
  161 |   1 | ACCESS                   | ACCESS                   |     2 | False
  162 |   1 | ACR                      | ACRES                    |     1 | False
  163 |   2 | ACR                      | ACRES                    |     2 | False
  164 |   3 | ACR                      | ACRES                    |    24 | False
  165 |   1 | ACRES                    | ACRES                    |     1 | False
  166 |   2 | ACRES                    | ACRES                    |     2 | False
   74 |   1 | 3/4                      | 3/4                      |    25 | False
  167 |   3 | ACRES                    | ACRES                    |    24 | False
  168 |   1 | ACRS                     | ACRES                    |     1 | False
  169 |   2 | ACRS                     | ACRES                    |     2 | False
  170 |   3 | ACRS                     | ACRES                    |    24 | False
  171 |   1 | ACUE                     | ACUEDUCTO                |     1 | False
  172 |   1 | ACUED                    | ACUEDUCTO                |     1 | False
  173 |   1 | ACUEDUCTO                | ACUEDUCTO                |     1 | False
  174 |   1 | AEROPUERTO               | AEROPUERTO               |     1 | False
  175 |   2 | AEROPUERTO               | AEROPUERTO               |    24 | False
  176 |   1 | AFB                      | AIR FORCE BASE           |     1 | False
  177 |   2 | AFB                      | AIR FORCE BASE           |    24 | False
  178 |   1 | AFLD                     | AIRPORT                  |    24 | False
  179 |   1 | AFS                      | AIR FORCE BASE           |     1 | False
  180 |   2 | AFS                      | AIR FORCE BASE           |    24 | False
  181 |   1 | AIR FORCE BASE           | AIR FORCE BASE           |     1 | False
  182 |   2 | AIR FORCE BASE           | AIR FORCE BASE           |    24 | False
  183 |   1 | AIR FORCE STATION        | AIR FORCE BASE           |     1 | False
  184 |   2 | AIR FORCE STATION        | AIR FORCE BASE           |    24 | False
  185 |   1 | AIRFIELD                 | AIRPORT                  |     1 | False
  186 |   2 | AIRFIELD                 | AIRPORT                  |    24 | False
  187 |   1 | AIRPARK                  | AIRPORT                  |     1 | False
  188 |   2 | AIRPARK                  | AIRPORT                  |    24 | False
  189 |   1 | AIRPORT                  | AIRPORT                  |     1 | False
  190 |   2 | AIRPORT                  | AIRPORT                  |    24 | False
  191 |   1 | AIRSTRIP                 | AIRPORT                  |     1 | False
  192 |   2 | AIRSTRIP                 | AIRPORT                  |    24 | False
  193 |   1 | AIRSTRP                  | AIRPORT                  |     1 | False
  194 |   2 | AIRSTRP                  | AIRPORT                  |    24 | False
  198 |   1 | ALC                      | ALCOVE                   |     2 | False
  199 |   1 | ALD                      | A LA DERECHA             |    16 | False
  202 |   2 | ALLEY                    | ALLEY                    |     1 | False
  204 |   1 | ALT                      | ALTERNATE                |     3 | False
  205 |   1 | ALTERNATE                | ALTERNATE                |     3 | False
  206 |   1 | ALTO                     | ALTO                     |     1 | False
  207 |   2 | ALTO                     | ALTOS                    |    16 | False
  208 |   1 | ALTOS                    | ALTOS                    |    16 | False
  209 |   2 | ALTOS                    | ALTOS                    |     1 | False
  213 |   1 | ANEX                     | ANNEX                    |     1 | False
  215 |   1 | ANNEX                    | ANNEX                    |     1 | False
  217 |   1 | ANNX                     | ANNEX                    |     1 | False
  219 |   1 | ANX                      | ANNEX                    |     1 | False
  221 |   1 | AP                       | APT                      |    16 | False
  222 |   1 | APART                    | APT                      |    16 | False
  223 |   1 | APARTEMENT               | APT                      |    16 | False
 2938 |   1 | APARTMENT                | APARTMENT                |     2 | False
  224 |   1 | APARTMENT                | APT                      |    16 | False
  225 |   1 | APARTMENTS               | APS                      |    24 | False
  226 |   1 | APARTADO                 | BOX                      |    14 | False
  227 |   1 | APO                      | APO                      |    14 | False
  228 |   1 | APP                      | APT                      |    16 | False
  229 |   1 | APPART                   | APT                      |    16 | False
  230 |   1 | APPT                     | APT                      |    16 | False
  231 |   1 | APRK                     | AIRPORT                  |    24 | False
  232 |   1 | APS                      | APS                      |    24 | False
  233 |   1 | APT                      | APT                      |    16 | False
  234 |   1 | APT NO                   | APT                      |    16 | False
  235 |   1 | APTMT                    | APARTMENT                |    16 | False
  236 |   1 | APTS                     | APARTMENTS               |    24 | False
  237 |   1 | AR                       | ARRIERE                  |    17 | False
  242 |   1 | ARPT                     | AIRPORT                  |     1 | False
  243 |   2 | ARPT                     | AIRPORT                  |    24 | False
  244 |   1 | ARPTO                    | AIRPORT                  |     1 | False
  245 |   2 | ARPTO                    | AIRPORT                  |    24 | False
  246 |   1 | ARRIERE                  | ARRIERE                  |    17 | False
  247 |   1 | ARROYO                   | ARROYO                   |     2 | False
  248 |   1 | ARRYO                    | ARROYO                   |     2 | False
  249 |   1 | AT                       | AT                       |     7 | False
  250 |   1 | ATPS                     | AUTOPISTA                |     2 | False
  251 |   1 | ATPTA                    | AUTOPISTA                |     2 | False
  252 |   1 | ATTN                     | ATTENTION                |     1 | False
  253 |   1 | AU                       | AUTOROUTE                |     2 | False
  254 |   2 | AU                       | AU                       |     7 | False
  255 |   1 | AUT                      | AUTOROUTE                |     2 | False
  256 |   1 | AUTO                     | AUTOPISTA                |     2 | False
  257 |   2 | AUTO                     | AUTO                     |     1 | False
  258 |   1 | AUTOPISTA                | AUTOPISTA                |     2 | False
  259 |   1 | AUTOROUTE                | AUTOROUTE                |     2 | False
  261 |   2 | AV                       | AVANT                    |    17 | False
  262 |   1 | AVA                      | AVENIDA                  |     2 | False
  263 |   1 | AVANT                    | AVANT                    |    17 | False
  266 |   1 | AVENIDA                  | AVENIDA                  |     2 | False
  200 |   1 | ALLEE                    | ALY                      |     2 | False
  203 |   1 | ALLY                     | ALY                      |     2 | False
  195 |   1 | AL                       | ALY                      |     2 | False
  201 |   1 | ALLEY                    | ALY                      |     2 | False
  210 |   1 | ALY                      | ALY                      |     2 | False
  238 |   1 | ARC                      | ARC                      |     2 | False
  240 |   1 | ARCADE                   | ARC                      |     2 | False
  260 |   1 | AV                       | AVE                      |     2 | False
  269 |   1 | AVENUES                  | AVENUES                  |     1 | False
  270 |   1 | AVES                     | AVENUES                  |     1 | False
  273 |   1 | AVS                      | AVENUES                  |     1 | False
  274 |   1 | BA                       | BAY                      |     2 | False
  275 |   1 | BAJO                     | BAJOS                    |    16 | False
  276 |   1 | BAJOS                    | BAJOS                    |    16 | False
  277 |   1 | BANK                     | BANK                     |     1 | False
  278 |   1 | BARRIO                   | BOROUGH                  |     1 | False
  279 |   1 | BASEMENT                 | BASEMENT                 |    17 | False
  280 |   1 | BASIN                    | BASIN                    |     1 | False
  281 |   1 | BASN                     | BASIN                    |     1 | False
  282 |   1 | BAY                      | BAY                      |    16 | False
  283 |   2 | BAY                      | BAY                      |     1 | False
  284 |   3 | BAY                      | BAY                      |     2 | False
  285 |   1 | BAYOU                    | BAYOU                    |     1 | False
  286 |   1 | BAZAAR                   | BAZAAR                   |    24 | False
  287 |   1 | BAZR                     | BAZAAR                   |    24 | False
  288 |   1 | BCH                      | BEACH                    |     1 | False
  291 |   1 | BDG                      | BUILDING                 |    24 | False
  292 |   2 | BDG                      | BUILDING                 |    19 | False
  293 |   1 | BDNG                     | BUILDING                 |    24 | False
  294 |   2 | BDNG                     | BUILDING                 |    19 | False
  295 |   1 | BDWY                     | BROADWAY                 |     1 | False
  297 |   1 | BEACH                    | BEACH                    |     1 | False
  299 |   1 | BEND                     | BEND                     |     1 | False
  301 |   1 | BETWEEN                  | BETWEEN                  |     1 | False
  302 |   1 | BG                       | BURG                     |     1 | False
  305 |   1 | BLD                      | BUILDING                 |    24 | False
  306 |   2 | BLD                      | BUILDING                 |    19 | False
  307 |   1 | BLDG                     | BUILDING                 |    24 | False
  308 |   2 | BLDG                     | BUILDING                 |    19 | False
  309 |   1 | BLDING                   | BUILDING                 |    24 | False
  310 |   2 | BLDING                   | BUILDING                 |    19 | False
  311 |   1 | BLDNG                    | BUILDING                 |    24 | False
  312 |   2 | BLDNG                    | BUILDING                 |    19 | False
  313 |   1 | BLF                      | BLUFF                    |     1 | False
  315 |   1 | BLG                      | BUILDING                 |    24 | False
  316 |   2 | BLG                      | BUILDING                 |    19 | False
  317 |   1 | BLUF                     | BLUFF                    |     1 | False
  318 |   1 | BLUFF                    | BLUFF                    |     1 | False
  322 |   1 | BLVR                     | BULEVAR                  |     2 | False
  323 |   1 | BND                      | BEND                     |     1 | False
  325 |   1 | BNK                      | BANK                     |     1 | False
  326 |   1 | BO                       | BOROUGH                  |     1 | False
  327 |   2 | BO                       | BOURG                    |     2 | False
  328 |   1 | BOITE                    | BOITE                    |    14 | False
  329 |   1 | BOITE POSTALE            | BOITE POSTALE            |    14 | False
  330 |   1 | BORO                     | BOROUGH                  |     1 | False
  331 |   1 | BOROUGH                  | BOROUGH                  |     1 | False
  333 |   2 | BOT                      | BOTTOM                   |     1 | False
  335 |   2 | BOTTM                    | BOTTOM                   |     1 | False
  337 |   2 | BOTTOM                   | BOTTOM                   |     1 | False
  341 |   1 | BOURG                    | BOURG                    |     2 | False
  342 |   1 | BOX                      | BOX                      |    14 | False
  343 |   1 | BOX NO                   | BOX                      |    14 | False
  346 |   3 | BP                       | BOITE POSTALE            |    14 | False
  347 |   1 | BR                       | BRANCH                   |     1 | False
  348 |   1 | BRANCH                   | BRANCH                   |     1 | False
  349 |   1 | BRDG                     | BRIDGE                   |     1 | False
  350 |   1 | BRDGE                    | BRIDGE                   |     1 | False
  351 |   1 | BRDWY                    | BROADWAY                 |     1 | False
  352 |   1 | BRG                      | BRIDGE                   |     1 | False
  354 |   1 | BRIDGE                   | BRIDGE                   |     1 | False
  355 |   1 | BRIDGES                  | BRIDGE                   |     1 | False
  356 |   1 | BRK                      | BROOK                    |     1 | False
  357 |   1 | BROADWAY                 | BROADWAY                 |     1 | False
  358 |   1 | BROOK                    | BROOK                    |     1 | False
  359 |   1 | BRWY                     | BROADWAY                 |     1 | False
  360 |   1 | BSMNT                    | BASEMENT                 |    17 | False
  361 |   1 | BSMT                     | BASEMENT                 |    17 | False
  362 |   1 | BSPK                     | BUSINESS PARK            |    24 | False
  405 |   1 | BV                       | BLVD                     |     2 | False
  363 |   1 | BSRT                     | BUSINESS ROUTE           |     6 | False
  364 |   1 | BSRTE                    | BUSINESS ROUTE           |     6 | False
  365 |   1 | BST                      | BASEMENT                 |    17 | False
  366 |   1 | BTM                      | BOTTOM                   |     1 | False
  367 |   1 | BTWN                     | BETWEEN                  |     1 | False
  368 |   1 | BUENA VISTA              | BUENA VISTA              |     1 | False
  369 |   1 | BUILD                    | BUILDING                 |    24 | False
  370 |   2 | BUILD                    | BUILDING                 |    19 | False
  371 |   1 | BUILDING                 | BUILDING                 |    24 | False
  372 |   2 | BUILDING                 | BUILDING                 |    19 | False
  373 |   1 | BUILDING NUMBER          | #                        |    19 | False
  374 |   1 | BUILDNG                  | BUILDING                 |    24 | False
  375 |   2 | BUILDNG                  | BUILDING                 |    19 | False
  376 |   1 | BULDNG                   | BUILDING                 |    24 | False
  377 |   2 | BULDNG                   | BUILDING                 |    19 | False
  378 |   1 | BULEVAR                  | BULEVAR                  |     2 | False
  379 |   1 | BUR                      | BUREAU                   |    17 | False
  380 |   1 | BUREAU                   | BUREAU                   |    16 | False
  381 |   2 | BUREAU                   | BUREAU                   |     1 | False
  382 |   3 | BUREAU                   | BUREAU                   |    17 | False
  383 |   1 | BURG                     | BURG                     |     1 | False
  384 |   1 | BUS                      | BUSINESS                 |     3 | False
  385 |   1 | BUS CENTER               | BUSINESS PARK            |    24 | False
  386 |   1 | BUS CENTR                | BUSINESS PARK            |    24 | False
  387 |   1 | BUS CTR                  | BUSINESS PARK            |    24 | False
  388 |   1 | BUS PARK                 | BUSINESS PARK            |    24 | False
  389 |   1 | BUS PK                   | BUSINESS PARK            |    24 | False
  390 |   1 | BUSCENTER                | BUSINESS PARK            |    24 | False
  391 |   1 | BUSCENTR                 | BUSINESS PARK            |    24 | False
  392 |   1 | BUSCTR                   | BUSINESS PARK            |    24 | False
  393 |   1 | BUSINESS                 | BUSINESS                 |     3 | False
  394 |   2 | BUSINESS                 | BUSINESS                 |     1 | False
  395 |   1 | BUSINESS CENTER          | BUSINESS PARK            |    24 | False
  396 |   1 | BUSINESS CENTR           | BUSINESS PARK            |    24 | False
  397 |   1 | BUSINESS CTR             | BUSINESS PARK            |    24 | False
  398 |   1 | BUSINESS PARK            | BUSINESS PARK            |    24 | False
  271 |   1 | AVN                      | AVE                      |     2 | False
  272 |   1 | AVNUE                    | AVE                      |     2 | False
  267 |   1 | AVENU                    | AVE                      |     2 | False
  268 |   1 | AVENUE                   | AVE                      |     2 | False
  399 |   1 | BUSINESS PK              | BUSINESS PARK            |    24 | False
  400 |   1 | BUSPARK                  | BUSINESS PARK            |    24 | False
  401 |   1 | BUSPK                    | BUSINESS PARK            |    24 | False
  402 |   1 | BUSROUTE                 | BUSINESS ROUTE           |     6 | False
  403 |   1 | BUSRT                    | BUSINESS ROUTE           |     6 | False
  404 |   1 | BUSRTE                   | BUSINESS ROUTE           |     6 | False
  406 |   1 | BX                       | BOX                      |    14 | False
  407 |   1 | BY                       | BYWAY                    |     2 | False
  408 |   2 | BY                       | BY                       |     1 | False
  411 |   1 | BY WAY                   | BYWAY                    |     2 | False
  422 |   1 | BYU                      | BAYOU                    |     1 | False
  423 |   1 | BYWAY                    | BYWAY                    |     2 | False
  424 |   1 | C                        | C                        |    18 | False
  425 |   1 | C / O                    | CARE OF                  |     9 | False
  426 |   1 | C D O                    | COMMERCIAL DEALERSHIP    |    24 | False
  427 |   1 | C F B                    | CANADIAN FORCES BASE     |    24 | False
  428 |   1 | C M C                    | COMMUNITY MAIL CENTRE    |    24 | False
  431 |   1 | C/O                      | CARE OF                  |     9 | False
  432 |   1 | CALLE                    | CALLE                    |     2 | False
  433 |   1 | CALLEJ                   | CALLEJON                 |     2 | False
  434 |   1 | CALLEJA                  | CALLEJA                  |     2 | False
  435 |   1 | CALLEJO                  | CALLEJON                 |     2 | False
  436 |   1 | CALLEJON                 | CALLEJON                 |     2 | False
  437 |   1 | CALLER                   | POST OFFICE BOX          |    14 | False
  439 |   1 | CAMINITO                 | CAMINITO                 |     2 | False
  441 |   1 | CAMP                     | CAMP                     |     1 | False
  442 |   1 | CAMPER PARK              | TRAILER PARK             |    24 | False
  443 |   1 | CAMPER PK                | TRAILER PARK             |    24 | False
  444 |   1 | CAMPUS                   | CAMPUS                   |     1 | False
  445 |   1 | CAMPUS                   | CAMPUS                   |     2 | False
  446 |   1 | CANADIAN FORCES BASE     | CANADIAN FORCES BASE     |    24 | False
  447 |   1 | CANYON                   | CANYON                   |     1 | False
  448 |   1 | CANYN                    | CANYON                   |     1 | False
  449 |   1 | CAPE                     | CAPE                     |     1 | False
  451 |   1 | CARE OF                  | CARE OF                  |     9 | False
  452 |   1 | CARR                     | CARRETERA                |     2 | False
  453 |   1 | CARRE                    | CARRE                    |     1 | False
  454 |   2 | CARRE                    | CARRE                    |     2 | False
  455 |   1 | CARREF                   | CARREFOUR                |     2 | False
  456 |   1 | CARREFOUR                | CARREFOUR                |     2 | False
  457 |   1 | CARRETERA                | CARRETERA                |     2 | False
  458 |   1 | CARRT                    | CARRETERA                |     2 | False
  460 |   1 | CC                       | CIRCUIT                  |     2 | False
  461 |   1 | CDN                      | CANADIAN                 |     1 | False
  462 |   1 | CDO                      | COMMERCIAL DEALERSHIP    |    24 | False
  463 |   1 | CDS                      | CUL DE SAC               |     2 | False
  473 |   3 | CENTER                   | CENTER                   |     1 | False
  477 |   1 | CENTRAL                  | CENTRAL                  |     1 | False
  480 |   3 | CENTRE                   | CENTER                   |     1 | False
  484 |   1 | CERCLE                   | CERCLE                   |     2 | False
  485 |   2 | CERCLE                   | CERCLE                   |     1 | False
  486 |   1 | CFB                      | CANADIAN FORCES BASE     |    24 | False
  488 |   1 | CH                       | CHEMIN                   |     2 | False
  489 |   2 | CH                       | CHURCH                   |    24 | False
  490 |   1 | CHASE                    | CHASE                    |     2 | False
  491 |   2 | CHASE                    | CHASE                    |     1 | False
  492 |   1 | CHEMIN                   | CHEMIN                   |     2 | False
  493 |   1 | CHURCH                   | CHURCH                   |     1 | False
  494 |   2 | CHURCH                   | CHURCH                   |    24 | False
  496 |   1 | CIRC                     | CIRCULO                  |     2 | False
  499 |   2 | CIRCLE                   | CIRCLE                   |     1 | False
  500 |   1 | CIRCT                    | CIRCUIT                  |     2 | False
  501 |   2 | CIRCT                    | CIRCUIT                  |     1 | False
  502 |   1 | CIRCUIT                  | CIRCUIT                  |     2 | False
  503 |   2 | CIRCUIT                  | CIRCUIT                  |     1 | False
  504 |   1 | CIRCULO                  | CIRCULO                  |     2 | False
  505 |   1 | CJA                      | CALLEJA                  |     2 | False
  506 |   1 | CJON                     | CALLEJON                 |     2 | False
  507 |   1 | CK                       | CREEK                    |     1 | False
  509 |   2 | CL                       | CIRCLE                   |     1 | False
  512 |   3 | CLB                      | CLUB                     |     1 | False
  513 |   1 | CLF                      | CLIFF                    |     1 | False
  514 |   1 | CLFS                     | CLIFFS                   |     1 | False
  515 |   1 | CLG                      | COLLEGE                  |    24 | False
  516 |   1 | CLIFF                    | CLIFF                    |     1 | False
  517 |   1 | CLIFFS                   | CLIFFS                   |     1 | False
  518 |   1 | CLLE                     | CALLE                    |     2 | False
  519 |   1 | CLLJ                     | CALLEJON                 |     2 | False
  520 |   1 | CLOS                     | CLOSE                    |     2 | False
  521 |   2 | CLOS                     | CLOSE                    |     1 | False
  522 |   1 | CLOSE                    | CLOSE                    |     2 | False
  523 |   2 | CLOSE                    | CLOSE                    |     1 | False
  524 |   1 | CLTN                     | COLLECTION               |    24 | False
  527 |   3 | CLUB                     | CLUB                     |     1 | False
  528 |   1 | CMC                      | COMMUNITY MAIL CENTRE    |    24 | False
  529 |   1 | CMNS                     | COMMONS                  |     2 | False
  530 |   2 | CMNS                     | COMMONS                  |    24 | False
  417 |   2 | BYPAS                    | BYP                      |     2 | False
  421 |   2 | BYPS                     | BYP                      |     2 | False
  419 |   2 | BYPASS                   | BYP                      |     2 | False
  415 |   2 | BYPA                     | BYP                      |     2 | False
  410 |   2 | BY PASS                  | BYP                      |     2 | False
  438 |   1 | CAM                      | CAM                      |     2 | False
  440 |   1 | CAMINO                   | CAM                      |     2 | False
  450 |   2 | CAPE                     | CPE                      |     2 | False
  459 |   1 | CAUSEWAY                 | CSWY                     |     2 | False
  483 |   2 | CENTRO                   | CTR                      |     2 | False
  479 |   2 | CENTRE                   | CTR                      |     2 | False
  476 |   2 | CENTR                    | CTR                      |     2 | False
  472 |   2 | CENTER                   | CTR                      |     2 | False
  470 |   2 | CENTE                    | CTR                      |     2 | False
  468 |   2 | CENT                     | CTR                      |     2 | False
  531 |   1 | CMP                      | CAMP                     |     1 | False
  532 |   1 | CN                       | CONCESSION               |     2 | False
  533 |   2 | CN                       | CONCESSION               |     1 | False
  534 |   1 | CNCN                     | CONNECTION               |    24 | False
  545 |   1 | CNTRL                    | CENTRAL                  |     1 | False
  556 |   1 | CNYN                     | CANYON                   |     1 | False
  557 |   4 | CO                       | COTE                     |     2 | False
  569 |   1 | COL                      | COLONEL                  |     1 | False
  570 |   1 | COLL                     | COLLEGE                  |    24 | False
  571 |   2 | COLL                     | COLLEGE                  |     1 | False
  572 |   1 | COLLECTION               | COLLECTION               |    24 | False
  573 |   1 | COLLEGE                  | COLLEGE                  |    24 | False
  574 |   2 | COLLEGE                  | COLLEGE                  |    19 | False
  575 |   3 | COLLEGE                  | COLLEGE                  |     1 | False
  576 |   1 | COLONEL                  | COLONEL                  |     1 | False
  577 |   1 | COLONIA                  | COLONIA                  |     2 | False
  578 |   2 | COLONIA                  | COLONIA                  |     1 | False
  579 |   1 | COMMERCIAL DEALERSHIP OU | COMMERCIAL DEALERSHIP    |    24 | False
  581 |   2 | COMMON                   | COMMONS                  |    24 | False
  582 |   1 | COMMONS                  | COMMONS                  |     2 | False
  583 |   2 | COMMONS                  | COMMONS                  |    24 | False
  584 |   1 | COMMUNITY MAIL CENTRE    | COMMUNITY MAIL CENTRE    |    24 | False
  586 |   2 | COMN                     | COMMONS                  |    24 | False
  587 |   1 | COMP                     | COMPLEX                  |    24 | False
  588 |   1 | COMPLEX                  | COMPLEX                  |    24 | False
  589 |   1 | CONC                     | CONCESSION               |     2 | False
  590 |   2 | CONC                     | CONCESSION               |     1 | False
  591 |   1 | CONCESSION               | CONCESSION               |     2 | False
  592 |   2 | CONCESSION               | CONCESSION               |     1 | False
  593 |   1 | COND                     | CONDOMINIUMS             |    24 | False
  594 |   1 | CONDO                    | CONDOMINIUMS             |    24 | False
  595 |   1 | CONDOMINIO               | CONDOMINIUMS             |    24 | False
  596 |   1 | CONDOMINIUM              | CONDOMINIUMS             |    24 | False
  597 |   1 | CONDOMINIUMS             | CONDOMINIUMS             |    24 | False
  598 |   1 | CONDOS                   | CONDOMINIUMS             |    24 | False
  599 |   3 | CONN                     | CONNECTOR                |     2 | False
  600 |   4 | CONN                     | CONNECTOR                |     3 | False
  601 |   1 | CONNECTION               | CONNECTION               |    24 | False
  602 |   1 | CONNECTOR                | CONNECTOR                |     2 | False
  603 |   2 | CONNECTOR                | CONNECTOR                |     3 | False
  604 |   3 | CONNECTOR                | CONNECTOR                |     1 | False
  605 |   1 | CONTRACT                 | HIGHWAY CONTRACT ROUTE   |     8 | False
  606 |   2 | CONTRACT                 | CONTRACT                 |     1 | False
  607 |   1 | COOP                     | COOPERATIVE              |    24 | False
  608 |   2 | COOP                     | COOPERATIVE              |     1 | False
  609 |   1 | COOPERATIVE              | COOPERATIVE              |    24 | False
  610 |   2 | COOPERATIVE              | COOPERATIVE              |     1 | False
  612 |   2 | COR                      | CORNER                   |     1 | False
  616 |   2 | CORNER                   | CORNER                   |     1 | False
  620 |   3 | CORNERS                  | CORNERS                  |     1 | False
  623 |   3 | CORS                     | CORNERS                  |     1 | False
  624 |   1 | CORSO                    | CORSO                    |     2 | False
  625 |   2 | CORSO                    | CORSO                    |     1 | False
  629 |   1 | COTE                     | COTE                     |     2 | False
  630 |   2 | COTE                     | COTE                     |     1 | False
  631 |   1 | COTTAGE                  | COTTAGE                  |    24 | False
  632 |   2 | COTTAGE                  | COTTAGE                  |    19 | False
  633 |   3 | COTTAGE                  | COTTAGE                  |     1 | False
  634 |   1 | COUNTY                   | COUNTY                   |     1 | False
  635 |   2 | COUNTY                   | COUNY ROAD               |     6 | False
  647 |   1 | COUR                     | COUR                     |     2 | False
  648 |   1 | COURSE                   | COURSE                   |     1 | False
  650 |   2 | COURT                    | COURT                    |     1 | False
  651 |   1 | COURT HOUSE              | COURTHOUSE               |    24 | False
  652 |   1 | COURT HSE                | COURTHOUSE               |    24 | False
  653 |   1 | COURT YARD               | COURTYARD                |    24 | False
  654 |   1 | COURTHOUSE               | COURTHOUSE               |    24 | False
  655 |   2 | COURTHOUSE               | COURTHOUSE               |     1 | False
  542 |   2 | CNTR                     | CTR                      |     2 | False
  538 |   2 | CNT                      | CTR                      |     2 | False
  540 |   2 | CNTER                    | CTR                      |     2 | False
  544 |   2 | CNTRE                    | CTR                      |     2 | False
  580 |   1 | COMMON                   | CMN                      |     2 | False
  585 |   1 | COMN                     | CMN                      |     2 | False
  536 |   2 | CNR                      | COR                      |     2 | False
  617 |   3 | CORNER                   | COR                      |     2 | False
  618 |   1 | CORNERS                  | CORS                     |     2 | False
  621 |   1 | CORS                     | CORS                     |     2 | False
  562 |   2 | CO RD                    | CO RD                    |     2 | False
  550 |   2 | CNTY RD                  | CO RD                    |     2 | False
  552 |   2 | CNTY ROAD                | CO RD                    |     2 | False
  642 |   2 | COUNTY ROAD              | CO RD                    |     2 | False
  640 |   2 | COUNTY RD                | CO RD                    |     2 | False
  614 |   2 | CORD                     | CO RD                    |     2 | False
  564 |   2 | CO ROAD                  | CO RD                    |     2 | False
  649 |   1 | COURT                    | CT                       |     2 | False
  628 |   2 | CORTE                    | CT                       |     2 | False
  656 |   1 | COURTHSE                 | COURTHOUSE               |    24 | False
  659 |   3 | COURTS                   | COURTS                   |     1 | False
  660 |   1 | COURTYARD                | COURTYARD                |    24 | False
  661 |   1 | COURTYARDS               | COURTYARD                |    24 | False
  664 |   1 | CP                       | CAMP                     |     1 | False
  665 |   1 | CPE                      | CAPE                     |     1 | False
  666 |   1 | CPLX                     | COMPLEX                  |    24 | False
  667 |   1 | CPO                      | POST OFFICE BOX          |    14 | False
  668 |   1 | CPO BOX                  | POST OFFICE BOX          |    14 | False
  673 |   1 | CRDS                     | CROSSROADS               |    24 | False
  674 |   1 | CREEK                    | CREEK                    |     1 | False
  677 |   2 | CRESCENT                 | CRESCENT                 |     1 | False
  679 |   1 | CRK                      | CREEK                    |     1 | False
  684 |   1 | CROISSANT                | CROISSANT                |     2 | False
  685 |   2 | CROISSANT                | CROISSANT                |     1 | False
  686 |   1 | CROSS                    | CROSS                    |     2 | False
  687 |   2 | CROSS                    | CROSS                    |    24 | False
  689 |   1 | CROSS ROADS              | CROSSROADS               |    24 | False
  694 |   2 | CROSSROAD                | CROSSROAD                |     1 | False
  695 |   1 | CROSSROADS               | CROSSROADS               |    24 | False
  697 |   1 | CRSE                     | COURSE                   |     1 | False
  707 |   1 | CRT HSE                  | COURTHOUSE               |    24 | False
  708 |   1 | CRTHSE                   | COURTHOUSE               |    24 | False
  709 |   1 | CRU                      | CRUCE                    |     2 | False
  710 |   1 | CRUC                     | CRUCE                    |     2 | False
  711 |   1 | CRUCE                    | CRUCE                    |     2 | False
  713 |   1 | CS                       | CLOSE                    |     2 | False
  716 |   2 | CT                       | CONNECTICUT              |    11 | False
  717 |   1 | CT HSE                   | COURTHOUSE               |    24 | False
  718 |   1 | CT YARD                  | COURTYARD                |    24 | False
  719 |   1 | CT YD                    | COURTYARD                |    24 | False
  722 |   1 | CTHS                     | COURTHOUSE               |    24 | False
  723 |   1 | CTHSE                    | COURTHOUSE               |    24 | False
  729 |   3 | CTS                      | COURTS                   |     1 | False
  740 |   1 | CTYD                     | COURTYARD                |    24 | False
  741 |   1 | CU                       | COUR                     |     2 | False
  742 |   1 | CUL DE SAC               | CUL DE SAC               |     2 | False
  743 |   1 | CULDESAC                 | CUL DE SAC               |     2 | False
  744 |   1 | CURRY RD                 | CURRY ROAD               |     6 | False
  745 |   1 | CURRY ROAD               | CURRY ROAD               |     6 | False
  746 |   1 | CURVE                    | CURVE                    |     1 | False
  749 |   1 | CX                       | CHASE                    |     2 | False
  750 |   1 | CYN                      | CANYON                   |     1 | False
  752 |   1 | D                        | D                        |    18 | False
  753 |   2 | D                        | D                        |     7 | False
  754 |   1 | D B A                    | DBA                      |     1 | False
  755 |   1 | DALE                     | DALE                     |     1 | False
  757 |   1 | DAM                      | DAM                      |     1 | False
  758 |   1 | DBA                      | DBA                      |     1 | False
  759 |   2 | DE                       | DE                       |     7 | False
  760 |   4 | DE                       | DE                       |     6 | False
  761 |   1 | DE LA                    | DE LA                    |     7 | False
  762 |   1 | DE LAS                   | DE LAS                   |     7 | False
  763 |   1 | DE LOS                   | DE LOS                   |     7 | False
  764 |   2 | DEL                      | DE                       |     7 | False
  765 |   1 | DELL                     | DELL                     |     1 | False
  766 |   2 | DELL                     | DELL                     |     2 | False
  767 |   1 | DEPARTMENT               | DEPARTMENT               |    16 | False
  768 |   2 | DEPARTMENT               | DEPARTMENT               |     1 | False
  769 |   1 | DEPT                     | DEPARTMENT               |    16 | False
  770 |   2 | DEPT                     | DEPARTMENT               |     1 | False
  771 |   1 | DERE                     | DERECHO                  |    16 | False
  772 |   1 | DERECHO                  | DERECHO                  |    16 | False
  773 |   1 | DES                      | DES                      |     7 | False
  774 |   1 | DEUX                     | 2                        |     1 | False
  775 |   2 | DEUX                     | 2                        |     0 | False
  776 |   1 | DEUXIEME                 | DEUXIEME                 |     1 | False
  777 |   1 | DI                       | DIVERSION                |     2 | False
  778 |   2 | DI                       | DIVERSION                |     1 | False
  779 |   3 | DI                       | DI                       |     7 | False
  780 |   1 | DIV                      | DIVIDE                   |     1 | False
  781 |   1 | DIVERS                   | DIVERSION                |     2 | False
  782 |   2 | DIVERS                   | DIVERSION                |     1 | False
  783 |   1 | DIVERSION                | DIVERSION                |     2 | False
  784 |   2 | DIVERSION                | DIVERSION                |     1 | False
  785 |   1 | DIVIDE                   | DIVIDE                   |     1 | False
  786 |   1 | DL                       | DALE                     |     1 | False
  787 |   2 | DL                       | DELL                     |     2 | False
  714 |   1 | CSWY                     | CSWY                     |     2 | False
  721 |   2 | CTER                     | CTR                      |     2 | False
  725 |   2 | CTR                      | CTR                      |     2 | False
  671 |   1 | CRCL                     | CIR                      |     2 | False
  672 |   1 | CRCLE                    | CIR                      |     2 | False
  682 |   2 | CRNR                     | COR                      |     2 | False
  683 |   1 | CRNRS                    | CORS                     |     2 | False
  751 |   1 | CZ                       | CORS                     |     2 | False
  736 |   2 | CTY ROAD                 | CO RD                    |     2 | False
  734 |   2 | CTY RD                   | CO RD                    |     2 | False
  706 |   1 | CRT                      | CT                       |     2 | False
  715 |   1 | CT                       | CT                       |     2 | False
  727 |   1 | CTS                      | CTS                      |     2 | False
  657 |   1 | COURTS                   | CTS                      |     2 | False
  663 |   1 | COVE                     | CV                       |     2 | False
  748 |   1 | CV                       | CV                       |     2 | False
  662 |   1 | COV                      | CV                       |     2 | False
  680 |   2 | CRK                      | CRK                      |     2 | False
  676 |   1 | CRESCENT                 | CRES                     |     2 | False
  696 |   1 | CRSCNT                   | CRES                     |     2 | False
  698 |   1 | CRSENT                   | CRES                     |     2 | False
  702 |   1 | CRSNT                    | CRES                     |     2 | False
  788 |   1 | DM                       | DAM                      |     1 | False
  789 |   1 | DNS                      | DOWNS                    |     2 | False
  790 |   2 | DNS                      | DOWNS                    |     1 | False
  791 |   1 | DO                       | DOWNS                    |     2 | False
  792 |   1 | DORM                     | DORMITORY                |    24 | False
  793 |   2 | DORMITORY                | DORMITORY                |    24 | False
  794 |   1 | DOWN                     | DOWN                     |    17 | False
  795 |   2 | DOWN                     | DOWN                     |     1 | False
  796 |   1 | DOWNS                    | DOWNS                    |     2 | False
  797 |   2 | DOWNS                    | DOWNS                    |     1 | False
  798 |   1 | DOWNSTAIRS               | DOWNSTAIRS               |    17 | False
  800 |   1 | DRAW                     | DRAW                     |     1 | False
  801 |   2 | DRAW                     | DRAW                     |     2 | False
  802 |   1 | DRAWER                   | POST OFFICE BOX          |    14 | False
  805 |   1 | DRIVEWAY                 | DRIVEWAY                 |     2 | False
  807 |   1 | DRWY                     | DRIVEWAY                 |     2 | False
  808 |   1 | DU                       | DU                       |     7 | False
  809 |   1 | DV                       | DIVIDE                   |     1 | False
  813 |   1 | EAST & WEST              | EAST & WEST              |     1 | False
  814 |   1 | EAST WEST                | EAST WEST                |     1 | False
  815 |   1 | EASTBOUND                | EASTBOUND                |     1 | False
  816 |   2 | EASTBOUND                | EASTBOUND                |     3 | False
  817 |   1 | ECH                      | ECHANGEUR                |     2 | False
  818 |   1 | ECHO                     | ECHO                     |     2 | False
  819 |   2 | ECHO                     | ECHO                     |     1 | False
  820 |   1 | ECHANGEUR                | ECHANGEUR                |     2 | False
  821 |   1 | EDF                      | EDIFICIO                 |    24 | False
  822 |   1 | EDIF                     | EDIFICIO                 |    24 | False
  823 |   1 | EDIFICIO                 | EDIFICIO                 |    24 | False
  824 |   1 | EIGHT                    | 8                        |     1 | False
  825 |   2 | EIGHT                    | 8                        |     0 | False
  826 |   1 | EIGHT MILE               | EIGHT MILE               |     1 | False
  827 |   1 | EIGHTEEN                 | 18                       |     0 | False
  828 |   2 | EIGHTEEN                 | 18                       |     1 | False
  829 |   1 | EIGHTEEEN MILE           | EIGHTEEEN MILE           |     1 | False
  830 |   1 | EIGHTEENTH               | 18                       |     1 | False
  831 |   2 | EIGHTEENTH               | 18TH                     |    15 | False
  832 |   1 | EIGHTH                   | 8                        |     1 | False
  833 |   2 | EIGHTH                   | 8TH                      |    15 | False
  834 |   1 | EIGHTIETH                | 80                       |     1 | False
  835 |   2 | EIGHTIETH                | 80TH                     |    15 | False
  836 |   1 | EIGHTY                   | 80                       |     0 | False
  837 |   2 | EIGHTY                   | 80                       |     1 | False
  838 |   1 | EIGHTY EIGHT             | 88                       |     0 | False
  839 |   2 | EIGHTY EIGHT             | 88                       |     1 | False
  840 |   1 | EIGHTY EIGHTH            | 88                       |     1 | False
  841 |   2 | EIGHTY EIGHTH            | 88TH                     |    15 | False
  842 |   1 | EIGHTY FIFTH             | 85                       |     1 | False
  843 |   2 | EIGHTY FIFTH             | 85TH                     |    15 | False
  844 |   1 | EIGHTY FIRST             | 81                       |     1 | False
  845 |   2 | EIGHTY FIRST             | 81ST                     |    15 | False
  846 |   1 | EIGHTY FIVE              | 85                       |     0 | False
  847 |   2 | EIGHTY FIVE              | 85                       |     1 | False
  848 |   1 | EIGHTY FOUR              | 84                       |     0 | False
  849 |   2 | EIGHTY FOUR              | 84                       |     1 | False
  850 |   1 | EIGHTY FOURTH            | 84                       |     1 | False
  851 |   2 | EIGHTY FOURTH            | 84TH                     |    15 | False
  852 |   1 | EIGHTY NINE              | 89                       |     0 | False
  853 |   2 | EIGHTY NINE              | 89                       |     1 | False
  854 |   1 | EIGHTY NINTH             | 89                       |     1 | False
  855 |   2 | EIGHTY NINTH             | 89TH                     |    15 | False
  856 |   1 | EIGHTY ONE               | 81                       |     0 | False
  857 |   2 | EIGHTY ONE               | 81                       |     1 | False
  858 |   1 | EIGHTY SECOND            | 82                       |     1 | False
  859 |   2 | EIGHTY SECOND            | 82ND                     |    15 | False
  860 |   1 | EIGHTY SEVEN             | 87                       |     0 | False
  861 |   2 | EIGHTY SEVEN             | 87                       |     1 | False
  862 |   1 | EIGHTY SEVENTH           | 87                       |     1 | False
  863 |   2 | EIGHTY SEVENTH           | 87TH                     |    15 | False
  864 |   1 | EIGHTY SIX               | 86                       |     0 | False
  865 |   2 | EIGHTY SIX               | 86                       |     1 | False
  866 |   1 | EIGHTY SIXTH             | 86                       |     1 | False
  867 |   2 | EIGHTY SIXTH             | 86TH                     |    15 | False
  868 |   1 | EIGHTY THIRD             | 83                       |     1 | False
  869 |   2 | EIGHTY THIRD             | 83RD                     |    15 | False
  870 |   1 | EIGHTY THREE             | 83                       |     0 | False
  871 |   2 | EIGHTY THREE             | 83                       |     1 | False
  872 |   1 | EIGHTY TWO               | 82                       |     0 | False
  873 |   2 | EIGHTY TWO               | 82                       |     1 | False
  874 |   1 | EL                       | EL                       |     7 | False
  876 |   1 | ELEVEN                   | 11                       |     0 | False
  877 |   2 | ELEVEN                   | 11                       |     1 | False
  878 |   1 | ELEVEN MILE              | ELEVEN MILE              |     1 | False
  879 |   1 | ELEVENTH                 | 11                       |     1 | False
  880 |   2 | ELEVENTH                 | 11TH                     |    15 | False
  881 |   1 | EMS                      | EMS                      |     6 | False
  882 |   1 | EN                       | END                      |     2 | False
  883 |   1 | END                      | END                      |     1 | False
  884 |   1 | END                      | END                      |     2 | False
  885 |   1 | ENT                      | ENTRY                    |    17 | False
  886 |   1 | ENT                      | ENTRY                    |     2 | False
  887 |   1 | ENTRY                    | ENTRY                    |    17 | False
  888 |   2 | ENTRY                    | ENTRY                    |     1 | False
  889 |   1 | ENTREE                   | ENTREE                   |    17 | False
  890 |   2 | ENTREE                   | ENTREE                   |     1 | False
  891 |   1 | ES                       | ESPLANADE                |     2 | False
  892 |   1 | ESP                      | ESPLANADE                |    24 | False
  893 |   1 | ESPL                     | ESPLANADE                |    24 | False
  894 |   2 | ESPL                     | ESPLANADE                |     2 | False
  895 |   3 | ESPL                     | ESPLANADE                |     1 | False
  896 |   1 | ESPLANADE                | ESPLANADE                |    24 | False
  897 |   2 | ESPLANADE                | ESPLANADE                |     1 | False
  898 |   3 | ESPLANADE                | ESPLANADE                |     2 | False
  899 |   1 | EST                      | ESTATES                  |     1 | False
  903 |   1 | ESTATE                   | ESTATES                  |     1 | False
  906 |   1 | ESTATES                  | ESTATES                  |     1 | False
  909 |   1 | ESTE                     | ESTE                     |    22 | False
  910 |   2 | ESTE                     | ESTE                     |     1 | False
  911 |   1 | ESTS                     | ESTATES                  |     1 | False
  915 |   2 | ET                       | ETAGE                    |    17 | False
  916 |   3 | ET                       | ET                       |     7 | False
  917 |   1 | ETAGE                    | ETAGE                    |     1 | False
  918 |   2 | ETAGE                    | ETAGE                    |    17 | False
  919 |   1 | EX                       | EXTENDED                 |     3 | False
  921 |   1 | EXCH                     | EXCHANGE                 |    24 | False
  875 |   1 | EL CAMINO                | CAM                      |     2 | False
  806 |   1 | DRV                      | DR                       |     2 | False
  799 |   1 | DR                       | DR                       |     2 | False
  803 |   1 | DRI                      | DR                       |     2 | False
  804 |   1 | DRIVE                    | DR                       |     2 | False
  810 |   1 | E                        | E                        |    22 | False
  811 |   2 | E                        | E                        |    18 | False
  812 |   1 | EAST                     | E                        |    22 | False
  922 |   2 | EXCH                     | EXCHANGE                 |     2 | False
  923 |   1 | EXCHANGE                 | EXCHANGE                 |    24 | False
  924 |   2 | EXCHANGE                 | EXCHANGE                 |     2 | False
  925 |   3 | EXCHANGE                 | EXCHANGE                 |     1 | False
  926 |   1 | EXEC                     | EXECUTIVE                |     1 | False
  927 |   1 | EXECUTIVE                | EXECUTIVE                |     1 | False
  930 |   1 | EXPRESO                  | EXPRESO                  |     2 | False
  939 |   1 | EXTD                     | EXTENDED                 |     3 | False
  942 |   1 | EXTENDED                 | EXTENDED                 |     3 | False
  950 |   1 | F M                      | FARM TO MARKET ROAD      |     6 | False
  951 |   1 | F M RD                   | FARM TO MARKET ROAD      |     6 | False
  952 |   2 | F M RD                   | FARM TO MARKET ROAD      |     2 | False
  953 |   1 | F M ROAD                 | FARM TO MARKET ROAD      |     6 | False
  954 |   2 | F M ROAD                 | FARM TO MARKET ROAD      |     2 | False
  955 |   1 | FACTORY OUTLET           | OUTLET                   |    24 | False
  956 |   1 | FALL                     | FALL                     |     1 | False
  957 |   1 | FALLS                    | FALLS                    |     1 | False
  958 |   1 | FARM                     | FARM                     |     1 | False
  959 |   2 | FARM                     | FARM                     |     2 | False
  960 |   1 | FARM MAINTENANCE RD      | FARM MAINTENANCE ROAD    |     6 | False
  961 |   2 | FARM MAINTENANCE RD      | FARM MAINTENANCE ROAD    |     2 | False
  962 |   1 | FARM MARKET ROAD         | FARM TO MARKET ROAD      |     6 | False
  963 |   2 | FARM MARKET ROAD         | FARM TO MARKET ROAD      |     2 | False
  964 |   1 | FARM TO MARKET ROAD      | FARM TO MARKET ROAD      |     6 | False
  965 |   2 | FARM TO MARKET ROAD      | FARM TO MARKET ROAD      |     2 | False
  966 |   1 | FERRY                    | FERRY                    |     1 | False
  967 |   1 | FERRY CROSSING           | FERRY                    |     1 | False
  968 |   1 | FEST                     | FESTIVAL                 |    24 | False
  969 |   1 | FESTIVAL                 | FESTIVAL                 |    24 | False
  970 |   1 | FIELD                    | FIELD                    |     1 | False
  972 |   1 | FIELDS                   | FIELDS                   |     1 | False
  973 |   1 | FIFTEEN                  | 15                       |     0 | False
  974 |   2 | FIFTEEN                  | 15                       |     1 | False
  975 |   1 | FIFTEEN MILE             | FIFTEEN MI               |     1 | False
  976 |   1 | FIFTEENTH                | 15                       |     1 | False
  977 |   2 | FIFTEENTH                | 15TH                     |    15 | False
  978 |   1 | FIFTH                    | 5                        |     1 | False
  979 |   2 | FIFTH                    | 5TH                      |    15 | False
  980 |   1 | FIFTIETH                 | 50                       |     1 | False
  981 |   2 | FIFTIETH                 | 50TH                     |    15 | False
  982 |   1 | FIFTY                    | 50                       |     0 | False
  983 |   2 | FIFTY                    | 50                       |     1 | False
  984 |   1 | FIFTY EIGHT              | 58                       |     0 | False
  985 |   2 | FIFTY EIGHT              | 58                       |     1 | False
  986 |   1 | FIFTY EIGHTH             | 58                       |     1 | False
  987 |   2 | FIFTY EIGHTH             | 58TH                     |    15 | False
  988 |   1 | FIFTY FIFTH              | 55                       |     1 | False
  989 |   2 | FIFTY FIFTH              | 55TH                     |    15 | False
  990 |   1 | FIFTY FIRST              | 51                       |     1 | False
  991 |   2 | FIFTY FIRST              | 51ST                     |    15 | False
  992 |   1 | FIFTY FIVE               | 55                       |     0 | False
  993 |   2 | FIFTY FIVE               | 55                       |     1 | False
  994 |   1 | FIFTY FOUR               | 54                       |     0 | False
  995 |   2 | FIFTY FOUR               | 54                       |     1 | False
  996 |   1 | FIFTY FOURTH             | 54                       |     1 | False
  997 |   2 | FIFTY FOURTH             | 54TH                     |    15 | False
  998 |   1 | FIFTY NINE               | 59                       |     0 | False
  999 |   2 | FIFTY NINE               | 59                       |     1 | False
 1000 |   1 | FIFTY NINTH              | 59                       |     1 | False
 1001 |   2 | FIFTY NINTH              | 59TH                     |    15 | False
 1002 |   1 | FIFTY ONE                | 51                       |     0 | False
 1003 |   2 | FIFTY ONE                | 51                       |     1 | False
 1004 |   1 | FIFTY SECOND             | 52                       |     1 | False
 1005 |   2 | FIFTY SECOND             | 52ND                     |    15 | False
 1006 |   1 | FIFTY SEVEN              | 57                       |     0 | False
 1007 |   2 | FIFTY SEVEN              | 57                       |     1 | False
 1008 |   1 | FIFTY SEVENTH            | 57                       |     1 | False
 1009 |   2 | FIFTY SEVENTH            | 57TH                     |    15 | False
 1094 |   1 | FOUR                     | 4                        |     0 | False
 1010 |   1 | FIFTY SIX                | 56                       |     0 | False
 1011 |   2 | FIFTY SIX                | 56                       |     1 | False
 1012 |   1 | FIFTY SIXTH              | 56                       |     1 | False
 1013 |   2 | FIFTY SIXTH              | 56TH                     |    15 | False
 1014 |   1 | FIFTY THIRD              | 53                       |     1 | False
 1015 |   2 | FIFTY THIRD              | 53RD                     |    15 | False
 1016 |   1 | FIFTY THREE              | 53                       |     0 | False
 1017 |   2 | FIFTY THREE              | 53                       |     1 | False
 1018 |   1 | FIFTY TWO                | 52                       |     0 | False
 1019 |   2 | FIFTY TWO                | 52                       |     1 | False
 1020 |   1 | FIRST                    | 1                        |     1 | False
 1021 |   2 | FIRST                    | 1ST                      |    15 | False
 1022 |   1 | FIVE                     | 5                        |     0 | False
 1023 |   2 | FIVE                     | 5                        |     1 | False
 1024 |   1 | FIVE CEDARS              | FIVE CEDARS              |     1 | False
 1025 |   1 | FIVE CORNERS             | FIVE CORNERS             |     1 | False
 1026 |   1 | FIVE MILE                | FIVE MILE                |     1 | False
 1027 |   1 | FIVE POINTS              | FIVE POINTS              |     1 | False
 1028 |   1 | FIVE TOWN                | FIVE TOWN                |     1 | False
 1029 |   1 | FL                       | FL                       |    17 | False
 1030 |   1 | FLAT                     | FLAT                     |     1 | False
 1031 |   1 | FLD                      | FIELD                    |     1 | False
 1032 |   1 | FLDS                     | FIELDS                   |     1 | False
 1033 |   1 | FLLS                     | FALLS                    |     1 | False
 1034 |   1 | FLOOR                    | FL                       |    17 | False
 1035 |   2 | FLOOR                    | FL                       |     1 | False
 1036 |   1 | FLR                      | FL                       |    17 | False
 1037 |   1 | FLS                      | FALLS                    |     1 | False
 1038 |   1 | FLT                      | FLAT                     |     1 | False
 1039 |   1 | FLTS                     | FLATS                    |     1 | False
 1040 |   1 | FM                       | FARM TO MARKET ROAD      |     6 | False
 1041 |   1 | FM RD                    | FARM TO MARKET ROAD      |     6 | False
 1042 |   2 | FM RD                    | FARM TO MARKET ROAD      |     2 | False
 1043 |   1 | FM ROAD                  | FARM TO MARKET ROAD      |     6 | False
 1044 |   2 | FM ROAD                  | FARM TO MARKET ROAD      |     2 | False
 1045 |   1 | FMRD                     | FARM TO MARKET ROAD      |     6 | False
 1046 |   2 | FMRD                     | FARM TO MARKET ROAD      |     2 | False
 1047 |   1 | FORD                     | FORD                     |     1 | False
 1048 |   1 | FOREST                   | FOREST                   |     1 | False
 1049 |   1 | FORGE                    | FORGE                    |     1 | False
  936 |   1 | EXPY                     | EXPY                     |     2 | False
  935 |   1 | EXPWY                    | EXPY                     |     2 | False
  934 |   1 | EXPWAY                   | EXPY                     |     2 | False
  932 |   1 | EXPRESSWAY               | EXPY                     |     2 | False
  949 |   1 | EXWY                     | EXPY                     |     2 | False
 1050 |   1 | FORK                     | FORK                     |     1 | False
 1051 |   1 | FORKS                    | FORKS                    |     1 | False
 1052 |   1 | FORT                     | FORT                     |     1 | False
 1053 |   1 | FORTIETH                 | 40                       |     1 | False
 1054 |   2 | FORTIETH                 | 40TH                     |    15 | False
 1055 |   1 | FORTS                    | FORT                     |     1 | False
 1056 |   1 | FORTY                    | 40                       |     0 | False
 1057 |   2 | FORTY                    | 40                       |     1 | False
 1058 |   1 | FORTY EIGHT              | 48                       |     0 | False
 1059 |   2 | FORTY EIGHT              | 48                       |     1 | False
 1060 |   1 | FORTY EIGHTH             | 48                       |     1 | False
 1061 |   2 | FORTY EIGHTH             | 48TH                     |    15 | False
 1062 |   1 | FORTY FIFTH              | 45                       |     1 | False
 1063 |   2 | FORTY FIFTH              | 45TH                     |    15 | False
 1064 |   1 | FORTY FIRST              | 41                       |     1 | False
 1065 |   2 | FORTY FIRST              | 41ST                     |    15 | False
 1066 |   1 | FORTY FIVE               | 45                       |     0 | False
 1067 |   2 | FORTY FIVE               | 45                       |     1 | False
 1068 |   1 | FORTY FOUR               | 44                       |     0 | False
 1069 |   2 | FORTY FOUR               | 44                       |     1 | False
 1070 |   1 | FORTY FOURTH             | 44                       |     1 | False
 1071 |   2 | FORTY FOURTH             | 44TH                     |    15 | False
 1072 |   1 | FORTY NINE               | 49                       |     0 | False
 1073 |   2 | FORTY NINE               | 49                       |     1 | False
 1074 |   1 | FORTY NINTH              | 49                       |     1 | False
 1075 |   2 | FORTY NINTH              | 49TH                     |    15 | False
 1076 |   1 | FORTY ONE                | 41                       |     0 | False
 1077 |   2 | FORTY ONE                | 41                       |     1 | False
 1078 |   1 | FORTY SECOND             | 42                       |     1 | False
 1079 |   2 | FORTY SECOND             | 42ND                     |    15 | False
 1080 |   1 | FORTY SEVEN              | 47                       |     0 | False
 1081 |   2 | FORTY SEVEN              | 47                       |     1 | False
 1082 |   1 | FORTY SEVENTH            | 47                       |     1 | False
 1083 |   2 | FORTY SEVENTH            | 47TH                     |    15 | False
 1084 |   1 | FORTY SIX                | 46                       |     0 | False
 1085 |   2 | FORTY SIX                | 46                       |     1 | False
 1086 |   1 | FORTY SIXTH              | 46                       |     1 | False
 1087 |   2 | FORTY SIXTH              | 46TH                     |    15 | False
 1088 |   1 | FORTY THIRD              | 43                       |     1 | False
 1089 |   2 | FORTY THIRD              | 43RD                     |    15 | False
 1090 |   1 | FORTY THREE              | 43                       |     0 | False
 1091 |   2 | FORTY THREE              | 43                       |     1 | False
 1092 |   1 | FORTY TWO                | 42                       |     0 | False
 1093 |   2 | FORTY TWO                | 42                       |     1 | False
 1095 |   2 | FOUR                     | 4                        |     1 | False
 1096 |   1 | FOUR CORNERS             | FOUR CORNERS             |     1 | False
 1097 |   1 | FOUR FLAGS               | FOUR FLAGS               |     1 | False
 1098 |   1 | FOUR MILE                | FOUR MILE                |     1 | False
 1099 |   1 | FOURTEEN                 | 14                       |     0 | False
 1100 |   2 | FOURTEEN                 | 14                       |     1 | False
 1101 |   1 | FOURTEEN MILE            | FOURTEEN MILE            |     1 | False
 1102 |   1 | FOURTEENTH               | 14                       |     1 | False
 1103 |   2 | FOURTEENTH               | 14                       |    15 | False
 1104 |   1 | FOURTH                   | 4                        |     1 | False
 1105 |   2 | FOURTH                   | 4TH                      |    15 | False
 1106 |   1 | FPO                      | FPO                      |    14 | False
 1107 |   1 | FRD                      | FORD                     |     1 | False
 1110 |   1 | FRG                      | FORGE                    |     1 | False
 1111 |   1 | FRK                      | FORK                     |     1 | False
 1112 |   1 | FRKS                     | FORKS                    |     1 | False
 1113 |   1 | FRNT                     | FRONT                    |     1 | False
 1114 |   2 | FRNT                     | FRONT                    |    17 | False
 1115 |   1 | FROM                     | FROM                     |     1 | False
 1116 |   1 | FRONT                    | FRONT                    |     1 | False
 1117 |   2 | FRONT                    | FRONT                    |    17 | False
 1118 |   3 | FRONT                    | FRONT                    |     2 | False
 1119 |   1 | FRONTAGE                 | FRONT                    |     1 | False
 1120 |   1 | FRST                     | FOREST                   |     1 | False
 1121 |   2 | FRST                     | FOREST                   |     2 | False
 1122 |   1 | FRT                      | FORT                     |     1 | False
 1125 |   1 | FRY                      | FERRY                    |     1 | False
 1126 |   1 | FS RD                    | FOREST SERVICE ROAD      |     2 | False
 1127 |   1 | FT                       | FORT                     |     1 | False
 1128 |   1 | FWD                      | FOUR WHEEL DRIVE TRAIL   |     2 | False
 1130 |   1 | FX                       | FOX                      |     1 | False
 1131 |   1 | G DEL                    | GENERAL DELIVERY         |    14 | False
 1132 |   1 | G DELIVERY               | GENERAL DELIVERY         |    14 | False
 1134 |   1 | GALLERIA                 | GALLERIA                 |     1 | False
 1135 |   2 | GALLERIA                 | GALLERIA                 |    24 | False
 1136 |   1 | GALLERIE                 | GALLERIA                 |     1 | False
 1137 |   2 | GALLERIE                 | GALLERIA                 |    24 | False
 1138 |   1 | GALR                     | GALLERIA                 |    24 | False
 1139 |   1 | GARDEN                   | GARDEN                   |     1 | False
 1140 |   1 | GARDENS                  | GARDENS                  |     1 | False
 1143 |   1 | GATE                     | GATE                     |     1 | False
 1267 |   1 | HL                       | HILL                     |     1 | False
 1144 |   2 | GATE                     | GATE                     |     2 | False
 1145 |   1 | GATEWAY                  | GATEWAY                  |     1 | False
 1147 |   1 | GD                       | GENERAL DELIVERY         |    14 | False
 1148 |   2 | GD                       | GROUNDS                  |     2 | False
 1149 |   1 | GDN                      | GARDEN                   |     1 | False
 1151 |   1 | GDNS                     | GARDEN                   |     1 | False
 1154 |   1 | GDS                      | GARDEN                   |     1 | False
 1156 |   1 | GEN D                    | GENERAL DELIVERY         |    14 | False
 1157 |   1 | GEN DEL                  | GENERAL DELIVERY         |    14 | False
 1158 |   1 | GEN DELIVERY             | GENERAL DELIVERY         |    14 | False
 1159 |   1 | GENDEL                   | GENERAL DELIVERY         |    14 | False
 1160 |   1 | GENERAL D                | GENERAL DELIVERY         |    14 | False
 1161 |   1 | GENERAL DEL              | GENERAL DELIVERY         |    14 | False
 1162 |   1 | GENERAL DELIVERY         | GENERAL DELIVERY         |    14 | False
 1164 |   1 | GLADE                    | GLADE                    |     1 | False
 1165 |   2 | GLADE                    | GLADE                    |     2 | False
 1166 |   1 | GLEN                     | GLEN                     |     1 | False
 1168 |   1 | GLN                      | GLEN                     |     1 | False
 1170 |   1 | GNDL                     | GENERAL DELIVERY         |    14 | False
 1171 |   1 | GOV                      | GOVERNOR                 |     1 | False
 1172 |   1 | GOVERNOR                 | GOVERNOR                 |     1 | False
 1173 |   1 | GPO                      | GPO                      |    14 | False
 1174 |   1 | GR                       | GROUND                   |     1 | False
 1176 |   1 | GREEN                    | GREEN                    |     1 | False
 1178 |   1 | GREENE RD                | GREENE ROAD              |     6 | False
 1179 |   1 | GREENE ROAD              | GREENE ROAD              |     6 | False
 1180 |   1 | GRN                      | GREEN                    |     1 | False
 1123 |   1 | FRWAY                    | FWY                      |     2 | False
 1124 |   1 | FRWY                     | FWY                      |     2 | False
 1129 |   1 | FWY                      | FWY                      |     2 | False
 1108 |   1 | FREEWAY                  | FWY                      |     2 | False
 1182 |   1 | GRNDS                    | GROUNDS                  |     1 | False
 1183 |   2 | GRNDS                    | GROUNDS                  |     2 | False
 1184 |   1 | GROUND                   | GROUND                   |     1 | False
 1185 |   1 | GROUNDS                  | GROUNDS                  |     1 | False
 1186 |   2 | GROUNDS                  | GROUNDS                  |     2 | False
 1187 |   1 | GROVE                    | GROVE                    |     1 | False
 1189 |   1 | GRV                      | GROVE                    |     1 | False
 1191 |   1 | GT                       | GATE                     |     2 | False
 1192 |   1 | GTWAY                    | GATEWAY                  |     1 | False
 1194 |   1 | GTWY                     | GATEWAY                  |     1 | False
 1197 |   1 | H C                      | HIGHWAY CONTRACT ROUTE   |     8 | False
 1198 |   1 | H C R                    | HIGHWAY CONTRACT ROUTE   |     8 | False
 1199 |   1 | H CONT                   | HIGHWAY CONTRACT ROUTE   |     8 | False
 1200 |   1 | H CONTRACT               | HIGHWAY CONTRACT ROUTE   |     8 | False
 1201 |   1 | HALF                     | HALF                     |     1 | False
 1202 |   1 | HALL                     | HALL                     |    24 | False
 1203 |   2 | HALL                     | HALL                     |     1 | False
 1204 |   1 | HANGER                   | HANGER                   |    16 | False
 1205 |   2 | HANGER                   | HANGER                   |     1 | False
 1206 |   1 | HARBOR                   | HARBOR                   |     1 | False
 1207 |   1 | HARBOUR                  | HARBOR                   |     1 | False
 1210 |   1 | HARBR                    | HARBOR                   |     1 | False
 1213 |   1 | HAVEN                    | HAVEN                    |     1 | False
 1214 |   1 | HBR                      | HARBOR                   |     1 | False
 1217 |   1 | HC                       | HIGHWAY CONTRACT ROUTE   |     8 | False
 1218 |   1 | HC RT                    | HIGHWAY CONTRACT ROUTE   |     8 | False
 1219 |   1 | HC RTE                   | HIGHWAY CONTRACT ROUTE   |     8 | False
 1220 |   1 | HCO                      | HIGHWAY CONTRACT ROUTE   |     8 | False
 1221 |   1 | HCR                      | HIGHWAY CONTRACT ROUTE   |     8 | False
 1222 |   1 | HCRT                     | HIGHWAY CONTRACT ROUTE   |     8 | False
 1223 |   1 | HEIGHT                   | HEIGHTS                  |     1 | False
 1224 |   1 | HEIGHTS                  | HEIGHTS                  |     1 | False
 1227 |   1 | HGHLDS                   | HIGHLANDS                |     1 | False
 1228 |   2 | HGHLDS                   | HIGHLANDS                |     2 | False
 1229 |   1 | HGT                      | HEIGHTS                  |     1 | False
 1232 |   1 | HGTS                     | HEIGHTS                  |     1 | False
 1237 |   1 | HGWY CONTRACT            | HIGHWAY CONTRACT ROUTE   |     8 | False
 1238 |   1 | HGWY FM                  | FARM TO MARKET ROAD      |     6 | False
 1241 |   1 | HGY FM                   | FARM TO MARKET ROAD      |     6 | False
 1244 |   1 | HIGH CONT                | HIGHWAY CONTRACT ROUTE   |     8 | False
 1245 |   1 | HIGH CONTRACT            | HIGHWAY CONTRACT ROUTE   |     8 | False
 1246 |   1 | HIGHLANDS                | HIGHLANDS                |     1 | False
 1247 |   2 | HIGHLANDS                | HIGHLANDS                |     2 | False
 1250 |   1 | HIGHWAY CONT             | HIGHWAY CONTRACT ROUTE   |     8 | False
 1251 |   1 | HIGHWAY CONTRACT         | HIGHWAY CONTRACT ROUTE   |     8 | False
 1252 |   1 | HIGHWAY CONTRACT ROUTE   | HIGHWAY CONTRACT ROUTE   |     8 | False
 1253 |   1 | HIGHWAY FM               | FARM TO MARKET ROAD      |     6 | False
 1256 |   1 | HIGHWY FM                | FARM TO MARKET ROAD      |     6 | False
 1257 |   1 | HILL                     | HILL                     |     1 | False
 1259 |   1 | HILLS                    | HILLS                    |     1 | False
 1262 |   1 | HIWAY CONTRACT           | HIGHWAY CONTRACT ROUTE   |     8 | False
 1263 |   1 | HIWAY FM                 | FARM TO MARKET ROAD      |     6 | False
 1266 |   1 | HIWY FM                  | FARM TO MARKET ROAD      |     6 | False
 1269 |   1 | HLLW                     | HOLLOW                   |     1 | False
 1271 |   1 | HLS                      | HILLS                    |     1 | False
 1272 |   1 | HNGR                     | HANGER                   |    16 | False
 1273 |   2 | HNGR                     | HANGER                   |     1 | False
 1275 |   2 | H0                       | HOLLOW                   |     1 | False
 1276 |   1 | HOL                      | HOLLOW                   |     1 | False
 1278 |   1 | HOLLOW                   | HOLLOW                   |     1 | False
 1280 |   1 | HOLW                     | HOLLOW                   |     1 | False
 1282 |   1 | HOME                     | HOME                     |    24 | False
 1283 |   2 | HOME                     | HOME                     |     1 | False
 1284 |   1 | HOMES                    | HOME                     |    24 | False
 1285 |   1 | HOSP                     | HOSPITAL                 |    24 | False
 1286 |   1 | HOSPITAL                 | HOSPITAL                 |    24 | False
 1287 |   1 | HOTEL                    | HOTEL                    |    24 | False
 1288 |   2 | HOTEL                    | HOTEL                    |    19 | False
 1289 |   1 | HOUS                     | HOUSE                    |    24 | False
 1290 |   2 | HOUS                     | HOUSE                    |    19 | False
 1291 |   1 | HOUSE                    | HOUSE                    |    24 | False
 1292 |   2 | HOUSE                    | HOUSE                    |    19 | False
 1293 |   3 | HOUSE                    | HOUSE                    |     1 | False
 1294 |   1 | HOUSING PROJ             | PROJECTS                 |    24 | False
 1295 |   1 | HOUSING PROJECTS         | PROJECTS                 |    24 | False
 1296 |   1 | HRBR                     | HARBOR                   |     1 | False
 1299 |   1 | HRBOR                    | HARBOR                   |     1 | False
 1302 |   1 | HSE                      | HOUSE                    |    24 | False
 1303 |   2 | HSE                      | HOUSE                    |    19 | False
 1304 |   1 | HSE PROJ                 | PROJECTS                 |    24 | False
 1305 |   1 | HSE PROJECTS             | PROJECTS                 |    24 | False
 1306 |   1 | HT                       | HEIGHTS                  |     1 | False
 1190 |   2 | GRV                      | GRV                      |     2 | False
 1196 |   1 | GV                       | GRV                      |     2 | False
 1188 |   2 | GROVE                    | GRV                      |     2 | False
 1211 |   2 | HARBR                    | HBR                      |     2 | False
 1297 |   2 | HRBR                     | HBR                      |     2 | False
 1300 |   2 | HRBOR                    | HBR                      |     2 | False
 1208 |   2 | HARBOUR                  | HBR                      |     2 | False
 1215 |   2 | HBR                      | HBR                      |     2 | False
 1216 |   3 | HBR                      | HBR                      |    24 | False
 1233 |   2 | HGTS                     | HTS                      |     2 | False
 1307 |   2 | HT                       | HTS                      |     2 | False
 1225 |   2 | HEIGHTS                  | HTS                      |     2 | False
 1230 |   2 | HGT                      | HTS                      |     2 | False
 1236 |   2 | HGWY                     | HWY                      |     2 | False
 1243 |   2 | HI                       | HWY                      |     2 | False
 1255 |   2 | HIGHWY                   | HWY                      |     2 | False
 1265 |   2 | HIWY                     | HWY                      |     2 | False
 1309 |   1 | HTL                      | HOTEL                    |    24 | False
 1310 |   2 | HTL                      | HOTEL                    |    19 | False
 1311 |   1 | HTS                      | HEIGHTS                  |     1 | False
 1314 |   1 | HUI RD                   | HUI ROAD                 |     6 | False
 1315 |   1 | HUI ROAD                 | HUI ROAD                 |     6 | False
 1316 |   1 | HVN                      | HAVEN                    |     1 | False
 1321 |   1 | HWC                      | HIGHWAY CONTRACT ROUTE   |     8 | False
 1324 |   1 | HWY CONT                 | HIGHWAY CONTRACT ROUTE   |     8 | False
 1325 |   1 | HWY CONTRACT             | HIGHWAY CONTRACT ROUTE   |     8 | False
 1326 |   1 | HWY FM                   | FARM TO MARKET ROAD      |     6 | False
 1327 |   1 | HWYS                     | HIGHWAYS                 |     1 | False
 1330 |   1 | HY CONT                  | HIGHWAY CONTRACT ROUTE   |     8 | False
 1331 |   1 | HY CONTRACT              | HIGHWAY CONTRACT ROUTE   |     8 | False
 1334 |   1 | I                        | INTERSTATE HIGHWAY       |     6 | False
 1336 |   1 | I H                      | INTERSTATE HIGHWAY       |     6 | False
 1337 |   1 | IC                       | INDUSTRIAL PARK          |    24 | False
 1338 |   1 | ICHG                     | INTERCHANGE              |     1 | False
 1339 |   1 | IH                       | INTERSTATE HIGHWAY       |     6 | False
 1340 |   1 | ILE                      | ILE                      |     1 | False
 1341 |   2 | ILE                      | ILE                      |     2 | False
 1342 |   1 | IM                       | IMPASSE                  |     2 | False
 1343 |   1 | IMM                      | IMMEUBLE                 |    24 | False
 1344 |   2 | IMM                      | IMMEUBLE                 |    19 | False
 1345 |   1 | IMMEUBLE                 | IMMEUBLE                 |    24 | False
 1346 |   2 | IMMEUBLE                 | IMMEUBLE                 |    19 | False
 1347 |   1 | IMP                      | IMPASSE                  |     2 | False
 1348 |   1 | IMPASSE                  | IMPASSE                  |     2 | False
 1349 |   1 | IN CARE OF               | CARE OF                  |     9 | False
 1350 |   1 | INCTR                    | INDUSTRIAL PARK          |    24 | False
 1351 |   1 | IND PARK                 | INDUSTRIAL PARK          |    24 | False
 1352 |   1 | IND PK                   | INDUSTRIAL PARK          |    24 | False
 1353 |   1 | INDC                     | INDUSTRIAL PARK          |    24 | False
 1354 |   1 | INDL                     | INDUSTRIAL               |     1 | False
 1355 |   1 | INDL CTR                 | INDUSTRIAL PARK          |    24 | False
 1356 |   1 | INDL PARK                | INDUSTRIAL PARK          |    24 | False
 1357 |   1 | INDL PK                  | INDUSTRIAL PARK          |    24 | False
 1358 |   1 | INDUSTRIAL               | INDUSTRIAL               |     1 | False
 1359 |   1 | INDUSTRIAL CENTER        | INDUSTRIAL PARK          |    24 | False
 1360 |   1 | INDUSTRIAL CTR           | INDUSTRIAL PARK          |    24 | False
 1361 |   1 | INDUSTRIAL PARK          | INDUSTRIAL PARK          |    24 | False
 1362 |   1 | INDUSTRIAL PK            | INDUSTRIAL PARK          |    24 | False
 1363 |   1 | INLET                    | INLET                    |     1 | False
 1364 |   1 | INLT                     | INLET                    |     1 | False
 1365 |   1 | INN                      | INN                      |    24 | False
 1366 |   2 | INN                      | INN                      |     1 | False
 1367 |   1 | INPK                     | INDUSTRIAL PARK          |    24 | False
 1368 |   1 | INT L                    | INTERNATIONAL            |     1 | False
 1369 |   1 | INTE                     | INTERIOR                 |    17 | False
 1370 |   1 | INTERCHANGE              | INTERCHANGE              |     1 | False
 1371 |   1 | INTERIOR                 | INTERIOR                 |     1 | False
 1372 |   1 | INTERIOR                 | INTERIOR                 |    17 | False
 1373 |   1 | INTERNATIONAL            | INTERNATIONAL            |     1 | False
 1374 |   1 | INTERSECTION             | INTERSECTION             |     1 | False
 1375 |   1 | INTERSTATE               | INTERSTATE HIGHWAY       |     6 | False
 1376 |   2 | INTERSTATE               | INTERSTATE HIGHWAY       |     1 | False
 1377 |   1 | INTERSTATE HIGHWAY       | INTERSTATE HIGHWAY       |     6 | False
 1378 |   2 | INTERSTATE HIGHWAY       | INTERSTATE HIGHWAY       |     1 | False
 1379 |   1 | INTERSTATE HWY           | INTERSTATE HIGHWAY       |     6 | False
 1380 |   2 | INTERSTATE HWY           | INTERSTATE HIGHWAY       |     1 | False
 1381 |   1 | INSTITUTE                | INSTITUTE                |     1 | False
 1382 |   2 | INSTITUTE                | INSTITUTE                |    19 | False
 1383 |   3 | INSTITUTE                | INSTITUTE                |    24 | False
 1384 |   1 | INTL                     | INTERNATIONAL            |     1 | False
 1385 |   1 | INTR                     | INTERSECTION             |     1 | False
 1386 |   1 | IP                       | INDUSTRIAL PARK          |    24 | False
 1387 |   1 | IPRK                     | INDUSTRIAL PARK          |    24 | False
 1388 |   1 | IS                       | INTERSTATE HIGHWAY       |     6 | False
 1389 |   2 | IS                       | ISLE                     |     1 | False
 1391 |   1 | ISLAND                   | ISLAND                   |     1 | False
 1393 |   1 | ISLANDS                  | ISLANDS                  |     1 | False
 1394 |   1 | ISLE                     | ISLE                     |     1 | False
 1395 |   1 | ISLES                    | ISLES                    |     1 | False
 1396 |   1 | IZQU                     | IZQUIERDO                |    16 | False
 1397 |   1 | IZQUIERDO                | IZQUIERDO                |    16 | False
 1398 |   1 | J F K                    | JOHN F KENNEDY           |     1 | False
 1399 |   1 | J F KENNEDY              | JOHN F KENNEDY           |     1 | False
 1400 |   1 | JA                       | JARDIN                   |     2 | False
 1401 |   1 | JAF                      | JAF                      |    24 | False
 1402 |   1 | JAF BOX                  | JAF BOX                  |    14 | False
 1403 |   1 | JAF STATION              | JAF STATION              |    24 | False
 1404 |   1 | JARDIN                   | JARDIN                   |     2 | False
 1405 |   2 | JARDIN                   | JARDIN                   |     1 | False
 1408 |   3 | JCT                      | JUNCTION                 |     1 | False
 1411 |   3 | JCTION                   | JUNCTION                 |     1 | False
 1414 |   3 | JCTN                     | JUNCTION                 |     1 | False
 1415 |   1 | JEEP TRAIL               | JEEP TRAIL               |     2 | False
 1416 |   1 | JEEP TRL                 | JEEP TRAIL               |     2 | False
 1417 |   1 | JFK                      | JOHN F KENNEDY           |     1 | False
 1420 |   3 | JNCT                     | JUNCTION                 |     1 | False
 1421 |   1 | JOHN F KENNEDY           | JOHN F KENNEDY           |     1 | False
 1424 |   3 | JUNC                     | JUNCTION                 |     1 | False
 1427 |   3 | JUNCT                    | JUNCTION                 |     1 | False
 1430 |   3 | JUNCTION                 | JUNCTION                 |     1 | False
 1433 |   3 | JUNCTN                   | JUNCTION                 |     1 | False
 1312 |   2 | HTS                      | HTS                      |     2 | False
 1318 |   2 | HW                       | HWY                      |     2 | False
 1333 |   2 | HYWY                     | HWY                      |     2 | False
 1329 |   2 | HY                       | HWY                      |     2 | False
 1323 |   2 | HWY                      | HWY                      |     2 | False
 1320 |   2 | HWAY                     | HWY                      |     2 | False
 1390 |   3 | IS                       | IS                       |     2 | False
 1392 |   2 | ISLAND                   | IS                       |     2 | False
 1406 |   1 | JCT                      | JCT                      |     2 | False
 1409 |   1 | JCTION                   | JCT                      |     2 | False
 1412 |   1 | JCTN                     | JCT                      |     2 | False
 1425 |   1 | JUNCT                    | JCT                      |     2 | False
 1431 |   1 | JUNCTN                   | JCT                      |     2 | False
 1422 |   1 | JUNC                     | JCT                      |     2 | False
 1428 |   1 | JUNCTION                 | JCT                      |     2 | False
 1436 |   3 | JUNCTON                  | JUNCTION                 |     1 | False
 1437 |   1 | K MART                   | K MART                   |     1 | False
 1438 |   1 | KEY                      | KEY                      |     1 | False
 1440 |   1 | KEYSTONE ROUTE           | RURAL ROUTE              |     8 | False
 1441 |   1 | KEYSTONE RT              | RURAL ROUTE              |     8 | False
 1442 |   1 | KEYSTONE RTE             | RURAL ROUTE              |     8 | False
 1443 |   1 | KMART                    | K MART                   |     1 | False
 1444 |   1 | KNL                      | KNOLL                    |     1 | False
 1446 |   1 | KNLS                     | KNOLLS                   |     1 | False
 1449 |   1 | KNOLLS                   | KNOLLS                   |     1 | False
 1451 |   1 | L B J                    | LYNDON B JOHNSON         |     1 | False
 1452 |   1 | L B JOHNSON              | LYNDON B JOHNSON         |     1 | False
 1453 |   1 | L C D                    | LETTER CARRIER DEPOT     |    24 | False
 1456 |   1 | LAKE                     | LAKE                     |     1 | False
 1457 |   1 | LAKES                    | LAKE                     |     1 | False
 1460 |   3 | LAND                     | LANDING                  |     1 | False
 1463 |   3 | LANDING                  | LANDING                  |     1 | False
 1466 |   3 | LANDINGS                 | LANDING                  |     1 | False
 1469 |   1 | LAS                      | LAS                      |     7 | False
 1470 |   1 | LBBY                     | LOBBY                    |    17 | False
 1471 |   1 | LBJ                      | LYNDON B JOHNSON         |     1 | False
 1472 |   1 | LCD                      | LETTER CARRIER DEPOT     |    24 | False
 1473 |   1 | LCKS                     | LOCKS                    |     1 | False
 1476 |   3 | LDG                      | LODGE                    |     1 | False
 1479 |   3 | LDGE                     | LODGE                    |     1 | False
 1481 |   2 | LE                       | LE                       |     1 | False
 1482 |   3 | LE                       | LE                       |     7 | False
 1483 |   1 | LEFT                     | LEFT                     |    17 | False
 1484 |   2 | LEFT                     | LEFT                     |     1 | False
 1485 |   1 | LES                      | LES                      |     7 | False
 1486 |   1 | LETTER CARRIER DEPOT     | LETTER CARRIER DEPOT     |    24 | False
 1487 |   1 | LEVEL                    | LEVEL                    |    17 | False
 1488 |   2 | LEVEL                    | LEVEL                    |     1 | False
 1489 |   1 | LF                       | LOAF                     |     1 | False
 1490 |   1 | LGT                      | LIGHT                    |     1 | False
 1491 |   1 | LI                       | LINE                     |     2 | False
 1492 |   1 | LIGHT                    | LIGHT                    |     1 | False
 1493 |   1 | LIMITS                   | LIMITS                   |     2 | False
 1494 |   2 | LIMITS                   | LIMITS                   |     1 | False
 1495 |   1 | LINE                     | LINE                     |     2 | False
 1496 |   2 | LINE                     | LINE                     |     1 | False
 1497 |   1 | LINK                     | LINK                     |     2 | False
 1498 |   2 | LINK                     | LINK                     |     1 | False
 1499 |   1 | LK                       | LAKE                     |     1 | False
 1500 |   2 | LK                       | LINK                     |     2 | False
 1501 |   1 | LKOUT                    | LOOKOUT                  |     2 | False
 1502 |   1 | LKS                      | LAKE                     |     1 | False
 1503 |   1 | LMTS                     | LIMITS                   |     2 | False
 1504 |   2 | LMTS                     | LIMITS                   |     1 | False
 1508 |   3 | LNDG                     | LANDING                  |     1 | False
 1511 |   3 | LNDNG                    | LANDING                  |     1 | False
 1513 |   1 | LOAF                     | LOAF                     |     1 | False
 1514 |   1 | LOBBY                    | LOBBY                    |    17 | False
 1515 |   1 | LOBBY                    | LOBBY                    |     1 | False
 1516 |   1 | LOCAL                    | BOX                      |    14 | False
 1517 |   1 | LOCAL BOX                | BOX                      |    14 | False
 1518 |   1 | LOCAL HCR                | HIGHWAY CONTRACT ROUTE   |     8 | False
 1519 |   1 | LOCAL PO BOX             | POST OFFICE BOX          |    14 | False
 1520 |   1 | LOCKBOX                  | POST OFFICE BOX          |    14 | False
 1521 |   1 | LOCKS                    | LOCKS                    |     1 | False
 1524 |   3 | LODGE                    | LODGE                    |     1 | False
 1525 |   1 | LOOKOUT                  | LOOKOUT                  |     2 | False
 1526 |   2 | LOOKOUT                  | LOOKOUT                  |     1 | False
 1529 |   1 | LOS                      | LOS                      |     7 | False
 1530 |   1 | LOT                      | LOT                      |    16 | False
 1531 |   2 | LOT                      | LOT                      |    17 | False
 1532 |   3 | LOT                      | LOT                      |     1 | False
 1533 |   1 | LOWER                    | LOWER                    |     1 | False
 1534 |   2 | LOWER                    | LOWER                    |    17 | False
 1535 |   1 | LOWR                     | LOWER                    |     1 | False
 1536 |   2 | LOWR                     | LOWER                    |    17 | False
 1539 |   1 | LT                       | LOT                      |    16 | False
 1540 |   2 | LT                       | LOT                      |     1 | False
 1541 |   3 | LT                       | LOOKOUT                  |     2 | False
 1542 |   1 | LVL                      | LEVEL                    |    17 | False
 1543 |   1 | LWR                      | LOWER                    |     1 | False
 1544 |   2 | LWR                      | LOWER                    |    17 | False
 1545 |   1 | LYNDON B JOHNSON         | LYNDON B JOHNSON         |     1 | False
 1546 |   1 | M H P                    | TRAILER PARK             |    24 | False
 1547 |   1 | M L K                    | MARTIN LUTHER KING       |     1 | False
 1548 |   1 | M L KING                 | MARTIN LUTHER KING       |     1 | False
 1549 |   1 | MAISON                   | MAISON                   |    24 | False
 1550 |   2 | MAISON                   | MAISON                   |    19 | False
 1551 |   3 | MAISON                   | MAISON                   |     1 | False
 1555 |   3 | MALL                     | MALL                     |     1 | False
 1559 |   3 | MANOR                    | MANOR                    |     1 | False
 1562 |   1 | MARG                     | MARGINAL                 |     2 | False
 1563 |   1 | MARGINAL                 | MARGINAL                 |     2 | False
 1564 |   1 | MARKET                   | MARKET                   |    24 | False
 1565 |   2 | MARKET                   | MARKET                   |     1 | False
 1566 |   1 | MARKET PL                | MARKET                   |    24 | False
 1567 |   1 | MARKET PLACE             | MARKET                   |    24 | False
 1434 |   1 | JUNCTON                  | JCT                      |     2 | False
 1450 |   4 | KY                       | KY                       |     2 | False
 1439 |   2 | KEY                      | KY                       |     2 | False
 1445 |   2 | KNL                      | KNL                      |     2 | False
 1448 |   1 | KNOLL                    | KNL                      |     2 | False
 1447 |   2 | KNLS                     | KNLS                     |     2 | False
 1506 |   1 | LNDG                     | LNDG                     |     2 | False
 1464 |   1 | LANDINGS                 | LNDG                     |     2 | False
 1461 |   1 | LANDING                  | LNDG                     |     2 | False
 1458 |   1 | LAND                     | LNDG                     |     2 | False
 1467 |   1 | LANDNG                   | LNDG                     |     2 | False
 1509 |   1 | LNDNG                    | LNDG                     |     2 | False
 1454 |   1 | LA                       | LN                       |     2 | False
 1468 |   1 | LANE                     | LN                       |     2 | False
 1480 |   1 | LE                       | LN                       |     2 | False
 1568 |   1 | MARKETPLACE              | MARKET                   |    24 | False
 1569 |   1 | MART                     | MARKET                   |    24 | False
 1570 |   1 | MARTIN KING              | MARTIN LUTHER KING       |     1 | False
 1571 |   1 | MARTIN L KING            | MARTIN LUTHER KING       |     1 | False
 1572 |   1 | MARTIN LUTHER            | MARTIN LUTHER KING       |     1 | False
 1573 |   1 | MARTIN LUTHER KING       | MARTIN LUTHER KING       |     1 | False
 1574 |   1 | MARTIN LUTHER KING JR    | MARTIN LUTHER KING       |     1 | False
 1575 |   1 | MAZE                     | MAZE                     |     2 | False
 1576 |   1 | MC                       | MC                       |     1 | False
 1577 |   1 | MDWS                     | MEADOWS                  |     1 | False
 1580 |   1 | MEADOW                   | MEADOW                   |     1 | False
 1582 |   1 | MEADOWS                  | MEADOWS                  |     1 | False
 1584 |   1 | MED                      | MEDICAL                  |     1 | False
 1585 |   1 | MEDICAL                  | MEDICAL                  |     1 | False
 1586 |   1 | MEM                      | MEMORIAL                 |     1 | False
 1587 |   1 | MEMORIAL                 | MEMORIAL                 |     1 | False
 1588 |   1 | MERC                     | MERCADO                  |    24 | False
 1589 |   1 | MERCADO                  | MERCADO                  |    24 | False
 1591 |   2 | MEWS                     | MEWS                     |     1 | False
 1593 |   1 | MH                       | MOBILE HOME              |    16 | False
 1594 |   1 | MH CT                    | TRAILER PARK             |    24 | False
 1595 |   1 | MH PARK                  | TRAILER PARK             |    24 | False
 1596 |   1 | MHP                      | TRAILER PARK             |    24 | False
 1597 |   1 | MI                       | MILE POST                |    20 | False
 1598 |   1 | MI POST                  | MILE                     |     1 | False
 1599 |   1 | MIDDLE                   | MIDDLE                   |    17 | False
 1600 |   2 | MIDDLE                   | MIDDLE                   |     1 | False
 1601 |   1 | MILE                     | MILE                     |     1 | False
 1602 |   2 | MILE                     | MILE POST                |    20 | False
 1603 |   1 | MILE POST                | MILE                     |     1 | False
 1604 |   2 | MILE POST                | MILE POST                |    20 | False
 1605 |   1 | MILES                    | MILE                     |     1 | False
 1606 |   1 | MILL                     | MILL                     |     1 | False
 1607 |   1 | MILLS                    | MILLS                    |     1 | False
 1608 |   1 | MISSION                  | MISSION                  |     1 | False
 1609 |   1 | MKT                      | MARKET                   |    24 | False
 1610 |   1 | MKT PL                   | MARKET                   |    24 | False
 1611 |   1 | MKT PLACE                | MARKET                   |    24 | False
 1612 |   1 | MKTPL                    | MARKET                   |    24 | False
 1615 |   3 | ML                       | MALL                     |     1 | False
 1616 |   1 | ML KING                  | MARTIN LUTHER KING       |     1 | False
 1617 |   1 | MLK                      | MARTIN LUTHER KING       |     1 | False
 1618 |   1 | MLS                      | MILLS                    |     1 | False
 1621 |   3 | MNR                      | MANOR                    |     1 | False
 1623 |   2 | MNRS                     | MANOR                    |     1 | False
 1624 |   1 | MNT                      | MOUNT                    |     1 | False
 1625 |   4 | MO                       | MONTEE                   |     2 | False
 1626 |   1 | MOB HM PK                | TRAILER PARK             |    24 | False
 1627 |   1 | MOB HOME PARK            | TRAILER PARK             |    24 | False
 1628 |   1 | MOBIL HOME PARK          | TRAILER PARK             |    24 | False
 1629 |   1 | MOBIL HOME TRPK          | TRAILER PARK             |    24 | False
 1630 |   1 | MOBILE COURT             | TRAILER PARK             |    24 | False
 1631 |   1 | MOBILE CT                | TRAILER PARK             |    24 | False
 1632 |   1 | MOBILE EST               | TRAILER PARK             |    24 | False
 1633 |   1 | MOBILE ESTATE            | TRAILER PARK             |    24 | False
 1634 |   1 | MOBILE HM PK             | TRAILER PARK             |    24 | False
 1635 |   1 | MOBILE HOME              | TRAILER PARK             |    24 | False
 1636 |   2 | MOBILE HOME              | MOBILE HOME              |    16 | False
 1637 |   1 | MOBILE HOME PARK         | TRAILER PARK             |    24 | False
 1638 |   1 | MOBILE HOME PK           | TRAILER PARK             |    24 | False
 1639 |   1 | MOBILE HOME TRPK         | TRAILER PARK             |    24 | False
 1640 |   1 | MOBILE HOMES             | TRAILER PARK             |    24 | False
 1641 |   1 | MOBILE PARK              | TRAILER PARK             |    24 | False
 1642 |   1 | MOBILE ROUTE             | MOBILE ROUTE             |     8 | False
 1643 |   1 | MONTEE                   | MONTEE                   |     2 | False
 1644 |   2 | MONTEE                   | MONTEE                   |     1 | False
 1645 |   1 | MOOR                     | MOOR                     |     1 | False
 1646 |   2 | MOOR                     | MOOR                     |     2 | False
 1647 |   1 | MOTEL                    | MOTEL                    |    24 | False
 1649 |   1 | MOUNT                    | MOUNT                    |     1 | False
 1651 |   1 | MOUNTAIN                 | MOUNTAIN                 |     1 | False
 1653 |   1 | MOUNTAINS                | MOUNTAIN                 |     1 | False
 1654 |   1 | MP                       | MILE                     |     1 | False
 1655 |   2 | MP                       | MILE POST                |    20 | False
 1656 |   1 | MR                       | MOBILE ROUTE             |     8 | False
 1657 |   1 | MS                       | MS                       |    17 | False
 1658 |   1 | MSN                      | MISSION                  |     1 | False
 1659 |   1 | MT                       | MOUNT                    |     1 | False
 1660 |   1 | MTD ROUTE                | RURAL ROUTE              |     8 | False
 1661 |   1 | MTD RT                   | RURAL ROUTE              |     8 | False
 1662 |   1 | MTD RTE                  | RURAL ROUTE              |     8 | False
 1663 |   1 | MTL                      | MOTEL                    |    24 | False
 1664 |   1 | MTN                      | MOUNTAIN                 |     1 | False
 1665 |   1 | MTNS                     | MOUNTAIN                 |     1 | False
 1668 |   1 | MURO                     | MURO                     |     2 | False
 1672 |   1 | N A B                    | NAVAL AIR STATION        |     1 | False
 1673 |   2 | N A B                    | NAVAL AIR STATION        |    24 | False
 1674 |   1 | N A S                    | NAVAL AIR STATION        |     1 | False
 1675 |   2 | N A S                    | NAVAL AIR STATION        |    24 | False
 1677 |   1 | N F D                    | NATL FOREST DEVELOP ROAD |     2 | False
 1679 |   1 | NAB                      | NAVAL AIR STATION        |     1 | False
 1680 |   2 | NAB                      | NAVAL AIR STATION        |    24 | False
 1681 |   1 | NAS                      | NAVAL AIR STATION        |     1 | False
 1682 |   2 | NAS                      | NAVAL AIR STATION        |    24 | False
 1683 |   1 | NATIONAL                 | NATIONAL                 |     1 | False
 1684 |   1 | NATL                     | NATIONAL                 |     1 | False
 1685 |   1 | NATL FOREST              | NATL FOREST              |     1 | False
 1686 |   1 | NATL FOREST DEVELOP ROAD | NATL FOREST DEVELOP ROAD |     2 | False
 1687 |   1 | NATL FOREST HIGHWAY      | NATL FOREST HIGHWAY      |     6 | False
 1688 |   1 | NAVAL AIR BASE           | NAVAL AIR STATION        |     1 | False
 1689 |   2 | NAVAL AIR BASE           | NAVAL AIR STATION        |    24 | False
 1690 |   1 | NAVAL AIR STATION        | NAVAL AIR STATION        |     1 | False
 1691 |   2 | NAVAL AIR STATION        | NAVAL AIR STATION        |    24 | False
 1613 |   1 | ML                       | MALL                     |     2 | False
 1619 |   1 | MNR                      | MNR                      |     2 | False
 1669 |   1 | MW                       | MDW                      |     2 | False
 1581 |   2 | MEADOW                   | MDW                      |     2 | False
 1579 |   4 | ME                       | MEWS                     |     2 | False
 1590 |   1 | MEWS                     | MEWS                     |     2 | False
 1670 |   1 | N                        | N                        |    22 | False
 1671 |   2 | N                        | N                        |    18 | False
 1676 |   1 | N E                      | NE                       |    22 | False
 1678 |   1 | N W                      | NW                       |    22 | False
 1692 |   1 | NAVAL BASE               | NAVAL AIR STATION        |     1 | False
 1693 |   2 | NAVAL BASE               | NAVAL AIR STATION        |    24 | False
 1694 |   1 | NCK                      | NECK                     |     1 | False
 1696 |   1 | NEAR                     | NEAR                     |     1 | False
 1697 |   1 | NECK                     | NECK                     |     1 | False
 1698 |   1 | NF HWY                   | NATL FOREST HIGHWAY      |     6 | False
 1699 |   1 | NFD                      | NATL FOREST DEVELOP ROAD |     2 | False
 1700 |   1 | NFD                      | NATL FOREST DEVELOP ROAD |     6 | False
 1701 |   1 | NFHWY                    | NATL FOREST HIGHWAY      |     6 | False
 1702 |   1 | NINE                     | 9                        |     1 | False
 1703 |   2 | NINE                     | 9                        |     0 | False
 1704 |   1 | NINE MILE                | NINE MILE                |     1 | False
 1705 |   1 | NINETEEN                 | 19                       |     0 | False
 1706 |   2 | NINETEEN                 | 19                       |     1 | False
 1707 |   1 | NINETEEN MILE            | NINETEEN MILE            |     1 | False
 1708 |   1 | NINETEENTH               | 19                       |     1 | False
 1709 |   2 | NINETEENTH               | 19TH                     |    15 | False
 1710 |   1 | NINETIETH                | 90                       |     1 | False
 1711 |   2 | NINETIETH                | 90TH                     |    15 | False
 1712 |   1 | NINETY                   | 90                       |     0 | False
 1713 |   2 | NINETY                   | 90                       |     1 | False
 1714 |   1 | NINETY EIGHT             | 98                       |     0 | False
 1715 |   2 | NINETY EIGHT             | 98                       |     1 | False
 1716 |   1 | NINETY EIGHTH            | 98                       |     1 | False
 1717 |   2 | NINETY EIGHTH            | 98TH                     |    15 | False
 1718 |   1 | NINETY FIFTH             | 95                       |     1 | False
 1719 |   2 | NINETY FIFTH             | 95TH                     |    15 | False
 1720 |   1 | NINETY FIRST             | 91                       |     1 | False
 1721 |   2 | NINETY FIRST             | 91ST                     |    15 | False
 1722 |   1 | NINETY FIVE              | 95                       |     0 | False
 1723 |   2 | NINETY FIVE              | 95                       |     1 | False
 1724 |   1 | NINETY FOUR              | 94                       |     0 | False
 1725 |   2 | NINETY FOUR              | 94                       |     1 | False
 1726 |   1 | NINETY FOURTH            | 94                       |     1 | False
 1727 |   2 | NINETY FOURTH            | 94TH                     |    15 | False
 1728 |   1 | NINETY NINE              | 99                       |     0 | False
 1729 |   2 | NINETY NINE              | 99                       |     1 | False
 1730 |   1 | NINETY NINTH             | 99                       |     1 | False
 1731 |   2 | NINETY NINTH             | 99TH                     |    15 | False
 1732 |   1 | NINETY ONE               | 91                       |     0 | False
 1733 |   2 | NINETY ONE               | 91                       |     1 | False
 1734 |   1 | NINETY SECOND            | 92                       |     1 | False
 1735 |   2 | NINETY SECOND            | 92ND                     |    15 | False
 1736 |   1 | NINETY SEVEN             | 97                       |     0 | False
 1737 |   2 | NINETY SEVEN             | 97                       |     1 | False
 1868 |   1 | PD                       | POND                     |     1 | False
 1738 |   1 | NINETY SEVENTH           | 97                       |     1 | False
 1739 |   2 | NINETY SEVENTH           | 97TH                     |    15 | False
 1740 |   1 | NINETY SIX               | 96                       |     0 | False
 1741 |   2 | NINETY SIX               | 96                       |     1 | False
 1742 |   1 | NINETY SIXTH             | 96                       |     1 | False
 1743 |   2 | NINETY SIXTH             | 96TH                     |    15 | False
 1744 |   1 | NINETY THIRD             | 93                       |     1 | False
 1745 |   2 | NINETY THIRD             | 93RD                     |    15 | False
 1746 |   1 | NINETY THREE             | 93                       |     0 | False
 1747 |   2 | NINETY THREE             | 93                       |     1 | False
 1748 |   1 | NINETY TWO               | 92                       |     0 | False
 1749 |   2 | NINETY TWO               | 92                       |     1 | False
 1750 |   1 | NINTH                    | 9                        |     1 | False
 1751 |   2 | NINTH                    | 9TH                      |    15 | False
 1752 |   1 | NO                       | #                        |    16 | False
 1754 |   3 | NO                       | #                        |     7 | False
 1756 |   1 | NORD                     | NORD                     |    22 | False
 1757 |   1 | NORD EST                 | NORD EST                 |    22 | False
 1758 |   1 | NORD OUEST               | NORD OUEST               |    22 | False
 1759 |   1 | NORDEST                  | NORD EST                 |    22 | False
 1760 |   1 | NORDOUEST                | NORD OUEST               |    22 | False
 1763 |   1 | NORTH & SOUTH            | NORTH & SOUTH            |     1 | False
 1765 |   1 | NORTH SOUTH              | NORTH SOUTH              |     1 | False
 1767 |   1 | NORTHBOUND               | NORTHBOUND               |     1 | False
 1768 |   2 | NORTHBOUND               | NORTHBOUND               |     3 | False
 1770 |   1 | NR                       | NEAR                     |     1 | False
 1772 |   1 | NUMBER                   | #                        |    16 | False
 1773 |   2 | NUMBER                   | #                        |     7 | False
 1775 |   1 | O                        | 0                        |    18 | False
 1776 |   2 | O                        | O                        |     7 | False
 1777 |   1 | OESTE                    | OESTE                    |    22 | False
 1778 |   1 | OF                       | OF                       |     7 | False
 1779 |   1 | OF PK                    | OFFICE PARK              |    24 | False
 1780 |   1 | OF PRK                   | OFFICE PARK              |    24 | False
 1781 |   1 | OFC                      | OFFICE                   |    17 | False
 1782 |   1 | OFC CENTER               | OFFICE PARK              |    24 | False
 1783 |   1 | OFC COMPLEX              | OFFICE PARK              |    24 | False
 1784 |   1 | OFC CTR                  | OFFICE PARK              |    24 | False
 1785 |   1 | OFC PARK                 | OFFICE PARK              |    24 | False
 1786 |   1 | OFC PRK                  | OFFICE PARK              |    24 | False
 1787 |   1 | OFFICE                   | OFFICE                   |    17 | False
 1788 |   2 | OFFICE                   | OFFICE PARK              |    24 | False
 1789 |   1 | OFFICE CENTER            | OFFICE PARK              |    24 | False
 1790 |   1 | OFFICE COMPLEX           | OFFICE PARK              |    24 | False
 1791 |   1 | OFFICE CTR               | OFFICE PARK              |    24 | False
 1792 |   1 | OFFICE PARK              | OFFICE PARK              |    24 | False
 1793 |   1 | OFFICE PRK               | OFFICE PARK              |    24 | False
 1794 |   1 | OFFICES                  | OFFICE PARK              |    24 | False
 1795 |   1 | OFPK                     | OFFICE PARK              |    24 | False
 1796 |   1 | OFPRK                    | OFFICE PARK              |    24 | False
 1797 |   1 | OLD                      | OLD                      |     3 | False
 1798 |   2 | OLD                      | OLD                      |     1 | False
 1799 |   4 | ON                       | ON                       |     7 | False
 1800 |   1 | ONE                      | 1                        |     1 | False
 1801 |   2 | ONE                      | 1                        |     0 | False
 1802 |   1 | ONE HUNDRED              | ONE HUNDRED              |     1 | False
 1803 |   2 | ONE HUNDRED              | 100                      |     0 | False
 1804 |   1 | ONE MILE                 | ONE MILE                 |     1 | False
 1805 |   1 | ORCH                     | ORCHARD                  |     1 | False
 1806 |   1 | ORCHARD                  | ORCHARD                  |     1 | False
 1808 |   1 | OTLT                     | OUTLET                   |    24 | False
 1809 |   1 | OUEST                    | OUEST                    |    22 | False
 1810 |   1 | OUTLET                   | OUTLET                   |    24 | False
 1811 |   1 | OUTLETS                  | OUTLET                   |    24 | False
 1812 |   1 | OUTS                     | OUTSIDE OF               |     1 | False
 1813 |   1 | OUTSIDE                  | OUTSIDE OF               |     1 | False
 1817 |   1 | P BOX                    | POST OFFICE BOX          |    14 | False
 1818 |   1 | P BX                     | POST OFFICE BOX          |    14 | False
 1819 |   1 | P H                      | PH                       |    17 | False
 1820 |   1 | P O                      | POST OFFICE BOX          |    14 | False
 1821 |   1 | P O B                    | POST OFFICE BOX          |    14 | False
 1695 |   1 | NE                       | NE                       |    22 | False
 1753 |   2 | NO                       | N                        |    22 | False
 1755 |   1 | NOR                      | N                        |    22 | False
 1761 |   1 | NORTE                    | N                        |    22 | False
 1822 |   1 | P O B X                  | POST OFFICE BOX          |    14 | False
 1823 |   1 | P O BOX                  | POST OFFICE BOX          |    14 | False
 1824 |   1 | P O BX                   | POST OFFICE BOX          |    14 | False
 1825 |   1 | P O DRAWER               | POST OFFICE BOX          |    14 | False
 1826 |   4 | PA                       | PARADE                   |     2 | False
 1827 |   1 | PAR                      | PARCELAS                 |    16 | False
 1828 |   2 | PAR                      | PARCELAS                 |     1 | False
 1829 |   3 | PAR                      | PARCELAS                 |     6 | False
 1830 |   1 | PAR RD                   | PARISH ROAD              |     6 | False
 1831 |   1 | PAR ROAD                 | PARISH ROAD              |     6 | False
 1832 |   1 | PARADE                   | PARADE                   |     2 | False
 1833 |   2 | PARADE                   | PARADE                   |     1 | False
 1834 |   1 | PARADERO                 | PARADERO                 |     1 | False
 1835 |   1 | PARC                     | PARC                     |     1 | False
 1836 |   2 | PARC                     | PARC                     |    24 | False
 1837 |   3 | PARC                     | PARC                     |     2 | False
 1838 |   1 | PARCELAS                 | PARCELAS                 |    16 | False
 1839 |   1 | PARISH RD                | PARISH ROAD              |     6 | False
 1840 |   1 | PARISH ROAD              | PARISH ROAD              |     6 | False
 1841 |   1 | PARK                     | PARK                     |     1 | False
 1844 |   1 | PARK & SHOP              | SHOPPING CENTER          |    24 | False
 1845 |   1 | PARK N SHOP              | SHOPPING CENTER          |    24 | False
 1848 |   1 | PARQUE                   | PARQUE                   |     2 | False
 1849 |   1 | PARRD                    | PARISH ROAD              |     6 | False
 1850 |   1 | PASAJE                   | PASAJE                   |     2 | False
 1851 |   1 | PASEO                    | PASEO                    |     2 | False
 1852 |   1 | PASO                     | PASO                     |     1 | False
 1853 |   2 | PASO                     | PASO                     |     2 | False
 1857 |   1 | PATHWAY                  | PATHWAY                  |     2 | False
 1858 |   1 | PAVILION                 | PAVILLION                |    24 | False
 1859 |   2 | PAVILION                 | PAVILLION                |     1 | False
 1860 |   1 | PAVILIONS                | PAVILLION                |    24 | False
 1861 |   2 | PAVILIONS                | PAVILLION                |     1 | False
 1862 |   1 | PAVILLION                | PAVILLION                |    24 | False
 1863 |   2 | PAVILLION                | PAVILLION                |     1 | False
 1864 |   1 | PAVILLIONS               | PAVILLION                |    24 | False
 1865 |   2 | PAVILLIONS               | PAVILLION                |     1 | False
 1866 |   1 | PAVL                     | PAVILLION                |    24 | False
 1867 |   2 | PAVL                     | PAVILLION                |     1 | False
 1869 |   1 | PDA                      | PARADERO                 |     1 | False
 2939 |   1 | PENTHOUSE                | PENTHOUSE                |     2 | False
 1870 |   1 | PENTHOUSE                | PH                       |    17 | False
 1871 |   1 | PH                       | PH                       |    17 | False
 1873 |   1 | PIECE                    | PIECE                    |    16 | False
 1874 |   2 | PIECE                    | PIECE                    |    17 | False
 1875 |   1 | PIER                     | PIER                     |    16 | False
 1876 |   2 | PIER                     | PIER                     |     1 | False
 1877 |   3 | PIER                     | PIER                     |    24 | False
 1879 |   1 | PINES                    | PINES                    |     1 | False
 1881 |   1 | PISO                     | PISO                     |    16 | False
 1882 |   1 | PISTA                    | PISTA                    |     2 | False
 1883 |   1 | PK                       | PARK                     |     1 | False
 1893 |   1 | PLAIN                    | PLAINS                   |     1 | False
 1894 |   1 | PLAINS                   | PLAINS                   |     1 | False
 1895 |   1 | PLANTATION               | PLANTATION               |    24 | False
 1896 |   2 | PLANTATION               | PLANTATION               |     1 | False
 1897 |   1 | PLATEAU                  | PLATEAU                  |     1 | False
 1898 |   2 | PLATEAU                  | PLATEAU                  |     2 | False
 1902 |   1 | PLN                      | PLAINS                   |     1 | False
 1903 |   1 | PLNS                     | PLAINS                   |     1 | False
 1904 |   1 | PLNT                     | PLANTATION               |    24 | False
 1909 |   1 | PM                       | PROMENADE                |     2 | False
 1910 |   1 | PNES                     | PINES                    |     1 | False
 1911 |   1 | PO                       | POST OFFICE BOX          |    14 | False
 1912 |   1 | PO B                     | POST OFFICE BOX          |    14 | False
 1913 |   1 | PO B OX                  | POST OFFICE BOX          |    14 | False
 1914 |   1 | PO B X                   | POST OFFICE BOX          |    14 | False
 1915 |   1 | PO BOX                   | POST OFFICE BOX          |    14 | False
 1916 |   1 | PO BX                    | POST OFFICE BOX          |    14 | False
 1917 |   1 | PO DRAWER                | POST OFFICE BOX          |    14 | False
 1918 |   1 | POB                      | POST OFFICE BOX          |    14 | False
 1919 |   1 | POBOX                    | POST OFFICE BOX          |    14 | False
 1920 |   1 | POINT                    | POINT                    |     1 | False
 1921 |   1 | PORT                     | PORT                     |     1 | False
 1923 |   1 | POST BOX                 | POST OFFICE BOX          |    14 | False
 1924 |   1 | POST BX                  | POST OFFICE BOX          |    14 | False
 1925 |   1 | POST OFFICE BOX          | POST OFFICE BOX          |    14 | False
 1926 |   1 | POSTAL BOX               | POST OFFICE BOX          |    14 | False
 1927 |   1 | POSTAL BX                | POST OFFICE BOX          |    14 | False
 1928 |   1 | POSTAL OUTLET            | POSTAL OUTLET            |    14 | False
 1929 |   2 | POSTAL OUTLET            | POSTAL OUTLET            |    24 | False
 1930 |   1 | POSTOFFICE BOX           | POST OFFICE BOX          |    14 | False
 1931 |   1 | POSTOFFICE BX            | POST OFFICE BOX          |    14 | False
 1932 |   1 | POUCH                    | POST OFFICE BOX          |    14 | False
 1934 |   1 | PR HI                    | PROVINCIAL HIGHWAY       |     6 | False
 1935 |   1 | PR HIGHWAY               | PROVINCIAL HIGHWAY       |     6 | False
 1936 |   1 | PR HWY                   | PROVINCIAL HIGHWAY       |     6 | False
 1938 |   1 | PR RT                    | PROVINCIAL ROUTE         |     6 | False
 1939 |   1 | PR RTE                   | PROVINCIAL ROUTE         |     6 | False
 1940 |   1 | PRAIRIE                  | PRAIRIE                  |     1 | False
 1941 |   1 | PREMIERE                 | 1                        |     1 | False
 1942 |   2 | PREMIERE                 | 1                        |    15 | False
 1943 |   1 | PRIVATE                  | PRIVATE                  |     1 | False
 1944 |   2 | PRIVATE                  | PRIVATE                  |     2 | False
 1945 |   1 | PRK                      | PARK                     |     1 | False
 1948 |   1 | PRO                      | PROFESSIONAL             |     1 | False
 1949 |   1 | PROF                     | PROFESSIONAL             |     1 | False
 1947 |   3 | PRK                      | PARK                     |     2 | False
 1843 |   3 | PARK                     | PARK                     |     2 | False
 1933 |   4 | PR                       | PARK                     |     2 | False
 1885 |   3 | PK                       | PARK                     |     2 | False
 1888 |   1 | PKWAY                    | PKWY                     |     2 | False
 1889 |   1 | PKWY                     | PKWY                     |     2 | False
 1872 |   2 | PH                       | PATH                     |     2 | False
 1950 |   1 | PROFESSIONAL             | PROFESSIONAL             |     1 | False
 1951 |   1 | PROJ                     | PROJECTS                 |    24 | False
 1952 |   1 | PROJECTS                 | PROJECTS                 |    24 | False
 1953 |   1 | PROM                     | PROMENADE                |    24 | False
 1954 |   2 | PROM                     | PROMENADE                |     2 | False
 1955 |   1 | PROMENADE                | PROMENADE                |    24 | False
 1956 |   2 | PROMENADE                | PROMENADE                |     2 | False
 1957 |   1 | PROVINCIAL HI            | PROVINCIAL HIGHWAY       |     6 | False
 1958 |   1 | PROVINCIAL HIGHWAY       | PROVINCIAL HIGHWAY       |     6 | False
 1959 |   1 | PROVINCIAL HWY           | PROVINCIAL HIGHWAY       |     6 | False
 1960 |   1 | PROVINCIAL HY            | PROVINCIAL HIGHWAY       |     6 | False
 1961 |   1 | PROVINCIAL ROUTE         | PROVINCIAL ROUTE         |     6 | False
 1962 |   1 | PROVINCIAL RT            | PROVINCIAL ROUTE         |     6 | False
 1963 |   1 | PROVINCIAL RTE           | PROVINCIAL ROUTE         |     6 | False
 1964 |   1 | PRQE                     | PARQUE                   |     2 | False
 1965 |   1 | PRRD                     | PARISH ROAD              |     6 | False
 1966 |   1 | PRT                      | PORT                     |     1 | False
 1968 |   1 | PSC                      | PSC                      |     8 | False
 1969 |   1 | PSO                      | PASEO                    |     2 | False
 1970 |   1 | PSTA                     | PISTA                    |     2 | False
 1971 |   1 | PT                       | POINT                    |     1 | False
 1973 |   1 | PTE                      | PUENTE                   |     2 | False
 1974 |   1 | PU                       | PLATEAU                  |     2 | False
 1975 |   1 | PUENTE                   | PUENTE                   |     2 | False
 1976 |   1 | PV                       | PRIVATE                  |     2 | False
 1977 |   1 | PVT                      | PRIVATE                  |     1 | False
 1978 |   2 | PVT                      | PRIVATE                  |     2 | False
 1979 |   1 | PW                       | PATHWAY                  |     2 | False
 1983 |   1 | QTRS                     | QUARTERS                 |    24 | False
 1984 |   1 | QU                       | QUAY                     |     2 | False
 1985 |   1 | QUAI                     | QUAI                     |     2 | False
 1986 |   2 | QUAI                     | QUAI                     |     1 | False
 1987 |   1 | QUARTERS                 | QUARTERS                 |    24 | False
 1988 |   1 | QUATRE                   | 4                        |     1 | False
 1989 |   2 | QUATRE                   | 3                        |     0 | False
 1990 |   1 | QUATRIEME                | QUATRIEME                |     1 | False
 1991 |   1 | QUAY                     | QUAY                     |     2 | False
 1992 |   2 | QUAY                     | QUAY                     |     1 | False
 1993 |   1 | QUAY RD                  | QUAY ROAD                |     6 | False
 1994 |   1 | QUAY ROAD                | QUAY ROAD                |     6 | False
 1995 |   1 | R                        | R                        |    18 | False
 1996 |   2 | R                        | RURAL ROUTE              |     8 | False
 1997 |   1 | R D                      | RURAL ROUTE              |     8 | False
 1998 |   1 | R D NO                   | RURAL ROUTE              |     8 | False
 1999 |   1 | R F D                    | RURAL ROUTE              |     8 | False
 2000 |   1 | R NO                     | RURAL ROUTE              |     8 | False
 2001 |   1 | R P O                    | POSTAL OUTLET            |    14 | False
 2002 |   2 | R P O                    | POSTAL OUTLET            |    24 | False
 2003 |   1 | R R                      | RURAL ROUTE              |     8 | False
 2004 |   1 | R R NO                   | RURAL ROUTE              |     8 | False
 2005 |   1 | R RT                     | RURAL ROUTE              |     8 | False
 2006 |   1 | R RTE                    | RURAL ROUTE              |     8 | False
 2009 |   1 | RA                       | RANGE                    |     2 | False
 2010 |   1 | RADIAL                   | RADIAL                   |     1 | False
 2011 |   1 | RADL                     | RADIAL                   |     1 | False
 2012 |   1 | RAMAL                    | RAMAL                    |     2 | False
 2014 |   1 | RAMPA                    | RAMPA                    |     2 | False
 2015 |   1 | RANCH                    | RANCH                    |     1 | False
 2016 |   1 | RANCH TO MARKET ROAD     | RANCH TO MARKET ROAD     |     6 | False
 2017 |   1 | RANCH TO MARKET ROAD     | RANCH TO MARKET ROAD     |     2 | False
 2018 |   1 | RANCH RD                 | RANCH ROAD               |     6 | False
 2019 |   1 | RANCH RD                 | RANCH ROAD               |     2 | False
 2020 |   1 | RANCH ROAD               | RANCH ROAD               |     6 | False
 2021 |   1 | RANCH ROAD               | RANCH ROAD               |     2 | False
 2022 |   1 | RANG                     | RANG                     |     2 | False
 2023 |   2 | RANG                     | RANG                     |     1 | False
 2024 |   1 | RANGE                    | RANGE                    |     2 | False
 2025 |   2 | RANGE                    | RANGE                    |     1 | False
 2026 |   1 | RANGE ROAD               | RANGE ROAD               |     6 | False
 2027 |   1 | RANGE ROAD               | RANGE ROAD               |     2 | False
 2028 |   1 | RAPIDS                   | RAPIDS                   |     1 | False
 2030 |   1 | RDG                      | RIDGE                    |     1 | False
 2032 |   1 | RDPT                     | ROND POINT               |     2 | False
 2033 |   1 | RDS                      | ROADS                    |     1 | False
 2034 |   1 | RDWY                     | ROADWAY                  |     2 | False
 2036 |   1 | REAR                     | REAR                     |    17 | False
 2037 |   1 | REAR                     | REAR                     |     1 | False
 2038 |   1 | RES                      | RESIDENCIA               |    24 | False
 2039 |   1 | RES HWY                  | RESERVATION HIGHWAY      |     6 | False
 2040 |   1 | RESERVATION HIGHWAY      | RESERVATION HIGHWAY      |     6 | False
 2041 |   1 | RESHY                    | RESERVATION HIGHWAY      |     6 | False
 2042 |   1 | RESIDENCIA               | RESIDENCIA               |    24 | False
 2043 |   1 | RESORT                   | RESORT                   |     1 | False
 2044 |   2 | RESORT                   | RESORT                   |    24 | False
 2045 |   1 | REST                     | REST                     |     1 | False
 2046 |   1 | REZ DE CHAUSEE           | REZ DE CHAUSEE           |    17 | False
 2047 |   1 | RFD                      | RURAL ROUTE              |     8 | False
 2048 |   1 | RFD ROUTE                | RURAL ROUTE              |     8 | False
 2049 |   1 | RG                       | RANGE                    |     2 | False
 2050 |   2 | RG                       | RANGE                    |     1 | False
 2051 |   1 | RGHT                     | RIGHT                    |    17 | False
 2052 |   4 | RI                       | RISE                     |     2 | False
 2053 |   1 | RIDGE                    | RIDGE                    |     1 | False
 2055 |   1 | RIGHT                    | RIGHT                    |    17 | False
 2056 |   1 | RISE                     | RISE                     |     2 | False
 2057 |   1 | RIV                      | RIVER                    |     1 | False
 2058 |   1 | RIVER                    | RIVER                    |     1 | False
 2059 |   1 | RL                       | RUELLE                   |     2 | False
 2060 |   1 | RLE                      | RUELLE                   |     2 | False
 2061 |   1 | RM                       | ROOM                     |    16 | False
 2062 |   2 | RM                       | ROOM                     |    17 | False
 2063 |   3 | RM                       | RANCH TO MARKET ROAD     |     6 | False
 2064 |   4 | RM                       | RANCH TO MARKET ROAD     |     2 | False
 2065 |   1 | RM RD                    | RANCH TO MARKET ROAD     |     6 | False
 2066 |   1 | RM RD                    | RANCH TO MARKET ROAD     |     2 | False
 2067 |   1 | RML                      | RAMAL                    |     2 | False
 2070 |   1 | RNCH                     | RANCH                    |     1 | False
 2071 |   1 | RNG ROAD                 | RANGE ROAD               |     6 | False
 2072 |   1 | RNG ROAD                 | RANGE ROAD               |     2 | False
 2075 |   1 | ROADS                    | ROADS                    |     1 | False
 2076 |   1 | ROADWAY                  | ROADWAY                  |     2 | False
 1980 |   1 | PWY                      | PKWY                     |     2 | False
 1982 |   1 | PY                       | PKWY                     |     2 | False
 2077 |   1 | ROND POINT               | ROND POINT               |     2 | False
 2078 |   1 | ROOM                     | ROOM                     |    16 | False
 2086 |   1 | ROUTES                   | ROUTES                   |     6 | False
 2089 |   1 | RPDS                     | RAPIDS                   |     1 | False
 2090 |   1 | RPO                      | POSTAL OUTLET            |    14 | False
 2091 |   2 | RPO                      | POSTAL OUTLET            |    24 | False
 2092 |   1 | RR                       | RURAL ROUTE              |     8 | False
 2093 |   1 | RR NO                    | RURAL ROUTE              |     8 | False
 2094 |   1 | RRT                      | RURAL ROUTE              |     8 | False
 2095 |   1 | RRTE                     | RURAL ROUTE              |     8 | False
 2096 |   1 | RSRT                     | RESORT                   |     1 | False
 2097 |   2 | RSRT                     | RESORT                   |    24 | False
 2107 |   1 | RUELLE                   | RUELLE                   |     2 | False
 2109 |   2 | RUN                      | RUN                      |     1 | False
 2110 |   1 | RURAL                    | RURAL                    |     1 | False
 2111 |   1 | RURAL                    | RURAL ROUTE              |     8 | False
 2112 |   1 | RURAL ROUTE              | RURAL ROUTE              |     8 | False
 2113 |   1 | RURAL ROUTE NO           | RURAL ROUTE              |     8 | False
 2114 |   1 | RURAL RT                 | RURAL ROUTE              |     8 | False
 2115 |   1 | RUTA                     | RUTA                     |     2 | False
 2119 |   1 | S / C                    | SHOPPING CENTER          |    24 | False
 2120 |   1 | S C                      | SHOPPING CENTER          |    24 | False
 2122 |   1 | S R                      | STAR ROUTE               |     6 | False
 2123 |   2 | S R                      | STAR ROUTE               |     8 | False
 2124 |   1 | S RT                     | STAR ROUTE               |     6 | False
 2125 |   2 | S RT                     | STAR ROUTE               |     8 | False
 2127 |   1 | S/C                      | SHOPPING CENTER          |    24 | False
 2128 |   1 | SAINT                    | SAINT                    |     1 | False
 2129 |   1 | SAINTE                   | SAINTE                   |     1 | False
 2130 |   1 | SANTA FE                 | SANTA FE                 |     1 | False
 2131 |   1 | SC                       | SHOPPING CENTER          |    24 | False
 2132 |   1 | SCH                      | SCHOOL                   |    24 | False
 2133 |   1 | SCHOOL                   | SCHOOL                   |    24 | False
 2134 |   2 | SCHOOL                   | SCHOOL                   |     1 | False
 2136 |   1 | SEARING ROUTE            | RURAL ROUTE              |     8 | False
 2137 |   1 | SEARING RT               | RURAL ROUTE              |     8 | False
 2138 |   1 | SEARING RTE              | RURAL ROUTE              |     8 | False
 2139 |   1 | SECOND                   | 2                        |     1 | False
 2140 |   2 | SECOND                   | 2ND                      |    15 | False
 2141 |   1 | SEM                      | SEMINARY                 |    24 | False
 2142 |   1 | SEMINARY                 | SEMINARY                 |    24 | False
 2143 |   2 | SEMINARY                 | SEMINARY                 |     1 | False
 2144 |   1 | SENDERO                  | SENDERO                  |     2 | False
 2145 |   1 | SENT                     | SENTIER                  |     2 | False
 2146 |   1 | SENTIER                  | SENTIER                  |     2 | False
 2150 |   1 | SERVICE                  | SERVICE                  |     1 | False
 2154 |   1 | SEVEN                    | 7                        |     0 | False
 2155 |   2 | SEVEN                    | 7                        |     1 | False
 2156 |   1 | SEVEN CORNERS            | SEVEN CORNERS            |     1 | False
 2157 |   2 | SEVEN CORNERS            | SEVEN CORNERS            |    24 | False
 2158 |   1 | SEVEN MILE               | SEVEN MILE               |     1 | False
 2159 |   1 | SEVENTEEN                | 17                       |     0 | False
 2160 |   2 | SEVENTEEN                | 17                       |     1 | False
 2161 |   1 | SEVENTEEN MILE           | SEVENTEEN MILE           |     1 | False
 2162 |   1 | SEVENTEENTH              | 17                       |     1 | False
 2163 |   2 | SEVENTEENTH              | 17TH                     |    15 | False
 2164 |   1 | SEVENTH                  | 7                        |     1 | False
 2165 |   2 | SEVENTH                  | 7                        |    15 | False
 2166 |   1 | SEVENTIETH               | 70                       |     1 | False
 2167 |   2 | SEVENTIETH               | 70TH                     |    15 | False
 2168 |   1 | SEVENTY                  | 70                       |     0 | False
 2169 |   2 | SEVENTY                  | 70                       |     1 | False
 2170 |   1 | SEVENTY EIGHT            | 78                       |     0 | False
 2171 |   2 | SEVENTY EIGHT            | 78                       |     1 | False
 2172 |   1 | SEVENTY EIGHTH           | 78                       |     1 | False
 2173 |   2 | SEVENTY EIGHTH           | 78TH                     |    15 | False
 2174 |   1 | SEVENTY FIFTH            | 75                       |     1 | False
 2175 |   2 | SEVENTY FIFTH            | 75TH                     |    15 | False
 2176 |   1 | SEVENTY FIRST            | 71                       |     1 | False
 2177 |   2 | SEVENTY FIRST            | 71ST                     |    15 | False
 2178 |   1 | SEVENTY FIVE             | 75                       |     0 | False
 2179 |   2 | SEVENTY FIVE             | 75                       |     1 | False
 2180 |   1 | SEVENTY FOUR             | 74                       |     0 | False
 2181 |   2 | SEVENTY FOUR             | 74                       |     1 | False
 2182 |   1 | SEVENTY FOURTH           | 74                       |     1 | False
 2183 |   2 | SEVENTY FOURTH           | 74TH                     |    15 | False
 2184 |   1 | SEVENTY NINE             | 79                       |     0 | False
 2185 |   2 | SEVENTY NINE             | 79                       |     1 | False
 2186 |   1 | SEVENTY NINTH            | 79                       |     1 | False
 2187 |   2 | SEVENTY NINTH            | 79TH                     |    15 | False
 2188 |   1 | SEVENTY ONE              | 71                       |     0 | False
 2189 |   2 | SEVENTY ONE              | 71                       |     1 | False
 2190 |   1 | SEVENTY SECOND           | 72                       |     1 | False
 2191 |   2 | SEVENTY SECOND           | 72ND                     |    15 | False
 2192 |   1 | SEVENTY SEVEN            | 77                       |     0 | False
 2193 |   2 | SEVENTY SEVEN            | 77                       |     1 | False
 2194 |   1 | SEVENTY SEVENTH          | 77                       |     1 | False
 2195 |   2 | SEVENTY SEVENTH          | 77TH                     |    15 | False
 2196 |   1 | SEVENTY SIX              | 76                       |     0 | False
 2197 |   2 | SEVENTY SIX              | 76                       |     1 | False
 2198 |   1 | SEVENTY SIXTH            | 76                       |     1 | False
 2199 |   2 | SEVENTY SIXTH            | 76TH                     |    15 | False
 2200 |   1 | SEVENTY THIRD            | 73                       |     1 | False
 2201 |   2 | SEVENTY THIRD            | 73RD                     |    15 | False
 2202 |   1 | SEVENTY THREE            | 73                       |     0 | False
 2203 |   2 | SEVENTY THREE            | 73                       |     1 | False
 2204 |   1 | SEVENTY TWO              | 72                       |     0 | False
 2205 |   2 | SEVENTY TWO              | 72                       |     1 | False
 2088 |   1 | RP                       | RAMP                     |     2 | False
 2081 |   3 | ROUTE                    | RTE                      |     2 | False
 2104 |   3 | RTE                      | RTE                      |     2 | False
 2087 |   1 | ROW                      | ROW                      |     2 | False
 2116 |   1 | RW                       | ROW                      |     2 | False
 2106 |   1 | RUE                      | RUE                      |     2 | False
 2105 |   1 | RU                       | RUE                      |     2 | False
 2108 |   1 | RUN                      | RUN                      |     2 | False
 2147 |   1 | SER RD                   | SVC RD                   |     2 | False
 2148 |   1 | SERV RD                  | SVC RD                   |     2 | False
 2149 |   1 | SERV ROAD                | SVC RD                   |     2 | False
 2151 |   2 | SERVICE                  | SVC RD                   |     2 | False
 2117 |   1 | S                        | S                        |    22 | False
 2118 |   2 | S                        | S                        |    18 | False
 2121 |   1 | S E                      | SE                       |    22 | False
 2126 |   1 | S W                      | SW                       |    22 | False
 2135 |   1 | SE                       | SE                       |    22 | False
 2206 |   1 | SH                       | SHOPPING CENTER          |    24 | False
 2207 |   1 | SH CTR                   | SHOPPING CENTER          |    24 | False
 2208 |   1 | SHC                      | SHOPPING CENTER          |    24 | False
 2209 |   1 | SHL                      | SHOAL                    |     1 | False
 2210 |   1 | SHLS                     | SHOALS                   |     1 | False
 2211 |   1 | SHOAL                    | SHOAL                    |     1 | False
 2212 |   1 | SHOALS                   | SHOALS                   |     1 | False
 2213 |   1 | SHOP                     | SHOPPING CENTER          |    24 | False
 2214 |   1 | SHOP CEN                 | SHOPPING CENTER          |    24 | False
 2215 |   1 | SHOP CENTER              | SHOPPING CENTER          |    24 | False
 2216 |   1 | SHOP CTR                 | SHOPPING CENTER          |    24 | False
 2218 |   1 | SHOP MART                | SHOPPING MART            |    24 | False
 2219 |   1 | SHOP N SAVE              | SHOPPING CENTER          |    24 | False
 2221 |   1 | SHOP SQ                  | SHOPPING SQUARE          |    24 | False
 2222 |   1 | SHOPETTE                 | SHOPPING CENTER          |    24 | False
 2223 |   1 | SHOPPERS                 | SHOPPING CENTER          |    24 | False
 2224 |   1 | SHOPPES                  | SHOPPING CENTER          |    24 | False
 2225 |   1 | SHOPPETTE                | SHOPPING CENTER          |    24 | False
 2226 |   1 | SHOPPING                 | SHOPPING CENTER          |    24 | False
 2227 |   1 | SHOPPING CENT            | SHOPPING CENTER          |    24 | False
 2228 |   1 | SHOPPING CENTE           | SHOPPING CENTER          |    24 | False
 2229 |   1 | SHOPPING CENTER          | SHOPPING CENTER          |    24 | False
 2230 |   1 | SHOPPING CNTR            | SHOPPING CENTER          |    24 | False
 2231 |   1 | SHOPPING CTR             | SHOPPING CENTER          |    24 | False
 2233 |   1 | SHOPPING PARK            | SHOPPING CENTER          |    24 | False
 2235 |   1 | SHOPS                    | SHOPPING CENTER          |    24 | False
 2236 |   1 | SHORE                    | SHORE                    |     1 | False
 2237 |   1 | SHP                      | SHOPPING CENTER          |    24 | False
 2238 |   1 | SHP CENTER               | SHOPPING CENTER          |    24 | False
 2239 |   1 | SHP CT                   | SHOPPING CENTER          |    24 | False
 2240 |   1 | SHP CTR                  | SHOPPING CENTER          |    24 | False
 2243 |   1 | SHPCT                    | SHOPPING CENTER          |    24 | False
 2244 |   1 | SHPG                     | SHOPPING CENTER          |    24 | False
 2245 |   1 | SHPG CENTER              | SHOPPING CENTER          |    24 | False
 2246 |   1 | SHPG CNTR                | SHOPPING CENTER          |    24 | False
 2247 |   1 | SHPG CTR                 | SHOPPING CENTER          |    24 | False
 2250 |   1 | SHR                      | SHORE                    |     1 | False
 2251 |   1 | SIDE                     | SIDE                     |    17 | False
 2252 |   2 | SIDE                     | SIDE                     |     1 | False
 2253 |   1 | SIDE ROAD                | SIDE ROAD                |     2 | False
 2254 |   1 | SITE                     | SITE                     |    19 | False
 2255 |   2 | SITE                     | SITE                     |     1 | False
 2256 |   1 | SIX                      | 6                        |     0 | False
 2257 |   2 | SIX                      | 6                        |     1 | False
 2258 |   1 | SIX MILE                 | SIX MILE                 |     1 | False
 2259 |   1 | SIXTEEN                  | 16                       |     0 | False
 2260 |   2 | SIXTEEN                  | 16                       |     1 | False
 2261 |   1 | SIXTEEN MILE             | SIXTEEN MILE             |     1 | False
 2262 |   1 | SIXTEENTH                | 16                       |     1 | False
 2263 |   2 | SIXTEENTH                | 16TH                     |    15 | False
 2264 |   1 | SIXTH                    | 6                        |     1 | False
 2265 |   2 | SIXTH                    | 6TH                      |    15 | False
 2266 |   1 | SIXTIETH                 | 60                       |     1 | False
 2267 |   2 | SIXTIETH                 | 60TH                     |    15 | False
 2268 |   1 | SIXTY                    | 60                       |     0 | False
 2269 |   2 | SIXTY                    | 60                       |     1 | False
 2270 |   1 | SIXTY EIGHT              | 68                       |     0 | False
 2271 |   2 | SIXTY EIGHT              | 68                       |     1 | False
 2272 |   1 | SIXTY EIGHTH             | 68                       |     1 | False
 2273 |   2 | SIXTY EIGHTH             | 68TH                     |    15 | False
 2274 |   1 | SIXTY FIFTH              | 65                       |     1 | False
 2275 |   2 | SIXTY FIFTH              | 65TH                     |    15 | False
 2276 |   1 | SIXTY FIRST              | 61                       |     1 | False
 2277 |   2 | SIXTY FIRST              | 61ST                     |    15 | False
 2278 |   1 | SIXTY FIVE               | 65                       |     0 | False
 2279 |   2 | SIXTY FIVE               | 65                       |     1 | False
 2280 |   1 | SIXTY FOUR               | 64                       |     0 | False
 2281 |   2 | SIXTY FOUR               | 64                       |     1 | False
 2282 |   1 | SIXTY FOURTH             | 64                       |     1 | False
 2283 |   2 | SIXTY FOURTH             | 64TH                     |    15 | False
 2284 |   1 | SIXTY NINE               | 69                       |     0 | False
 2285 |   2 | SIXTY NINE               | 69                       |     1 | False
 2286 |   1 | SIXTY NINTH              | 69                       |     1 | False
 2287 |   2 | SIXTY NINTH              | 69TH                     |    15 | False
 2288 |   1 | SIXTY ONE                | 61                       |     0 | False
 2289 |   2 | SIXTY ONE                | 61                       |     1 | False
 2290 |   1 | SIXTY SECOND             | 62                       |     1 | False
 2291 |   2 | SIXTY SECOND             | 62ND                     |    15 | False
 2292 |   1 | SIXTY SEVEN              | 67                       |     0 | False
 2293 |   2 | SIXTY SEVEN              | 67                       |     1 | False
 2294 |   1 | SIXTY SEVENTH            | 67                       |     1 | False
 2295 |   2 | SIXTY SEVENTH            | 67TH                     |    15 | False
 2296 |   1 | SIXTY SIX                | 66                       |     0 | False
 2297 |   2 | SIXTY SIX                | 66                       |     1 | False
 2298 |   1 | SIXTY SIXTH              | 66                       |     1 | False
 2299 |   2 | SIXTY SIXTH              | 66TH                     |    15 | False
 2300 |   1 | SIXTY THIRD              | 63                       |     1 | False
 2301 |   2 | SIXTY THIRD              | 63RD                     |    15 | False
 2302 |   1 | SIXTY THREE              | 63                       |     0 | False
 2303 |   2 | SIXTY THREE              | 63                       |     1 | False
 2304 |   1 | SIXTY TWO                | 62                       |     0 | False
 2305 |   2 | SIXTY TWO                | 62                       |     1 | False
 2308 |   1 | SLIP                     | SLIP                     |    16 | False
 2309 |   2 | SLIP                     | SLIP                     |     1 | False
 2311 |   1 | SMT                      | SUMMIT                   |     1 | False
 2312 |   2 | SMT                      | SHOPPING MART            |    24 | False
 2313 |   1 | SNDR                     | SENDERO                  |     2 | False
 2315 |   1 | SOTA                     | SOTANO                   |    16 | False
 2316 |   2 | SOTA                     | SOTA                     |     1 | False
 2317 |   1 | SOTAN                    | SOTANO                   |    16 | False
 2318 |   1 | SOTANO                   | SOTANO                   |    16 | False
 2319 |   1 | SOUS SOL                 | SOUS SOL                 |    17 | False
 2323 |   1 | SOUTHBOUND               | SOUTHBOUND               |     1 | False
 2324 |   2 | SOUTHBOUND               | SOUTHBOUND               |     3 | False
 2327 |   1 | SP                       | SPACE                    |    16 | False
 2328 |   2 | SP                       | SHOPPING PLAZA           |    24 | False
 2329 |   1 | SPACE                    | SPACE                    |    16 | False
 2330 |   2 | SPACE                    | SPACE                    |     1 | False
 2331 |   1 | SPC                      | SPACE                    |    16 | False
 2332 |   1 | SPDWY                    | SPEEDWAY                 |     2 | False
 2314 |   1 | SO                       | S                        |    22 | False
 2310 |   1 | SM                       | MALL                     |    24 | False
 2307 |   1 | SKYWAY                   | SKWY                     |     2 | False
 2306 |   1 | SKWY                     | SKWY                     |     2 | False
 2320 |   1 | SOUTH                    | S                        |    22 | False
 2321 |   1 | SOUTH EAST               | SE                       |    22 | False
 2322 |   1 | SOUTH WEST               | SW                       |    22 | False
 2325 |   1 | SOUTHEAST                | SE                       |    22 | False
 2326 |   1 | SOUTHWEST                | SW                       |    22 | False
 2333 |   1 | SPEEDWAY                 | SPEEDWAY                 |     2 | False
 2334 |   1 | SPG                      | SPRING                   |     1 | False
 2335 |   1 | SPGS                     | SPRING                   |     1 | False
 2336 |   1 | SPR                      | SPRING                   |     1 | False
 2337 |   1 | SPRG                     | SPRING                   |     1 | False
 2338 |   1 | SPRING                   | SPRING                   |     1 | False
 2339 |   1 | SPRINGS                  | SPRING                   |     1 | False
 2342 |   3 | SPUR                     | SPUR                     |     1 | False
 2343 |   1 | SPURNGS                  | SPUR                     |     1 | False
 2354 |   1 | SR                       | STAR ROUTE               |     6 | False
 2355 |   2 | SR                       | STAR ROUTE               |     8 | False
 2356 |   3 | SR                       | STAR ROUTE               |     1 | False
 2357 |   4 | SR                       | SIDE ROAD                |     2 | False
 2358 |   1 | SRA                      | RURAL ROUTE              |     8 | False
 2360 |   1 | SRV RTE                  | SERVICE ROUTE            |     2 | False
 2364 |   1 | SS                       | SUBURBAN SERVICE         |     8 | False
 2366 |   2 | SAINT                    | SAINT                    |     7 | False
 2371 |   1 | ST R                     | STAR ROUTE               |     6 | False
 2372 |   2 | ST R                     | STAR ROUTE               |     8 | False
 2376 |   2 | ST ROUTE                 | STAR ROUTE               |     8 | False
 2378 |   2 | ST RT                    | STAR ROUTE               |     8 | False
 2380 |   2 | ST RTE                   | STAR ROUTE               |     8 | False
 2383 |   3 | STA                      | STATION                  |     1 | False
 2384 |   1 | STALL                    | STALL                    |    16 | False
 2385 |   2 | STALL                    | STALL                    |     1 | False
 2386 |   1 | STAR ROUTE               | STAR ROUTE               |     8 | False
 2387 |   1 | STAR RT                  | STAR ROUTE               |     8 | False
 2390 |   3 | STAT                     | STATION                  |     1 | False
 2391 |   1 | STATE                    | STATE                    |     1 | False
 2404 |   3 | STATION                  | STATION                  |     1 | False
 2405 |   1 | STATION FORCES           | STATION FORCES           |    24 | False
 2408 |   3 | STATN                    | STATION                  |     1 | False
 2409 |   1 | STE                      | SUITE                    |    16 | False
 2410 |   2 | STE                      | SAINTE                   |     1 | False
 2411 |   1 | STES                     | SUITES                   |    24 | False
 2416 |   1 | STLL                     | STALL                    |    16 | False
 2419 |   3 | STN                      | STATION                  |     1 | False
 2420 |   1 | STN FORCES               | STATION FORCES           |    24 | False
 2421 |   1 | STOP                     | STOP                     |    16 | False
 2422 |   2 | STOP                     | STOP                     |     1 | False
 2423 |   1 | STOP & SHOP              | SHOPPING CENTER          |    24 | False
 2424 |   1 | STOP & SHOP CTR          | SHOPPING CENTER          |    24 | False
 2425 |   1 | STOR                     | STORE                    |    16 | False
 2426 |   2 | STOR                     | STORE                    |     1 | False
 2427 |   1 | STORE                    | STORE                    |    16 | False
 2428 |   2 | STORE                    | STORE                    |     1 | False
 2429 |   3 | STORE                    | SHOPPING CENTER          |    24 | False
 2430 |   1 | STORES                   | SHOPPING CENTER          |    24 | False
 2439 |   1 | STREAM                   | STREAM                   |     1 | False
 2441 |   1 | STREETS                  | STREETS                  |     1 | False
 2442 |   1 | STRIP                    | STRIP                    |     1 | False
 2443 |   2 | STRIP                    | STRIP                    |     2 | False
 2444 |   1 | STRM                     | STREAM                   |     1 | False
 2445 |   1 | STRP                     | STRIP                    |     1 | False
 2446 |   2 | STRP                     | STRIP                    |     2 | False
 2447 |   1 | STRT                     | STAR ROUTE               |     6 | False
 2448 |   2 | STRT                     | STAR ROUTE               |     8 | False
 2451 |   1 | STS                      | STREETS                  |     1 | False
 2452 |   1 | STUDIO                   | STUDIO                   |    16 | False
 2453 |   2 | STUDIO                   | STUDIO                   |     1 | False
 2454 |   1 | SU                       | STE                      |    16 | False
 2455 |   1 | SUBD                     | SUBDIVISION              |     1 | False
 2456 |   2 | SUBD                     | SUBDIVISION              |     2 | False
 2457 |   1 | SUBDIV                   | SUBDIVISION              |     1 | False
 2458 |   2 | SUBDIV                   | SUBDIVISION              |     2 | False
 2459 |   1 | SUBDIVISION              | SUBDIVISION              |     1 | False
 2460 |   2 | SUBDIVISION              | SUBDIVISION              |     2 | False
 2361 |   1 | SRVC                     | SVC RD                   |     2 | False
 2359 |   1 | SRV RD                   | SVC RD                   |     2 | False
 2363 |   1 | SRVRTE                   | SVC RD                   |     2 | False
 2362 |   1 | SRVRD                    | SVC RD                   |     2 | False
 2341 |   2 | SPUR                     | SPUR                     |     2 | False
 2350 |   1 | SQUARE                   | SQ                       |     2 | False
 2344 |   1 | SQ                       | SQ                       |     2 | False
 2346 |   1 | SQR                      | SQ                       |     2 | False
 2348 |   1 | SQU                      | SQ                       |     2 | False
 2352 |   1 | SQURE                    | SQ                       |     2 | False
 2438 |   1 | STRD                     | STATE RD                 |     2 | False
 2381 |   1 | STA                      | STA                      |     2 | False
 2417 |   1 | STN                      | STA                      |     2 | False
 2406 |   1 | STATN                    | STA                      |     2 | False
 2402 |   1 | STATION                  | STA                      |     2 | False
 2388 |   1 | STAT                     | STA                      |     2 | False
 2437 |   1 | STRAVN                   | STRA                     |     2 | False
 2450 |   1 | STRVNUE                  | STRA                     |     2 | False
 2449 |   1 | STRVN                    | STRA                     |     2 | False
 2433 |   1 | STRAV                    | STRA                     |     2 | False
 2434 |   1 | STRAVE                   | STRA                     |     2 | False
 2435 |   1 | STRAVEN                  | STRA                     |     2 | False
 2436 |   1 | STRAVENUE                | STRA                     |     2 | False
 2432 |   1 | STRA                     | STRA                     |     2 | False
 2365 |   1 | ST                       | ST                       |     2 | False
 2431 |   1 | STR                      | ST                       |     2 | False
 2440 |   1 | STREET                   | ST                       |     2 | False
 2412 |   1 | STH                      | S                        |    22 | False
 2461 |   1 | SUBURBAN ROUTE           | RURAL ROUTE              |     8 | False
 2462 |   1 | SUBURBAN RT              | RURAL ROUTE              |     8 | False
 2463 |   1 | SUBURBAN RTE             | RURAL ROUTE              |     8 | False
 2464 |   1 | SUBURBAN SERVICE         | SUBURBAN SERVICE         |     8 | False
 2465 |   1 | SUD                      | SUD                      |    22 | False
 2466 |   1 | SUD EST                  | SUD EST                  |    22 | False
 2467 |   1 | SUD OUEST                | SUD OUEST                |    22 | False
 2468 |   1 | SUDEST                   | SUD EST                  |    22 | False
 2469 |   1 | SUDOUEST                 | SUD OUEST                |    22 | False
 2470 |   1 | SUIT                     | STE                      |    16 | False
 2471 |   2 | SUIT                     | STE                      |     1 | False
 2472 |   1 | SUITE                    | STE                      |    16 | False
 2473 |   1 | SUITES                   | STE                      |    16 | False
 2474 |   2 | SUITES                   | STE                      |    24 | False
 2475 |   1 | SUMMIT                   | SUMMIT                   |     1 | False
 2477 |   1 | SV RTE                   | SERVICE ROUTE            |     2 | False
 2481 |   1 | SWP                      | SWAMP                    |     1 | False
 2482 |   1 | TANK TRAIL               | TANK TRAIL               |     2 | False
 2483 |   1 | TEN                      | 10                       |     1 | False
 2484 |   2 | TEN                      | 10                       |     0 | False
 2485 |   1 | TEN MILE                 | TEN MILE                 |     1 | False
 2486 |   1 | TENTH                    | 10                       |     1 | False
 2487 |   2 | TENTH                    | 10TH                     |    15 | False
 2489 |   1 | TERM                     | TERMINAL                 |     1 | False
 2490 |   2 | TERM                     | TERMINAL                 |     2 | False
 2491 |   1 | TERMINAL                 | TERMINAL                 |     1 | False
 2492 |   2 | TERMINAL                 | TERMINAL                 |     2 | False
 2494 |   1 | TERRASSE                 | TERRASSE                 |     2 | False
 2495 |   2 | TERRASSE                 | TERRASSE                 |     1 | False
 2497 |   1 | THE                      | THE                      |     7 | False
 2498 |   1 | THFR                     | THOROUGHFARE             |     2 | False
 2499 |   1 | THICKET                  | THICKET                  |     1 | False
 2500 |   2 | THICKET                  | THICKET                  |     2 | False
 2501 |   1 | THIRD                    | 3                        |     1 | False
 2502 |   2 | THIRD                    | 3RD                      |    15 | False
 2503 |   1 | THIRTEEN                 | 13                       |     0 | False
 2504 |   2 | THIRTEEN                 | 13                       |     1 | False
 2505 |   1 | THIRTEEN MILE            | THIRTEEN MILE            |     1 | False
 2506 |   1 | THIRTEENTH               | 13                       |     1 | False
 2507 |   2 | THIRTEENTH               | 13TH                     |    15 | False
 2508 |   1 | THIRTIETH                | 30                       |     1 | False
 2509 |   2 | THIRTIETH                | 30TH                     |    15 | False
 2510 |   1 | THIRTY                   | 30                       |     0 | False
 2511 |   2 | THIRTY                   | 30                       |     1 | False
 2512 |   1 | THIRTY EIGHT             | 38                       |     0 | False
 2513 |   2 | THIRTY EIGHT             | 38                       |     1 | False
 2514 |   1 | THIRTY EIGHTH            | 38                       |     1 | False
 2515 |   2 | THIRTY EIGHTH            | 38TH                     |    15 | False
 2516 |   1 | THIRTY FIFTH             | 35                       |     1 | False
 2517 |   2 | THIRTY FIFTH             | 35TH                     |    15 | False
 2518 |   1 | THIRTY FIRST             | 31                       |     1 | False
 2519 |   2 | THIRTY FIRST             | 31ST                     |    15 | False
 2520 |   1 | THIRTY FIVE              | 35                       |     0 | False
 2521 |   2 | THIRTY FIVE              | 35                       |     1 | False
 2522 |   1 | THIRTY FOURTH            | 34                       |     1 | False
 2523 |   2 | THIRTY FOURTH            | 34TH                     |    15 | False
 2524 |   1 | THIRTY FOUR              | 34                       |     0 | False
 2525 |   2 | THIRTY FOUR              | 34                       |     1 | False
 2526 |   1 | THIRTY NINE              | 39                       |     0 | False
 2527 |   2 | THIRTY NINE              | 39                       |     1 | False
 2528 |   1 | THIRTY NINTH             | 39                       |     1 | False
 2529 |   2 | THIRTY NINTH             | 39TH                     |    15 | False
 2530 |   1 | THIRTY ONE               | 31                       |     0 | False
 2531 |   2 | THIRTY ONE               | 31                       |     1 | False
 2532 |   1 | THIRTY SECOND            | 32                       |     1 | False
 2533 |   2 | THIRTY SECOND            | 32ND                     |    15 | False
 2534 |   1 | THIRTY SEVEN             | 37                       |     0 | False
 2535 |   2 | THIRTY SEVEN             | 37                       |     1 | False
 2536 |   1 | THIRTY SEVENTH           | 37                       |     1 | False
 2537 |   2 | THIRTY SEVENTH           | 37TH                     |    15 | False
 2538 |   1 | THIRTY SIX               | 36                       |     0 | False
 2539 |   2 | THIRTY SIX               | 36                       |     1 | False
 2540 |   1 | THIRTY SIXTH             | 36                       |     1 | False
 2541 |   2 | THIRTY SIXTH             | 36TH                     |    15 | False
 2542 |   1 | THIRTY THIRD             | 33                       |     1 | False
 2543 |   2 | THIRTY THIRD             | 33RD                     |    15 | False
 2544 |   1 | THIRTY THREE             | 33                       |     0 | False
 2545 |   2 | THIRTY THREE             | 33                       |     1 | False
 2546 |   1 | THIRTY TWO               | 32                       |     0 | False
 2547 |   2 | THIRTY TWO               | 32                       |     1 | False
 2548 |   1 | THORO                    | THOROUGHFARE             |     2 | False
 2549 |   1 | THOROFARE                | THOROUGHFARE             |     2 | False
 2550 |   1 | THOROUGHFARE             | THOROUGHFARE             |     2 | False
 2551 |   1 | THREE                    | 3                        |     0 | False
 2552 |   2 | THREE                    | 3                        |     1 | False
 2553 |   1 | THREE MILE               | THREE MILE               |     1 | False
 2557 |   1 | TK TRL                   | TANK TRAIL               |     2 | False
 2558 |   1 | TKTRL                    | TANK TRAIL               |     2 | False
 2560 |   1 | TLINE                    | TOWNLINE                 |     2 | False
 2561 |   1 | TLR                      | TRAILER                  |    16 | False
 2562 |   1 | TLR COURT                | TRAILER PARK             |    24 | False
 2563 |   1 | TLR CRT                  | TRAILER PARK             |    24 | False
 2564 |   1 | TLR CT                   | TRAILER PARK             |    24 | False
 2565 |   1 | TLR PARK                 | TRAILER PARK             |    24 | False
 2566 |   1 | TLR PK                   | TRAILER PARK             |    24 | False
 2567 |   1 | TLR PRK                  | TRAILER PARK             |    24 | False
 2570 |   1 | TOP                      | TOP                      |    17 | False
 2571 |   2 | TOP                      | TOP                      |     1 | False
 2572 |   1 | TOWER                    | TOWERS                   |    24 | False
 2573 |   2 | TOWER                    | TOWER                    |    19 | False
 2574 |   3 | TOWER                    | TOWER                    |     1 | False
 2575 |   1 | TOWERS                   | TOWERS                   |    24 | False
 2576 |   2 | TOWERS                   | TOWERS                   |    19 | False
 2577 |   3 | TOWERS                   | TOWERS                   |     2 | False
 2578 |   4 | TOWERS                   | TOWERS                   |     1 | False
 2579 |   1 | TOWN HIGHWAY             | TOWN HIGHWAY             |     2 | False
 2580 |   2 | TOWN HIGHWAY             | TOWN HIGHWAY             |     6 | False
 2581 |   1 | TOWN HWY                 | TOWN HIGHWAY             |     2 | False
 2582 |   2 | TOWN HWY                 | TOWN HIGHWAY             |     6 | False
 2583 |   1 | TOWN RD                  | TOWN ROAD                |     2 | False
 2584 |   2 | TOWN RD                  | TOWN ROAD                |     6 | False
 2585 |   1 | TOWN ROAD                | TOWN ROAD                |     2 | False
 2586 |   2 | TOWN ROAD                | TOWN ROAD                |     6 | False
 2587 |   1 | TOWNHOME                 | TOWNHOUSE                |    24 | False
 2588 |   1 | TOWNHOMES                | TOWNHOUSE                |    24 | False
 2589 |   1 | TOWNHOUSE                | TOWNHOUSE                |    24 | False
 2476 |   1 | SUR                      | S                        |    22 | False
 2480 |   1 | SW                       | SW                       |    22 | False
 2590 |   1 | TOWNHOUSES               | TOWNHOUSE                |    24 | False
 2591 |   1 | TOWNLINE                 | TOWNLINE                 |     2 | False
 2592 |   1 | TOWNSHIP HIGHWAY         | TOWNSHIP HIGHWAY         |     6 | False
 2593 |   1 | TOWNSHIP HIWAY           | TOWNSHIP HIGHWAY         |     6 | False
 2594 |   1 | TOWNSHIP HWY             | TOWNSHIP HIGHWAY         |     6 | False
 2595 |   1 | TOWNSHIP RD              | TOWNSHIP ROAD            |     6 | False
 2596 |   1 | TOWNSHIP ROAD            | TOWNSHIP ROAD            |     6 | False
 2597 |   1 | TP                       | TRAILER PARK             |    24 | False
 2602 |   1 | TR                       | TOWNSHIP ROAD            |     6 | False
 2604 |   1 | TR COURT                 | TRAILER PARK             |    24 | False
 2605 |   1 | TR CRT                   | TRAILER PARK             |    24 | False
 2606 |   1 | TR CT                    | TRAILER PARK             |    24 | False
 2607 |   1 | TR PARK                  | TRAILER PARK             |    24 | False
 2608 |   1 | TR PK                    | TRAILER PARK             |    24 | False
 2609 |   1 | TR PRK                   | TRAILER PARK             |    24 | False
 2610 |   1 | TR VILLAGE               | TRAILER PARK             |    24 | False
 2611 |   1 | TR VLG                   | TRAILER PARK             |    24 | False
 2612 |   1 | TRACE                    | TRACE                    |     1 | False
 2614 |   1 | TRACK                    | TRACK                    |     1 | False
 2617 |   2 | TRAIL                    | TRAIL                    |     1 | False
 2618 |   1 | TRAILER                  | TRAILER                  |    16 | False
 2619 |   2 | TRAILER                  | TRAILER                  |    24 | False
 2620 |   1 | TRAILER COURT            | TRAILER PARK             |    24 | False
 2621 |   1 | TRAILER CRT              | TRAILER PARK             |    24 | False
 2622 |   1 | TRAILER CT               | TRAILER PARK             |    24 | False
 2623 |   1 | TRAILER PARK             | TRAILER PARK             |    24 | False
 2624 |   1 | TRAILER PK               | TRAILER PARK             |    24 | False
 2625 |   1 | TRAILER PRK              | TRAILER PARK             |    24 | False
 2626 |   1 | TRAILER VILLAGE          | TRAILER PARK             |    24 | False
 2627 |   1 | TRAILER VLG              | TRAILER PARK             |    24 | False
 2641 |   1 | TRL                      | TRL                      |     2 | False
 2628 |   1 | TRAILERCOURT             | TRAILER PARK             |    24 | False
 2629 |   1 | TRAILERPARK              | TRAILER PARK             |    24 | False
 2630 |   1 | TRAILERS                 | TRAILER PARK             |    24 | False
 2632 |   1 | TRAK                     | TRACK                    |     1 | False
 2633 |   1 | TRANS CANADA             | TRANS CANADA             |     6 | False
 2634 |   2 | TRANS CANADA             | TRANS CANADA             |     1 | False
 2635 |   1 | TRANSCANADA              | TRANS CANADA             |     6 | False
 2636 |   2 | TRANSCANADA              | TRANS CANADA             |     1 | False
 2637 |   1 | TRCE                     | TRACE                    |     1 | False
 2639 |   1 | TRCRT                    | TRAILER PARK             |    24 | False
 2640 |   1 | TRCT                     | TRAILER PARK             |    24 | False
 2642 |   1 | TRL COURT                | TRAILER PARK             |    24 | False
 2643 |   1 | TRL CRT                  | TRAILER PARK             |    24 | False
 2644 |   1 | TRL CT                   | TRAILER PARK             |    24 | False
 2645 |   1 | TRL PARK                 | TRAILER PARK             |    24 | False
 2646 |   1 | TRL PK                   | TRAILER PARK             |    24 | False
 2647 |   1 | TRL PRK                  | TRAILER PARK             |    24 | False
 2648 |   1 | TRL VILLAGE              | TRAILER PARK             |    24 | False
 2649 |   1 | TRL VLG                  | TRAILER PARK             |    24 | False
 2650 |   1 | TRLCRT                   | TRAILER PARK             |    24 | False
 2651 |   1 | TRLCT                    | TRAILER PARK             |    24 | False
 2652 |   1 | TRLPK                    | TRAILER PARK             |    24 | False
 2653 |   1 | TRLPRK                   | TRAILER PARK             |    24 | False
 2654 |   1 | TRLR                     | TRAILER                  |    16 | False
 2655 |   2 | TRLR                     | TRAILER                  |    24 | False
 2656 |   1 | TRLR COURT               | TRAILER PARK             |    24 | False
 2657 |   1 | TRLR CRT                 | TRAILER PARK             |    24 | False
 2658 |   1 | TRLR CT                  | TRAILER PARK             |    24 | False
 2659 |   1 | TRLR PARK                | TRAILER PARK             |    24 | False
 2660 |   1 | TRLR PK                  | TRAILER PARK             |    24 | False
 2661 |   1 | TRLR PRK                 | TRAILER PARK             |    24 | False
 2662 |   1 | TRLR VILLAGE             | TRAILER PARK             |    24 | False
 2663 |   1 | TRLR VLG                 | TRAILER PARK             |    24 | False
 2664 |   1 | TRNABT                   | TURNABOUT                |     2 | False
 2666 |   1 | TROIS                    | 3                        |     1 | False
 2667 |   2 | TROIS                    | 3                        |     0 | False
 2668 |   1 | TROISIEME                | TROISIEME                |     1 | False
 2669 |   1 | TRPK                     | TRAILER PARK             |    24 | False
 2670 |   1 | TRPRK                    | TRAILER PARK             |    24 | False
 2671 |   1 | TSSE                     | TERRASSE                 |     2 | False
 2672 |   2 | TSSE                     | TERRASEE                 |     1 | False
 2677 |   1 | TURNABOUT                | TURNABOUT                |     2 | False
 2684 |   1 | TW HY                    | TOWNSHIP HIGHWAY         |     6 | False
 2685 |   1 | TW RD                    | TOWNSHIP ROAD            |     6 | False
 2686 |   1 | TWELFTH                  | 12                       |     1 | False
 2687 |   2 | TWELFTH                  | 12TH                     |    15 | False
 2688 |   1 | TWELVE                   | 12                       |     0 | False
 2689 |   2 | TWELVE                   | 12                       |     1 | False
 2690 |   1 | TWELVE MILE              | TWELVE MILE              |     1 | False
 2691 |   1 | TWENTIETH                | 20                       |     1 | False
 2692 |   2 | TWENTIETH                | 20TH                     |    15 | False
 2693 |   1 | TWENTY                   | 20                       |     0 | False
 2694 |   2 | TWENTY                   | 20                       |     1 | False
 2695 |   1 | TWENTY EIGHT             | 28                       |     0 | False
 2696 |   2 | TWENTY EIGHT             | 28                       |     1 | False
 2697 |   1 | TWENTY EIGHTH            | 28                       |     1 | False
 2698 |   2 | TWENTY EIGHTH            | 28TH                     |    15 | False
 2699 |   1 | TWENTY FIRST             | 21                       |     1 | False
 2700 |   2 | TWENTY FIRST             | 21ST                     |    15 | False
 2701 |   1 | TWENTY FIFTH             | 25                       |     1 | False
 2702 |   2 | TWENTY FIFTH             | 25TH                     |    15 | False
 2703 |   1 | TWENTY FIVE              | 25                       |     0 | False
 2704 |   2 | TWENTY FIVE              | 25                       |     1 | False
 2705 |   1 | TWENTY FOURTH            | 24                       |     1 | False
 2706 |   2 | TWENTY FOURTH            | 24TH                     |    15 | False
 2707 |   1 | TWENTY FOUR              | 24                       |     0 | False
 2708 |   2 | TWENTY FOUR              | 24                       |     1 | False
 2709 |   1 | TWENTY MILE              | TWENTY MILE              |     1 | False
 2710 |   1 | TWENTY NINE              | 29                       |     0 | False
 2711 |   2 | TWENTY NINE              | 29                       |     1 | False
 2712 |   1 | TWENTY NINTH             | 29                       |     1 | False
 2713 |   2 | TWENTY NINTH             | 29TH                     |    15 | False
 2613 |   2 | TRACE                    | TRCE                     |     2 | False
 2638 |   2 | TRCE                     | TRCE                     |     2 | False
 2615 |   1 | TRAFFICWAY               | TRFY                     |     2 | False
 2603 |   2 | TR                       | TRL                      |     2 | False
 2714 |   1 | TWENTY ONE               | 21                       |     0 | False
 2715 |   2 | TWENTY ONE               | 21                       |     1 | False
 2716 |   1 | TWENTY SECOND            | 22                       |     1 | False
 2717 |   2 | TWENTY SECOND            | 22ND                     |    15 | False
 2718 |   1 | TWENTY SEVEN             | 27                       |     0 | False
 2719 |   2 | TWENTY SEVEN             | 27                       |     1 | False
 2720 |   1 | TWENTY SEVENTH           | 27                       |     1 | False
 2721 |   2 | TWENTY SEVENTH           | 27TH                     |    15 | False
 2722 |   1 | TWENTY SIX               | 26                       |     0 | False
 2723 |   2 | TWENTY SIX               | 26                       |     1 | False
 2724 |   1 | TWENTY SIXTH             | 26                       |     1 | False
 2725 |   2 | TWENTY SIXTH             | 26TH                     |    15 | False
 2726 |   1 | TWENTY THIRD             | 23                       |     1 | False
 2727 |   2 | TWENTY THIRD             | 23RD                     |    15 | False
 2728 |   1 | TWENTY THREE             | 23                       |     0 | False
 2729 |   2 | TWENTY THREE             | 23                       |     1 | False
 2730 |   1 | TWENTY THREE MILE        | TWENTY THREE MILE        |     1 | False
 2731 |   1 | TWENTY TWO               | 22                       |     0 | False
 2732 |   2 | TWENTY TWO               | 22                       |     1 | False
 2733 |   1 | TWHY                     | TOWNSHIP HIGHWAY         |     6 | False
 2734 |   1 | TWNH                     | TOWNHOUSE                |    24 | False
 2735 |   1 | TWNHS                    | TOWNHOUSE                |    24 | False
 2736 |   1 | TWNHWY                   | TOWN HIGHWAY             |     2 | False
 2737 |   2 | TWNHWY                   | TOWN HIGHWAY             |     6 | False
 2738 |   1 | TWNRD                    | TOWN ROAD                |     2 | False
 2739 |   2 | TWNRD                    | TOWN ROAD                |     6 | False
 2740 |   1 | TWO                      | 2                        |     0 | False
 2741 |   2 | TWO                      | 2                        |     1 | False
 2742 |   1 | TWO MILE                 | TWO MILE                 |     1 | False
 2743 |   1 | TWP                      | TOWNSHIP                 |     1 | False
 2744 |   2 | TWP                      | TOWNSHIP HIGHWAY         |     6 | False
 2745 |   1 | TWP HIGHWAY              | TOWNSHIP HIGHWAY         |     6 | False
 2746 |   1 | TWP HIWAY                | TOWNSHIP HIGHWAY         |     6 | False
 2747 |   1 | TWP HWY                  | TOWNSHIP HIGHWAY         |     6 | False
 2748 |   1 | TWP HY                   | TOWNSHIP HIGHWAY         |     6 | False
 2749 |   1 | TWP RD                   | TOWNSHIP ROAD            |     6 | False
 2750 |   1 | TWP ROAD                 | TOWNSHIP ROAD            |     6 | False
 2751 |   1 | TWPHWY                   | TOWNSHIP HIGHWAY         |     6 | False
 2752 |   1 | TWPHY                    | TOWNSHIP HIGHWAY         |     6 | False
 2753 |   1 | TWPRD                    | TOWNSHIP ROAD            |     6 | False
 2754 |   1 | TWPROAD                  | TOWNSHIP ROAD            |     6 | False
 2755 |   1 | TWR                      | TOWER                    |    24 | False
 2756 |   2 | TWR                      | TOWER                    |    19 | False
 2757 |   1 | TWRD                     | TOWNSHIP ROAD            |     6 | False
 2758 |   1 | TWRS                     | TOWERS                   |    24 | False
 2759 |   2 | TWRS                     | TOWERS                   |    19 | False
 2760 |   3 | TWRS                     | TOWERS                   |     2 | False
 2761 |   1 | U                        | UNIVERSITY               |     1 | False
 2762 |   2 | U                        | U                        |    18 | False
 2772 |   1 | UN                       | UNION                    |     1 | False
 2773 |   2 | UN                       | 1                        |     1 | False
 2774 |   3 | UN                       | 1                        |     1 | False
 2775 |   1 | UN RD                    | UNNAMED ROAD             |     2 | False
 2777 |   1 | UNI                      | UNIVERSITY               |     1 | False
 2778 |   1 | UNION                    | UNION                    |     1 | False
 2779 |   1 | UNIT                     | UNIT                     |    16 | False
 2780 |   1 | UNITE                    | UNITE                    |    16 | False
 2783 |   1 | UNITED STATES LOOP       | US LOOP                  |     6 | False
 2784 |   1 | UNIV                     | UNIVERSITY               |     1 | False
 2785 |   2 | UNIV                     | UNIVERSITY               |    24 | False
 2786 |   1 | UNIVD                    | UNIVERSITY               |     1 | False
 2787 |   2 | UNIVD                    | UNIVERSITY               |    24 | False
 2788 |   1 | UNIVERSIDAD              | UNIVERSIDAD              |     1 | False
 2789 |   2 | UNIVERSIDAD              | UNIVERSIDAD              |    24 | False
 2790 |   1 | UNIVERSITY               | UNIVERSITY               |     1 | False
 2791 |   2 | UNIVERSITY               | UNIVERSITY               |    24 | False
 2792 |   3 | UNIVERSITY               | UNIVERSITY               |    19 | False
 2793 |   1 | UNNAMED ROAD             | UNNAMED ROAD             |     2 | False
 2796 |   1 | UNRD                     | UNNAMED ROAD             |     2 | False
 2797 |   1 | UNT                      | UNIT                     |    16 | False
 2798 |   1 | UP                       | UP                       |    17 | False
 2799 |   2 | UP                       | UP                       |     1 | False
 2800 |   1 | UPPER                    | UPPER                    |     1 | False
 2801 |   2 | UPPER                    | UPPER                    |    17 | False
 2802 |   1 | UPPR                     | UPPER                    |     1 | False
 2803 |   2 | UPPR                     | UPPER                    |    17 | False
 2804 |   1 | UPSTAIRS                 | UPSTAIRS                 |    17 | False
 2806 |   1 | US FOREST SERVICE ROAD   | US FOREST SERVICE ROAD   |     6 | False
 2812 |   1 | US LOOP                  | US LOOP                  |     6 | False
 2813 |   1 | US LP                    | US LOOP                  |     6 | False
 2817 |   1 | USFS RD                  | US FOREST SERVICE RD     |     6 | False
 2818 |   1 | USFSR                    | US FOREST SERVICE RD     |     6 | False
 2822 |   1 | USLP                     | US LOOP                  |     6 | False
 2826 |   1 | VAL                      | VALLEY                   |     1 | False
 2827 |   1 | VALL                     | VALLEY                   |     1 | False
 2828 |   1 | VALLEY                   | VALLEY                   |     1 | False
 2829 |   1 | VALLY                    | VALLEY                   |     1 | False
 2830 |   1 | VER                      | VEREDA                   |     2 | False
 2831 |   1 | VEREDA                   | VEREDA                   |     2 | False
 2834 |   1 | VIADUCT                  | VIADUCT                  |     1 | False
 2835 |   1 | VIEW                     | VIEW                     |     1 | False
 2839 |   3 | VILL                     | VILLAGE                  |     1 | False
 2840 |   1 | VILLA                    | VILLA                    |     2 | False
 2841 |   2 | VILLA                    | VILLA                    |    24 | False
 2794 |   1 | UNP                      | UPAS                     |     2 | False
 2776 |   1 | UNDERPASS                | UPAS                     |     2 | False
 2795 |   1 | UNPS                     | UPAS                     |     2 | False
 2832 |   2 | VI                       | VIA                      |     2 | False
 2833 |   1 | VIA                      | VIA                      |     2 | False
 2836 |   2 | VIEW                     | VW                       |     2 | False
 2837 |   1 | VILL                     | VLG                      |     2 | False
 2842 |   3 | VILLA                    | VILLA                    |     1 | False
 2845 |   3 | VILLAG                   | VILLAGE                  |     1 | False
 2848 |   3 | VILLAGE                  | VILLAGE                  |     1 | False
 2849 |   1 | VILLAS                   | VILLA                    |    24 | False
 2850 |   1 | VILLE                    | VILLE                    |     1 | False
 2853 |   3 | VILLG                    | VILLAGE                  |     1 | False
 2857 |   3 | VILLIAGE                 | VILLAGE                  |     1 | False
 2858 |   1 | VIS                      | VISTA                    |     1 | False
 2860 |   1 | VISTA                    | VISTA                    |     1 | False
 2862 |   1 | VIVI                     | VIVIENDA                 |    24 | False
 2863 |   1 | VIVIENDA                 | VIVIENDA                 |    24 | False
 2864 |   1 | VL                       | VILLE                    |     1 | False
 2868 |   3 | VLG                      | VILLAGE                  |     1 | False
 2871 |   3 | VLGE                     | VILLAGE                  |     1 | False
 2872 |   1 | VLLA                     | VILLA                    |     2 | False
 2873 |   2 | VLLA                     | VILLA                    |    24 | False
 2874 |   1 | VLY                      | VALLEY                   |     1 | False
 2875 |   1 | VOIE                     | VOIE                     |     2 | False
 2876 |   1 | VRDA                     | VEREDA                   |     2 | False
 2877 |   1 | VW                       | VIEW                     |     1 | False
 2882 |   1 | WALKWAY                  | WALKWAY                  |     2 | False
 2883 |   1 | WALKWY                   | WALKWAY                  |     2 | False
 2885 |   1 | WAREHOUSE                | WAREHOUSE                |    24 | False
 2886 |   2 | WAREHOUSE                | WAREHOUSE                |     1 | False
 2887 |   1 | WATERWAY                 | WATERWAY                 |     1 | False
 2889 |   1 | WD                       | WYND                     |     2 | False
 2890 |   1 | WDS                      | WOODS                    |     1 | False
 2892 |   1 | WELLS                    | WELLS                    |     1 | False
 2894 |   1 | WESTBOUND                | WESTBOUND                |     1 | False
 2895 |   2 | WESTBOUND                | WESTBOUND                |     3 | False
 2896 |   1 | WHARF                    | WHARF                    |     1 | False
 2897 |   2 | WHARF                    | WHARF                    |     2 | False
 2898 |   1 | WHF                      | WHARF                    |     1 | False
 2899 |   2 | WHF                      | WHARF                    |     2 | False
 2900 |   1 | WHS                      | WAREHOUSE                |    24 | False
 2901 |   2 | WHS                      | WAREHOUSE                |     1 | False
 2902 |   1 | WILDLIFE MGMT AREA       | WILDLIFE AREA            |     1 | False
 2904 |   1 | WKWY                     | WALKWAY                  |     2 | False
 2905 |   1 | WLKWY                    | WALKWAY                  |     2 | False
 2906 |   1 | WLS                      | WELLS                    |     1 | False
 2907 |   1 | WMA                      | WILDLIFE AREA            |     1 | False
 2908 |   1 | WO                       | WOOD                     |     2 | False
 2909 |   1 | WOOD                     | WOOD                     |     1 | False
 2910 |   2 | WOOD                     | WOOD                     |     2 | False
 2911 |   1 | WOODS                    | WOODS                    |     1 | False
 2912 |   1 | WTRWY                    | WATERWAY                 |     1 | False
 2913 |   1 | WWY                      | WATERWAY                 |     1 | False
 2916 |   1 | WYND                     | WYND                     |     2 | False
 2920 |   1 | XRDS                     | CROSSROADS               |    24 | False
 2923 |   1 | YARD                     | YARD                     |     1 | False
 2924 |   1 | YARDS                    | YARDS                    |     1 | False
 2925 |   1 | YD                       | YARD                     |     1 | False
 2926 |   1 | YDS                      | YARDS                    |     1 | False
 2927 |   1 | ZANJA                    | ZANJA                    |     1 | False
 2928 |   1 | ZERO                     | 0                        |     0 | False
 2929 |   1 | ZERO                     | 0                        |     1 | False
 2930 |   1 | ZNJA                     | ZANJA                    |     1 | False
  197 |   4 | AL                       | ALY                      |     6 | False
  196 |   2 | AL                       | ALY                      |    11 | False
  216 |   2 | ANNEX                    | ANX                      |    24 | False
  214 |   2 | ANEX                     | ANX                      |    24 | False
  218 |   2 | ANNX                     | ANX                      |    24 | False
  220 |   2 | ANX                      | ANX                      |    24 | False
  239 |   2 | ARC                      | ARC                      |    24 | False
  241 |   2 | ARCADE                   | ARC                      |    24 | False
 2879 |   1 | W                        | W                        |    22 | False
 2880 |   2 | W                        | W                        |    18 | False
 2891 |   1 | WE                       | W                        |    22 | False
 2893 |   1 | WEST                     | W                        |    22 | False
  264 |   1 | AVE                      | AVE                      |     2 | False
  265 |   1 | AVEN                     | AVE                      |     2 | False
  298 |   2 | BEACH                    | BCH                      |     2 | False
  289 |   2 | BCH                      | BCH                      |     2 | False
  303 |   1 | BH                       | BCH                      |     2 | False
  324 |   2 | BND                      | BND                      |     2 | False
  296 |   1 | BE                       | BND                      |     2 | False
  300 |   2 | BEND                     | BND                      |     2 | False
  314 |   2 | BLF                      | BLF                      |     2 | False
  319 |   2 | BLUFF                    | BLF                      |     2 | False
  321 |   1 | BLVD                     | BLVD                     |     2 | False
  320 |   1 | BLV                      | BLVD                     |     2 | False
  304 |   1 | BL                       | BLVD                     |     2 | False
  290 |   1 | BD                       | BLVD                     |     2 | False
  338 |   1 | BOUL                     | BLVD                     |     2 | False
  339 |   1 | BOULEVARD                | BLVD                     |     2 | False
  340 |   1 | BOULV                    | BLVD                     |     2 | False
  353 |   1 | BRG                      | BRG                      |     2 | False
  332 |   1 | BOT                      | BTM                      |    17 | False
  334 |   1 | BOTTM                    | BTM                      |    17 | False
  336 |   1 | BOTTOM                   | BTM                      |    17 | False
  412 |   1 | BYP                      | BYP                      |     3 | False
  420 |   1 | BYPS                     | BYP                      |     3 | False
  409 |   1 | BY PASS                  | BYP                      |     3 | False
  418 |   1 | BYPASS                   | BYP                      |     3 | False
  345 |   2 | BP                       | BYP                      |     3 | False
  416 |   1 | BYPAS                    | BYP                      |     3 | False
  414 |   1 | BYPA                     | BYP                      |     3 | False
  344 |   1 | BP                       | BYP                      |     2 | False
  466 |   2 | CEN                      | CTR                      |     2 | False
  464 |   1 | CE                       | CTR                      |     2 | False
  495 |   1 | CIR                      | CIR                      |     2 | False
  498 |   1 | CIRCLE                   | CIR                      |     2 | False
  497 |   1 | CIRCL                    | CIR                      |     2 | False
  508 |   1 | CL                       | CIR                      |     2 | False
  526 |   2 | CLUB                     | CLB                      |    24 | False
  511 |   2 | CLB                      | CLB                      |    24 | False
  525 |   1 | CLUB                     | CLB                      |     2 | False
  510 |   1 | CLB                      | CLB                      |     2 | False
  730 |   1 | CTY HIGHWAY              | CO HWY                   |     6 | False
  548 |   1 | CNTY HWY                 | CO HWY                   |     6 | False
  547 |   1 | CNTY HIWAY               | CO HWY                   |     6 | False
  546 |   1 | CNTY HIGHWAY             | CO HWY                   |     6 | False
  568 |   1 | COHWY                    | CO HWY                   |     6 | False
  638 |   1 | COUNTY HWY               | CO HWY                   |     6 | False
  560 |   1 | CO HWY                   | CO HWY                   |     6 | False
  559 |   1 | CO HIWAY                 | CO HWY                   |     6 | False
  732 |   1 | CTY HWY                  | CO HWY                   |     6 | False
  637 |   1 | COUNTY HIWAY             | CO HWY                   |     6 | False
  558 |   1 | CO HIGHWAY               | CO HWY                   |     6 | False
  636 |   1 | COUNTY HIGHWAY           | CO HWY                   |     6 | False
  731 |   1 | CTY HIWAY                | CO HWY                   |     6 | False
  561 |   1 | CO RD                    | CO RD                    |     6 | False
  563 |   1 | CO ROAD                  | CO RD                    |     6 | False
  733 |   1 | CTY RD                   | CO RD                    |     6 | False
  429 |   1 | C R                      | CO RD                    |     6 | False
  639 |   1 | COUNTY RD                | CO RD                    |     6 | False
  641 |   1 | COUNTY ROAD              | CO RD                    |     6 | False
  646 |   1 | COUNTY TRUNK             | CO RD                    |     6 | False
  735 |   1 | CTY ROAD                 | CO RD                    |     6 | False
  670 |   2 | CR                       | CO RD                    |     6 | False
  549 |   1 | CNTY RD                  | CO RD                    |     6 | False
  551 |   1 | CNTY ROAD                | CO RD                    |     6 | False
  613 |   1 | CORD                     | CO RTE                   |     6 | False
  738 |   1 | CTY RT                   | CO RTE                   |     6 | False
  566 |   1 | CO RT                    | CO RTE                   |     6 | False
  567 |   1 | CO RTE                   | CO RTE                   |     6 | False
  645 |   1 | COUNTY RTE               | CO RTE                   |     6 | False
  644 |   1 | COUNTY RT                | CO RTE                   |     6 | False
  739 |   1 | CTY RTE                  | CO RTE                   |     6 | False
  626 |   1 | CORT                     | CO RTE                   |     6 | False
  627 |   1 | CORTE                    | CO RTE                   |     6 | False
  565 |   1 | CO ROUTE                 | CO RTE                   |     6 | False
  555 |   1 | CNTY RTE                 | CO RTE                   |     6 | False
  643 |   1 | COUNTY ROUTE             | CO RTE                   |     6 | False
  554 |   1 | CNTY RT                  | CO RTE                   |     6 | False
  553 |   1 | CNTY ROUTE               | CO RTE                   |     6 | False
  737 |   1 | CTY ROUTE                | CO RTE                   |     6 | False
  681 |   1 | CRNR                     | COR                      |    24 | False
  615 |   1 | CORNER                   | COR                      |    24 | False
  535 |   1 | CNR                      | COR                      |    24 | False
  619 |   2 | CORNERS                  | CORS                     |    24 | False
  611 |   1 | COR                      | CORS                     |    24 | False
  622 |   2 | CORS                     | CORS                     |    24 | False
  430 |   2 | C R                      | CO RD                    |     2 | False
  705 |   1 | CRST                     | CRES                     |     2 | False
  675 |   1 | CRES                     | CRES                     |     2 | False
  669 |   1 | CR                       | CRES                     |     2 | False
  678 |   1 | CRESENT                  | CRES                     |     2 | False
  487 |   1 | CG                       | XING                     |     2 | False
  690 |   1 | CROSSING                 | XING                     |     2 | False
  699 |   1 | CRSG                     | XING                     |     2 | False
  703 |   1 | CRSSNG                   | XING                     |     2 | False
 2917 |   1 | XING                     | XING                     |     2 | False
 2919 |   1 | XRD                      | XRD                      |     2 | False
  693 |   1 | CROSSROAD                | XRD                      |     2 | False
  724 |   1 | CTR                      | CTR                      |    24 | False
  541 |   1 | CNTR                     | CTR                      |    24 | False
  720 |   1 | CTER                     | CTR                      |    24 | False
  543 |   1 | CNTRE                    | CTR                      |    24 | False
  726 |   1 | CTRO                     | CTR                      |    24 | False
  475 |   1 | CENTR                    | CTR                      |    24 | False
  482 |   1 | CENTRO                   | CTR                      |    24 | False
  481 |   1 | CENTRES                  | CTR                      |    24 | False
  478 |   1 | CENTRE                   | CTR                      |    24 | False
  465 |   1 | CEN                      | CTR                      |    24 | False
  467 |   1 | CENT                     | CTR                      |    24 | False
  469 |   1 | CENTE                    | CTR                      |    24 | False
  471 |   1 | CENTER                   | CTR                      |    24 | False
  474 |   1 | CENTERS                  | CTR                      |    24 | False
  537 |   1 | CNT                      | CTR                      |    24 | False
  539 |   1 | CNTER                    | CTR                      |    24 | False
  658 |   2 | COURTS                   | CTS                      |    24 | False
  728 |   2 | CTS                      | CTS                      |    24 | False
  712 |   1 | CRV                      | CURV                     |     2 | False
  747 |   2 | CURVE                    | CURV                     |     2 | False
  756 |   2 | DALE                     | DL                       |     2 | False
  902 |   4 | EST                      | EST                      |    22 | False
  905 |   3 | ESTATE                   | ESTS                     |     2 | False
  901 |   3 | EST                      | ESTS                     |     2 | False
  908 |   3 | ESTATES                  | ESTS                     |     2 | False
  913 |   3 | ESTS                     | ESTS                     |     2 | False
  914 |   1 | ET                       | ESTS                     |     2 | False
  912 |   2 | ESTS                     | ESTS                     |    24 | False
  907 |   2 | ESTATES                  | ESTS                     |    24 | False
  904 |   2 | ESTATE                   | ESTS                     |    24 | False
  900 |   2 | EST                      | ESTS                     |    24 | False
 2922 |   1 | XWY                      | EXPY                     |     2 | False
 2921 |   1 | XWAY                     | EXPY                     |     2 | False
  933 |   1 | EXPW                     | EXPY                     |     2 | False
  928 |   1 | EXP                      | EXPY                     |     2 | False
  929 |   1 | EXPR                     | EXPY                     |     2 | False
  931 |   1 | EXPRESS                  | EXPY                     |     2 | False
  943 |   1 | EXTENSION                | EXT                      |     3 | False
  945 |   1 | EXTN                     | EXT                      |     3 | False
  940 |   1 | EXTEN                    | EXT                      |     3 | False
  947 |   1 | EXTSN                    | EXT                      |     3 | False
  937 |   1 | EXT                      | EXT                      |     3 | False
  920 |   2 | EX                       | EXT                      |     2 | False
  941 |   2 | EXTEN                    | EXT                      |     2 | False
  946 |   2 | EXTN                     | EXT                      |     2 | False
  948 |   2 | EXTSN                    | EXT                      |     2 | False
  938 |   2 | EXT                      | EXT                      |     2 | False
  944 |   2 | EXTENSION                | EXT                      |     2 | False
  971 |   2 | FIELD                    | FLD                      |     2 | False
 1109 |   1 | FREEWY                   | FWY                      |     2 | False
 1141 |   2 | GARDENS                  | GDNS                     |     2 | False
 1133 |   4 | GA                       | GDNS                     |     2 | False
 1155 |   2 | GDS                      | GDNS                     |     2 | False
 1152 |   2 | GDNS                     | GDNS                     |     2 | False
 1578 |   2 | MDWS                     | MDWS                     |    24 | False
 1150 |   1 | GDN                      | GDN                      |    24 | False
 1153 |   3 | GDNS                     | GDNS                     |    24 | False
 1142 |   3 | GARDENS                  | GDNS                     |    24 | False
 1167 |   2 | GLEN                     | GLN                      |     2 | False
 1169 |   2 | GLN                      | GLN                      |     2 | False
 1163 |   1 | GL                       | GLN                      |     2 | False
 1177 |   2 | GREEN                    | GRN                      |     2 | False
 1175 |   2 | GR                       | GRN                      |     2 | False
 1181 |   2 | GRN                      | GRN                      |     2 | False
 1146 |   2 | GATEWAY                  | GTWY                     |    24 | False
 1195 |   2 | GTWY                     | GTWY                     |    24 | False
 1193 |   2 | GTWAY                    | GTWY                     |    24 | False
 1212 |   3 | HARBR                    | HBR                      |    24 | False
 1209 |   3 | HARBOUR                  | HBR                      |    24 | False
 1298 |   3 | HRBR                     | HBR                      |    24 | False
 1301 |   3 | HRBOR                    | HBR                      |    24 | False
 1261 |   2 | HIWAY                    | HWY                      |     2 | False
 1240 |   2 | HGY                      | HWY                      |     2 | False
 1249 |   2 | HIGHWAY                  | HWY                      |     2 | False
 1258 |   2 | HILL                     | HL                       |     2 | False
 1268 |   2 | HL                       | HL                       |     2 | False
 1274 |   1 | HO                       | HOLW                     |     2 | False
 1281 |   2 | HOLW                     | HOLW                     |     2 | False
 1277 |   2 | HOL                      | HOLW                     |     2 | False
 1279 |   2 | H0LL0W                   | HOLW                     |     2 | False
 1270 |   2 | HLLW                     | HOLW                     |     2 | False
 1231 |   3 | HGT                      | HTS                      |    24 | False
 1313 |   3 | HTS                      | HTS                      |    24 | False
 1234 |   3 | HGTS                     | HTS                      |    24 | False
 1226 |   3 | HEIGHTS                  | HTS                      |    24 | False
 1308 |   3 | HT                       | HTS                      |    24 | False
 1242 |   1 | HI                       | HWY                      |     6 | False
 1332 |   1 | HYWY                     | HWY                      |     6 | False
 1319 |   1 | HWAY                     | HWY                      |     6 | False
 1322 |   1 | HWY                      | HWY                      |     6 | False
 1248 |   1 | HIGHWAY                  | HWY                      |     6 | False
 1260 |   1 | HIWAY                    | HWY                      |     6 | False
 1254 |   1 | HIGHWY                   | HWY                      |     6 | False
 1328 |   1 | HY                       | HWY                      |     6 | False
 1235 |   1 | HGWY                     | HWY                      |     6 | False
 1239 |   1 | HGY                      | HWY                      |     6 | False
 1264 |   1 | HIWY                     | HWY                      |     6 | False
 1317 |   1 | HW                       | HWY                      |     6 | False
 1335 |   2 | I                        | I-                       |    18 | False
 1423 |   2 | JUNC                     | JCT                      |    24 | False
 1429 |   2 | JUNCTION                 | JCT                      |    24 | False
 1432 |   2 | JUNCTN                   | JCT                      |    24 | False
 1410 |   2 | JCTION                   | JCT                      |    24 | False
 1413 |   2 | JCTN                     | JCT                      |    24 | False
 1419 |   2 | JNCT                     | JCT                      |    24 | False
 1407 |   2 | JCT                      | JCT                      |    24 | False
 1426 |   2 | JUNCT                    | JCT                      |    24 | False
 1435 |   2 | JUNCTON                  | JCT                      |    24 | False
 1418 |   1 | JNCT                     | JCT                      |     2 | False
 1505 |   1 | LN                       | LN                       |     2 | False
 1523 |   2 | LODGE                    | LDG                      |    24 | False
 1475 |   2 | LDG                      | LDG                      |    24 | False
 1478 |   2 | LDGE                     | LDG                      |    24 | False
 1455 |   2 | LA                       | LN                       |     7 | False
 1507 |   2 | LNDG                     | LNDG                     |    24 | False
 1459 |   2 | LAND                     | LNDG                     |    24 | False
 1510 |   2 | LNDNG                    | LNDG                     |    24 | False
 1465 |   2 | LANDINGS                 | LNDG                     |    24 | False
 1462 |   2 | LANDING                  | LNDG                     |    24 | False
 1477 |   1 | LDGE                     | LDG                      |     2 | False
 1522 |   1 | LODGE                    | LDG                      |     2 | False
 1474 |   1 | LDG                      | LDG                      |     2 | False
 1527 |   1 | LOOP                     | LOOP                     |     3 | False
 1528 |   2 | LOOP                     | LOOP                     |     2 | False
 1538 |   2 | LP                       | LOOP                     |     2 | False
 1512 |   1 | LO                       | LOOP                     |     2 | False
 1537 |   1 | LP                       | LOOP                     |     3 | False
 1556 |   1 | MALL IN                  | MALL                     |    24 | False
 2232 |   1 | SHOPPING MALL            | MALL                     |    24 | False
 2217 |   1 | SHOP MALL                | MALL                     |    24 | False
 1552 |   1 | MAL                      | MALL                     |     2 | False
 2241 |   1 | SHP ML                   | MALL                     |    24 | False
 1554 |   2 | MALL                     | MALL                     |    24 | False
 2248 |   1 | SHPML                    | MALL                     |    24 | False
 1614 |   2 | ML                       | MALL                     |    24 | False
 1553 |   1 | MALL                     | MALL                     |     2 | False
 1557 |   1 | MANOR                    | MNR                      |     2 | False
 1583 |   2 | MEADOWS                  | MDWS                     |    24 | False
 1592 |   3 | MEWS                     | MEWS                     |    24 | False
 1620 |   2 | MNR                      | MNR                      |    24 | False
 1560 |   1 | MANORS                   | MNR                      |    24 | False
 1558 |   2 | MANOR                    | MNR                      |    24 | False
 1622 |   1 | MNRS                     | MNR                      |    24 | False
 1648 |   1 | MOTORWAY                 | MTWY                     |     2 | False
 1666 |   1 | MTWY                     | MTWY                     |     2 | False
 1667 |   1 | MU                       | MT                       |     2 | False
 1650 |   2 | MOUNT                    | MT                       |     2 | False
 1652 |   2 | MOUNTAIN                 | MTN                      |     2 | False
 1807 |   2 | ORCHARD                  | ORCH                     |     2 | False
 1814 |   1 | OVAL                     | OVAL                     |     2 | False
 1815 |   1 | OVERPASS                 | OPAS                     |     2 | False
 1816 |   1 | OVPS                     | OPAS                     |     2 | False
 1884 |   2 | PK                       | PARK                     |    24 | False
 1946 |   2 | PRK                      | PARK                     |    24 | False
 1842 |   2 | PARK                     | PARK                     |    24 | False
 1981 |   1 | PWKY                     | PKWY                     |     2 | False
 1846 |   1 | PARKWAY                  | PKWY                     |     2 | False
 1890 |   1 | PKY                      | PKWY                     |     2 | False
 1847 |   1 | PARKWY                   | PKWY                     |     2 | False
 1887 |   1 | PKW                      | PKWY                     |     2 | False
 1854 |   1 | PASS                     | PASS                     |     2 | False
 1855 |   1 | PASSAGE                  | PSGE                     |     2 | False
 1856 |   1 | PATH                     | PATH                     |     2 | False
 1878 |   1 | PIKE                     | PIKE                     |     2 | False
 1886 |   1 | PKE                      | PIKE                     |     2 | False
 1880 |   2 | PINES                    | PNES                     |     2 | False
 1892 |   1 | PLACE                    | PL                       |     2 | False
 1901 |   1 | PLC                      | PL                       |     2 | False
 1891 |   1 | PL                       | PL                       |     2 | False
 1899 |   1 | PLAZA                    | PLZ                      |     2 | False
 1907 |   1 | PLZA                     | PLZ                      |     2 | False
 1905 |   1 | PLZ                      | PLZ                      |     2 | False
 1906 |   2 | PLZ                      | PLZ                      |    24 | False
 1908 |   2 | PLZA                     | PLZ                      |    24 | False
 2242 |   1 | SHP PL                   | PLZ                      |    24 | False
 2249 |   1 | SHPPL                    | PLZ                      |    24 | False
 1900 |   2 | PLAZA                    | PLZ                      |    24 | False
 2220 |   1 | SHOP PLZ                 | PLZ                      |    24 | False
 2234 |   1 | SHOPPING PLAZA           | PLZ                      |    24 | False
 1972 |   2 | PT                       | PT                       |     2 | False
 1922 |   2 | PORT                     | PRT                      |     2 | False
 1967 |   2 | PRT                      | PRT                      |     2 | False
 2068 |   1 | RMP                      | RAMP                     |     2 | False
 2013 |   1 | RAMP                     | RAMP                     |     2 | False
 2031 |   2 | RDG                      | RDG                      |     2 | False
 2054 |   2 | RIDGE                    | RDG                      |     2 | False
 2035 |   1 | RE                       | RDG                      |     2 | False
 2074 |   1 | ROAD                     | RD                       |     2 | False
 2029 |   1 | RD                       | RD                       |     2 | False
 2073 |   1 | RO                       | RTE                      |     2 | False
 2103 |   2 | RTE                      | RTE                      |     8 | False
 2007 |   1 | R T                      | RTE                      |     6 | False
 2008 |   2 | R T                      | RTE                      |     8 | False
 2079 |   1 | ROUTE                    | RTE                      |     6 | False
 2766 |   1 | U S HIWAY                | US HWY                   |     6 | False
    1 |   1 | #                        | #                        |    16 | False
    2 |   2 | #                        | #                        |     7 | False
    3 |   1 | &                        | AND                      |    13 | False
    4 |   2 | &                        | AND                      |     1 | False
    5 |   3 | &                        | AND                      |     7 | False
    6 |   1 | -                        | -                        |     9 | False
    7 |   1 | 1 / 2                    | 1/2                      |    25 | False
    8 |   1 | 1 / 2 MILE               | 1/2 MI                   |     1 | False
    9 |   1 | 1 / 3                    | 1/3                      |    25 | False
   10 |   1 | 1 / 4                    | 1/4                      |    25 | False
   11 |   1 | 1 MI                     | ONE MILE                 |     1 | False
   12 |   1 | 1 MILE                   | ONE MILE                 |     1 | False
   13 |   1 | 1/2                      | 1/2                      |    25 | False
   14 |   1 | 1/2 MILE                 | 1/2 MI                   |     1 | False
   15 |   1 | 1/3                      | 1/3                      |    25 | False
   16 |   1 | 1/4                      | 1/4                      |    25 | False
   17 |   1 | 10 MI                    | TEN MILE                 |     1 | False
   18 |   1 | 10 MILE                  | TEN MILE                 |     1 | False
   19 |   1 | 10MI                     | TEN MILE                 |     1 | False
   20 |   1 | 100 MILE                 | ONE HUNDRED MILE         |     1 | False
   21 |   1 | 11 MI                    | ELEVEN MILE              |     1 | False
   22 |   1 | 11 MILE                  | ELEVEN MILE              |     1 | False
   23 |   1 | 11MI                     | ELEVEN MILE              |     1 | False
   24 |   1 | 12 MI                    | TWELVE MILE              |     1 | False
   25 |   1 | 12 MILE                  | TWELVE MILE              |     1 | False
   26 |   1 | 12MI                     | TWELVE MILE              |     1 | False
   27 |   1 | 13 MI                    | THIRTEEN MILE            |     1 | False
   28 |   1 | 13 MILE                  | THIRTEEN MILE            |     1 | False
   29 |   1 | 13MI                     | THIRTEEN MILE            |     1 | False
   30 |   1 | 14 MI                    | FOURTEEN MILE            |     1 | False
   31 |   1 | 14 MILE                  | FOURTEEN MILE            |     1 | False
   32 |   1 | 14MI                     | FOURTEEN MILE            |     1 | False
   33 |   1 | 15 MI                    | FIFTEEN MI               |     1 | False
   34 |   1 | 15 MILE                  | FIFTEEN MI               |     1 | False
   35 |   1 | 15MI                     | FIFTEEN MI               |     1 | False
   36 |   1 | 16 MI                    | SIXTEEN MILE             |     1 | False
   37 |   1 | 16 MILE                  | SIXTEEN MILE             |     1 | False
   38 |   1 | 16MI                     | SIXTEEN MILE             |     1 | False
   39 |   1 | 17 MI                    | SEVENTEEN MILE           |     1 | False
   40 |   1 | 17 MILE                  | SEVENTEEN MILE           |     1 | False
   41 |   1 | 17MI                     | SEVENTEEN MILE           |     1 | False
   42 |   1 | 18 MI                    | EIGHTEEEN MILE           |     1 | False
   43 |   1 | 18 MILE                  | EIGHTEEEN MILE           |     1 | False
   44 |   1 | 18MI                     | EIGHTEEEN MILE           |     1 | False
   45 |   1 | 19 MI                    | NINETEEN MILE            |     1 | False
   46 |   1 | 19 MILE                  | NINETEEN MILE            |     1 | False
   47 |   1 | 19MI                     | NINETEEN MILE            |     1 | False
   48 |   1 | 1ER                      | PREMIERE                 |     1 | False
   49 |   1 | 1ER                      | 1                        |    15 | False
   50 |   1 | 1MI                      | ONE MILE                 |     1 | False
   51 |   1 | 1RE                      | PREMIERE                 |     1 | False
   52 |   1 | 1RE                      | 1                        |    15 | False
   53 |   1 | 1ST                      | 1                        |     1 | False
   54 |   2 | 1ST                      | 1ST                      |    15 | False
   55 |   1 | 2 MI                     | TWO MILE                 |     1 | False
   56 |   1 | 2 MILE                   | TWO MILE                 |     1 | False
   57 |   1 | 20 MI                    | TWENTY MILE              |     1 | False
   58 |   1 | 20 MILE                  | TWENTY MILE              |     1 | False
  211 |   1 | AND                      | AND                      |    13 | False
 2080 |   2 | ROUTE                    | RTE                      |     8 | False
 2082 |   1 | ROUTE NO                 | RTE                      |     6 | False
 2083 |   2 | ROUTE NO                 | RTE                      |     8 | False
 2085 |   2 | ROUTE NUMBER             | RTE                      |     8 | False
 2098 |   1 | RT                       | RTE                      |     6 | False
 2099 |   2 | RT                       | RTE                      |     8 | False
 2100 |   1 | RT NO                    | RTE                      |     6 | False
 2101 |   2 | RT NO                    | RTE                      |     8 | False
 2102 |   1 | RTE                      | RTE                      |     6 | False
 2084 |   1 | ROUTE NUMBER             | RTE                      |     6 | False
 2069 |   1 | RN                       | RUN                      |     2 | False
 2479 |   1 | SVRD                     | SVC RD                   |     2 | False
 2152 |   1 | SERVICE RD               | SVC RD                   |     2 | False
 2153 |   1 | SERVICE ROAD             | SVC RD                   |     2 | False
 2478 |   1 | SVC RD                   | SVC RD                   |     2 | False
 2340 |   1 | SPUR                     | SPUR                     |     3 | False
 2349 |   2 | SQU                      | SQ                       |    24 | False
 2347 |   2 | SQR                      | SQ                       |    24 | False
 2345 |   2 | SQ                       | SQ                       |    24 | False
 2353 |   2 | SQURE                    | SQ                       |    24 | False
 2351 |   2 | SQUARE                   | SQ                       |    24 | False
 2418 |   2 | STN                      | STA                      |    24 | False
 2935 |   2 | NORTHWEST                | NW                       |    22 | False
 2936 |   2 | NORTH                    | NORTH                    |     1 | False
 2937 |   2 | SOUTH                    | SOUTH                    |     1 | False
(2938 rows)
```



## Pagc Rules


```sql
SELECT * FROM pagc_rules;
```

```sql
   id | rule                                                | is_custom
------+-----------------------------------------------------+-----------
 3283 | 25 14 2 -1 1 5 6 -1 1 16                            | False
 3776 | 17 -1 17 -1 4 17                                    | False
    1 | 1 -1 5 -1 2 7                                       | False
    2 | 1 3 -1 5 3 -1 2 7                                   | False
    3 | 1 22 -1 5 7 -1 2 7                                  | False
    4 | 1 22 3 -1 5 7 3 -1 2 7                              | False
    5 | 1 2 -1 5 6 -1 2 13                                  | False
    6 | 1 2 3 -1 5 6 3 -1 2 13                              | False
    7 | 1 2 22 -1 5 6 7 -1 2 13                             | False
    8 | 1 2 22 3 -1 5 6 7 3 -1 2 13                         | False
    9 | 18 -1 5 -1 2 2                                      | False
   10 | 18 3 -1 5 3 -1 2 2                                  | False
   11 | 18 22 -1 5 7 -1 2 2                                 | False
   12 | 18 22 3 -1 5 7 3 -1 2 2                             | False
   13 | 18 2 -1 5 6 -1 2 9                                  | False
   14 | 18 2 3 -1 5 6 3 -1 2 9                              | False
   15 | 18 2 22 -1 5 6 7 -1 2 9                             | False
   16 | 18 2 22 3 -1 5 6 7 3 -1 2 9                         | False
   17 | 2 -1 5 -1 2 2                                       | False
   18 | 2 3 -1 5 3 -1 2 2                                   | False
   19 | 2 22 -1 5 7 -1 2 2                                  | False
   20 | 2 22 3 -1 5 7 3 -1 2 2                              | False
   21 | 2 2 -1 5 6 -1 2 10                                  | False
   22 | 2 2 3 -1 5 6 3 -1 2 10                              | False
   23 | 2 2 22 -1 5 6 7 -1 2 10                             | False
   24 | 2 2 22 3 -1 5 6 7 3 -1 2 10                         | False
   25 | 22 -1 5 -1 2 6                                      | False
   26 | 22 3 -1 5 3 -1 2 6                                  | False
   27 | 22 22 -1 5 7 -1 2 6                                 | False
   28 | 22 22 3 -1 5 7 3 -1 2 6                             | False
   29 | 22 2 -1 5 6 -1 2 8                                  | False
   30 | 22 2 3 -1 5 6 3 -1 2 8                              | False
   31 | 22 2 22 -1 5 6 7 -1 2 8                             | False
   32 | 22 2 22 3 -1 5 6 7 3 -1 2 8                         | False
   33 | 22 1 -1 5 5 -1 2 6                                  | False
   34 | 22 1 3 -1 5 5 3 -1 2 6                              | False
   35 | 22 1 22 -1 5 5 7 -1 2 6                             | False
   36 | 22 1 22 3 -1 5 5 7 3 -1 2 6                         | False
   37 | 22 1 2 -1 5 5 6 -1 2 5                              | False
   38 | 22 1 2 3 -1 5 5 6 3 -1 2 12                         | False
   39 | 22 1 2 22 -1 5 5 6 7 -1 2 12                        | False
   40 | 22 1 2 22 3 -1 5 5 6 7 3 -1 2 12                    | False
   41 | 1 22 -1 5 5 -1 2 5                                  | False
   42 | 1 22 3 -1 5 5 3 -1 2 4                              | False
   43 | 1 22 22 -1 5 5 7 -1 2 5                             | False
   44 | 1 22 22 3 -1 5 5 7 3 -1 2 4                         | False
   45 | 1 22 2 -1 5 5 6 -1 2 12                             | False
   46 | 1 22 2 3 -1 5 5 6 3 -1 2 12                         | False
   47 | 1 22 2 22 -1 5 5 6 7 -1 2 12                        | False
   48 | 1 22 2 22 3 -1 5 5 6 7 3 -1 2 12                    | False
   49 | 1 2 -1 5 5 -1 2 6                                   | False
   50 | 1 2 3 -1 5 5 3 -1 2 6                               | False
   51 | 1 2 22 -1 5 5 7 -1 2 6                              | False
   52 | 1 2 22 3 -1 5 5 7 3 -1 2 6                          | False
   53 | 1 2 2 -1 5 5 6 -1 2 5                               | False
   54 | 1 2 2 3 -1 5 5 6 3 -1 2 5                           | False
   55 | 1 2 2 22 -1 5 5 6 7 -1 2 12                         | False
   56 | 1 2 2 22 3 -1 5 5 6 7 3 -1 2 12                     | False
   57 | 2 1 -1 5 5 -1 2 6                                   | False
   58 | 2 1 3 -1 5 5 3 -1 2 6                               | False
   59 | 2 1 22 -1 5 5 7 -1 2 6                              | False
   60 | 2 1 22 3 -1 5 5 7 3 -1 2 6                          | False
   61 | 2 1 2 -1 5 5 6 -1 2 6                               | False
   62 | 2 1 2 3 -1 5 5 6 3 -1 2 6                           | False
   63 | 2 1 2 22 -1 5 5 6 7 -1 2 6                          | False
   64 | 2 1 2 22 3 -1 5 5 6 7 3 -1 2 6                      | False
   65 | 15 2 -1 5 6 -1 2 12                                 | False
   66 | 15 2 3 -1 5 6 3 -1 2 12                             | False
   67 | 15 2 22 -1 5 6 7 -1 2 12                            | False
   68 | 15 2 22 3 -1 5 6 7 3 -1 2 12                        | False
   69 | 16 0 2 -1 5 5 6 -1 2 12                             | False
   70 | 16 0 2 3 -1 5 5 6 3 -1 2 12                         | False
   71 | 24 2 -1 5 5 -1 2 6                                  | False
   72 | 24 2 3 -1 5 5 3 -1 2 6                              | False
   73 | 24 2 22 -1 5 5 7 -1 2 6                             | False
   74 | 24 2 22 3 -1 5 5 7 3 -1 2 6                         | False
   75 | 24 2 2 -1 5 5 6 -1 2 5                              | False
   76 | 24 2 2 3 -1 5 5 6 3 -1 2 5                          | False
   77 | 24 2 2 22 -1 5 5 6 7 -1 2 12                        | False
   78 | 24 2 2 22 3 -1 5 5 6 7 3 -1 2 12                    | False
   79 | 0 22 -1 5 5 -1 2 5                                  | False
   80 | 0 22 3 -1 5 5 3 -1 2 4                              | False
   81 | 0 22 22 -1 5 5 7 -1 2 5                             | False
   82 | 0 22 22 3 -1 5 5 7 3 -1 2 4                         | False
   83 | 0 22 2 -1 5 5 6 -1 2 12                             | False
   84 | 0 22 2 3 -1 5 5 6 3 -1 2 12                         | False
   85 | 0 22 2 22 -1 5 5 6 7 -1 2 12                        | False
   86 | 0 22 2 22 3 -1 5 5 6 7 3 -1 2 12                    | False
   87 | 2 24 -1 5 5 -1 2 6                                  | False
   88 | 2 24 3 -1 5 5 3 -1 2 6                              | False
   89 | 2 24 22 -1 5 5 7 -1 2 6                             | False
   90 | 2 24 22 3 -1 5 5 7 3 -1 2 6                         | False
   91 | 2 24 2 -1 5 5 6 -1 2 6                              | False
   92 | 2 24 2 3 -1 5 5 6 3 -1 2 6                          | False
   93 | 2 24 2 22 -1 5 5 6 7 -1 2 6                         | False
   94 | 2 24 2 22 3 -1 5 5 6 7 3 -1 2 6                     | False
   95 | 2 22 -1 5 5 -1 2 5                                  | False
   96 | 2 22 3 -1 5 5 3 -1 2 4                              | False
   97 | 2 22 22 -1 5 5 7 -1 2 5                             | False
   98 | 2 22 22 3 -1 5 5 7 3 -1 2 4                         | False
   99 | 2 22 2 -1 5 5 6 -1 2 6                              | False
  100 | 2 22 2 3 -1 5 5 6 3 -1 2 6                          | False
  101 | 2 22 2 22 -1 5 5 6 7 -1 2 6                         | False
  102 | 2 22 2 22 3 -1 5 5 6 7 3 -1 2 6                     | False
  103 | 2 0 -1 5 5 -1 2 6                                   | False
  104 | 2 0 3 -1 5 5 3 -1 2 6                               | False
  105 | 2 0 22 -1 5 5 7 -1 2 6                              | False
  106 | 2 0 22 3 -1 5 5 7 3 -1 2 6                          | False
  107 | 2 0 2 -1 5 5 6 -1 2 6                               | False
  108 | 2 0 2 3 -1 5 5 6 3 -1 2 6                           | False
  109 | 2 0 2 22 -1 5 5 6 7 -1 2 6                          | False
  110 | 2 0 2 22 3 -1 5 5 6 7 3 -1 2 6                      | False
  111 | 2 18 -1 5 5 -1 2 6                                  | False
  112 | 2 18 3 -1 5 5 3 -1 2 6                              | False
  113 | 2 18 22 -1 5 5 7 -1 2 6                             | False
  114 | 2 18 22 3 -1 5 5 7 3 -1 2 6                         | False
  115 | 2 18 2 -1 5 5 6 -1 2 6                              | False
  116 | 2 18 2 3 -1 5 5 6 3 -1 2 6                          | False
  117 | 2 18 2 22 -1 5 5 6 7 -1 2 6                         | False
  118 | 2 18 2 22 3 -1 5 5 6 7 3 -1 2 6                     | False
  119 | 2 2 -1 5 5 -1 2 3                                   | False
 4355 | -1                                                  | False
  120 | 2 2 3 -1 5 5 3 -1 2 3                               | False
  121 | 2 2 22 -1 5 5 7 -1 2 3                              | False
  122 | 2 2 22 3 -1 5 5 7 3 -1 2 3                          | False
  123 | 2 2 2 -1 5 5 6 -1 2 5                               | False
  124 | 2 2 2 3 -1 5 5 6 3 -1 2 5                           | False
  125 | 2 2 2 22 -1 5 5 6 7 -1 2 12                         | False
  126 | 2 2 2 22 3 -1 5 5 6 7 3 -1 2 12                     | False
  127 | 18 2 -1 5 5 -1 2 6                                  | False
  128 | 18 2 3 -1 5 5 3 -1 2 6                              | False
  129 | 18 2 22 -1 5 5 7 -1 2 6                             | False
  130 | 18 2 22 3 -1 5 5 7 3 -1 2 6                         | False
  131 | 18 2 2 -1 5 5 6 -1 2 5                              | False
  132 | 18 2 2 3 -1 5 5 6 3 -1 2 5                          | False
  133 | 18 2 2 22 -1 5 5 6 7 -1 2 12                        | False
  134 | 18 2 2 22 3 -1 5 5 6 7 3 -1 2 12                    | False
  135 | 1 18 2 -1 5 5 5 -1 2 6                              | False
  136 | 1 18 2 3 -1 5 5 5 3 -1 2 6                          | False
  137 | 1 18 2 22 -1 5 5 5 7 -1 2 6                         | False
  138 | 1 18 2 22 3 -1 5 5 5 7 3 -1 2 6                     | False
  139 | 1 18 2 2 -1 5 5 5 6 -1 2 5                          | False
  140 | 1 18 2 2 3 -1 5 5 5 6 3 -1 2 5                      | False
  141 | 1 18 2 2 22 -1 5 5 5 6 7 -1 2 12                    | False
  142 | 1 18 2 2 22 3 -1 5 5 5 6 7 3 -1 2 12                | False
  143 | 0 -1 5 -1 2 6                                       | False
  144 | 0 3 -1 5 3 -1 2 6                                   | False
  145 | 0 22 -1 5 7 -1 2 6                                  | False
  146 | 0 22 3 -1 5 7 3 -1 2 6                              | False
  147 | 0 2 -1 5 6 -1 2 10                                  | False
  148 | 0 2 3 -1 5 6 3 -1 2 10                              | False
  149 | 0 2 22 -1 5 6 7 -1 2 10                             | False
  150 | 0 2 22 3 -1 5 6 7 3 -1 2 10                         | False
  151 | 0 18 -1 5 5 -1 2 6                                  | False
  152 | 0 18 3 -1 5 5 3 -1 2 6                              | False
  153 | 0 18 22 -1 5 5 7 -1 2 6                             | False
  154 | 0 18 22 3 -1 5 5 7 3 -1 2 6                         | False
  155 | 0 18 2 -1 5 5 6 -1 2 10                             | False
  156 | 0 18 2 3 -1 5 5 6 3 -1 2 10                         | False
  157 | 0 18 2 22 -1 5 5 6 7 -1 2 10                        | False
  158 | 0 18 2 22 3 -1 5 5 6 7 3 -1 2 10                    | False
  159 | 0 1 -1 5 5 -1 2 6                                   | False
  160 | 0 1 3 -1 5 5 3 -1 2 6                               | False
  161 | 0 1 22 -1 5 5 7 -1 2 6                              | False
  162 | 0 1 22 3 -1 5 5 7 3 -1 2 6                          | False
  163 | 0 1 2 -1 5 5 6 -1 2 10                              | False
  164 | 0 1 2 3 -1 5 5 6 3 -1 2 10                          | False
  165 | 0 1 2 22 -1 5 5 6 7 -1 2 10                         | False
  166 | 0 1 2 22 3 -1 5 5 6 7 3 -1 2 10                     | False
  167 | 1 2 2 -1 5 5 5 -1 2 6                               | False
  168 | 1 2 2 3 -1 5 5 5 3 -1 2 6                           | False
  169 | 1 2 2 22 -1 5 5 5 7 -1 2 6                          | False
  170 | 1 2 2 22 3 -1 5 5 5 7 3 -1 2 6                      | False
  171 | 1 2 2 2 -1 5 5 5 6 -1 2 5                           | False
  172 | 1 2 2 2 3 -1 5 5 5 6 3 -1 2 5                       | False
  173 | 1 2 2 2 22 -1 5 5 5 6 7 -1 2 12                     | False
  174 | 1 2 2 2 22 3 -1 5 5 5 6 7 3 -1 2 12                 | False
  175 | 22 2 -1 5 5 -1 2 6                                  | False
  176 | 22 2 3 -1 5 5 3 -1 2 6                              | False
  177 | 22 2 22 -1 5 5 7 -1 2 6                             | False
  178 | 22 2 22 3 -1 5 5 7 3 -1 2 6                         | False
  179 | 22 2 2 -1 5 5 6 -1 2 5                              | False
  180 | 22 2 2 3 -1 5 5 6 3 -1 2 12                         | False
  181 | 22 2 2 22 -1 5 5 6 7 -1 2 12                        | False
  182 | 22 2 2 22 3 -1 5 5 6 7 3 -1 2 12                    | False
  183 | 14 -1 5 -1 2 6                                      | False
  184 | 14 3 -1 5 3 -1 2 6                                  | False
  185 | 14 22 -1 5 7 -1 2 6                                 | False
  186 | 14 22 3 -1 5 7 3 -1 2 6                             | False
  187 | 14 2 -1 5 6 -1 2 12                                 | False
  188 | 14 2 3 -1 5 6 3 -1 2 12                             | False
  189 | 14 2 22 -1 5 6 7 -1 2 12                            | False
  190 | 14 2 22 3 -1 5 6 7 3 -1 2 12                        | False
  191 | 15 1 -1 5 5 -1 2 6                                  | False
  192 | 15 1 3 -1 5 5 3 -1 2 6                              | False
  193 | 15 1 22 -1 5 5 7 -1 2 6                             | False
  194 | 15 1 22 3 -1 5 5 7 3 -1 2 6                         | False
  195 | 15 1 2 -1 5 5 6 -1 2 12                             | False
  196 | 15 1 2 3 -1 5 5 6 3 -1 2 12                         | False
  197 | 15 1 2 22 -1 5 5 6 7 -1 2 12                        | False
  198 | 15 1 2 22 3 -1 5 5 6 7 3 -1 2 12                    | False
  199 | 24 -1 5 -1 2 6                                      | False
  200 | 24 3 -1 5 3 -1 2 6                                  | False
  201 | 24 22 -1 5 7 -1 2 6                                 | False
  202 | 24 22 3 -1 5 7 3 -1 2 6                             | False
  203 | 24 2 -1 5 6 -1 2 12                                 | False
  204 | 24 2 3 -1 5 6 3 -1 2 12                             | False
  205 | 24 2 22 -1 5 6 7 -1 2 12                            | False
  206 | 24 2 22 3 -1 5 6 7 3 -1 2 12                        | False
  207 | 24 24 -1 5 5 -1 2 6                                 | False
  208 | 24 24 3 -1 5 5 3 -1 2 6                             | False
  209 | 24 24 22 -1 5 5 7 -1 2 6                            | False
  210 | 24 24 22 3 -1 5 5 7 3 -1 2 6                        | False
  211 | 24 24 2 -1 5 5 6 -1 2 12                            | False
  212 | 24 24 2 3 -1 5 5 6 3 -1 2 12                        | False
  213 | 24 24 2 22 -1 5 5 6 7 -1 2 12                       | False
  214 | 24 24 2 22 3 -1 5 5 6 7 3 -1 2 12                   | False
  215 | 24 1 -1 5 5 -1 2 6                                  | False
  216 | 24 1 3 -1 5 5 3 -1 2 6                              | False
  217 | 24 1 22 -1 5 5 7 -1 2 6                             | False
  218 | 24 1 22 3 -1 5 5 7 3 -1 2 6                         | False
  219 | 24 1 2 -1 5 5 6 -1 2 12                             | False
  220 | 24 1 2 3 -1 5 5 6 3 -1 2 12                         | False
  221 | 24 1 2 22 -1 5 5 6 7 -1 2 12                        | False
  222 | 24 1 2 22 3 -1 5 5 6 7 3 -1 2 12                    | False
  223 | 25 -1 5 -1 2 6                                      | False
  224 | 25 3 -1 5 3 -1 2 6                                  | False
  225 | 25 22 -1 5 7 -1 2 6                                 | False
  226 | 25 22 3 -1 5 7 3 -1 2 6                             | False
  227 | 25 2 -1 5 6 -1 2 12                                 | False
  228 | 25 2 3 -1 5 6 3 -1 2 12                             | False
  229 | 25 2 22 -1 5 6 7 -1 2 12                            | False
  230 | 25 2 22 3 -1 5 6 7 3 -1 2 12                        | False
  231 | 23 -1 5 -1 2 6                                      | False
  232 | 23 3 -1 5 3 -1 2 6                                  | False
  233 | 23 22 -1 5 7 -1 2 6                                 | False
  234 | 23 22 3 -1 5 7 3 -1 2 6                             | False
  235 | 23 2 -1 5 6 -1 2 12                                 | False
  236 | 23 2 3 -1 5 6 3 -1 2 12                             | False
  237 | 23 2 22 -1 5 6 7 -1 2 12                            | False
  238 | 23 2 22 3 -1 5 6 7 3 -1 2 12                        | False
  239 | 0 13 0 -1 5 5 5 -1 2 6                              | False
  240 | 0 13 0 3 -1 5 5 5 3 -1 2 6                          | False
  241 | 0 13 0 22 -1 5 5 5 7 -1 2 6                         | False
  242 | 0 13 0 22 3 -1 5 5 5 7 3 -1 2 6                     | False
  243 | 0 13 0 2 -1 5 5 5 6 -1 2 12                         | False
  244 | 0 13 0 2 3 -1 5 5 5 6 3 -1 2 12                     | False
  245 | 0 13 0 2 22 -1 5 5 5 6 7 -1 2 12                    | False
  246 | 0 13 0 2 22 3 -1 5 5 5 6 7 3 -1 2 12                | False
  247 | 0 25 -1 5 5 -1 2 6                                  | False
  248 | 0 25 3 -1 5 5 3 -1 2 6                              | False
  249 | 0 25 22 -1 5 5 7 -1 2 6                             | False
  250 | 0 25 22 3 -1 5 5 7 3 -1 2 6                         | False
  251 | 0 25 2 -1 5 5 6 -1 2 12                             | False
  252 | 0 25 2 3 -1 5 5 6 3 -1 2 12                         | False
  253 | 0 25 2 22 -1 5 5 6 7 -1 2 12                        | False
  254 | 0 25 2 22 3 -1 5 5 6 7 3 -1 2 12                    | False
  255 | 11 -1 5 -1 2 6                                      | False
  256 | 11 3 -1 5 3 -1 2 6                                  | False
  257 | 11 22 -1 5 7 -1 2 6                                 | False
  258 | 11 22 3 -1 5 7 3 -1 2 6                             | False
  259 | 11 2 -1 5 6 -1 2 12                                 | False
  260 | 11 2 3 -1 5 6 3 -1 2 12                             | False
  261 | 11 2 22 -1 5 6 7 -1 2 12                            | False
  262 | 11 2 22 3 -1 5 6 7 3 -1 2 12                        | False
  263 | 3 0 -1 3 5 -1 2 6                                   | False
  264 | 3 0 3 -1 3 5 3 -1 2 6                               | False
  265 | 3 0 22 -1 3 5 7 -1 2 6                              | False
  266 | 3 0 22 3 -1 3 5 7 3 -1 2 6                          | False
  267 | 3 0 2 -1 3 5 6 -1 2 12                              | False
  268 | 3 0 2 3 -1 3 5 6 3 -1 2 12                          | False
  269 | 3 0 2 22 -1 3 5 6 7 -1 2 12                         | False
  270 | 3 0 2 22 3 -1 3 5 6 7 3 -1 2 12                     | False
  271 | 3 1 -1 3 5 -1 2 6                                   | False
  272 | 3 1 3 -1 3 5 3 -1 2 6                               | False
  273 | 3 1 22 -1 3 5 7 -1 2 6                              | False
  274 | 3 1 22 3 -1 3 5 7 3 -1 2 6                          | False
  275 | 3 1 2 -1 3 5 6 -1 2 12                              | False
  276 | 3 1 2 3 -1 3 5 6 3 -1 2 12                          | False
  277 | 3 1 2 22 -1 3 5 6 7 -1 2 12                         | False
  278 | 3 1 2 22 3 -1 3 5 6 7 3 -1 2 12                     | False
  279 | 18 13 18 -1 5 5 3 -1 2 6                            | False
  280 | 18 13 18 3 -1 5 5 3 3 -1 2 6                        | False
  281 | 18 13 18 22 -1 5 5 3 7 -1 2 6                       | False
  282 | 18 13 18 22 3 -1 5 5 3 7 3 -1 2 6                   | False
  283 | 18 13 18 2 -1 5 5 3 6 -1 2 12                       | False
  284 | 18 13 18 2 3 -1 5 5 3 6 3 -1 2 12                   | False
  285 | 18 13 18 2 22 -1 5 5 3 6 7 -1 2 12                  | False
  286 | 18 13 18 2 22 3 -1 5 5 3 6 7 3 -1 2 12              | False
  287 | 18 0 -1 5 5 -1 2 6                                  | False
  288 | 18 0 3 -1 5 5 3 -1 2 6                              | False
  289 | 18 0 22 -1 5 5 7 -1 2 6                             | False
  290 | 18 0 22 3 -1 5 5 7 3 -1 2 6                         | False
  291 | 18 0 2 -1 5 5 6 -1 2 12                             | False
  292 | 18 0 2 3 -1 5 5 6 3 -1 2 12                         | False
  293 | 18 0 2 22 -1 5 5 6 7 -1 2 12                        | False
  294 | 18 0 2 22 3 -1 5 5 6 7 3 -1 2 12                    | False
  295 | 18 18 -1 5 5 -1 2 6                                 | False
  296 | 18 18 3 -1 5 5 3 -1 2 6                             | False
  297 | 18 18 22 -1 5 5 7 -1 2 6                            | False
  298 | 18 18 22 3 -1 5 5 7 3 -1 2 6                        | False
  299 | 18 18 2 -1 5 5 6 -1 2 12                            | False
  300 | 18 18 2 3 -1 5 5 6 3 -1 2 12                        | False
  301 | 18 18 2 22 -1 5 5 6 7 -1 2 12                       | False
  302 | 18 18 2 22 3 -1 5 5 6 7 3 -1 2 12                   | False
  303 | 18 18 18 -1 5 5 5 -1 2 6                            | False
  304 | 18 18 18 3 -1 5 5 5 3 -1 2 6                        | False
  305 | 18 18 18 22 -1 5 5 5 7 -1 2 6                       | False
  306 | 18 18 18 22 3 -1 5 5 5 7 3 -1 2 6                   | False
  307 | 18 18 18 2 -1 5 5 5 6 -1 2 12                       | False
  308 | 18 18 18 2 3 -1 5 5 5 6 3 -1 2 12                   | False
  309 | 18 18 18 2 22 -1 5 5 5 6 7 -1 2 12                  | False
  310 | 18 18 18 2 22 3 -1 5 5 5 6 7 3 -1 2 12              | False
  311 | 18 18 1 -1 5 5 5 -1 2 6                             | False
  312 | 18 18 1 3 -1 5 5 5 3 -1 2 6                         | False
  313 | 18 18 1 22 -1 5 5 5 7 -1 2 6                        | False
  314 | 18 18 1 22 3 -1 5 5 5 7 3 -1 2 6                    | False
  315 | 18 18 1 2 -1 5 5 5 6 -1 2 12                        | False
  316 | 18 18 1 2 3 -1 5 5 5 6 3 -1 2 12                    | False
  317 | 18 18 1 2 22 -1 5 5 5 6 7 -1 2 12                   | False
  318 | 18 18 1 2 22 3 -1 5 5 5 6 7 3 -1 2 12               | False
  319 | 18 1 -1 5 5 -1 2 6                                  | False
  320 | 18 1 3 -1 5 5 3 -1 2 6                              | False
  321 | 18 1 22 -1 5 5 7 -1 2 6                             | False
  322 | 18 1 22 3 -1 5 5 7 3 -1 2 6                         | False
  323 | 18 1 2 -1 5 5 6 -1 2 12                             | False
  324 | 18 1 2 3 -1 5 5 6 3 -1 2 12                         | False
  325 | 18 1 2 22 -1 5 5 6 7 -1 2 12                        | False
  326 | 18 1 2 22 3 -1 5 5 6 7 3 -1 2 12                    | False
  327 | 5 -1 5 -1 2 6                                       | False
  328 | 5 3 -1 5 3 -1 2 6                                   | False
  329 | 5 22 -1 5 7 -1 2 6                                  | False
  330 | 5 22 3 -1 5 7 3 -1 2 6                              | False
  331 | 5 2 -1 5 6 -1 2 12                                  | False
  332 | 5 2 3 -1 5 6 3 -1 2 12                              | False
  333 | 5 2 22 -1 5 6 7 -1 2 12                             | False
  334 | 5 2 22 3 -1 5 6 7 3 -1 2 12                         | False
  335 | 21 -1 5 -1 2 6                                      | False
  336 | 21 3 -1 5 3 -1 2 6                                  | False
  337 | 21 22 -1 5 7 -1 2 6                                 | False
  338 | 21 22 3 -1 5 7 3 -1 2 6                             | False
  339 | 21 2 -1 5 6 -1 2 12                                 | False
  340 | 21 2 3 -1 5 6 3 -1 2 12                             | False
  341 | 21 2 22 -1 5 6 7 -1 2 12                            | False
  342 | 21 2 22 3 -1 5 6 7 3 -1 2 12                        | False
  343 | 1 13 1 -1 5 5 5 -1 2 6                              | False
  344 | 1 13 1 3 -1 5 5 5 3 -1 2 6                          | False
  345 | 1 13 1 22 -1 5 5 5 7 -1 2 6                         | False
  346 | 1 13 1 22 3 -1 5 5 5 7 3 -1 2 6                     | False
  347 | 1 13 1 2 -1 5 5 5 6 -1 2 12                         | False
  348 | 1 13 1 2 3 -1 5 5 5 6 3 -1 2 12                     | False
  349 | 1 13 1 2 22 -1 5 5 5 6 7 -1 2 12                    | False
  350 | 1 13 1 2 22 3 -1 5 5 5 6 7 3 -1 2 12                | False
  351 | 1 24 -1 5 5 -1 2 6                                  | False
  352 | 1 24 3 -1 5 5 3 -1 2 6                              | False
  353 | 1 24 22 -1 5 5 7 -1 2 6                             | False
  354 | 1 24 22 3 -1 5 5 7 3 -1 2 6                         | False
  355 | 1 24 2 -1 5 5 6 -1 2 12                             | False
  356 | 1 24 2 3 -1 5 5 6 3 -1 2 12                         | False
  357 | 1 24 2 22 -1 5 5 6 7 -1 2 12                        | False
  358 | 1 24 2 22 3 -1 5 5 6 7 3 -1 2 12                    | False
  359 | 1 24 24 -1 5 5 5 -1 2 6                             | False
  360 | 1 24 24 3 -1 5 5 5 3 -1 2 6                         | False
  361 | 1 24 24 22 -1 5 5 5 7 -1 2 6                        | False
  362 | 1 24 24 22 3 -1 5 5 5 7 3 -1 2 6                    | False
  363 | 1 24 24 2 -1 5 5 5 6 -1 2 12                        | False
  364 | 1 24 24 2 3 -1 5 5 5 6 3 -1 2 12                    | False
  365 | 1 24 24 2 22 -1 5 5 5 6 7 -1 2 12                   | False
  366 | 1 24 24 2 22 3 -1 5 5 5 6 7 3 -1 2 12               | False
  367 | 1 24 1 -1 5 5 5 -1 2 6                              | False
  368 | 1 24 1 3 -1 5 5 5 3 -1 2 6                          | False
  369 | 1 24 1 22 -1 5 5 5 7 -1 2 6                         | False
  370 | 1 24 1 22 3 -1 5 5 5 7 3 -1 2 6                     | False
  371 | 1 24 1 2 -1 5 5 5 6 -1 2 12                         | False
  372 | 1 24 1 2 3 -1 5 5 5 6 3 -1 2 12                     | False
  373 | 1 24 1 2 22 -1 5 5 5 6 7 -1 2 12                    | False
  374 | 1 24 1 2 22 3 -1 5 5 5 6 7 3 -1 2 12                | False
  375 | 1 15 -1 5 5 -1 2 6                                  | False
  376 | 1 15 3 -1 5 5 3 -1 2 6                              | False
  377 | 1 15 22 -1 5 5 7 -1 2 6                             | False
  378 | 1 15 22 3 -1 5 5 7 3 -1 2 6                         | False
  379 | 1 15 2 -1 5 5 6 -1 2 12                             | False
  380 | 1 15 2 3 -1 5 5 6 3 -1 2 12                         | False
  381 | 1 15 2 22 -1 5 5 6 7 -1 2 12                        | False
  382 | 1 15 2 22 3 -1 5 5 6 7 3 -1 2 12                    | False
  383 | 1 22 1 -1 5 5 5 -1 2 6                              | False
  384 | 1 22 1 3 -1 5 5 5 3 -1 2 6                          | False
  385 | 1 22 1 22 -1 5 5 5 7 -1 2 6                         | False
  386 | 1 22 1 22 3 -1 5 5 5 7 3 -1 2 6                     | False
  387 | 1 22 1 2 -1 5 5 5 6 -1 2 12                         | False
  388 | 1 22 1 2 3 -1 5 5 5 6 3 -1 2 12                     | False
  389 | 1 22 1 2 22 -1 5 5 5 6 7 -1 2 12                    | False
  390 | 1 22 1 2 22 3 -1 5 5 5 6 7 3 -1 2 12                | False
  391 | 1 25 -1 5 5 -1 2 6                                  | False
  392 | 1 25 3 -1 5 5 3 -1 2 6                              | False
  393 | 1 25 22 -1 5 5 7 -1 2 6                             | False
  394 | 1 25 22 3 -1 5 5 7 3 -1 2 6                         | False
  395 | 1 25 2 -1 5 5 6 -1 2 12                             | False
  396 | 1 25 2 3 -1 5 5 6 3 -1 2 12                         | False
  397 | 1 25 2 22 -1 5 5 6 7 -1 2 12                        | False
  398 | 1 25 2 22 3 -1 5 5 6 7 3 -1 2 12                    | False
  399 | 1 0 -1 5 5 -1 2 6                                   | False
  400 | 1 0 3 -1 5 5 3 -1 2 6                               | False
  401 | 1 0 22 -1 5 5 7 -1 2 6                              | False
  402 | 1 0 22 3 -1 5 5 7 3 -1 2 6                          | False
  403 | 1 0 2 -1 5 5 6 -1 2 12                              | False
  404 | 1 0 2 3 -1 5 5 6 3 -1 2 12                          | False
  405 | 1 0 2 22 -1 5 5 6 7 -1 2 12                         | False
  406 | 1 0 2 22 3 -1 5 5 6 7 3 -1 2 12                     | False
  407 | 1 3 -1 5 5 -1 2 6                                   | False
  408 | 1 3 3 -1 5 5 3 -1 2 6                               | False
  409 | 1 3 22 -1 5 5 7 -1 2 6                              | False
  410 | 1 3 22 3 -1 5 5 7 3 -1 2 6                          | False
  411 | 1 3 2 -1 5 5 6 -1 2 12                              | False
  412 | 1 3 2 3 -1 5 5 6 3 -1 2 12                          | False
  413 | 1 3 2 22 -1 5 5 6 7 -1 2 12                         | False
  414 | 1 3 2 22 3 -1 5 5 6 7 3 -1 2 12                     | False
  415 | 1 18 -1 5 5 -1 2 6                                  | False
  416 | 1 18 3 -1 5 5 3 -1 2 6                              | False
  417 | 1 18 22 -1 5 5 7 -1 2 6                             | False
  418 | 1 18 22 3 -1 5 5 7 3 -1 2 6                         | False
  419 | 1 18 2 -1 5 5 6 -1 2 12                             | False
  420 | 1 18 2 3 -1 5 5 6 3 -1 2 12                         | False
  421 | 1 18 2 22 -1 5 5 6 7 -1 2 12                        | False
  422 | 1 18 2 22 3 -1 5 5 6 7 3 -1 2 12                    | False
  423 | 1 18 18 1 -1 5 5 5 5 -1 2 6                         | False
  424 | 1 18 18 1 3 -1 5 5 5 5 3 -1 2 6                     | False
  425 | 1 18 18 1 22 -1 5 5 5 5 7 -1 2 6                    | False
  426 | 1 18 18 1 22 3 -1 5 5 5 5 7 3 -1 2 6                | False
  427 | 1 18 18 1 2 -1 5 5 5 5 6 -1 2 12                    | False
  428 | 1 18 18 1 2 3 -1 5 5 5 5 6 3 -1 2 12                | False
  429 | 1 18 18 1 2 22 -1 5 5 5 5 6 7 -1 2 12               | False
  430 | 1 18 18 1 2 22 3 -1 5 5 5 5 6 7 3 -1 2 12           | False
  431 | 1 18 1 -1 5 5 5 -1 2 6                              | False
  432 | 1 18 1 3 -1 5 5 5 3 -1 2 6                          | False
  433 | 1 18 1 22 -1 5 5 5 7 -1 2 6                         | False
  434 | 1 18 1 22 3 -1 5 5 5 7 3 -1 2 6                     | False
  435 | 1 18 1 2 -1 5 5 5 6 -1 2 12                         | False
  436 | 1 18 1 2 3 -1 5 5 5 6 3 -1 2 12                     | False
  437 | 1 18 1 2 22 -1 5 5 5 6 7 -1 2 12                    | False
  438 | 1 18 1 2 22 3 -1 5 5 5 6 7 3 -1 2 12                | False
  439 | 1 2 0 -1 5 5 5 -1 2 6                               | False
  440 | 1 2 0 3 -1 5 5 5 3 -1 2 6                           | False
  441 | 1 2 0 22 -1 5 5 5 7 -1 2 6                          | False
  442 | 1 2 0 22 3 -1 5 5 5 7 3 -1 2 6                      | False
  443 | 1 2 0 2 -1 5 5 5 6 -1 2 12                          | False
  444 | 1 2 0 2 3 -1 5 5 5 6 3 -1 2 12                      | False
  445 | 1 2 0 2 22 -1 5 5 5 6 7 -1 2 12                     | False
  446 | 1 2 0 2 22 3 -1 5 5 5 6 7 3 -1 2 12                 | False
  447 | 1 2 1 -1 5 5 5 -1 2 6                               | False
  448 | 1 2 1 3 -1 5 5 5 3 -1 2 6                           | False
  449 | 1 2 1 22 -1 5 5 5 7 -1 2 6                          | False
  450 | 1 2 1 22 3 -1 5 5 5 7 3 -1 2 6                      | False
  451 | 1 2 1 2 -1 5 5 5 6 -1 2 12                          | False
  452 | 1 2 1 2 3 -1 5 5 5 6 3 -1 2 12                      | False
  453 | 1 2 1 2 22 -1 5 5 5 6 7 -1 2 12                     | False
  454 | 1 2 1 2 22 3 -1 5 5 5 6 7 3 -1 2 12                 | False
  455 | 16 -1 5 -1 2 6                                      | False
  456 | 16 3 -1 5 3 -1 2 6                                  | False
  457 | 16 22 -1 5 7 -1 2 6                                 | False
  458 | 16 22 3 -1 5 7 3 -1 2 6                             | False
  459 | 16 2 -1 5 6 -1 2 12                                 | False
  460 | 16 2 3 -1 5 6 3 -1 2 12                             | False
  461 | 16 2 22 -1 5 6 7 -1 2 12                            | False
  462 | 16 2 22 3 -1 5 6 7 3 -1 2 12                        | False
  463 | 2 1 -1 4 5 -1 2 9                                   | False
  464 | 2 1 3 -1 4 5 3 -1 2 9                               | False
  465 | 2 1 22 -1 4 5 7 -1 2 9                              | False
  466 | 2 1 22 3 -1 4 5 7 3 -1 2 9                          | False
  467 | 2 18 -1 4 5 -1 2 9                                  | False
  468 | 2 18 3 -1 4 5 3 -1 2 9                              | False
  469 | 2 18 22 -1 4 5 7 -1 2 9                             | False
  470 | 2 18 22 3 -1 4 5 7 3 -1 2 9                         | False
  471 | 2 2 -1 4 5 -1 2 9                                   | False
  472 | 2 2 3 -1 4 5 3 -1 2 9                               | False
  473 | 2 2 22 -1 4 5 7 -1 2 9                              | False
  474 | 2 2 22 3 -1 4 5 7 3 -1 2 9                          | False
  475 | 2 22 -1 4 5 -1 2 9                                  | False
  476 | 2 22 3 -1 4 5 3 -1 2 9                              | False
  477 | 2 22 22 -1 4 5 7 -1 2 9                             | False
  478 | 2 22 22 3 -1 4 5 7 3 -1 2 9                         | False
  479 | 2 22 1 -1 4 5 5 -1 2 9                              | False
  480 | 2 22 1 3 -1 4 5 5 3 -1 2 9                          | False
  481 | 2 22 1 22 -1 4 5 5 7 -1 2 9                         | False
  482 | 2 22 1 22 3 -1 4 5 5 7 3 -1 2 9                     | False
  483 | 2 1 22 -1 4 5 5 -1 2 9                              | False
  484 | 2 1 22 3 -1 4 5 5 3 -1 2 9                          | False
  485 | 2 1 22 22 -1 4 5 5 7 -1 2 9                         | False
  486 | 2 1 22 22 3 -1 4 5 5 7 3 -1 2 9                     | False
  487 | 2 1 2 -1 4 5 5 -1 2 4                               | False
  488 | 2 1 2 3 -1 4 5 5 3 -1 2 4                           | False
  489 | 2 1 2 22 -1 4 5 5 7 -1 2 4                          | False
  490 | 2 1 2 22 3 -1 4 5 5 7 3 -1 2 4                      | False
  491 | 2 2 1 -1 4 5 5 -1 2 9                               | False
  492 | 2 2 1 3 -1 4 5 5 3 -1 2 9                           | False
  493 | 2 2 1 22 -1 4 5 5 7 -1 2 9                          | False
  494 | 2 2 1 22 3 -1 4 5 5 7 3 -1 2 9                      | False
  495 | 2 24 2 -1 4 5 5 -1 2 4                              | False
  496 | 2 24 2 3 -1 4 5 5 3 -1 2 4                          | False
  497 | 2 24 2 22 -1 4 5 5 7 -1 2 4                         | False
  498 | 2 24 2 22 3 -1 4 5 5 7 3 -1 2 4                     | False
  499 | 2 0 22 -1 4 5 5 -1 2 9                              | False
  500 | 2 0 22 3 -1 4 5 5 3 -1 2 9                          | False
  501 | 2 0 22 22 -1 4 5 5 7 -1 2 9                         | False
  502 | 2 0 22 22 3 -1 4 5 5 7 3 -1 2 9                     | False
  503 | 2 2 24 -1 4 5 5 -1 2 9                              | False
  504 | 2 2 24 3 -1 4 5 5 3 -1 2 9                          | False
  505 | 2 2 24 22 -1 4 5 5 7 -1 2 9                         | False
  506 | 2 2 24 22 3 -1 4 5 5 7 3 -1 2 9                     | False
  507 | 2 2 22 -1 4 5 5 -1 2 9                              | False
  508 | 2 2 22 3 -1 4 5 5 3 -1 2 9                          | False
  509 | 2 2 22 22 -1 4 5 5 7 -1 2 9                         | False
  510 | 2 2 22 22 3 -1 4 5 5 7 3 -1 2 9                     | False
  511 | 2 2 0 -1 4 5 5 -1 2 9                               | False
  512 | 2 2 0 3 -1 4 5 5 3 -1 2 9                           | False
  513 | 2 2 0 22 -1 4 5 5 7 -1 2 9                          | False
  514 | 2 2 0 22 3 -1 4 5 5 7 3 -1 2 9                      | False
  515 | 2 2 18 -1 4 5 5 -1 2 9                              | False
  516 | 2 2 18 3 -1 4 5 5 3 -1 2 9                          | False
  517 | 2 2 18 22 -1 4 5 5 7 -1 2 9                         | False
  518 | 2 2 18 22 3 -1 4 5 5 7 3 -1 2 9                     | False
  519 | 2 2 2 -1 4 5 5 -1 2 4                               | False
  520 | 2 2 2 3 -1 4 5 5 3 -1 2 4                           | False
  521 | 2 2 2 22 -1 4 5 5 7 -1 2 4                          | False
  522 | 2 2 2 22 3 -1 4 5 5 7 3 -1 2 4                      | False
  523 | 2 18 2 -1 4 5 5 -1 2 4                              | False
  524 | 2 18 2 3 -1 4 5 5 3 -1 2 4                          | False
  525 | 2 18 2 22 -1 4 5 5 7 -1 2 4                         | False
  526 | 2 18 2 22 3 -1 4 5 5 7 3 -1 2 4                     | False
  527 | 2 1 18 2 -1 4 5 5 5 -1 2 4                          | False
  528 | 2 1 18 2 3 -1 4 5 5 5 3 -1 2 4                      | False
  529 | 2 1 18 2 22 -1 4 5 5 5 7 -1 2 4                     | False
  530 | 2 1 18 2 22 3 -1 4 5 5 5 7 3 -1 2 4                 | False
  531 | 2 0 -1 4 5 -1 2 9                                   | False
  532 | 2 0 3 -1 4 5 3 -1 2 9                               | False
  533 | 2 0 22 -1 4 5 7 -1 2 9                              | False
  534 | 2 0 22 3 -1 4 5 7 3 -1 2 9                          | False
  535 | 2 0 18 -1 4 5 5 -1 2 9                              | False
  536 | 2 0 18 3 -1 4 5 5 3 -1 2 9                          | False
  537 | 2 0 18 22 -1 4 5 5 7 -1 2 9                         | False
  538 | 2 0 18 22 3 -1 4 5 5 7 3 -1 2 9                     | False
  539 | 2 0 1 -1 4 5 5 -1 2 9                               | False
  540 | 2 0 1 3 -1 4 5 5 3 -1 2 9                           | False
  541 | 2 0 1 22 -1 4 5 5 7 -1 2 9                          | False
  542 | 2 0 1 22 3 -1 4 5 5 7 3 -1 2 9                      | False
  543 | 2 1 2 2 -1 4 5 5 5 -1 2 4                           | False
  544 | 2 1 2 2 3 -1 4 5 5 5 3 -1 2 4                       | False
  545 | 2 1 2 2 22 -1 4 5 5 5 7 -1 2 4                      | False
  546 | 2 1 2 2 22 3 -1 4 5 5 5 7 3 -1 2 4                  | False
  547 | 2 22 2 -1 4 5 5 -1 2 9                              | False
  548 | 2 22 2 3 -1 4 5 5 3 -1 2 9                          | False
  549 | 2 22 2 22 -1 4 5 5 7 -1 2 9                         | False
  550 | 2 22 2 22 3 -1 4 5 5 7 3 -1 2 9                     | False
  551 | 2 14 -1 4 5 -1 2 9                                  | False
  552 | 2 14 3 -1 4 5 3 -1 2 9                              | False
  553 | 2 14 22 -1 4 5 7 -1 2 9                             | False
  554 | 2 14 22 3 -1 4 5 7 3 -1 2 9                         | False
  555 | 2 15 1 -1 4 5 5 -1 2 9                              | False
  556 | 2 15 1 3 -1 4 5 5 3 -1 2 9                          | False
  557 | 2 15 1 22 -1 4 5 5 7 -1 2 9                         | False
  558 | 2 15 1 22 3 -1 4 5 5 7 3 -1 2 9                     | False
  559 | 2 24 -1 4 5 -1 2 9                                  | False
  560 | 2 24 3 -1 4 5 3 -1 2 9                              | False
  561 | 2 24 22 -1 4 5 7 -1 2 9                             | False
  562 | 2 24 22 3 -1 4 5 7 3 -1 2 9                         | False
  563 | 2 24 24 -1 4 5 5 -1 2 9                             | False
  564 | 2 24 24 3 -1 4 5 5 3 -1 2 9                         | False
  565 | 2 24 24 22 -1 4 5 5 7 -1 2 9                        | False
  566 | 2 24 24 22 3 -1 4 5 5 7 3 -1 2 9                    | False
  567 | 2 24 1 -1 4 5 5 -1 2 9                              | False
  568 | 2 24 1 3 -1 4 5 5 3 -1 2 9                          | False
  569 | 2 24 1 22 -1 4 5 5 7 -1 2 9                         | False
  570 | 2 24 1 22 3 -1 4 5 5 7 3 -1 2 9                     | False
  571 | 2 25 -1 4 5 -1 2 9                                  | False
  572 | 2 25 3 -1 4 5 3 -1 2 9                              | False
  573 | 2 25 22 -1 4 5 7 -1 2 9                             | False
  574 | 2 25 22 3 -1 4 5 7 3 -1 2 9                         | False
  575 | 2 23 -1 4 5 -1 2 9                                  | False
  576 | 2 23 3 -1 4 5 3 -1 2 9                              | False
  577 | 2 23 22 -1 4 5 7 -1 2 9                             | False
  578 | 2 23 22 3 -1 4 5 7 3 -1 2 9                         | False
  579 | 2 0 13 0 -1 4 5 5 5 -1 2 9                          | False
  580 | 2 0 13 0 3 -1 4 5 5 5 3 -1 2 9                      | False
  581 | 2 0 13 0 22 -1 4 5 5 5 7 -1 2 9                     | False
  582 | 2 0 13 0 22 3 -1 4 5 5 5 7 3 -1 2 9                 | False
  583 | 2 0 25 -1 4 5 5 -1 2 9                              | False
  584 | 2 0 25 3 -1 4 5 5 3 -1 2 9                          | False
  585 | 2 0 25 22 -1 4 5 5 7 -1 2 9                         | False
  586 | 2 0 25 22 3 -1 4 5 5 7 3 -1 2 9                     | False
  587 | 2 11 -1 4 5 -1 2 9                                  | False
  588 | 2 11 3 -1 4 5 3 -1 2 9                              | False
  589 | 2 11 22 -1 4 5 7 -1 2 9                             | False
  590 | 2 11 22 3 -1 4 5 7 3 -1 2 9                         | False
  591 | 2 3 0 -1 4 3 5 -1 2 9                               | False
  592 | 2 3 0 3 -1 4 3 5 3 -1 2 9                           | False
  593 | 2 3 0 22 -1 4 3 5 7 -1 2 9                          | False
  594 | 2 3 0 22 3 -1 4 3 5 7 3 -1 2 9                      | False
  595 | 2 3 1 -1 4 3 5 -1 2 9                               | False
  596 | 2 3 1 3 -1 4 3 5 3 -1 2 9                           | False
  597 | 2 3 1 22 -1 4 3 5 7 -1 2 9                          | False
  598 | 2 3 1 22 3 -1 4 3 5 7 3 -1 2 9                      | False
  599 | 2 18 13 18 -1 4 5 5 3 -1 2 9                        | False
  600 | 2 18 13 18 3 -1 4 5 5 3 3 -1 2 9                    | False
  601 | 2 18 13 18 22 -1 4 5 5 3 7 -1 2 9                   | False
  602 | 2 18 13 18 22 3 -1 4 5 5 3 7 3 -1 2 9               | False
  603 | 2 18 0 -1 4 5 5 -1 2 9                              | False
  604 | 2 18 0 3 -1 4 5 5 3 -1 2 9                          | False
  605 | 2 18 0 22 -1 4 5 5 7 -1 2 9                         | False
  606 | 2 18 0 22 3 -1 4 5 5 7 3 -1 2 9                     | False
  607 | 2 18 18 -1 4 5 5 -1 2 9                             | False
  608 | 2 18 18 3 -1 4 5 5 3 -1 2 9                         | False
  609 | 2 18 18 22 -1 4 5 5 7 -1 2 9                        | False
  610 | 2 18 18 22 3 -1 4 5 5 7 3 -1 2 9                    | False
  611 | 2 18 18 18 -1 4 5 5 5 -1 2 9                        | False
  612 | 2 18 18 18 3 -1 4 5 5 5 3 -1 2 9                    | False
  613 | 2 18 18 18 22 -1 4 5 5 5 7 -1 2 9                   | False
  614 | 2 18 18 18 22 3 -1 4 5 5 5 7 3 -1 2 9               | False
  615 | 2 18 18 1 -1 4 5 5 5 -1 2 9                         | False
  616 | 2 18 18 1 3 -1 4 5 5 5 3 -1 2 9                     | False
  617 | 2 18 18 1 22 -1 4 5 5 5 7 -1 2 9                    | False
  618 | 2 18 18 1 22 3 -1 4 5 5 5 7 3 -1 2 9                | False
  619 | 2 18 1 -1 4 5 5 -1 2 9                              | False
  620 | 2 18 1 3 -1 4 5 5 3 -1 2 9                          | False
  621 | 2 18 1 22 -1 4 5 5 7 -1 2 9                         | False
  622 | 2 18 1 22 3 -1 4 5 5 7 3 -1 2 9                     | False
  623 | 2 5 -1 4 5 -1 2 9                                   | False
  624 | 2 5 3 -1 4 5 3 -1 2 9                               | False
  625 | 2 5 22 -1 4 5 7 -1 2 9                              | False
  626 | 2 5 22 3 -1 4 5 7 3 -1 2 9                          | False
  627 | 2 21 -1 4 5 -1 2 9                                  | False
  628 | 2 21 3 -1 4 5 3 -1 2 9                              | False
  629 | 2 21 22 -1 4 5 7 -1 2 9                             | False
  630 | 2 21 22 3 -1 4 5 7 3 -1 2 9                         | False
  631 | 2 1 13 1 -1 4 5 5 5 -1 2 9                          | False
  632 | 2 1 13 1 3 -1 4 5 5 5 3 -1 2 9                      | False
  633 | 2 1 13 1 22 -1 4 5 5 5 7 -1 2 9                     | False
  634 | 2 1 13 1 22 3 -1 4 5 5 5 7 3 -1 2 9                 | False
  635 | 2 1 24 -1 4 5 5 -1 2 9                              | False
  636 | 2 1 24 3 -1 4 5 5 3 -1 2 9                          | False
  637 | 2 1 24 22 -1 4 5 5 7 -1 2 9                         | False
  638 | 2 1 24 22 3 -1 4 5 5 7 3 -1 2 9                     | False
  639 | 2 1 24 24 -1 4 5 5 5 -1 2 9                         | False
  640 | 2 1 24 24 3 -1 4 5 5 5 3 -1 2 9                     | False
  641 | 2 1 24 24 22 -1 4 5 5 5 7 -1 2 9                    | False
  642 | 2 1 24 24 22 3 -1 4 5 5 5 7 3 -1 2 9                | False
  643 | 2 1 24 1 -1 4 5 5 5 -1 2 9                          | False
  644 | 2 1 24 1 3 -1 4 5 5 5 3 -1 2 9                      | False
  645 | 2 1 24 1 22 -1 4 5 5 5 7 -1 2 9                     | False
  646 | 2 1 24 1 22 3 -1 4 5 5 5 7 3 -1 2 9                 | False
  647 | 2 1 15 -1 4 5 5 -1 2 9                              | False
  648 | 2 1 15 3 -1 4 5 5 3 -1 2 9                          | False
  649 | 2 1 15 22 -1 4 5 5 7 -1 2 9                         | False
  650 | 2 1 15 22 3 -1 4 5 5 7 3 -1 2 9                     | False
  651 | 2 1 22 1 -1 4 5 5 5 -1 2 9                          | False
  652 | 2 1 22 1 3 -1 4 5 5 5 3 -1 2 9                      | False
  653 | 2 1 22 1 22 -1 4 5 5 5 7 -1 2 9                     | False
  654 | 2 1 22 1 22 3 -1 4 5 5 5 7 3 -1 2 9                 | False
  655 | 2 1 25 -1 4 5 5 -1 2 9                              | False
  656 | 2 1 25 3 -1 4 5 5 3 -1 2 9                          | False
  657 | 2 1 25 22 -1 4 5 5 7 -1 2 9                         | False
  658 | 2 1 25 22 3 -1 4 5 5 7 3 -1 2 9                     | False
  659 | 2 1 0 -1 4 5 5 -1 2 9                               | False
  660 | 2 1 0 3 -1 4 5 5 3 -1 2 9                           | False
  661 | 2 1 0 22 -1 4 5 5 7 -1 2 9                          | False
  662 | 2 1 0 22 3 -1 4 5 5 7 3 -1 2 9                      | False
  663 | 2 1 3 -1 4 5 5 -1 2 9                               | False
  664 | 2 1 3 3 -1 4 5 5 3 -1 2 9                           | False
  665 | 2 1 3 22 -1 4 5 5 7 -1 2 9                          | False
  666 | 2 1 3 22 3 -1 4 5 5 7 3 -1 2 9                      | False
  667 | 2 1 18 -1 4 5 5 -1 2 9                              | False
  668 | 2 1 18 3 -1 4 5 5 3 -1 2 9                          | False
  669 | 2 1 18 22 -1 4 5 5 7 -1 2 9                         | False
  670 | 2 1 18 22 3 -1 4 5 5 7 3 -1 2 9                     | False
  671 | 2 1 18 18 1 -1 4 5 5 5 5 -1 2 9                     | False
  672 | 2 1 18 18 1 3 -1 4 5 5 5 5 3 -1 2 9                 | False
  673 | 2 1 18 18 1 22 -1 4 5 5 5 5 7 -1 2 9                | False
  674 | 2 1 18 18 1 22 3 -1 4 5 5 5 5 7 3 -1 2 9            | False
  675 | 2 1 18 1 -1 4 5 5 5 -1 2 9                          | False
  676 | 2 1 18 1 3 -1 4 5 5 5 3 -1 2 9                      | False
  677 | 2 1 18 1 22 -1 4 5 5 5 7 -1 2 9                     | False
  678 | 2 1 18 1 22 3 -1 4 5 5 5 7 3 -1 2 9                 | False
  679 | 2 1 2 0 -1 4 5 5 5 -1 2 9                           | False
  680 | 2 1 2 0 3 -1 4 5 5 5 3 -1 2 9                       | False
  681 | 2 1 2 0 22 -1 4 5 5 5 7 -1 2 9                      | False
  682 | 2 1 2 0 22 3 -1 4 5 5 5 7 3 -1 2 9                  | False
  683 | 2 1 2 1 -1 4 5 5 5 -1 2 9                           | False
  684 | 2 1 2 1 3 -1 4 5 5 5 3 -1 2 9                       | False
  685 | 2 1 2 1 22 -1 4 5 5 5 7 -1 2 9                      | False
  686 | 2 1 2 1 22 3 -1 4 5 5 5 7 3 -1 2 9                  | False
  687 | 2 16 -1 4 5 -1 2 9                                  | False
  688 | 2 16 3 -1 4 5 3 -1 2 9                              | False
  689 | 2 16 22 -1 4 5 7 -1 2 9                             | False
  690 | 2 16 22 3 -1 4 5 7 3 -1 2 9                         | False
  691 | 22 1 -1 2 5 -1 2 7                                  | False
  692 | 22 1 3 -1 2 5 3 -1 2 7                              | False
  693 | 22 1 22 -1 2 5 7 -1 2 7                             | False
  694 | 22 1 22 3 -1 2 5 7 3 -1 2 7                         | False
  695 | 22 1 2 -1 2 5 6 -1 2 12                             | False
  696 | 22 1 2 3 -1 2 5 6 3 -1 2 13                         | False
  697 | 22 1 2 22 -1 2 5 6 7 -1 2 13                        | False
  698 | 22 1 2 22 3 -1 2 5 6 7 3 -1 2 13                    | False
  699 | 22 18 -1 2 5 -1 2 2                                 | False
  700 | 22 18 3 -1 2 5 3 -1 2 2                             | False
  701 | 22 18 22 -1 2 5 7 -1 2 2                            | False
  702 | 22 18 22 3 -1 2 5 7 3 -1 2 2                        | False
  703 | 22 18 2 -1 2 5 6 -1 2 9                             | False
  704 | 22 18 2 3 -1 2 5 6 3 -1 2 9                         | False
  705 | 22 18 2 22 -1 2 5 6 7 -1 2 9                        | False
  706 | 22 18 2 22 3 -1 2 5 6 7 3 -1 2 9                    | False
  707 | 22 2 -1 2 5 -1 2 2                                  | False
  708 | 22 2 3 -1 2 5 3 -1 2 2                              | False
  709 | 22 2 22 -1 2 5 7 -1 2 2                             | False
  710 | 22 2 22 3 -1 2 5 7 3 -1 2 2                         | False
  711 | 22 2 2 -1 2 5 6 -1 2 10                             | False
  712 | 22 2 2 3 -1 2 5 6 3 -1 2 10                         | False
  713 | 22 2 2 22 -1 2 5 6 7 -1 2 10                        | False
  714 | 22 2 2 22 3 -1 2 5 6 7 3 -1 2 10                    | False
  715 | 22 22 -1 2 5 -1 2 7                                 | False
  716 | 22 22 3 -1 2 5 3 -1 2 7                             | False
  717 | 22 22 22 -1 2 5 7 -1 2 7                            | False
  718 | 22 22 22 3 -1 2 5 7 3 -1 2 7                        | False
  719 | 22 22 2 -1 2 5 6 -1 2 9                             | False
  720 | 22 22 2 3 -1 2 5 6 3 -1 2 9                         | False
  721 | 22 22 2 22 -1 2 5 6 7 -1 2 9                        | False
  722 | 22 22 2 22 3 -1 2 5 6 7 3 -1 2 9                    | False
  723 | 22 22 1 -1 2 5 5 -1 2 6                             | False
  724 | 22 22 1 3 -1 2 5 5 3 -1 2 6                         | False
  725 | 22 22 1 22 -1 2 5 5 7 -1 2 6                        | False
  726 | 22 22 1 22 3 -1 2 5 5 7 3 -1 2 6                    | False
  727 | 22 22 1 2 -1 2 5 5 6 -1 2 8                         | False
  728 | 22 22 1 2 3 -1 2 5 5 6 3 -1 2 8                     | False
  729 | 22 22 1 2 22 -1 2 5 5 6 7 -1 2 8                    | False
  730 | 22 22 1 2 22 3 -1 2 5 5 6 7 3 -1 2 8                | False
  731 | 22 1 22 -1 2 5 5 -1 2 5                             | False
  732 | 22 1 22 3 -1 2 5 5 3 -1 2 4                         | False
  733 | 22 1 22 22 -1 2 5 5 7 -1 2 5                        | False
  734 | 22 1 22 22 3 -1 2 5 5 7 3 -1 2 4                    | False
  735 | 22 1 22 2 -1 2 5 5 6 -1 2 12                        | False
  736 | 22 1 22 2 3 -1 2 5 5 6 3 -1 2 12                    | False
  737 | 22 1 22 2 22 -1 2 5 5 6 7 -1 2 12                   | False
  738 | 22 1 22 2 22 3 -1 2 5 5 6 7 3 -1 2 12               | False
  739 | 22 1 2 -1 2 5 5 -1 2 6                              | False
  740 | 22 1 2 3 -1 2 5 5 3 -1 2 6                          | False
  741 | 22 1 2 22 -1 2 5 5 7 -1 2 6                         | False
  742 | 22 1 2 22 3 -1 2 5 5 7 3 -1 2 6                     | False
  743 | 22 1 2 2 -1 2 5 5 6 -1 2 5                          | False
  744 | 22 1 2 2 3 -1 2 5 5 6 3 -1 2 5                      | False
  745 | 22 1 2 2 22 -1 2 5 5 6 7 -1 2 12                    | False
  746 | 22 1 2 2 22 3 -1 2 5 5 6 7 3 -1 2 12                | False
  747 | 22 2 1 -1 2 5 5 -1 2 6                              | False
  748 | 22 2 1 3 -1 2 5 5 3 -1 2 6                          | False
  749 | 22 2 1 22 -1 2 5 5 7 -1 2 6                         | False
  750 | 22 2 1 22 3 -1 2 5 5 7 3 -1 2 6                     | False
  751 | 22 2 1 2 -1 2 5 5 6 -1 2 6                          | False
  752 | 22 2 1 2 3 -1 2 5 5 6 3 -1 2 6                      | False
  753 | 22 2 1 2 22 -1 2 5 5 6 7 -1 2 6                     | False
  754 | 22 2 1 2 22 3 -1 2 5 5 6 7 3 -1 2 6                 | False
  755 | 22 15 2 -1 2 5 6 -1 2 12                            | False
  756 | 22 15 2 3 -1 2 5 6 3 -1 2 12                        | False
  757 | 22 15 2 22 -1 2 5 6 7 -1 2 12                       | False
  758 | 22 15 2 22 3 -1 2 5 6 7 3 -1 2 12                   | False
  759 | 22 16 0 2 -1 2 5 5 6 -1 2 12                        | False
  760 | 22 16 0 2 3 -1 2 5 5 6 3 -1 2 12                    | False
  761 | 22 24 2 -1 2 5 5 -1 2 6                             | False
  762 | 22 24 2 3 -1 2 5 5 3 -1 2 6                         | False
  763 | 22 24 2 22 -1 2 5 5 7 -1 2 6                        | False
  764 | 22 24 2 22 3 -1 2 5 5 7 3 -1 2 6                    | False
  765 | 22 24 2 2 -1 2 5 5 6 -1 2 5                         | False
  766 | 22 24 2 2 3 -1 2 5 5 6 3 -1 2 5                     | False
  767 | 22 24 2 2 22 -1 2 5 5 6 7 -1 2 12                   | False
  768 | 22 24 2 2 22 3 -1 2 5 5 6 7 3 -1 2 12               | False
  769 | 22 0 22 -1 2 5 5 -1 2 5                             | False
  770 | 22 0 22 3 -1 2 5 5 3 -1 2 4                         | False
  771 | 22 0 22 22 -1 2 5 5 7 -1 2 5                        | False
  772 | 22 0 22 22 3 -1 2 5 5 7 3 -1 2 4                    | False
  773 | 22 0 22 2 -1 2 5 5 6 -1 2 12                        | False
  774 | 22 0 22 2 3 -1 2 5 5 6 3 -1 2 12                    | False
  775 | 22 0 22 2 22 -1 2 5 5 6 7 -1 2 12                   | False
  776 | 22 0 22 2 22 3 -1 2 5 5 6 7 3 -1 2 12               | False
  777 | 22 2 24 -1 2 5 5 -1 2 6                             | False
  778 | 22 2 24 3 -1 2 5 5 3 -1 2 6                         | False
  779 | 22 2 24 22 -1 2 5 5 7 -1 2 6                        | False
  780 | 22 2 24 22 3 -1 2 5 5 7 3 -1 2 6                    | False
  781 | 22 2 24 2 -1 2 5 5 6 -1 2 6                         | False
  782 | 22 2 24 2 3 -1 2 5 5 6 3 -1 2 6                     | False
  783 | 22 2 24 2 22 -1 2 5 5 6 7 -1 2 6                    | False
  784 | 22 2 24 2 22 3 -1 2 5 5 6 7 3 -1 2 6                | False
  785 | 22 2 22 -1 2 5 5 -1 2 5                             | False
  786 | 22 2 22 3 -1 2 5 5 3 -1 2 4                         | False
  787 | 22 2 22 22 -1 2 5 5 7 -1 2 5                        | False
  788 | 22 2 22 22 3 -1 2 5 5 7 3 -1 2 4                    | False
  789 | 22 2 22 2 -1 2 5 5 6 -1 2 6                         | False
  790 | 22 2 22 2 3 -1 2 5 5 6 3 -1 2 6                     | False
  791 | 22 2 22 2 22 -1 2 5 5 6 7 -1 2 6                    | False
  792 | 22 2 22 2 22 3 -1 2 5 5 6 7 3 -1 2 6                | False
  793 | 22 2 0 -1 2 5 5 -1 2 6                              | False
  794 | 22 2 0 3 -1 2 5 5 3 -1 2 6                          | False
  795 | 22 2 0 22 -1 2 5 5 7 -1 2 6                         | False
  796 | 22 2 0 22 3 -1 2 5 5 7 3 -1 2 6                     | False
  797 | 22 2 0 2 -1 2 5 5 6 -1 2 6                          | False
  798 | 22 2 0 2 3 -1 2 5 5 6 3 -1 2 6                      | False
  799 | 22 2 0 2 22 -1 2 5 5 6 7 -1 2 6                     | False
  800 | 22 2 0 2 22 3 -1 2 5 5 6 7 3 -1 2 6                 | False
  801 | 22 2 18 -1 2 5 5 -1 2 6                             | False
  802 | 22 2 18 3 -1 2 5 5 3 -1 2 6                         | False
  803 | 22 2 18 22 -1 2 5 5 7 -1 2 6                        | False
  804 | 22 2 18 22 3 -1 2 5 5 7 3 -1 2 6                    | False
  805 | 22 2 18 2 -1 2 5 5 6 -1 2 6                         | False
  806 | 22 2 18 2 3 -1 2 5 5 6 3 -1 2 6                     | False
  807 | 22 2 18 2 22 -1 2 5 5 6 7 -1 2 6                    | False
  808 | 22 2 18 2 22 3 -1 2 5 5 6 7 3 -1 2 6                | False
  809 | 22 2 2 -1 2 5 5 -1 2 3                              | False
  810 | 22 2 2 3 -1 2 5 5 3 -1 2 3                          | False
  811 | 22 2 2 22 -1 2 5 5 7 -1 2 3                         | False
  812 | 22 2 2 22 3 -1 2 5 5 7 3 -1 2 3                     | False
  813 | 22 2 2 2 -1 2 5 5 6 -1 2 5                          | False
  814 | 22 2 2 2 3 -1 2 5 5 6 3 -1 2 5                      | False
  815 | 22 2 2 2 22 -1 2 5 5 6 7 -1 2 12                    | False
  816 | 22 2 2 2 22 3 -1 2 5 5 6 7 3 -1 2 12                | False
  817 | 22 18 2 -1 2 5 5 -1 2 6                             | False
  818 | 22 18 2 3 -1 2 5 5 3 -1 2 6                         | False
  819 | 22 18 2 22 -1 2 5 5 7 -1 2 6                        | False
  820 | 22 18 2 22 3 -1 2 5 5 7 3 -1 2 6                    | False
  821 | 22 18 2 2 -1 2 5 5 6 -1 2 5                         | False
  822 | 22 18 2 2 3 -1 2 5 5 6 3 -1 2 5                     | False
  823 | 22 18 2 2 22 -1 2 5 5 6 7 -1 2 12                   | False
  824 | 22 18 2 2 22 3 -1 2 5 5 6 7 3 -1 2 12               | False
  825 | 22 1 18 2 -1 2 5 5 5 -1 2 6                         | False
  826 | 22 1 18 2 3 -1 2 5 5 5 3 -1 2 6                     | False
  827 | 22 1 18 2 22 -1 2 5 5 5 7 -1 2 6                    | False
  828 | 22 1 18 2 22 3 -1 2 5 5 5 7 3 -1 2 6                | False
  829 | 22 1 18 2 2 -1 2 5 5 5 6 -1 2 5                     | False
  830 | 22 1 18 2 2 3 -1 2 5 5 5 6 3 -1 2 5                 | False
  831 | 22 1 18 2 2 22 -1 2 5 5 5 6 7 -1 2 12               | False
  832 | 22 1 18 2 2 22 3 -1 2 5 5 5 6 7 3 -1 2 12           | False
  833 | 22 0 -1 2 5 -1 2 6                                  | False
  834 | 22 0 3 -1 2 5 3 -1 2 6                              | False
  835 | 22 0 22 -1 2 5 7 -1 2 6                             | False
  836 | 22 0 22 3 -1 2 5 7 3 -1 2 6                         | False
  837 | 22 0 2 -1 2 5 6 -1 2 10                             | False
  838 | 22 0 2 3 -1 2 5 6 3 -1 2 10                         | False
  839 | 22 0 2 22 -1 2 5 6 7 -1 2 10                        | False
  840 | 22 0 2 22 3 -1 2 5 6 7 3 -1 2 10                    | False
  841 | 22 0 18 -1 2 5 5 -1 2 6                             | False
  842 | 22 0 18 3 -1 2 5 5 3 -1 2 6                         | False
  843 | 22 0 18 22 -1 2 5 5 7 -1 2 6                        | False
  844 | 22 0 18 22 3 -1 2 5 5 7 3 -1 2 6                    | False
  845 | 22 0 18 2 -1 2 5 5 6 -1 2 10                        | False
  846 | 22 0 18 2 3 -1 2 5 5 6 3 -1 2 10                    | False
  847 | 22 0 18 2 22 -1 2 5 5 6 7 -1 2 10                   | False
  848 | 22 0 18 2 22 3 -1 2 5 5 6 7 3 -1 2 10               | False
  849 | 22 0 1 -1 2 5 5 -1 2 6                              | False
  850 | 22 0 1 3 -1 2 5 5 3 -1 2 6                          | False
  851 | 22 0 1 22 -1 2 5 5 7 -1 2 6                         | False
  852 | 22 0 1 22 3 -1 2 5 5 7 3 -1 2 6                     | False
  853 | 22 0 1 2 -1 2 5 5 6 -1 2 10                         | False
  854 | 22 0 1 2 3 -1 2 5 5 6 3 -1 2 10                     | False
  855 | 22 0 1 2 22 -1 2 5 5 6 7 -1 2 10                    | False
  856 | 22 0 1 2 22 3 -1 2 5 5 6 7 3 -1 2 10                | False
  857 | 22 1 2 2 -1 2 5 5 5 -1 2 6                          | False
  858 | 22 1 2 2 3 -1 2 5 5 5 3 -1 2 6                      | False
  859 | 22 1 2 2 22 -1 2 5 5 5 7 -1 2 6                     | False
  860 | 22 1 2 2 22 3 -1 2 5 5 5 7 3 -1 2 6                 | False
  861 | 22 1 2 2 2 -1 2 5 5 5 6 -1 2 5                      | False
  862 | 22 1 2 2 2 3 -1 2 5 5 5 6 3 -1 2 5                  | False
  863 | 22 1 2 2 2 22 -1 2 5 5 5 6 7 -1 2 12                | False
  864 | 22 1 2 2 2 22 3 -1 2 5 5 5 6 7 3 -1 2 12            | False
  865 | 22 22 2 -1 2 5 5 -1 2 6                             | False
  866 | 22 22 2 3 -1 2 5 5 3 -1 2 6                         | False
  867 | 22 22 2 22 -1 2 5 5 7 -1 2 6                        | False
  868 | 22 22 2 22 3 -1 2 5 5 7 3 -1 2 6                    | False
  869 | 22 22 2 2 -1 2 5 5 6 -1 2 5                         | False
  870 | 22 22 2 2 3 -1 2 5 5 6 3 -1 2 5                     | False
  871 | 22 22 2 2 22 -1 2 5 5 6 7 -1 2 5                    | False
  872 | 22 22 2 2 22 3 -1 2 5 5 6 7 3 -1 2 5                | False
  873 | 22 14 -1 2 5 -1 2 6                                 | False
  874 | 22 14 3 -1 2 5 3 -1 2 6                             | False
  875 | 22 14 22 -1 2 5 7 -1 2 6                            | False
  876 | 22 14 22 3 -1 2 5 7 3 -1 2 6                        | False
  877 | 22 14 2 -1 2 5 6 -1 2 12                            | False
  878 | 22 14 2 3 -1 2 5 6 3 -1 2 12                        | False
  879 | 22 14 2 22 -1 2 5 6 7 -1 2 12                       | False
  880 | 22 14 2 22 3 -1 2 5 6 7 3 -1 2 12                   | False
  881 | 22 15 1 -1 2 5 5 -1 2 6                             | False
  882 | 22 15 1 3 -1 2 5 5 3 -1 2 6                         | False
  883 | 22 15 1 22 -1 2 5 5 7 -1 2 6                        | False
  884 | 22 15 1 22 3 -1 2 5 5 7 3 -1 2 6                    | False
  885 | 22 15 1 2 -1 2 5 5 6 -1 2 12                        | False
  886 | 22 15 1 2 3 -1 2 5 5 6 3 -1 2 12                    | False
  887 | 22 15 1 2 22 -1 2 5 5 6 7 -1 2 12                   | False
  888 | 22 15 1 2 22 3 -1 2 5 5 6 7 3 -1 2 12               | False
  889 | 22 24 -1 2 5 -1 2 6                                 | False
  890 | 22 24 3 -1 2 5 3 -1 2 6                             | False
  891 | 22 24 22 -1 2 5 7 -1 2 6                            | False
  892 | 22 24 22 3 -1 2 5 7 3 -1 2 6                        | False
  893 | 22 24 2 -1 2 5 6 -1 2 12                            | False
  894 | 22 24 2 3 -1 2 5 6 3 -1 2 12                        | False
  895 | 22 24 2 22 -1 2 5 6 7 -1 2 12                       | False
  896 | 22 24 2 22 3 -1 2 5 6 7 3 -1 2 12                   | False
  897 | 22 24 24 -1 2 5 5 -1 2 6                            | False
  898 | 22 24 24 3 -1 2 5 5 3 -1 2 6                        | False
  899 | 22 24 24 22 -1 2 5 5 7 -1 2 6                       | False
  900 | 22 24 24 22 3 -1 2 5 5 7 3 -1 2 6                   | False
  901 | 22 24 24 2 -1 2 5 5 6 -1 2 12                       | False
  902 | 22 24 24 2 3 -1 2 5 5 6 3 -1 2 12                   | False
  903 | 22 24 24 2 22 -1 2 5 5 6 7 -1 2 12                  | False
  904 | 22 24 24 2 22 3 -1 2 5 5 6 7 3 -1 2 12              | False
  905 | 22 24 1 -1 2 5 5 -1 2 6                             | False
  906 | 22 24 1 3 -1 2 5 5 3 -1 2 6                         | False
  907 | 22 24 1 22 -1 2 5 5 7 -1 2 6                        | False
  908 | 22 24 1 22 3 -1 2 5 5 7 3 -1 2 6                    | False
  909 | 22 24 1 2 -1 2 5 5 6 -1 2 12                        | False
  910 | 22 24 1 2 3 -1 2 5 5 6 3 -1 2 12                    | False
  911 | 22 24 1 2 22 -1 2 5 5 6 7 -1 2 12                   | False
  912 | 22 24 1 2 22 3 -1 2 5 5 6 7 3 -1 2 12               | False
  913 | 22 25 -1 2 5 -1 2 6                                 | False
  914 | 22 25 3 -1 2 5 3 -1 2 6                             | False
  915 | 22 25 22 -1 2 5 7 -1 2 6                            | False
  916 | 22 25 22 3 -1 2 5 7 3 -1 2 6                        | False
  917 | 22 25 2 -1 2 5 6 -1 2 12                            | False
  918 | 22 25 2 3 -1 2 5 6 3 -1 2 12                        | False
  919 | 22 25 2 22 -1 2 5 6 7 -1 2 12                       | False
  920 | 22 25 2 22 3 -1 2 5 6 7 3 -1 2 12                   | False
  921 | 22 23 -1 2 5 -1 2 6                                 | False
  922 | 22 23 3 -1 2 5 3 -1 2 6                             | False
  923 | 22 23 22 -1 2 5 7 -1 2 6                            | False
  924 | 22 23 22 3 -1 2 5 7 3 -1 2 6                        | False
  925 | 22 23 2 -1 2 5 6 -1 2 12                            | False
  926 | 22 23 2 3 -1 2 5 6 3 -1 2 12                        | False
  927 | 22 23 2 22 -1 2 5 6 7 -1 2 12                       | False
  928 | 22 23 2 22 3 -1 2 5 6 7 3 -1 2 12                   | False
  929 | 22 0 13 0 -1 2 5 5 5 -1 2 6                         | False
  930 | 22 0 13 0 3 -1 2 5 5 5 3 -1 2 6                     | False
  931 | 22 0 13 0 22 -1 2 5 5 5 7 -1 2 6                    | False
  932 | 22 0 13 0 22 3 -1 2 5 5 5 7 3 -1 2 6                | False
  933 | 22 0 13 0 2 -1 2 5 5 5 6 -1 2 12                    | False
  934 | 22 0 13 0 2 3 -1 2 5 5 5 6 3 -1 2 12                | False
  935 | 22 0 13 0 2 22 -1 2 5 5 5 6 7 -1 2 12               | False
  936 | 22 0 13 0 2 22 3 -1 2 5 5 5 6 7 3 -1 2 12           | False
  937 | 22 0 25 -1 2 5 5 -1 2 6                             | False
  938 | 22 0 25 3 -1 2 5 5 3 -1 2 6                         | False
  939 | 22 0 25 22 -1 2 5 5 7 -1 2 6                        | False
  940 | 22 0 25 22 3 -1 2 5 5 7 3 -1 2 6                    | False
  941 | 22 0 25 2 -1 2 5 5 6 -1 2 12                        | False
  942 | 22 0 25 2 3 -1 2 5 5 6 3 -1 2 12                    | False
  943 | 22 0 25 2 22 -1 2 5 5 6 7 -1 2 12                   | False
  944 | 22 0 25 2 22 3 -1 2 5 5 6 7 3 -1 2 12               | False
  945 | 22 11 -1 2 5 -1 2 6                                 | False
  946 | 22 11 3 -1 2 5 3 -1 2 6                             | False
  947 | 22 11 22 -1 2 5 7 -1 2 6                            | False
  948 | 22 11 22 3 -1 2 5 7 3 -1 2 6                        | False
  949 | 22 11 2 -1 2 5 6 -1 2 12                            | False
  950 | 22 11 2 3 -1 2 5 6 3 -1 2 12                        | False
  951 | 22 11 2 22 -1 2 5 6 7 -1 2 12                       | False
  952 | 22 11 2 22 3 -1 2 5 6 7 3 -1 2 12                   | False
  953 | 22 3 0 -1 2 3 5 -1 2 6                              | False
  954 | 22 3 0 3 -1 2 3 5 3 -1 2 6                          | False
  955 | 22 3 0 22 -1 2 3 5 7 -1 2 6                         | False
  956 | 22 3 0 22 3 -1 2 3 5 7 3 -1 2 6                     | False
  957 | 22 3 0 2 -1 2 3 5 6 -1 2 12                         | False
  958 | 22 3 0 2 3 -1 2 3 5 6 3 -1 2 12                     | False
  959 | 22 3 0 2 22 -1 2 3 5 6 7 -1 2 12                    | False
  960 | 22 3 0 2 22 3 -1 2 3 5 6 7 3 -1 2 12                | False
  961 | 22 3 1 -1 2 3 5 -1 2 6                              | False
  962 | 22 3 1 3 -1 2 3 5 3 -1 2 6                          | False
  963 | 22 3 1 22 -1 2 3 5 7 -1 2 6                         | False
  964 | 22 3 1 22 3 -1 2 3 5 7 3 -1 2 6                     | False
  965 | 22 3 1 2 -1 2 3 5 6 -1 2 12                         | False
  966 | 22 3 1 2 3 -1 2 3 5 6 3 -1 2 12                     | False
  967 | 22 3 1 2 22 -1 2 3 5 6 7 -1 2 12                    | False
  968 | 22 3 1 2 22 3 -1 2 3 5 6 7 3 -1 2 12                | False
  969 | 22 18 13 18 -1 2 5 5 3 -1 2 6                       | False
  970 | 22 18 13 18 3 -1 2 5 5 3 3 -1 2 6                   | False
  971 | 22 18 13 18 22 -1 2 5 5 3 7 -1 2 6                  | False
  972 | 22 18 13 18 22 3 -1 2 5 5 3 7 3 -1 2 6              | False
  973 | 22 18 13 18 2 -1 2 5 5 3 6 -1 2 12                  | False
  974 | 22 18 13 18 2 3 -1 2 5 5 3 6 3 -1 2 12              | False
  975 | 22 18 13 18 2 22 -1 2 5 5 3 6 7 -1 2 12             | False
  976 | 22 18 13 18 2 22 3 -1 2 5 5 3 6 7 3 -1 2 12         | False
  977 | 22 18 0 -1 2 5 5 -1 2 6                             | False
  978 | 22 18 0 3 -1 2 5 5 3 -1 2 6                         | False
  979 | 22 18 0 22 -1 2 5 5 7 -1 2 6                        | False
  980 | 22 18 0 22 3 -1 2 5 5 7 3 -1 2 6                    | False
  981 | 22 18 0 2 -1 2 5 5 6 -1 2 12                        | False
  982 | 22 18 0 2 3 -1 2 5 5 6 3 -1 2 12                    | False
  983 | 22 18 0 2 22 -1 2 5 5 6 7 -1 2 12                   | False
  984 | 22 18 0 2 22 3 -1 2 5 5 6 7 3 -1 2 12               | False
  985 | 22 18 18 -1 2 5 5 -1 2 6                            | False
  986 | 22 18 18 3 -1 2 5 5 3 -1 2 6                        | False
  987 | 22 18 18 22 -1 2 5 5 7 -1 2 6                       | False
  988 | 22 18 18 22 3 -1 2 5 5 7 3 -1 2 6                   | False
  989 | 22 18 18 2 -1 2 5 5 6 -1 2 12                       | False
  990 | 22 18 18 2 3 -1 2 5 5 6 3 -1 2 12                   | False
  991 | 22 18 18 2 22 -1 2 5 5 6 7 -1 2 12                  | False
  992 | 22 18 18 2 22 3 -1 2 5 5 6 7 3 -1 2 12              | False
  993 | 22 18 18 18 -1 2 5 5 5 -1 2 6                       | False
  994 | 22 18 18 18 3 -1 2 5 5 5 3 -1 2 6                   | False
  995 | 22 18 18 18 22 -1 2 5 5 5 7 -1 2 6                  | False
  996 | 22 18 18 18 22 3 -1 2 5 5 5 7 3 -1 2 6              | False
  997 | 22 18 18 18 2 -1 2 5 5 5 6 -1 2 12                  | False
  998 | 22 18 18 18 2 3 -1 2 5 5 5 6 3 -1 2 12              | False
  999 | 22 18 18 18 2 22 -1 2 5 5 5 6 7 -1 2 12             | False
 1000 | 22 18 18 18 2 22 3 -1 2 5 5 5 6 7 3 -1 2 12         | False
 1001 | 22 18 18 1 -1 2 5 5 5 -1 2 6                        | False
 1002 | 22 18 18 1 3 -1 2 5 5 5 3 -1 2 6                    | False
 1003 | 22 18 18 1 22 -1 2 5 5 5 7 -1 2 6                   | False
 1004 | 22 18 18 1 22 3 -1 2 5 5 5 7 3 -1 2 6               | False
 1005 | 22 18 18 1 2 -1 2 5 5 5 6 -1 2 12                   | False
 1006 | 22 18 18 1 2 3 -1 2 5 5 5 6 3 -1 2 12               | False
 1007 | 22 18 18 1 2 22 -1 2 5 5 5 6 7 -1 2 12              | False
 1008 | 22 18 18 1 2 22 3 -1 2 5 5 5 6 7 3 -1 2 12          | False
 1009 | 22 18 1 -1 2 5 5 -1 2 6                             | False
 1010 | 22 18 1 3 -1 2 5 5 3 -1 2 6                         | False
 1011 | 22 18 1 22 -1 2 5 5 7 -1 2 6                        | False
 1012 | 22 18 1 22 3 -1 2 5 5 7 3 -1 2 6                    | False
 1013 | 22 18 1 2 -1 2 5 5 6 -1 2 12                        | False
 1014 | 22 18 1 2 3 -1 2 5 5 6 3 -1 2 12                    | False
 1015 | 22 18 1 2 22 -1 2 5 5 6 7 -1 2 12                   | False
 1016 | 22 18 1 2 22 3 -1 2 5 5 6 7 3 -1 2 12               | False
 1017 | 22 5 -1 2 5 -1 2 6                                  | False
 1018 | 22 5 3 -1 2 5 3 -1 2 6                              | False
 1019 | 22 5 22 -1 2 5 7 -1 2 6                             | False
 1020 | 22 5 22 3 -1 2 5 7 3 -1 2 6                         | False
 1021 | 22 5 2 -1 2 5 6 -1 2 12                             | False
 1022 | 22 5 2 3 -1 2 5 6 3 -1 2 12                         | False
 1023 | 22 5 2 22 -1 2 5 6 7 -1 2 12                        | False
 1024 | 22 5 2 22 3 -1 2 5 6 7 3 -1 2 12                    | False
 1025 | 22 21 -1 2 5 -1 2 6                                 | False
 1026 | 22 21 3 -1 2 5 3 -1 2 6                             | False
 1027 | 22 21 22 -1 2 5 7 -1 2 6                            | False
 1028 | 22 21 22 3 -1 2 5 7 3 -1 2 6                        | False
 1029 | 22 21 2 -1 2 5 6 -1 2 12                            | False
 1030 | 22 21 2 3 -1 2 5 6 3 -1 2 12                        | False
 1031 | 22 21 2 22 -1 2 5 6 7 -1 2 12                       | False
 1032 | 22 21 2 22 3 -1 2 5 6 7 3 -1 2 12                   | False
 1033 | 22 1 13 1 -1 2 5 5 5 -1 2 6                         | False
 1034 | 22 1 13 1 3 -1 2 5 5 5 3 -1 2 6                     | False
 1035 | 22 1 13 1 22 -1 2 5 5 5 7 -1 2 6                    | False
 1036 | 22 1 13 1 22 3 -1 2 5 5 5 7 3 -1 2 6                | False
 1037 | 22 1 13 1 2 -1 2 5 5 5 6 -1 2 12                    | False
 1038 | 22 1 13 1 2 3 -1 2 5 5 5 6 3 -1 2 12                | False
 1039 | 22 1 13 1 2 22 -1 2 5 5 5 6 7 -1 2 12               | False
 1040 | 22 1 13 1 2 22 3 -1 2 5 5 5 6 7 3 -1 2 12           | False
 1041 | 22 1 24 -1 2 5 5 -1 2 6                             | False
 1042 | 22 1 24 3 -1 2 5 5 3 -1 2 6                         | False
 1043 | 22 1 24 22 -1 2 5 5 7 -1 2 6                        | False
 1044 | 22 1 24 22 3 -1 2 5 5 7 3 -1 2 6                    | False
 1045 | 22 1 24 2 -1 2 5 5 6 -1 2 12                        | False
 1046 | 22 1 24 2 3 -1 2 5 5 6 3 -1 2 12                    | False
 1047 | 22 1 24 2 22 -1 2 5 5 6 7 -1 2 12                   | False
 1048 | 22 1 24 2 22 3 -1 2 5 5 6 7 3 -1 2 12               | False
 1049 | 22 1 24 24 -1 2 5 5 5 -1 2 6                        | False
 1050 | 22 1 24 24 3 -1 2 5 5 5 3 -1 2 6                    | False
 1051 | 22 1 24 24 22 -1 2 5 5 5 7 -1 2 6                   | False
 1052 | 22 1 24 24 22 3 -1 2 5 5 5 7 3 -1 2 6               | False
 1053 | 22 1 24 24 2 -1 2 5 5 5 6 -1 2 12                   | False
 1054 | 22 1 24 24 2 3 -1 2 5 5 5 6 3 -1 2 12               | False
 1055 | 22 1 24 24 2 22 -1 2 5 5 5 6 7 -1 2 12              | False
 1056 | 22 1 24 24 2 22 3 -1 2 5 5 5 6 7 3 -1 2 12          | False
 1057 | 22 1 24 1 -1 2 5 5 5 -1 2 6                         | False
 1058 | 22 1 24 1 3 -1 2 5 5 5 3 -1 2 6                     | False
 1059 | 22 1 24 1 22 -1 2 5 5 5 7 -1 2 6                    | False
 1060 | 22 1 24 1 22 3 -1 2 5 5 5 7 3 -1 2 6                | False
 1061 | 22 1 24 1 2 -1 2 5 5 5 6 -1 2 12                    | False
 1062 | 22 1 24 1 2 3 -1 2 5 5 5 6 3 -1 2 12                | False
 1063 | 22 1 24 1 2 22 -1 2 5 5 5 6 7 -1 2 12               | False
 1064 | 22 1 24 1 2 22 3 -1 2 5 5 5 6 7 3 -1 2 12           | False
 1065 | 22 1 15 -1 2 5 5 -1 2 6                             | False
 1066 | 22 1 15 3 -1 2 5 5 3 -1 2 6                         | False
 1067 | 22 1 15 22 -1 2 5 5 7 -1 2 6                        | False
 1068 | 22 1 15 22 3 -1 2 5 5 7 3 -1 2 6                    | False
 1069 | 22 1 15 2 -1 2 5 5 6 -1 2 12                        | False
 1070 | 22 1 15 2 3 -1 2 5 5 6 3 -1 2 12                    | False
 1071 | 22 1 15 2 22 -1 2 5 5 6 7 -1 2 12                   | False
 1072 | 22 1 15 2 22 3 -1 2 5 5 6 7 3 -1 2 12               | False
 1073 | 22 1 22 1 -1 2 5 5 5 -1 2 6                         | False
 1074 | 22 1 22 1 3 -1 2 5 5 5 3 -1 2 6                     | False
 1075 | 22 1 22 1 22 -1 2 5 5 5 7 -1 2 6                    | False
 1076 | 22 1 22 1 22 3 -1 2 5 5 5 7 3 -1 2 6                | False
 1077 | 22 1 22 1 2 -1 2 5 5 5 6 -1 2 12                    | False
 1078 | 22 1 22 1 2 3 -1 2 5 5 5 6 3 -1 2 12                | False
 1079 | 22 1 22 1 2 22 -1 2 5 5 5 6 7 -1 2 12               | False
 1080 | 22 1 22 1 2 22 3 -1 2 5 5 5 6 7 3 -1 2 12           | False
 1081 | 22 1 25 -1 2 5 5 -1 2 6                             | False
 1082 | 22 1 25 3 -1 2 5 5 3 -1 2 6                         | False
 1083 | 22 1 25 22 -1 2 5 5 7 -1 2 6                        | False
 1084 | 22 1 25 22 3 -1 2 5 5 7 3 -1 2 6                    | False
 1085 | 22 1 25 2 -1 2 5 5 6 -1 2 12                        | False
 1086 | 22 1 25 2 3 -1 2 5 5 6 3 -1 2 12                    | False
 1087 | 22 1 25 2 22 -1 2 5 5 6 7 -1 2 12                   | False
 1088 | 22 1 25 2 22 3 -1 2 5 5 6 7 3 -1 2 12               | False
 1089 | 22 1 0 -1 2 5 5 -1 2 6                              | False
 1090 | 22 1 0 3 -1 2 5 5 3 -1 2 6                          | False
 1091 | 22 1 0 22 -1 2 5 5 7 -1 2 6                         | False
 1092 | 22 1 0 22 3 -1 2 5 5 7 3 -1 2 6                     | False
 1093 | 22 1 0 2 -1 2 5 5 6 -1 2 12                         | False
 1094 | 22 1 0 2 3 -1 2 5 5 6 3 -1 2 12                     | False
 1095 | 22 1 0 2 22 -1 2 5 5 6 7 -1 2 12                    | False
 1096 | 22 1 0 2 22 3 -1 2 5 5 6 7 3 -1 2 12                | False
 1097 | 22 1 3 -1 2 5 5 -1 2 6                              | False
 1098 | 22 1 3 3 -1 2 5 5 3 -1 2 6                          | False
 1099 | 22 1 3 22 -1 2 5 5 7 -1 2 6                         | False
 1100 | 22 1 3 22 3 -1 2 5 5 7 3 -1 2 6                     | False
 1101 | 22 1 3 2 -1 2 5 5 6 -1 2 12                         | False
 1102 | 22 1 3 2 3 -1 2 5 5 6 3 -1 2 12                     | False
 1103 | 22 1 3 2 22 -1 2 5 5 6 7 -1 2 12                    | False
 1104 | 22 1 3 2 22 3 -1 2 5 5 6 7 3 -1 2 12                | False
 1105 | 22 1 18 -1 2 5 5 -1 2 6                             | False
 1106 | 22 1 18 3 -1 2 5 5 3 -1 2 6                         | False
 1107 | 22 1 18 22 -1 2 5 5 7 -1 2 6                        | False
 1108 | 22 1 18 22 3 -1 2 5 5 7 3 -1 2 6                    | False
 1109 | 22 1 18 2 -1 2 5 5 6 -1 2 12                        | False
 1110 | 22 1 18 2 3 -1 2 5 5 6 3 -1 2 12                    | False
 1111 | 22 1 18 2 22 -1 2 5 5 6 7 -1 2 12                   | False
 1112 | 22 1 18 2 22 3 -1 2 5 5 6 7 3 -1 2 12               | False
 1113 | 22 1 18 18 1 -1 2 5 5 5 5 -1 2 6                    | False
 1114 | 22 1 18 18 1 3 -1 2 5 5 5 5 3 -1 2 6                | False
 1115 | 22 1 18 18 1 22 -1 2 5 5 5 5 7 -1 2 6               | False
 1116 | 22 1 18 18 1 22 3 -1 2 5 5 5 5 7 3 -1 2 6           | False
 1117 | 22 1 18 18 1 2 -1 2 5 5 5 5 6 -1 2 12               | False
 1118 | 22 1 18 18 1 2 3 -1 2 5 5 5 5 6 3 -1 2 12           | False
 1119 | 22 1 18 18 1 2 22 -1 2 5 5 5 5 6 7 -1 2 12          | False
 1120 | 22 1 18 18 1 2 22 3 -1 2 5 5 5 5 6 7 3 -1 2 12      | False
 1121 | 22 1 18 1 -1 2 5 5 5 -1 2 6                         | False
 1122 | 22 1 18 1 3 -1 2 5 5 5 3 -1 2 6                     | False
 1123 | 22 1 18 1 22 -1 2 5 5 5 7 -1 2 6                    | False
 1124 | 22 1 18 1 22 3 -1 2 5 5 5 7 3 -1 2 6                | False
 1125 | 22 1 18 1 2 -1 2 5 5 5 6 -1 2 12                    | False
 1126 | 22 1 18 1 2 3 -1 2 5 5 5 6 3 -1 2 12                | False
 1127 | 22 1 18 1 2 22 -1 2 5 5 5 6 7 -1 2 12               | False
 1128 | 22 1 18 1 2 22 3 -1 2 5 5 5 6 7 3 -1 2 12           | False
 1129 | 22 1 2 0 -1 2 5 5 5 -1 2 6                          | False
 1130 | 22 1 2 0 3 -1 2 5 5 5 3 -1 2 6                      | False
 1131 | 22 1 2 0 22 -1 2 5 5 5 7 -1 2 6                     | False
 1132 | 22 1 2 0 22 3 -1 2 5 5 5 7 3 -1 2 6                 | False
 1133 | 22 1 2 0 2 -1 2 5 5 5 6 -1 2 12                     | False
 1134 | 22 1 2 0 2 3 -1 2 5 5 5 6 3 -1 2 12                 | False
 1135 | 22 1 2 0 2 22 -1 2 5 5 5 6 7 -1 2 12                | False
 1136 | 22 1 2 0 2 22 3 -1 2 5 5 5 6 7 3 -1 2 12            | False
 1137 | 22 1 2 1 -1 2 5 5 5 -1 2 6                          | False
 1138 | 22 1 2 1 3 -1 2 5 5 5 3 -1 2 6                      | False
 1139 | 22 1 2 1 22 -1 2 5 5 5 7 -1 2 6                     | False
 1140 | 22 1 2 1 22 3 -1 2 5 5 5 7 3 -1 2 6                 | False
 1141 | 22 1 2 1 2 -1 2 5 5 5 6 -1 2 12                     | False
 1142 | 22 1 2 1 2 3 -1 2 5 5 5 6 3 -1 2 12                 | False
 1143 | 22 1 2 1 2 22 -1 2 5 5 5 6 7 -1 2 12                | False
 1144 | 22 1 2 1 2 22 3 -1 2 5 5 5 6 7 3 -1 2 12            | False
 1145 | 22 16 -1 2 5 -1 2 6                                 | False
 1146 | 22 16 3 -1 2 5 3 -1 2 6                             | False
 1147 | 22 16 22 -1 2 5 7 -1 2 6                            | False
 1148 | 22 16 22 3 -1 2 5 7 3 -1 2 6                        | False
 1149 | 22 16 2 -1 2 5 6 -1 2 12                            | False
 1150 | 22 16 2 3 -1 2 5 6 3 -1 2 12                        | False
 1151 | 22 16 2 22 -1 2 5 6 7 -1 2 12                       | False
 1152 | 22 16 2 22 3 -1 2 5 6 7 3 -1 2 12                   | False
 1153 | 22 2 1 -1 2 4 5 -1 2 9                              | False
 1154 | 22 2 1 3 -1 2 4 5 3 -1 2 9                          | False
 1155 | 22 2 1 22 -1 2 4 5 7 -1 2 9                         | False
 1156 | 22 2 1 22 3 -1 2 4 5 7 3 -1 2 9                     | False
 1157 | 22 2 18 -1 2 4 5 -1 2 9                             | False
 1158 | 22 2 18 3 -1 2 4 5 3 -1 2 9                         | False
 1159 | 22 2 18 22 -1 2 4 5 7 -1 2 9                        | False
 1160 | 22 2 18 22 3 -1 2 4 5 7 3 -1 2 9                    | False
 1161 | 22 2 2 -1 2 4 5 -1 2 9                              | False
 1162 | 22 2 2 3 -1 2 4 5 3 -1 2 9                          | False
 1163 | 22 2 2 22 -1 2 4 5 7 -1 2 9                         | False
 1164 | 22 2 2 22 3 -1 2 4 5 7 3 -1 2 9                     | False
 1165 | 22 2 22 -1 2 4 5 -1 2 9                             | False
 1166 | 22 2 22 3 -1 2 4 5 3 -1 2 9                         | False
 1167 | 22 2 22 22 -1 2 4 5 7 -1 2 9                        | False
 1168 | 22 2 22 22 3 -1 2 4 5 7 3 -1 2 9                    | False
 1169 | 22 2 22 1 -1 2 4 5 5 -1 2 9                         | False
 1170 | 22 2 22 1 3 -1 2 4 5 5 3 -1 2 9                     | False
 1171 | 22 2 22 1 22 -1 2 4 5 5 7 -1 2 9                    | False
 1172 | 22 2 22 1 22 3 -1 2 4 5 5 7 3 -1 2 9                | False
 1173 | 22 2 1 22 -1 2 4 5 5 -1 2 9                         | False
 1174 | 22 2 1 22 3 -1 2 4 5 5 3 -1 2 9                     | False
 1175 | 22 2 1 22 22 -1 2 4 5 5 7 -1 2 9                    | False
 1176 | 22 2 1 22 22 3 -1 2 4 5 5 7 3 -1 2 9                | False
 1177 | 22 2 1 2 -1 2 4 5 5 -1 2 4                          | False
 1178 | 22 2 1 2 3 -1 2 4 5 5 3 -1 2 4                      | False
 1179 | 22 2 1 2 22 -1 2 4 5 5 7 -1 2 4                     | False
 1180 | 22 2 1 2 22 3 -1 2 4 5 5 7 3 -1 2 4                 | False
 1181 | 22 2 2 1 -1 2 4 5 5 -1 2 9                          | False
 1182 | 22 2 2 1 3 -1 2 4 5 5 3 -1 2 9                      | False
 1183 | 22 2 2 1 22 -1 2 4 5 5 7 -1 2 9                     | False
 1184 | 22 2 2 1 22 3 -1 2 4 5 5 7 3 -1 2 9                 | False
 1185 | 22 2 24 2 -1 2 4 5 5 -1 2 4                         | False
 1186 | 22 2 24 2 3 -1 2 4 5 5 3 -1 2 4                     | False
 1187 | 22 2 24 2 22 -1 2 4 5 5 7 -1 2 4                    | False
 1188 | 22 2 24 2 22 3 -1 2 4 5 5 7 3 -1 2 4                | False
 1189 | 22 2 0 22 -1 2 4 5 5 -1 2 9                         | False
 1190 | 22 2 0 22 3 -1 2 4 5 5 3 -1 2 9                     | False
 1191 | 22 2 0 22 22 -1 2 4 5 5 7 -1 2 9                    | False
 1192 | 22 2 0 22 22 3 -1 2 4 5 5 7 3 -1 2 9                | False
 1193 | 22 2 2 24 -1 2 4 5 5 -1 2 9                         | False
 1194 | 22 2 2 24 3 -1 2 4 5 5 3 -1 2 9                     | False
 1195 | 22 2 2 24 22 -1 2 4 5 5 7 -1 2 9                    | False
 1196 | 22 2 2 24 22 3 -1 2 4 5 5 7 3 -1 2 9                | False
 1197 | 22 2 2 22 -1 2 4 5 5 -1 2 9                         | False
 1198 | 22 2 2 22 3 -1 2 4 5 5 3 -1 2 9                     | False
 1199 | 22 2 2 22 22 -1 2 4 5 5 7 -1 2 9                    | False
 1200 | 22 2 2 22 22 3 -1 2 4 5 5 7 3 -1 2 9                | False
 1201 | 22 2 2 0 -1 2 4 5 5 -1 2 9                          | False
 1202 | 22 2 2 0 3 -1 2 4 5 5 3 -1 2 9                      | False
 1203 | 22 2 2 0 22 -1 2 4 5 5 7 -1 2 9                     | False
 1204 | 22 2 2 0 22 3 -1 2 4 5 5 7 3 -1 2 9                 | False
 1205 | 22 2 2 18 -1 2 4 5 5 -1 2 9                         | False
 1206 | 22 2 2 18 3 -1 2 4 5 5 3 -1 2 9                     | False
 1207 | 22 2 2 18 22 -1 2 4 5 5 7 -1 2 9                    | False
 1208 | 22 2 2 18 22 3 -1 2 4 5 5 7 3 -1 2 9                | False
 1209 | 22 2 2 2 -1 2 4 5 5 -1 2 4                          | False
 1210 | 22 2 2 2 3 -1 2 4 5 5 3 -1 2 4                      | False
 1211 | 22 2 2 2 22 -1 2 4 5 5 7 -1 2 4                     | False
 1212 | 22 2 2 2 22 3 -1 2 4 5 5 7 3 -1 2 4                 | False
 1213 | 22 2 18 2 -1 2 4 5 5 -1 2 4                         | False
 1214 | 22 2 18 2 3 -1 2 4 5 5 3 -1 2 4                     | False
 1215 | 22 2 18 2 22 -1 2 4 5 5 7 -1 2 4                    | False
 1216 | 22 2 18 2 22 3 -1 2 4 5 5 7 3 -1 2 4                | False
 1217 | 22 2 1 18 2 -1 2 4 5 5 5 -1 2 4                     | False
 1218 | 22 2 1 18 2 3 -1 2 4 5 5 5 3 -1 2 4                 | False
 1219 | 22 2 1 18 2 22 -1 2 4 5 5 5 7 -1 2 4                | False
 1220 | 22 2 1 18 2 22 3 -1 2 4 5 5 5 7 3 -1 2 4            | False
 1221 | 22 2 0 -1 2 4 5 -1 2 9                              | False
 1222 | 22 2 0 3 -1 2 4 5 3 -1 2 9                          | False
 1223 | 22 2 0 22 -1 2 4 5 7 -1 2 9                         | False
 1224 | 22 2 0 22 3 -1 2 4 5 7 3 -1 2 9                     | False
 1225 | 22 2 0 18 -1 2 4 5 5 -1 2 9                         | False
 1226 | 22 2 0 18 3 -1 2 4 5 5 3 -1 2 9                     | False
 1227 | 22 2 0 18 22 -1 2 4 5 5 7 -1 2 9                    | False
 1228 | 22 2 0 18 22 3 -1 2 4 5 5 7 3 -1 2 9                | False
 1229 | 22 2 0 1 -1 2 4 5 5 -1 2 9                          | False
 1230 | 22 2 0 1 3 -1 2 4 5 5 3 -1 2 9                      | False
 1231 | 22 2 0 1 22 -1 2 4 5 5 7 -1 2 9                     | False
 1232 | 22 2 0 1 22 3 -1 2 4 5 5 7 3 -1 2 9                 | False
 1233 | 22 2 1 2 2 -1 2 4 5 5 5 -1 2 4                      | False
 1234 | 22 2 1 2 2 3 -1 2 4 5 5 5 3 -1 2 4                  | False
 1235 | 22 2 1 2 2 22 -1 2 4 5 5 5 7 -1 2 4                 | False
 1236 | 22 2 1 2 2 22 3 -1 2 4 5 5 5 7 3 -1 2 4             | False
 1237 | 22 2 22 2 -1 2 4 5 5 -1 2 9                         | False
 1238 | 22 2 22 2 3 -1 2 4 5 5 3 -1 2 9                     | False
 1239 | 22 2 22 2 22 -1 2 4 5 5 7 -1 2 9                    | False
 1240 | 22 2 22 2 22 3 -1 2 4 5 5 7 3 -1 2 9                | False
 1241 | 22 2 14 -1 2 4 5 -1 2 9                             | False
 1242 | 22 2 14 3 -1 2 4 5 3 -1 2 9                         | False
 1243 | 22 2 14 22 -1 2 4 5 7 -1 2 9                        | False
 1244 | 22 2 14 22 3 -1 2 4 5 7 3 -1 2 9                    | False
 1245 | 22 2 15 1 -1 2 4 5 5 -1 2 9                         | False
 1246 | 22 2 15 1 3 -1 2 4 5 5 3 -1 2 9                     | False
 1247 | 22 2 15 1 22 -1 2 4 5 5 7 -1 2 9                    | False
 1248 | 22 2 15 1 22 3 -1 2 4 5 5 7 3 -1 2 9                | False
 1249 | 22 2 24 -1 2 4 5 -1 2 9                             | False
 1250 | 22 2 24 3 -1 2 4 5 3 -1 2 9                         | False
 1251 | 22 2 24 22 -1 2 4 5 7 -1 2 9                        | False
 1252 | 22 2 24 22 3 -1 2 4 5 7 3 -1 2 9                    | False
 1253 | 22 2 24 24 -1 2 4 5 5 -1 2 9                        | False
 1254 | 22 2 24 24 3 -1 2 4 5 5 3 -1 2 9                    | False
 1255 | 22 2 24 24 22 -1 2 4 5 5 7 -1 2 9                   | False
 1256 | 22 2 24 24 22 3 -1 2 4 5 5 7 3 -1 2 9               | False
 1257 | 22 2 24 1 -1 2 4 5 5 -1 2 9                         | False
 1258 | 22 2 24 1 3 -1 2 4 5 5 3 -1 2 9                     | False
 1259 | 22 2 24 1 22 -1 2 4 5 5 7 -1 2 9                    | False
 1260 | 22 2 24 1 22 3 -1 2 4 5 5 7 3 -1 2 9                | False
 1261 | 22 2 25 -1 2 4 5 -1 2 9                             | False
 1262 | 22 2 25 3 -1 2 4 5 3 -1 2 9                         | False
 1263 | 22 2 25 22 -1 2 4 5 7 -1 2 9                        | False
 1264 | 22 2 25 22 3 -1 2 4 5 7 3 -1 2 9                    | False
 1265 | 22 2 23 -1 2 4 5 -1 2 9                             | False
 1266 | 22 2 23 3 -1 2 4 5 3 -1 2 9                         | False
 1267 | 22 2 23 22 -1 2 4 5 7 -1 2 9                        | False
 1268 | 22 2 23 22 3 -1 2 4 5 7 3 -1 2 9                    | False
 1269 | 22 2 0 13 0 -1 2 4 5 5 5 -1 2 9                     | False
 1270 | 22 2 0 13 0 3 -1 2 4 5 5 5 3 -1 2 9                 | False
 1271 | 22 2 0 13 0 22 -1 2 4 5 5 5 7 -1 2 9                | False
 1272 | 22 2 0 13 0 22 3 -1 2 4 5 5 5 7 3 -1 2 9            | False
 1273 | 22 2 0 25 -1 2 4 5 5 -1 2 9                         | False
 1274 | 22 2 0 25 3 -1 2 4 5 5 3 -1 2 9                     | False
 1275 | 22 2 0 25 22 -1 2 4 5 5 7 -1 2 9                    | False
 1276 | 22 2 0 25 22 3 -1 2 4 5 5 7 3 -1 2 9                | False
 1277 | 22 2 11 -1 2 4 5 -1 2 9                             | False
 1278 | 22 2 11 3 -1 2 4 5 3 -1 2 9                         | False
 1279 | 22 2 11 22 -1 2 4 5 7 -1 2 9                        | False
 1280 | 22 2 11 22 3 -1 2 4 5 7 3 -1 2 9                    | False
 1281 | 22 2 3 0 -1 2 4 3 5 -1 2 9                          | False
 1282 | 22 2 3 0 3 -1 2 4 3 5 3 -1 2 9                      | False
 1283 | 22 2 3 0 22 -1 2 4 3 5 7 -1 2 9                     | False
 1284 | 22 2 3 0 22 3 -1 2 4 3 5 7 3 -1 2 9                 | False
 1285 | 22 2 3 1 -1 2 4 3 5 -1 2 9                          | False
 1286 | 22 2 3 1 3 -1 2 4 3 5 3 -1 2 9                      | False
 1287 | 22 2 3 1 22 -1 2 4 3 5 7 -1 2 9                     | False
 1288 | 22 2 3 1 22 3 -1 2 4 3 5 7 3 -1 2 9                 | False
 1289 | 22 2 18 13 18 -1 2 4 5 5 3 -1 2 9                   | False
 1290 | 22 2 18 13 18 3 -1 2 4 5 5 3 3 -1 2 9               | False
 1291 | 22 2 18 13 18 22 -1 2 4 5 5 3 7 -1 2 9              | False
 1292 | 22 2 18 13 18 22 3 -1 2 4 5 5 3 7 3 -1 2 9          | False
 1293 | 22 2 18 0 -1 2 4 5 5 -1 2 9                         | False
 1294 | 22 2 18 0 3 -1 2 4 5 5 3 -1 2 9                     | False
 1295 | 22 2 18 0 22 -1 2 4 5 5 7 -1 2 9                    | False
 1296 | 22 2 18 0 22 3 -1 2 4 5 5 7 3 -1 2 9                | False
 1297 | 22 2 18 18 -1 2 4 5 5 -1 2 9                        | False
 1298 | 22 2 18 18 3 -1 2 4 5 5 3 -1 2 9                    | False
 1299 | 22 2 18 18 22 -1 2 4 5 5 7 -1 2 9                   | False
 1300 | 22 2 18 18 22 3 -1 2 4 5 5 7 3 -1 2 9               | False
 1301 | 22 2 18 18 18 -1 2 4 5 5 5 -1 2 9                   | False
 1302 | 22 2 18 18 18 3 -1 2 4 5 5 5 3 -1 2 9               | False
 1303 | 22 2 18 18 18 22 -1 2 4 5 5 5 7 -1 2 9              | False
 1304 | 22 2 18 18 18 22 3 -1 2 4 5 5 5 7 3 -1 2 9          | False
 1305 | 22 2 18 18 1 -1 2 4 5 5 5 -1 2 9                    | False
 1306 | 22 2 18 18 1 3 -1 2 4 5 5 5 3 -1 2 9                | False
 1307 | 22 2 18 18 1 22 -1 2 4 5 5 5 7 -1 2 9               | False
 1308 | 22 2 18 18 1 22 3 -1 2 4 5 5 5 7 3 -1 2 9           | False
 1309 | 22 2 18 1 -1 2 4 5 5 -1 2 9                         | False
 1310 | 22 2 18 1 3 -1 2 4 5 5 3 -1 2 9                     | False
 1311 | 22 2 18 1 22 -1 2 4 5 5 7 -1 2 9                    | False
 1312 | 22 2 18 1 22 3 -1 2 4 5 5 7 3 -1 2 9                | False
 1313 | 22 2 5 -1 2 4 5 -1 2 9                              | False
 1314 | 22 2 5 3 -1 2 4 5 3 -1 2 9                          | False
 1315 | 22 2 5 22 -1 2 4 5 7 -1 2 9                         | False
 1316 | 22 2 5 22 3 -1 2 4 5 7 3 -1 2 9                     | False
 1317 | 22 2 21 -1 2 4 5 -1 2 9                             | False
 1318 | 22 2 21 3 -1 2 4 5 3 -1 2 9                         | False
 1319 | 22 2 21 22 -1 2 4 5 7 -1 2 9                        | False
 1320 | 22 2 21 22 3 -1 2 4 5 7 3 -1 2 9                    | False
 1321 | 22 2 1 13 1 -1 2 4 5 5 5 -1 2 9                     | False
 1322 | 22 2 1 13 1 3 -1 2 4 5 5 5 3 -1 2 9                 | False
 1323 | 22 2 1 13 1 22 -1 2 4 5 5 5 7 -1 2 9                | False
 1324 | 22 2 1 13 1 22 3 -1 2 4 5 5 5 7 3 -1 2 9            | False
 1325 | 22 2 1 24 -1 2 4 5 5 -1 2 9                         | False
 1326 | 22 2 1 24 3 -1 2 4 5 5 3 -1 2 9                     | False
 1327 | 22 2 1 24 22 -1 2 4 5 5 7 -1 2 9                    | False
 1328 | 22 2 1 24 22 3 -1 2 4 5 5 7 3 -1 2 9                | False
 1329 | 22 2 1 24 24 -1 2 4 5 5 5 -1 2 9                    | False
 1330 | 22 2 1 24 24 3 -1 2 4 5 5 5 3 -1 2 9                | False
 1331 | 22 2 1 24 24 22 -1 2 4 5 5 5 7 -1 2 9               | False
 1332 | 22 2 1 24 24 22 3 -1 2 4 5 5 5 7 3 -1 2 9           | False
 1333 | 22 2 1 24 1 -1 2 4 5 5 5 -1 2 9                     | False
 1334 | 22 2 1 24 1 3 -1 2 4 5 5 5 3 -1 2 9                 | False
 1335 | 22 2 1 24 1 22 -1 2 4 5 5 5 7 -1 2 9                | False
 1336 | 22 2 1 24 1 22 3 -1 2 4 5 5 5 7 3 -1 2 9            | False
 1337 | 22 2 1 15 -1 2 4 5 5 -1 2 9                         | False
 1338 | 22 2 1 15 3 -1 2 4 5 5 3 -1 2 9                     | False
 1339 | 22 2 1 15 22 -1 2 4 5 5 7 -1 2 9                    | False
 1340 | 22 2 1 15 22 3 -1 2 4 5 5 7 3 -1 2 9                | False
 1341 | 22 2 1 22 1 -1 2 4 5 5 5 -1 2 9                     | False
 1342 | 22 2 1 22 1 3 -1 2 4 5 5 5 3 -1 2 9                 | False
 1343 | 22 2 1 22 1 22 -1 2 4 5 5 5 7 -1 2 9                | False
 1344 | 22 2 1 22 1 22 3 -1 2 4 5 5 5 7 3 -1 2 9            | False
 1345 | 22 2 1 25 -1 2 4 5 5 -1 2 9                         | False
 1346 | 22 2 1 25 3 -1 2 4 5 5 3 -1 2 9                     | False
 1347 | 22 2 1 25 22 -1 2 4 5 5 7 -1 2 9                    | False
 1348 | 22 2 1 25 22 3 -1 2 4 5 5 7 3 -1 2 9                | False
 1349 | 22 2 1 0 -1 2 4 5 5 -1 2 9                          | False
 1350 | 22 2 1 0 3 -1 2 4 5 5 3 -1 2 9                      | False
 1351 | 22 2 1 0 22 -1 2 4 5 5 7 -1 2 9                     | False
 1352 | 22 2 1 0 22 3 -1 2 4 5 5 7 3 -1 2 9                 | False
 1353 | 22 2 1 3 -1 2 4 5 5 -1 2 9                          | False
 1354 | 22 2 1 3 3 -1 2 4 5 5 3 -1 2 9                      | False
 1355 | 22 2 1 3 22 -1 2 4 5 5 7 -1 2 9                     | False
 1356 | 22 2 1 3 22 3 -1 2 4 5 5 7 3 -1 2 9                 | False
 1357 | 22 2 1 18 -1 2 4 5 5 -1 2 9                         | False
 1358 | 22 2 1 18 3 -1 2 4 5 5 3 -1 2 9                     | False
 1359 | 22 2 1 18 22 -1 2 4 5 5 7 -1 2 9                    | False
 1360 | 22 2 1 18 22 3 -1 2 4 5 5 7 3 -1 2 9                | False
 1361 | 22 2 1 18 18 1 -1 2 4 5 5 5 5 -1 2 9                | False
 1362 | 22 2 1 18 18 1 3 -1 2 4 5 5 5 5 3 -1 2 9            | False
 1363 | 22 2 1 18 18 1 22 -1 2 4 5 5 5 5 7 -1 2 9           | False
 1364 | 22 2 1 18 18 1 22 3 -1 2 4 5 5 5 5 7 3 -1 2 9       | False
 1365 | 22 2 1 18 1 -1 2 4 5 5 5 -1 2 9                     | False
 1366 | 22 2 1 18 1 3 -1 2 4 5 5 5 3 -1 2 9                 | False
 1367 | 22 2 1 18 1 22 -1 2 4 5 5 5 7 -1 2 9                | False
 1368 | 22 2 1 18 1 22 3 -1 2 4 5 5 5 7 3 -1 2 9            | False
 1369 | 22 2 1 2 0 -1 2 4 5 5 5 -1 2 9                      | False
 1370 | 22 2 1 2 0 3 -1 2 4 5 5 5 3 -1 2 9                  | False
 1371 | 22 2 1 2 0 22 -1 2 4 5 5 5 7 -1 2 9                 | False
 1372 | 22 2 1 2 0 22 3 -1 2 4 5 5 5 7 3 -1 2 9             | False
 1373 | 22 2 1 2 1 -1 2 4 5 5 5 -1 2 9                      | False
 1374 | 22 2 1 2 1 3 -1 2 4 5 5 5 3 -1 2 9                  | False
 1375 | 22 2 1 2 1 22 -1 2 4 5 5 5 7 -1 2 9                 | False
 1376 | 22 2 1 2 1 22 3 -1 2 4 5 5 5 7 3 -1 2 9             | False
 1377 | 22 2 16 -1 2 4 5 -1 2 9                             | False
 1378 | 22 2 16 3 -1 2 4 5 3 -1 2 9                         | False
 1379 | 22 2 16 22 -1 2 4 5 7 -1 2 9                        | False
 1380 | 22 2 16 22 3 -1 2 4 5 7 3 -1 2 9                    | False
 1381 | 6 0 -1 4 5 -1 2 16                                  | False
 1382 | 6 0 22 -1 4 5 7 -1 2 9                              | False
 1383 | 6 21 -1 4 5 -1 2 12                                 | False
 1384 | 6 21 22 -1 4 5 7 -1 2 9                             | False
 1385 | 6 21 0 -1 4 5 5 -1 2 12                             | False
 1386 | 6 21 0 22 -1 4 5 5 7 -1 2 9                         | False
 1387 | 6 23 -1 4 5 -1 2 12                                 | False
 1388 | 6 23 22 -1 4 5 7 -1 2 9                             | False
 1389 | 6 0 18 -1 4 5 5 -1 2 12                             | False
 1390 | 6 0 18 22 -1 4 5 5 7 -1 2 9                         | False
 1391 | 6 0 0 -1 4 5 5 -1 2 12                              | False
 1392 | 6 0 0 22 -1 4 5 5 7 -1 2 9                          | False
 1393 | 6 18 -1 4 5 -1 2 12                                 | False
 1394 | 6 18 22 -1 4 5 7 -1 2 9                             | False
 1395 | 6 18 0 -1 4 5 5 -1 2 12                             | False
 1396 | 6 18 0 22 -1 4 5 5 7 -1 2 9                         | False
 1397 | 6 18 18 -1 4 5 5 -1 2 12                            | False
 1398 | 6 18 18 22 -1 4 5 5 7 -1 2 9                        | False
 1399 | 6 6 0 -1 3 4 5 -1 2 16                              | False
 1400 | 6 6 0 22 -1 3 4 5 7 -1 2 9                          | False
 1401 | 6 6 21 -1 3 4 5 -1 2 12                             | False
 1402 | 6 6 21 22 -1 3 4 5 7 -1 2 9                         | False
 1403 | 6 6 21 0 -1 3 4 5 5 -1 2 12                         | False
 1404 | 6 6 21 0 22 -1 3 4 5 5 7 -1 2 9                     | False
 1405 | 6 6 23 -1 3 4 5 -1 2 12                             | False
 1406 | 6 6 23 22 -1 3 4 5 7 -1 2 9                         | False
 1407 | 6 6 0 18 -1 3 4 5 5 -1 2 12                         | False
 1408 | 6 6 0 18 22 -1 3 4 5 5 7 -1 2 9                     | False
 1409 | 6 6 0 0 -1 3 4 5 5 -1 2 12                          | False
 1410 | 6 6 0 0 22 -1 3 4 5 5 7 -1 2 9                      | False
 1411 | 6 6 18 -1 3 4 5 -1 2 12                             | False
 1412 | 6 6 18 22 -1 3 4 5 7 -1 2 9                         | False
 1413 | 6 6 18 0 -1 3 4 5 5 -1 2 12                         | False
 1414 | 6 6 18 0 22 -1 3 4 5 5 7 -1 2 9                     | False
 1415 | 6 6 18 18 -1 3 4 5 5 -1 2 12                        | False
 1416 | 6 6 18 18 22 -1 3 4 5 5 7 -1 2 9                    | False
 1417 | 3 6 0 -1 3 4 5 -1 2 16                              | False
 1418 | 3 6 0 22 -1 3 4 5 7 -1 2 16                         | False
 1419 | 3 6 21 -1 3 4 5 -1 2 12                             | False
 1420 | 3 6 21 22 -1 3 4 5 7 -1 2 12                        | False
 1421 | 3 6 21 0 -1 3 4 5 5 -1 2 12                         | False
 1422 | 3 6 21 0 22 -1 3 4 5 5 7 -1 2 12                    | False
 1423 | 3 6 23 -1 3 4 5 -1 2 12                             | False
 1424 | 3 6 23 22 -1 3 4 5 7 -1 2 12                        | False
 1425 | 3 6 0 18 -1 3 4 5 5 -1 2 12                         | False
 1426 | 3 6 0 18 22 -1 3 4 5 5 7 -1 2 12                    | False
 1427 | 3 6 0 0 -1 3 4 5 5 -1 2 12                          | False
 1428 | 3 6 0 0 22 -1 3 4 5 5 7 -1 2 12                     | False
 1429 | 3 6 18 -1 3 4 5 -1 2 12                             | False
 1430 | 3 6 18 22 -1 3 4 5 7 -1 2 12                        | False
 1431 | 3 6 18 0 -1 3 4 5 5 -1 2 12                         | False
 1432 | 3 6 18 0 22 -1 3 4 5 5 7 -1 2 12                    | False
 1433 | 3 6 18 18 -1 3 4 5 5 -1 2 12                        | False
 1434 | 3 6 18 18 22 -1 3 4 5 5 7 -1 2 12                   | False
 1435 | 3 6 6 0 -1 3 3 4 5 -1 2 16                          | False
 1436 | 3 6 6 0 22 -1 3 3 4 5 7 -1 2 16                     | False
 1437 | 3 6 6 21 -1 3 3 4 5 -1 2 12                         | False
 1438 | 3 6 6 21 22 -1 3 3 4 5 7 -1 2 12                    | False
 1439 | 3 6 6 21 0 -1 3 3 4 5 5 -1 2 12                     | False
 1440 | 3 6 6 21 0 22 -1 3 3 4 5 5 7 -1 2 12                | False
 1441 | 3 6 6 23 -1 3 3 4 5 -1 2 12                         | False
 1442 | 3 6 6 23 22 -1 3 3 4 5 7 -1 2 12                    | False
 1443 | 3 6 6 0 18 -1 3 3 4 5 5 -1 2 12                     | False
 1444 | 3 6 6 0 18 22 -1 3 3 4 5 5 7 -1 2 12                | False
 1445 | 3 6 6 0 0 -1 3 3 4 5 5 -1 2 12                      | False
 1446 | 3 6 6 0 0 22 -1 3 3 4 5 5 7 -1 2 12                 | False
 1447 | 3 6 6 18 -1 3 3 4 5 -1 2 12                         | False
 1448 | 3 6 6 18 22 -1 3 3 4 5 7 -1 2 12                    | False
 1449 | 3 6 6 18 0 -1 3 3 4 5 5 -1 2 12                     | False
 1450 | 3 6 6 18 0 22 -1 3 3 4 5 5 7 -1 2 12                | False
 1451 | 3 6 6 18 18 -1 3 3 4 5 5 -1 2 12                    | False
 1452 | 3 6 6 18 18 22 -1 3 3 4 5 5 7 -1 2 12               | False
 1453 | 11 6 0 -1 3 4 5 -1 2 16                             | False
 1454 | 11 6 0 22 -1 3 4 5 7 -1 2 16                        | False
 1455 | 11 6 21 -1 3 4 5 -1 2 12                            | False
 1456 | 11 6 21 22 -1 3 4 5 7 -1 2 12                       | False
 1457 | 11 6 21 0 -1 3 4 5 5 -1 2 12                        | False
 1458 | 11 6 21 0 22 -1 3 4 5 5 7 -1 2 12                   | False
 1459 | 11 6 23 -1 3 4 5 -1 2 12                            | False
 1460 | 11 6 23 22 -1 3 4 5 7 -1 2 12                       | False
 1461 | 11 6 0 18 -1 3 4 5 5 -1 2 12                        | False
 1462 | 11 6 0 18 22 -1 3 4 5 5 7 -1 2 12                   | False
 1463 | 11 6 0 0 -1 3 4 5 5 -1 2 12                         | False
 1464 | 11 6 0 0 22 -1 3 4 5 5 7 -1 2 12                    | False
 1465 | 11 6 18 -1 3 4 5 -1 2 12                            | False
 1466 | 11 6 18 22 -1 3 4 5 7 -1 2 12                       | False
 1467 | 11 6 18 0 -1 3 4 5 5 -1 2 12                        | False
 1468 | 11 6 18 0 22 -1 3 4 5 5 7 -1 2 12                   | False
 1469 | 11 6 18 18 -1 3 4 5 5 -1 2 12                       | False
 1470 | 11 6 18 18 22 -1 3 4 5 5 7 -1 2 12                  | False
 1471 | 11 6 6 0 -1 3 3 4 5 -1 2 16                         | False
 1472 | 11 6 6 0 22 -1 3 3 4 5 7 -1 2 16                    | False
 1473 | 11 6 6 21 -1 3 3 4 5 -1 2 12                        | False
 1474 | 11 6 6 21 22 -1 3 3 4 5 7 -1 2 12                   | False
 1475 | 11 6 6 21 0 -1 3 3 4 5 5 -1 2 12                    | False
 1476 | 11 6 6 21 0 22 -1 3 3 4 5 5 7 -1 2 12               | False
 1477 | 11 6 6 23 -1 3 3 4 5 -1 2 12                        | False
 1478 | 11 6 6 23 22 -1 3 3 4 5 7 -1 2 12                   | False
 1479 | 11 6 6 0 18 -1 3 3 4 5 5 -1 2 12                    | False
 1480 | 11 6 6 0 18 22 -1 3 3 4 5 5 7 -1 2 12               | False
 1481 | 11 6 6 0 0 -1 3 3 4 5 5 -1 2 12                     | False
 1482 | 11 6 6 0 0 22 -1 3 3 4 5 5 7 -1 2 12                | False
 1483 | 11 6 6 18 -1 3 3 4 5 -1 2 12                        | False
 1484 | 11 6 6 18 22 -1 3 3 4 5 7 -1 2 12                   | False
 1485 | 11 6 6 18 0 -1 3 3 4 5 5 -1 2 12                    | False
 1486 | 11 6 6 18 0 22 -1 3 3 4 5 5 7 -1 2 12               | False
 1487 | 11 6 6 18 18 -1 3 3 4 5 5 -1 2 12                   | False
 1488 | 11 6 6 18 18 22 -1 3 3 4 5 5 7 -1 2 12              | False
 1489 | 3 11 6 0 -1 3 3 4 5 -1 2 16                         | False
 1490 | 3 11 6 0 22 -1 3 3 4 5 7 -1 2 16                    | False
 1491 | 3 11 6 21 -1 3 3 4 5 -1 2 12                        | False
 1492 | 3 11 6 21 22 -1 3 3 4 5 7 -1 2 12                   | False
 1493 | 3 11 6 21 0 -1 3 3 4 5 5 -1 2 12                    | False
 1494 | 3 11 6 21 0 22 -1 3 3 4 5 5 7 -1 2 12               | False
 1495 | 3 11 6 23 -1 3 3 4 5 -1 2 12                        | False
 1496 | 3 11 6 23 22 -1 3 3 4 5 7 -1 2 12                   | False
 1497 | 3 11 6 0 18 -1 3 3 4 5 5 -1 2 12                    | False
 1498 | 3 11 6 0 18 22 -1 3 3 4 5 5 7 -1 2 12               | False
 1499 | 3 11 6 0 0 -1 3 3 4 5 5 -1 2 12                     | False
 1500 | 3 11 6 0 0 22 -1 3 3 4 5 5 7 -1 2 12                | False
 1501 | 3 11 6 18 -1 3 3 4 5 -1 2 12                        | False
 1502 | 3 11 6 18 22 -1 3 3 4 5 7 -1 2 12                   | False
 1503 | 3 11 6 18 0 -1 3 3 4 5 5 -1 2 12                    | False
 1504 | 3 11 6 18 0 22 -1 3 3 4 5 5 7 -1 2 12               | False
 1505 | 3 11 6 18 18 -1 3 3 4 5 5 -1 2 12                   | False
 1506 | 3 11 6 18 18 22 -1 3 3 4 5 5 7 -1 2 12              | False
 1507 | 3 11 6 6 0 -1 3 3 3 4 5 -1 2 16                     | False
 1508 | 3 11 6 6 0 22 -1 3 3 3 4 5 7 -1 2 16                | False
 1509 | 3 11 6 6 21 -1 3 3 3 4 5 -1 2 12                    | False
 1510 | 3 11 6 6 21 22 -1 3 3 3 4 5 7 -1 2 12               | False
 1511 | 3 11 6 6 21 0 -1 3 3 3 4 5 5 -1 2 12                | False
 1512 | 3 11 6 6 21 0 22 -1 3 3 3 4 5 5 7 -1 2 12           | False
 1513 | 3 11 6 6 23 -1 3 3 3 4 5 -1 2 12                    | False
 1514 | 3 11 6 6 23 22 -1 3 3 3 4 5 7 -1 2 12               | False
 1515 | 3 11 6 6 0 18 -1 3 3 3 4 5 5 -1 2 12                | False
 1516 | 3 11 6 6 0 18 22 -1 3 3 3 4 5 5 7 -1 2 12           | False
 1517 | 3 11 6 6 0 0 -1 3 3 3 4 5 5 -1 2 12                 | False
 1518 | 3 11 6 6 0 0 22 -1 3 3 3 4 5 5 7 -1 2 12            | False
 1519 | 3 11 6 6 18 -1 3 3 3 4 5 -1 2 12                    | False
 1520 | 3 11 6 6 18 22 -1 3 3 3 4 5 7 -1 2 12               | False
 1521 | 3 11 6 6 18 0 -1 3 3 3 4 5 5 -1 2 12                | False
 1522 | 3 11 6 6 18 0 22 -1 3 3 3 4 5 5 7 -1 2 12           | False
 1523 | 3 11 6 6 18 18 -1 3 3 3 4 5 5 -1 2 12               | False
 1524 | 3 11 6 6 18 18 22 -1 3 3 3 4 5 5 7 -1 2 12          | False
 1525 | 22 6 0 -1 2 4 5 -1 2 16                             | False
 1526 | 22 6 0 22 -1 2 4 5 7 -1 2 16                        | False
 1527 | 22 6 21 -1 2 4 5 -1 2 12                            | False
 1528 | 22 6 21 22 -1 2 4 5 7 -1 2 12                       | False
 1529 | 22 6 21 0 -1 2 4 5 5 -1 2 12                        | False
 1530 | 22 6 21 0 22 -1 2 4 5 5 7 -1 2 12                   | False
 1531 | 22 6 23 -1 2 4 5 -1 2 12                            | False
 1532 | 22 6 23 22 -1 2 4 5 7 -1 2 12                       | False
 1533 | 22 6 0 18 -1 2 4 5 5 -1 2 12                        | False
 1534 | 22 6 0 18 22 -1 2 4 5 5 7 -1 2 12                   | False
 1535 | 22 6 0 0 -1 2 4 5 5 -1 2 12                         | False
 1536 | 22 6 0 0 22 -1 2 4 5 5 7 -1 2 12                    | False
 1537 | 22 6 18 -1 2 4 5 -1 2 12                            | False
 1538 | 22 6 18 22 -1 2 4 5 7 -1 2 12                       | False
 1539 | 22 6 18 0 -1 2 4 5 5 -1 2 12                        | False
 1540 | 22 6 18 0 22 -1 2 4 5 5 7 -1 2 12                   | False
 1541 | 22 6 18 18 -1 2 4 5 5 -1 2 12                       | False
 1542 | 22 6 18 18 22 -1 2 4 5 5 7 -1 2 12                  | False
 1543 | 22 6 6 0 -1 2 3 4 5 -1 2 16                         | False
 1544 | 22 6 6 0 22 -1 2 3 4 5 7 -1 2 16                    | False
 1545 | 22 6 6 21 -1 2 3 4 5 -1 2 12                        | False
 1546 | 22 6 6 21 22 -1 2 3 4 5 7 -1 2 12                   | False
 1547 | 22 6 6 21 0 -1 2 3 4 5 5 -1 2 12                    | False
 1548 | 22 6 6 21 0 22 -1 2 3 4 5 5 7 -1 2 12               | False
 1549 | 22 6 6 23 -1 2 3 4 5 -1 2 12                        | False
 1550 | 22 6 6 23 22 -1 2 3 4 5 7 -1 2 12                   | False
 1551 | 22 6 6 0 18 -1 2 3 4 5 5 -1 2 12                    | False
 1552 | 22 6 6 0 18 22 -1 2 3 4 5 5 7 -1 2 12               | False
 1553 | 22 6 6 0 0 -1 2 3 4 5 5 -1 2 12                     | False
 1554 | 22 6 6 0 0 22 -1 2 3 4 5 5 7 -1 2 12                | False
 1555 | 22 6 6 18 -1 2 3 4 5 -1 2 12                        | False
 1556 | 22 6 6 18 22 -1 2 3 4 5 7 -1 2 12                   | False
 1557 | 22 6 6 18 0 -1 2 3 4 5 5 -1 2 12                    | False
 1558 | 22 6 6 18 0 22 -1 2 3 4 5 5 7 -1 2 12               | False
 1559 | 22 6 6 18 18 -1 2 3 4 5 5 -1 2 12                   | False
 1560 | 22 6 6 18 18 22 -1 2 3 4 5 5 7 -1 2 12              | False
 1561 | 22 3 6 0 -1 2 3 4 5 -1 2 16                         | False
 1562 | 22 3 6 0 22 -1 2 3 4 5 7 -1 2 16                    | False
 1563 | 22 3 6 21 -1 2 3 4 5 -1 2 12                        | False
 1564 | 22 3 6 21 22 -1 2 3 4 5 7 -1 2 12                   | False
 1565 | 22 3 6 21 0 -1 2 3 4 5 5 -1 2 12                    | False
 1566 | 22 3 6 21 0 22 -1 2 3 4 5 5 7 -1 2 12               | False
 1567 | 22 3 6 23 -1 2 3 4 5 -1 2 12                        | False
 1568 | 22 3 6 23 22 -1 2 3 4 5 7 -1 2 12                   | False
 1569 | 22 3 6 0 18 -1 2 3 4 5 5 -1 2 12                    | False
 1570 | 22 3 6 0 18 22 -1 2 3 4 5 5 7 -1 2 12               | False
 1571 | 22 3 6 0 0 -1 2 3 4 5 5 -1 2 12                     | False
 1572 | 22 3 6 0 0 22 -1 2 3 4 5 5 7 -1 2 12                | False
 1573 | 22 3 6 18 -1 2 3 4 5 -1 2 12                        | False
 1574 | 22 3 6 18 22 -1 2 3 4 5 7 -1 2 12                   | False
 1575 | 22 3 6 18 0 -1 2 3 4 5 5 -1 2 12                    | False
 1576 | 22 3 6 18 0 22 -1 2 3 4 5 5 7 -1 2 12               | False
 1577 | 22 3 6 18 18 -1 2 3 4 5 5 -1 2 12                   | False
 1578 | 22 3 6 18 18 22 -1 2 3 4 5 5 7 -1 2 12              | False
 1579 | 22 3 6 6 0 -1 2 3 3 4 5 -1 2 16                     | False
 1580 | 22 3 6 6 0 22 -1 2 3 3 4 5 7 -1 2 16                | False
 1581 | 22 3 6 6 21 -1 2 3 3 4 5 -1 2 12                    | False
 1582 | 22 3 6 6 21 22 -1 2 3 3 4 5 7 -1 2 12               | False
 1583 | 22 3 6 6 21 0 -1 2 3 3 4 5 5 -1 2 12                | False
 1584 | 22 3 6 6 21 0 22 -1 2 3 3 4 5 5 7 -1 2 12           | False
 1585 | 22 3 6 6 23 -1 2 3 3 4 5 -1 2 12                    | False
 1586 | 22 3 6 6 23 22 -1 2 3 3 4 5 7 -1 2 12               | False
 1587 | 22 3 6 6 0 18 -1 2 3 3 4 5 5 -1 2 12                | False
 1588 | 22 3 6 6 0 18 22 -1 2 3 3 4 5 5 7 -1 2 12           | False
 1589 | 22 3 6 6 0 0 -1 2 3 3 4 5 5 -1 2 12                 | False
 1590 | 22 3 6 6 0 0 22 -1 2 3 3 4 5 5 7 -1 2 12            | False
 1591 | 22 3 6 6 18 -1 2 3 3 4 5 -1 2 12                    | False
 1592 | 22 3 6 6 18 22 -1 2 3 3 4 5 7 -1 2 12               | False
 1593 | 22 3 6 6 18 0 -1 2 3 3 4 5 5 -1 2 12                | False
 1594 | 22 3 6 6 18 0 22 -1 2 3 3 4 5 5 7 -1 2 12           | False
 1595 | 22 3 6 6 18 18 -1 2 3 3 4 5 5 -1 2 12               | False
 1596 | 22 3 6 6 18 18 22 -1 2 3 3 4 5 5 7 -1 2 12          | False
 1597 | 22 11 6 0 -1 2 3 4 5 -1 2 16                        | False
 1598 | 22 11 6 0 22 -1 2 3 4 5 7 -1 2 16                   | False
 1599 | 22 11 6 21 -1 2 3 4 5 -1 2 12                       | False
 1600 | 22 11 6 21 22 -1 2 3 4 5 7 -1 2 12                  | False
 1601 | 22 11 6 21 0 -1 2 3 4 5 5 -1 2 12                   | False
 1602 | 22 11 6 21 0 22 -1 2 3 4 5 5 7 -1 2 12              | False
 1603 | 22 11 6 23 -1 2 3 4 5 -1 2 12                       | False
 1604 | 22 11 6 23 22 -1 2 3 4 5 7 -1 2 12                  | False
 1605 | 22 11 6 0 18 -1 2 3 4 5 5 -1 2 12                   | False
 1606 | 22 11 6 0 18 22 -1 2 3 4 5 5 7 -1 2 12              | False
 1607 | 22 11 6 0 0 -1 2 3 4 5 5 -1 2 12                    | False
 1608 | 22 11 6 0 0 22 -1 2 3 4 5 5 7 -1 2 12               | False
 1609 | 22 11 6 18 -1 2 3 4 5 -1 2 12                       | False
 1610 | 22 11 6 18 22 -1 2 3 4 5 7 -1 2 12                  | False
 1611 | 22 11 6 18 0 -1 2 3 4 5 5 -1 2 12                   | False
 1612 | 22 11 6 18 0 22 -1 2 3 4 5 5 7 -1 2 12              | False
 1613 | 22 11 6 18 18 -1 2 3 4 5 5 -1 2 12                  | False
 1614 | 22 11 6 18 18 22 -1 2 3 4 5 5 7 -1 2 12             | False
 1615 | 22 11 6 6 0 -1 2 3 3 4 5 -1 2 16                    | False
 1616 | 22 11 6 6 0 22 -1 2 3 3 4 5 7 -1 2 16               | False
 1617 | 22 11 6 6 21 -1 2 3 3 4 5 -1 2 12                   | False
 1618 | 22 11 6 6 21 22 -1 2 3 3 4 5 7 -1 2 12              | False
 1619 | 22 11 6 6 21 0 -1 2 3 3 4 5 5 -1 2 12               | False
 1620 | 22 11 6 6 21 0 22 -1 2 3 3 4 5 5 7 -1 2 12          | False
 1621 | 22 11 6 6 23 -1 2 3 3 4 5 -1 2 12                   | False
 1622 | 22 11 6 6 23 22 -1 2 3 3 4 5 7 -1 2 12              | False
 1623 | 22 11 6 6 0 18 -1 2 3 3 4 5 5 -1 2 12               | False
 1624 | 22 11 6 6 0 18 22 -1 2 3 3 4 5 5 7 -1 2 12          | False
 1625 | 22 11 6 6 0 0 -1 2 3 3 4 5 5 -1 2 12                | False
 1626 | 22 11 6 6 0 0 22 -1 2 3 3 4 5 5 7 -1 2 12           | False
 1627 | 22 11 6 6 18 -1 2 3 3 4 5 -1 2 12                   | False
 1628 | 22 11 6 6 18 22 -1 2 3 3 4 5 7 -1 2 12              | False
 1629 | 22 11 6 6 18 0 -1 2 3 3 4 5 5 -1 2 12               | False
 1630 | 22 11 6 6 18 0 22 -1 2 3 3 4 5 5 7 -1 2 12          | False
 1631 | 22 11 6 6 18 18 -1 2 3 3 4 5 5 -1 2 12              | False
 1632 | 22 11 6 6 18 18 22 -1 2 3 3 4 5 5 7 -1 2 12         | False
 1633 | 22 3 11 6 0 -1 2 3 3 4 5 -1 2 16                    | False
 1634 | 22 3 11 6 0 22 -1 2 3 3 4 5 7 -1 2 16               | False
 1635 | 22 3 11 6 21 -1 2 3 3 4 5 -1 2 12                   | False
 1636 | 22 3 11 6 21 22 -1 2 3 3 4 5 7 -1 2 12              | False
 1637 | 22 3 11 6 21 0 -1 2 3 3 4 5 5 -1 2 12               | False
 1638 | 22 3 11 6 21 0 22 -1 2 3 3 4 5 5 7 -1 2 12          | False
 1639 | 22 3 11 6 23 -1 2 3 3 4 5 -1 2 12                   | False
 1640 | 22 3 11 6 23 22 -1 2 3 3 4 5 7 -1 2 12              | False
 1641 | 22 3 11 6 0 18 -1 2 3 3 4 5 5 -1 2 12               | False
 1642 | 22 3 11 6 0 18 22 -1 2 3 3 4 5 5 7 -1 2 12          | False
 1643 | 22 3 11 6 0 0 -1 2 3 3 4 5 5 -1 2 12                | False
 1644 | 22 3 11 6 0 0 22 -1 2 3 3 4 5 5 7 -1 2 12           | False
 1645 | 22 3 11 6 18 -1 2 3 3 4 5 -1 2 12                   | False
 1646 | 22 3 11 6 18 22 -1 2 3 3 4 5 7 -1 2 12              | False
 1647 | 22 3 11 6 18 0 -1 2 3 3 4 5 5 -1 2 12               | False
 1648 | 22 3 11 6 18 0 22 -1 2 3 3 4 5 5 7 -1 2 12          | False
 1649 | 22 3 11 6 18 18 -1 2 3 3 4 5 5 -1 2 12              | False
 1650 | 22 3 11 6 18 18 22 -1 2 3 3 4 5 5 7 -1 2 12         | False
 1651 | 22 3 11 6 6 0 -1 2 3 3 3 4 5 -1 2 16                | False
 1652 | 22 3 11 6 6 0 22 -1 2 3 3 3 4 5 7 -1 2 16           | False
 1653 | 22 3 11 6 6 21 -1 2 3 3 3 4 5 -1 2 12               | False
 1654 | 22 3 11 6 6 21 22 -1 2 3 3 3 4 5 7 -1 2 12          | False
 1655 | 22 3 11 6 6 21 0 -1 2 3 3 3 4 5 5 -1 2 12           | False
 1656 | 22 3 11 6 6 21 0 22 -1 2 3 3 3 4 5 5 7 -1 2 12      | False
 1657 | 22 3 11 6 6 23 -1 2 3 3 3 4 5 -1 2 12               | False
 1658 | 22 3 11 6 6 23 22 -1 2 3 3 3 4 5 7 -1 2 12          | False
 1659 | 22 3 11 6 6 0 18 -1 2 3 3 3 4 5 5 -1 2 12           | False
 1660 | 22 3 11 6 6 0 18 22 -1 2 3 3 3 4 5 5 7 -1 2 12      | False
 1661 | 22 3 11 6 6 0 0 -1 2 3 3 3 4 5 5 -1 2 12            | False
 1662 | 22 3 11 6 6 0 0 22 -1 2 3 3 3 4 5 5 7 -1 2 12       | False
 1663 | 22 3 11 6 6 18 -1 2 3 3 3 4 5 -1 2 12               | False
 1664 | 22 3 11 6 6 18 22 -1 2 3 3 3 4 5 7 -1 2 12          | False
 1665 | 22 3 11 6 6 18 0 -1 2 3 3 3 4 5 5 -1 2 12           | False
 1666 | 22 3 11 6 6 18 0 22 -1 2 3 3 3 4 5 5 7 -1 2 12      | False
 1667 | 22 3 11 6 6 18 18 -1 2 3 3 3 4 5 5 -1 2 12          | False
 1668 | 22 3 11 6 6 18 18 22 -1 2 3 3 3 4 5 5 7 -1 2 12     | False
 1669 | 0 1 -1 1 5 -1 1 7                                   | False
 1670 | 0 1 22 -1 1 5 7 -1 1 7                              | False
 1671 | 0 1 2 -1 1 5 6 -1 1 17                              | False
 1672 | 0 1 2 22 -1 1 5 6 7 -1 1 17                         | False
 1673 | 0 5 -1 1 5 -1 1 7                                   | False
 1674 | 0 5 22 -1 1 5 7 -1 1 7                              | False
 1675 | 0 5 2 -1 1 5 6 -1 1 17                              | False
 1676 | 0 5 2 22 -1 1 5 6 7 -1 1 17                         | False
 1677 | 0 2 1 -1 1 4 5 -1 1 11                              | False
 1678 | 0 2 1 22 -1 1 4 5 7 -1 1 11                         | False
 1679 | 0 2 5 -1 1 4 5 -1 1 11                              | False
 1680 | 0 2 5 22 -1 1 4 5 7 -1 1 11                         | False
 1681 | 0 22 1 -1 1 2 5 -1 1 7                              | False
 1682 | 0 22 1 2 -1 1 2 5 6 -1 1 17                         | False
 1683 | 0 22 5 -1 1 2 5 -1 1 7                              | False
 1684 | 0 22 5 2 -1 1 2 5 6 -1 1 16                         | False
 1685 | 0 22 2 1 -1 1 2 4 5 -1 1 11                         | False
 1686 | 0 22 2 5 -1 1 2 4 5 -1 1 11                         | False
 1687 | 0 18 1 -1 1 1 5 -1 1 7                              | False
 1688 | 0 18 1 22 -1 1 1 5 7 -1 1 7                         | False
 1689 | 0 18 1 2 -1 1 1 5 6 -1 1 16                         | False
 1690 | 0 18 1 2 22 -1 1 1 5 6 7 -1 1 16                    | False
 1691 | 0 18 5 -1 1 1 5 -1 1 7                              | False
 1692 | 0 18 5 22 -1 1 1 5 7 -1 1 7                         | False
 1693 | 0 18 5 2 -1 1 1 5 6 -1 1 16                         | False
 1694 | 0 18 5 2 22 -1 1 1 5 6 7 -1 1 16                    | False
 1695 | 0 18 2 1 -1 1 1 4 5 -1 1 8                          | False
 1696 | 0 18 2 1 22 -1 1 1 4 5 7 -1 1 8                     | False
 1697 | 0 18 2 5 -1 1 1 4 5 -1 1 8                          | False
 1698 | 0 18 2 5 22 -1 1 1 4 5 7 -1 1 8                     | False
 1699 | 0 18 22 1 -1 1 1 2 5 -1 1 7                         | False
 1700 | 0 18 22 1 2 -1 1 1 2 5 6 -1 1 16                    | False
 1701 | 0 18 22 5 -1 1 1 2 5 -1 1 7                         | False
 1702 | 0 18 22 5 2 -1 1 1 2 5 6 -1 1 16                    | False
 1703 | 0 18 22 2 1 -1 1 1 2 4 5 -1 1 8                     | False
 1704 | 0 18 22 2 5 -1 1 1 2 4 5 -1 1 8                     | False
 1705 | 0 25 1 -1 1 1 5 -1 1 7                              | False
 1706 | 0 25 1 22 -1 1 1 5 7 -1 1 7                         | False
 1707 | 0 25 1 2 -1 1 1 5 6 -1 1 14                         | False
 1708 | 0 25 1 2 22 -1 1 1 5 6 7 -1 1 14                    | False
 1709 | 0 25 5 -1 1 1 5 -1 1 7                              | False
 1710 | 0 25 5 22 -1 1 1 5 7 -1 1 7                         | False
 1711 | 0 25 5 2 -1 1 1 5 6 -1 1 14                         | False
 1712 | 0 25 5 2 22 -1 1 1 5 6 7 -1 1 14                    | False
 1713 | 0 25 2 1 -1 1 1 4 5 -1 1 11                         | False
 1714 | 0 25 2 1 22 -1 1 1 4 5 7 -1 1 11                    | False
 1715 | 0 25 2 5 -1 1 1 4 5 -1 1 11                         | False
 1716 | 0 25 2 5 22 -1 1 1 4 5 7 -1 1 11                    | False
 1717 | 0 25 22 1 -1 1 1 2 5 -1 1 7                         | False
 1718 | 0 25 22 1 2 -1 1 1 2 5 6 -1 1 14                    | False
 1719 | 0 25 22 5 -1 1 1 2 5 -1 1 7                         | False
 1720 | 0 25 22 5 2 -1 1 1 2 5 6 -1 1 14                    | False
 1721 | 0 25 22 2 1 -1 1 1 2 4 5 -1 1 11                    | False
 1722 | 0 25 22 2 5 -1 1 1 2 4 5 -1 1 11                    | False
 1723 | 25 1 -1 1 5 -1 1 7                                  | False
 1724 | 25 1 22 -1 1 5 7 -1 1 7                             | False
 1725 | 25 1 2 -1 1 5 6 -1 1 14                             | False
 1726 | 25 1 2 22 -1 1 5 6 7 -1 1 14                        | False
 1727 | 25 5 -1 1 5 -1 1 7                                  | False
 1728 | 25 5 22 -1 1 5 7 -1 1 7                             | False
 1729 | 25 5 2 -1 1 5 6 -1 1 14                             | False
 1730 | 25 5 2 22 -1 1 5 6 7 -1 1 14                        | False
 1731 | 25 2 1 -1 1 4 5 -1 1 8                              | False
 1732 | 25 2 1 22 -1 1 4 5 7 -1 1 8                         | False
 1733 | 25 2 5 -1 1 4 5 -1 1 8                              | False
 1734 | 25 2 5 22 -1 1 4 5 7 -1 1 8                         | False
 1735 | 25 22 1 -1 1 2 5 -1 1 7                             | False
 1736 | 25 22 1 2 -1 1 2 5 6 -1 1 14                        | False
 1737 | 25 22 5 -1 1 2 5 -1 1 7                             | False
 1738 | 25 22 5 2 -1 1 2 5 6 -1 1 14                        | False
 1739 | 25 22 2 1 -1 1 2 4 5 -1 1 8                         | False
 1740 | 25 22 2 5 -1 1 2 4 5 -1 1 8                         | False
 1741 | 0 0 -1 1 5 -1 1 4                                   | False
 1742 | 0 0 22 -1 1 5 7 -1 1 4                              | False
 1743 | 0 0 2 -1 1 5 6 -1 1 15                              | False
 1744 | 0 0 2 22 -1 1 5 6 7 -1 1 15                         | False
 1745 | 0 18 -1 1 5 -1 1 6                                  | False
 1746 | 0 18 22 -1 1 5 7 -1 1 6                             | False
 1747 | 0 18 2 -1 1 5 6 -1 1 16                             | False
 1748 | 0 18 2 22 -1 1 5 6 7 -1 1 16                        | False
 1749 | 0 2 0 -1 1 4 5 -1 1 14                              | False
 1750 | 0 2 0 22 -1 1 4 5 7 -1 1 14                         | False
 1751 | 0 2 18 -1 1 4 5 -1 1 14                             | False
 1752 | 0 2 18 22 -1 1 4 5 7 -1 1 14                        | False
 1753 | 0 22 0 -1 1 2 5 -1 1 6                              | False
 1754 | 0 22 0 22 -1 1 2 5 7 -1 1 11                        | False
 1755 | 0 22 0 2 -1 1 2 5 6 -1 1 16                         | False
 1756 | 0 22 0 2 22 -1 1 2 5 6 7 -1 1 11                    | False
 1757 | 0 22 18 -1 1 2 5 -1 1 6                             | False
 1758 | 0 22 18 22 -1 1 2 5 7 -1 1 11                       | False
 1759 | 0 22 18 2 -1 1 2 5 6 -1 1 16                        | False
 1760 | 0 22 18 2 22 -1 1 2 5 6 7 -1 1 11                   | False
 1761 | 0 22 2 0 -1 1 2 4 5 -1 1 14                         | False
 1762 | 0 22 2 0 22 -1 1 2 4 5 7 -1 1 11                    | False
 1763 | 0 22 2 18 -1 1 2 4 5 -1 1 14                        | False
 1764 | 0 22 2 18 22 -1 1 2 4 5 7 -1 1 11                   | False
 1765 | 0 18 0 -1 1 1 5 -1 1 3                              | False
 1766 | 0 18 0 22 -1 1 1 5 7 -1 1 3                         | False
 1767 | 0 18 0 2 -1 1 1 5 6 -1 1 15                         | False
 1768 | 0 18 0 2 22 -1 1 1 5 6 7 -1 1 15                    | False
 1769 | 0 18 18 -1 1 1 5 -1 1 5                             | False
 1770 | 0 18 18 22 -1 1 1 5 7 -1 1 5                        | False
 1771 | 0 18 18 2 -1 1 1 5 6 -1 1 15                        | False
 1772 | 0 18 18 2 22 -1 1 1 5 6 7 -1 1 15                   | False
 1773 | 0 18 2 0 -1 1 1 4 5 -1 1 11                         | False
 1774 | 0 18 2 0 22 -1 1 1 4 5 7 -1 1 11                    | False
 1775 | 0 18 2 18 -1 1 1 4 5 -1 1 8                         | False
 1776 | 0 18 2 18 22 -1 1 1 4 5 7 -1 1 8                    | False
 1777 | 0 18 22 0 -1 1 1 2 5 -1 1 5                         | False
 1778 | 0 18 22 0 2 -1 1 1 2 5 6 -1 1 15                    | False
 1779 | 0 18 22 18 -1 1 1 2 5 -1 1 5                        | False
 1780 | 0 18 22 18 2 -1 1 1 2 5 6 -1 1 15                   | False
 1781 | 0 18 22 2 0 -1 1 1 2 4 5 -1 1 14                    | False
 1782 | 0 18 22 2 18 -1 1 1 2 4 5 -1 1 14                   | False
 1783 | 0 25 0 -1 1 1 5 -1 1 3                              | False
 1784 | 0 25 0 22 -1 1 1 5 7 -1 1 3                         | False
 1785 | 0 25 0 2 -1 1 1 5 6 -1 1 15                         | False
 1786 | 0 25 0 2 22 -1 1 1 5 6 7 -1 1 15                    | False
 1787 | 0 25 18 -1 1 1 5 -1 1 5                             | False
 1788 | 0 25 18 22 -1 1 1 5 7 -1 1 5                        | False
 1789 | 0 25 18 2 -1 1 1 5 6 -1 1 15                        | False
 1790 | 0 25 18 2 22 -1 1 1 5 6 7 -1 1 15                   | False
 1791 | 0 25 2 0 -1 1 1 4 5 -1 1 14                         | False
 1792 | 0 25 2 0 22 -1 1 1 4 5 7 -1 1 14                    | False
 1793 | 0 25 2 18 -1 1 1 4 5 -1 1 14                        | False
 1794 | 0 25 2 18 22 -1 1 1 4 5 7 -1 1 14                   | False
 1795 | 0 25 22 0 -1 1 1 2 5 -1 1 5                         | False
 1796 | 0 25 22 0 2 -1 1 1 2 5 6 -1 1 15                    | False
 1797 | 0 25 22 18 -1 1 1 2 5 -1 1 5                        | False
 1798 | 0 25 22 18 2 -1 1 1 2 5 6 -1 1 15                   | False
 1799 | 0 25 22 2 0 -1 1 1 2 4 5 -1 1 14                    | False
 1800 | 0 25 22 2 18 -1 1 1 2 4 5 -1 1 14                   | False
 1801 | 25 0 -1 1 5 -1 1 3                                  | False
 1802 | 25 0 22 -1 1 5 7 -1 1 3                             | False
 1803 | 25 0 2 -1 1 5 6 -1 1 15                             | False
 1804 | 25 0 2 22 -1 1 5 6 7 -1 1 15                        | False
 1805 | 25 18 -1 1 5 -1 1 5                                 | False
 1806 | 25 18 22 -1 1 5 7 -1 1 5                            | False
 1807 | 25 18 2 -1 1 5 6 -1 1 15                            | False
 1808 | 25 18 2 22 -1 1 5 6 7 -1 1 15                       | False
 1809 | 25 2 0 -1 1 4 5 -1 1 14                             | False
 1810 | 25 2 0 22 -1 1 4 5 7 -1 1 14                        | False
 1811 | 25 2 18 -1 1 4 5 -1 1 14                            | False
 1812 | 25 2 18 22 -1 1 4 5 7 -1 1 14                       | False
 1813 | 25 22 0 -1 1 2 5 -1 1 5                             | False
 1814 | 25 22 0 2 -1 1 2 5 6 -1 1 15                        | False
 1815 | 25 22 18 -1 1 2 5 -1 1 5                            | False
 1816 | 25 22 18 2 -1 1 2 5 6 -1 1 15                       | False
 1817 | 25 22 2 0 -1 1 2 4 5 -1 1 14                        | False
 1818 | 25 22 2 18 -1 1 2 4 5 -1 1 14                       | False
 1819 | 0 6 0 -1 1 4 5 -1 1 17                              | False
 1820 | 0 6 0 22 -1 1 4 5 7 -1 1 12                         | False
 1821 | 0 6 21 -1 1 4 5 -1 1 16                             | False
 1822 | 0 6 21 22 -1 1 4 5 7 -1 1 16                        | False
 1823 | 0 6 21 0 -1 1 4 5 5 -1 1 16                         | False
 1824 | 0 6 21 0 22 -1 1 4 5 5 7 -1 1 16                    | False
 1825 | 0 6 23 -1 1 4 5 -1 1 16                             | False
 1826 | 0 6 23 22 -1 1 4 5 7 -1 1 16                        | False
 1827 | 0 6 0 18 -1 1 4 5 5 -1 1 16                         | False
 1828 | 0 6 0 18 22 -1 1 4 5 5 7 -1 1 16                    | False
 1829 | 0 6 0 0 -1 1 4 5 5 -1 1 16                          | False
 1830 | 0 6 0 0 22 -1 1 4 5 5 7 -1 1 16                     | False
 1831 | 0 6 18 -1 1 4 5 -1 1 16                             | False
 1832 | 0 6 18 22 -1 1 4 5 7 -1 1 16                        | False
 1833 | 0 6 18 0 -1 1 4 5 5 -1 1 16                         | False
 1834 | 0 6 18 0 22 -1 1 4 5 5 7 -1 1 16                    | False
 1835 | 0 6 18 18 -1 1 4 5 5 -1 1 16                        | False
 1836 | 0 6 18 18 22 -1 1 4 5 5 7 -1 1 16                   | False
 1837 | 0 6 6 0 -1 1 3 4 5 -1 1 17                          | False
 1838 | 0 6 6 0 22 -1 1 3 4 5 7 -1 1 12                     | False
 1839 | 0 6 6 21 -1 1 3 4 5 -1 1 16                         | False
 1840 | 0 6 6 21 22 -1 1 3 4 5 7 -1 1 16                    | False
 1841 | 0 6 6 21 0 -1 1 3 4 5 5 -1 1 16                     | False
 1842 | 0 6 6 21 0 22 -1 1 3 4 5 5 7 -1 1 16                | False
 1843 | 0 6 6 23 -1 1 3 4 5 -1 1 16                         | False
 1844 | 0 6 6 23 22 -1 1 3 4 5 7 -1 1 16                    | False
 1845 | 0 6 6 0 18 -1 1 3 4 5 5 -1 1 16                     | False
 1846 | 0 6 6 0 18 22 -1 1 3 4 5 5 7 -1 1 16                | False
 1847 | 0 6 6 0 0 -1 1 3 4 5 5 -1 1 16                      | False
 1848 | 0 6 6 0 0 22 -1 1 3 4 5 5 7 -1 1 16                 | False
 1849 | 0 6 6 18 -1 1 3 4 5 -1 1 16                         | False
 1850 | 0 6 6 18 22 -1 1 3 4 5 7 -1 1 16                    | False
 1851 | 0 6 6 18 0 -1 1 3 4 5 5 -1 1 16                     | False
 1852 | 0 6 6 18 0 22 -1 1 3 4 5 5 7 -1 1 16                | False
 1853 | 0 6 6 18 18 -1 1 3 4 5 5 -1 1 16                    | False
 1854 | 0 6 6 18 18 22 -1 1 3 4 5 5 7 -1 1 16               | False
 1855 | 0 3 6 0 -1 1 3 4 5 -1 1 17                          | False
 1856 | 0 3 6 0 22 -1 1 3 4 5 7 -1 1 12                     | False
 1857 | 0 3 6 21 -1 1 3 4 5 -1 1 16                         | False
 1858 | 0 3 6 21 22 -1 1 3 4 5 7 -1 1 16                    | False
 1859 | 0 3 6 21 0 -1 1 3 4 5 5 -1 1 16                     | False
 1860 | 0 3 6 21 0 22 -1 1 3 4 5 5 7 -1 1 16                | False
 1861 | 0 3 6 23 -1 1 3 4 5 -1 1 16                         | False
 1862 | 0 3 6 23 22 -1 1 3 4 5 7 -1 1 16                    | False
 1863 | 0 3 6 0 18 -1 1 3 4 5 5 -1 1 16                     | False
 1864 | 0 3 6 0 18 22 -1 1 3 4 5 5 7 -1 1 16                | False
 1865 | 0 3 6 0 0 -1 1 3 4 5 5 -1 1 16                      | False
 1866 | 0 3 6 0 0 22 -1 1 3 4 5 5 7 -1 1 16                 | False
 1867 | 0 3 6 18 -1 1 3 4 5 -1 1 16                         | False
 1868 | 0 3 6 18 22 -1 1 3 4 5 7 -1 1 16                    | False
 1869 | 0 3 6 18 0 -1 1 3 4 5 5 -1 1 16                     | False
 1870 | 0 3 6 18 0 22 -1 1 3 4 5 5 7 -1 1 16                | False
 1871 | 0 3 6 18 18 -1 1 3 4 5 5 -1 1 16                    | False
 1872 | 0 3 6 18 18 22 -1 1 3 4 5 5 7 -1 1 16               | False
 1873 | 0 3 6 6 0 -1 1 3 3 4 5 -1 1 17                      | False
 1874 | 0 3 6 6 0 22 -1 1 3 3 4 5 7 -1 1 12                 | False
 1875 | 0 3 6 6 21 -1 1 3 3 4 5 -1 1 16                     | False
 1876 | 0 3 6 6 21 22 -1 1 3 3 4 5 7 -1 1 16                | False
 1877 | 0 3 6 6 21 0 -1 1 3 3 4 5 5 -1 1 16                 | False
 1878 | 0 3 6 6 21 0 22 -1 1 3 3 4 5 5 7 -1 1 16            | False
 1879 | 0 3 6 6 23 -1 1 3 3 4 5 -1 1 16                     | False
 1880 | 0 3 6 6 23 22 -1 1 3 3 4 5 7 -1 1 16                | False
 1881 | 0 3 6 6 0 18 -1 1 3 3 4 5 5 -1 1 16                 | False
 1882 | 0 3 6 6 0 18 22 -1 1 3 3 4 5 5 7 -1 1 16            | False
 1883 | 0 3 6 6 0 0 -1 1 3 3 4 5 5 -1 1 16                  | False
 1884 | 0 3 6 6 0 0 22 -1 1 3 3 4 5 5 7 -1 1 16             | False
 1885 | 0 3 6 6 18 -1 1 3 3 4 5 -1 1 16                     | False
 1886 | 0 3 6 6 18 22 -1 1 3 3 4 5 7 -1 1 16                | False
 1887 | 0 3 6 6 18 0 -1 1 3 3 4 5 5 -1 1 16                 | False
 1888 | 0 3 6 6 18 0 22 -1 1 3 3 4 5 5 7 -1 1 16            | False
 1889 | 0 3 6 6 18 18 -1 1 3 3 4 5 5 -1 1 16                | False
 1890 | 0 3 6 6 18 18 22 -1 1 3 3 4 5 5 7 -1 1 16           | False
 1891 | 0 11 6 0 -1 1 3 4 5 -1 1 17                         | False
 1892 | 0 11 6 0 22 -1 1 3 4 5 7 -1 1 12                    | False
 1893 | 0 11 6 21 -1 1 3 4 5 -1 1 16                        | False
 1894 | 0 11 6 21 22 -1 1 3 4 5 7 -1 1 16                   | False
 1895 | 0 11 6 21 0 -1 1 3 4 5 5 -1 1 16                    | False
 1896 | 0 11 6 21 0 22 -1 1 3 4 5 5 7 -1 1 16               | False
 1897 | 0 11 6 23 -1 1 3 4 5 -1 1 16                        | False
 1898 | 0 11 6 23 22 -1 1 3 4 5 7 -1 1 16                   | False
 1899 | 0 11 6 0 18 -1 1 3 4 5 5 -1 1 16                    | False
 1900 | 0 11 6 0 18 22 -1 1 3 4 5 5 7 -1 1 16               | False
 1901 | 0 11 6 0 0 -1 1 3 4 5 5 -1 1 16                     | False
 1902 | 0 11 6 0 0 22 -1 1 3 4 5 5 7 -1 1 16                | False
 1903 | 0 11 6 18 -1 1 3 4 5 -1 1 16                        | False
 1904 | 0 11 6 18 22 -1 1 3 4 5 7 -1 1 16                   | False
 1905 | 0 11 6 18 0 -1 1 3 4 5 5 -1 1 16                    | False
 1906 | 0 11 6 18 0 22 -1 1 3 4 5 5 7 -1 1 16               | False
 1907 | 0 11 6 18 18 -1 1 3 4 5 5 -1 1 16                   | False
 1908 | 0 11 6 18 18 22 -1 1 3 4 5 5 7 -1 1 16              | False
 1909 | 0 11 6 6 0 -1 1 3 3 4 5 -1 1 17                     | False
 1910 | 0 11 6 6 0 22 -1 1 3 3 4 5 7 -1 1 12                | False
 1911 | 0 11 6 6 21 -1 1 3 3 4 5 -1 1 16                    | False
 1912 | 0 11 6 6 21 22 -1 1 3 3 4 5 7 -1 1 16               | False
 1913 | 0 11 6 6 21 0 -1 1 3 3 4 5 5 -1 1 16                | False
 1914 | 0 11 6 6 21 0 22 -1 1 3 3 4 5 5 7 -1 1 16           | False
 1915 | 0 11 6 6 23 -1 1 3 3 4 5 -1 1 16                    | False
 1916 | 0 11 6 6 23 22 -1 1 3 3 4 5 7 -1 1 16               | False
 1917 | 0 11 6 6 0 18 -1 1 3 3 4 5 5 -1 1 16                | False
 1918 | 0 11 6 6 0 18 22 -1 1 3 3 4 5 5 7 -1 1 16           | False
 1919 | 0 11 6 6 0 0 -1 1 3 3 4 5 5 -1 1 16                 | False
 1920 | 0 11 6 6 0 0 22 -1 1 3 3 4 5 5 7 -1 1 16            | False
 1921 | 0 11 6 6 18 -1 1 3 3 4 5 -1 1 16                    | False
 1922 | 0 11 6 6 18 22 -1 1 3 3 4 5 7 -1 1 16               | False
 1923 | 0 11 6 6 18 0 -1 1 3 3 4 5 5 -1 1 16                | False
 1924 | 0 11 6 6 18 0 22 -1 1 3 3 4 5 5 7 -1 1 16           | False
 1925 | 0 11 6 6 18 18 -1 1 3 3 4 5 5 -1 1 16               | False
 1926 | 0 11 6 6 18 18 22 -1 1 3 3 4 5 5 7 -1 1 16          | False
 1927 | 0 3 11 6 0 -1 1 3 3 4 5 -1 1 17                     | False
 1928 | 0 3 11 6 0 22 -1 1 3 3 4 5 7 -1 1 12                | False
 1929 | 0 3 11 6 21 -1 1 3 3 4 5 -1 1 16                    | False
 1930 | 0 3 11 6 21 22 -1 1 3 3 4 5 7 -1 1 16               | False
 1931 | 0 3 11 6 21 0 -1 1 3 3 4 5 5 -1 1 16                | False
 1932 | 0 3 11 6 21 0 22 -1 1 3 3 4 5 5 7 -1 1 16           | False
 1933 | 0 3 11 6 23 -1 1 3 3 4 5 -1 1 16                    | False
 1934 | 0 3 11 6 23 22 -1 1 3 3 4 5 7 -1 1 16               | False
 1935 | 0 3 11 6 0 18 -1 1 3 3 4 5 5 -1 1 16                | False
 1936 | 0 3 11 6 0 18 22 -1 1 3 3 4 5 5 7 -1 1 16           | False
 1937 | 0 3 11 6 0 0 -1 1 3 3 4 5 5 -1 1 16                 | False
 1938 | 0 3 11 6 0 0 22 -1 1 3 3 4 5 5 7 -1 1 16            | False
 1939 | 0 3 11 6 18 -1 1 3 3 4 5 -1 1 16                    | False
 1940 | 0 3 11 6 18 22 -1 1 3 3 4 5 7 -1 1 16               | False
 1941 | 0 3 11 6 18 0 -1 1 3 3 4 5 5 -1 1 16                | False
 1942 | 0 3 11 6 18 0 22 -1 1 3 3 4 5 5 7 -1 1 16           | False
 1943 | 0 3 11 6 18 18 -1 1 3 3 4 5 5 -1 1 16               | False
 1944 | 0 3 11 6 18 18 22 -1 1 3 3 4 5 5 7 -1 1 16          | False
 1945 | 0 3 11 6 6 0 -1 1 3 3 3 4 5 -1 1 17                 | False
 1946 | 0 3 11 6 6 0 22 -1 1 3 3 3 4 5 7 -1 1 12            | False
 1947 | 0 3 11 6 6 21 -1 1 3 3 3 4 5 -1 1 16                | False
 1948 | 0 3 11 6 6 21 22 -1 1 3 3 3 4 5 7 -1 1 16           | False
 1949 | 0 3 11 6 6 21 0 -1 1 3 3 3 4 5 5 -1 1 16            | False
 1950 | 0 3 11 6 6 21 0 22 -1 1 3 3 3 4 5 5 7 -1 1 16       | False
 1951 | 0 3 11 6 6 23 -1 1 3 3 3 4 5 -1 1 16                | False
 1952 | 0 3 11 6 6 23 22 -1 1 3 3 3 4 5 7 -1 1 16           | False
 1953 | 0 3 11 6 6 0 18 -1 1 3 3 3 4 5 5 -1 1 16            | False
 1954 | 0 3 11 6 6 0 18 22 -1 1 3 3 3 4 5 5 7 -1 1 16       | False
 1955 | 0 3 11 6 6 0 0 -1 1 3 3 3 4 5 5 -1 1 16             | False
 1956 | 0 3 11 6 6 0 0 22 -1 1 3 3 3 4 5 5 7 -1 1 16        | False
 1957 | 0 3 11 6 6 18 -1 1 3 3 3 4 5 -1 1 16                | False
 1958 | 0 3 11 6 6 18 22 -1 1 3 3 3 4 5 7 -1 1 16           | False
 1959 | 0 3 11 6 6 18 0 -1 1 3 3 3 4 5 5 -1 1 16            | False
 1960 | 0 3 11 6 6 18 0 22 -1 1 3 3 3 4 5 5 7 -1 1 16       | False
 1961 | 0 3 11 6 6 18 18 -1 1 3 3 3 4 5 5 -1 1 16           | False
 1962 | 0 3 11 6 6 18 18 22 -1 1 3 3 3 4 5 5 7 -1 1 16      | False
 1963 | 0 22 6 0 -1 1 2 4 5 -1 1 17                         | False
 1964 | 0 22 6 21 -1 1 2 4 5 -1 1 16                        | False
 1965 | 0 22 6 21 0 -1 1 2 4 5 5 -1 1 16                    | False
 1966 | 0 22 6 23 -1 1 2 4 5 -1 1 16                        | False
 1967 | 0 22 6 0 18 -1 1 2 4 5 5 -1 1 16                    | False
 1968 | 0 22 6 0 0 -1 1 2 4 5 5 -1 1 16                     | False
 1969 | 0 22 6 18 -1 1 2 4 5 -1 1 16                        | False
 1970 | 0 22 6 18 0 -1 1 2 4 5 5 -1 1 16                    | False
 1971 | 0 22 6 18 18 -1 1 2 4 5 5 -1 1 16                   | False
 1972 | 0 22 6 6 0 -1 1 2 3 4 5 -1 1 17                     | False
 1973 | 0 22 6 6 21 -1 1 2 3 4 5 -1 1 16                    | False
 1974 | 0 22 6 6 21 0 -1 1 2 3 4 5 5 -1 1 16                | False
 1975 | 0 22 6 6 23 -1 1 2 3 4 5 -1 1 16                    | False
 1976 | 0 22 6 6 0 18 -1 1 2 3 4 5 5 -1 1 16                | False
 1977 | 0 22 6 6 0 0 -1 1 2 3 4 5 5 -1 1 16                 | False
 1978 | 0 22 6 6 18 -1 1 2 3 4 5 -1 1 16                    | False
 1979 | 0 22 6 6 18 0 -1 1 2 3 4 5 5 -1 1 16                | False
 1980 | 0 22 6 6 18 18 -1 1 2 3 4 5 5 -1 1 16               | False
 1981 | 0 22 3 6 0 -1 1 2 3 4 5 -1 1 17                     | False
 1982 | 0 22 3 6 21 -1 1 2 3 4 5 -1 1 16                    | False
 1983 | 0 22 3 6 21 0 -1 1 2 3 4 5 5 -1 1 16                | False
 1984 | 0 22 3 6 23 -1 1 2 3 4 5 -1 1 16                    | False
 1985 | 0 22 3 6 0 18 -1 1 2 3 4 5 5 -1 1 16                | False
 1986 | 0 22 3 6 0 0 -1 1 2 3 4 5 5 -1 1 16                 | False
 1987 | 0 22 3 6 18 -1 1 2 3 4 5 -1 1 16                    | False
 1988 | 0 22 3 6 18 0 -1 1 2 3 4 5 5 -1 1 16                | False
 1989 | 0 22 3 6 18 18 -1 1 2 3 4 5 5 -1 1 16               | False
 1990 | 0 22 3 6 6 0 -1 1 2 3 3 4 5 -1 1 17                 | False
 1991 | 0 22 3 6 6 21 -1 1 2 3 3 4 5 -1 1 16                | False
 1992 | 0 22 3 6 6 21 0 -1 1 2 3 3 4 5 5 -1 1 16            | False
 1993 | 0 22 3 6 6 23 -1 1 2 3 3 4 5 -1 1 16                | False
 1994 | 0 22 3 6 6 0 18 -1 1 2 3 3 4 5 5 -1 1 16            | False
 1995 | 0 22 3 6 6 0 0 -1 1 2 3 3 4 5 5 -1 1 16             | False
 1996 | 0 22 3 6 6 18 -1 1 2 3 3 4 5 -1 1 16                | False
 1997 | 0 22 3 6 6 18 0 -1 1 2 3 3 4 5 5 -1 1 16            | False
 1998 | 0 22 3 6 6 18 18 -1 1 2 3 3 4 5 5 -1 1 16           | False
 1999 | 0 22 11 6 0 -1 1 2 3 4 5 -1 1 17                    | False
 2000 | 0 22 11 6 21 -1 1 2 3 4 5 -1 1 16                   | False
 2001 | 0 22 11 6 21 0 -1 1 2 3 4 5 5 -1 1 16               | False
 2002 | 0 22 11 6 23 -1 1 2 3 4 5 -1 1 16                   | False
 2003 | 0 22 11 6 0 18 -1 1 2 3 4 5 5 -1 1 16               | False
 2004 | 0 22 11 6 0 0 -1 1 2 3 4 5 5 -1 1 16                | False
 2005 | 0 22 11 6 18 -1 1 2 3 4 5 -1 1 16                   | False
 2006 | 0 22 11 6 18 0 -1 1 2 3 4 5 5 -1 1 16               | False
 2007 | 0 22 11 6 18 18 -1 1 2 3 4 5 5 -1 1 16              | False
 2008 | 0 22 11 6 6 0 -1 1 2 3 3 4 5 -1 1 17                | False
 2009 | 0 22 11 6 6 21 -1 1 2 3 3 4 5 -1 1 16               | False
 2010 | 0 22 11 6 6 21 0 -1 1 2 3 3 4 5 5 -1 1 16           | False
 2011 | 0 22 11 6 6 23 -1 1 2 3 3 4 5 -1 1 16               | False
 2012 | 0 22 11 6 6 0 18 -1 1 2 3 3 4 5 5 -1 1 16           | False
 2013 | 0 22 11 6 6 0 0 -1 1 2 3 3 4 5 5 -1 1 16            | False
 2014 | 0 22 11 6 6 18 -1 1 2 3 3 4 5 -1 1 16               | False
 2015 | 0 22 11 6 6 18 0 -1 1 2 3 3 4 5 5 -1 1 16           | False
 2016 | 0 22 11 6 6 18 18 -1 1 2 3 3 4 5 5 -1 1 16          | False
 2017 | 0 22 3 11 6 0 -1 1 2 3 3 4 5 -1 1 17                | False
 2018 | 0 22 3 11 6 21 -1 1 2 3 3 4 5 -1 1 16               | False
 2019 | 0 22 3 11 6 21 0 -1 1 2 3 3 4 5 5 -1 1 16           | False
 2020 | 0 22 3 11 6 23 -1 1 2 3 3 4 5 -1 1 16               | False
 2021 | 0 22 3 11 6 0 18 -1 1 2 3 3 4 5 5 -1 1 16           | False
 2022 | 0 22 3 11 6 0 0 -1 1 2 3 3 4 5 5 -1 1 16            | False
 2023 | 0 22 3 11 6 18 -1 1 2 3 3 4 5 -1 1 16               | False
 2024 | 0 22 3 11 6 18 0 -1 1 2 3 3 4 5 5 -1 1 16           | False
 2025 | 0 22 3 11 6 18 18 -1 1 2 3 3 4 5 5 -1 1 16          | False
 2026 | 0 22 3 11 6 6 0 -1 1 2 3 3 3 4 5 -1 1 17            | False
 2027 | 0 22 3 11 6 6 21 -1 1 2 3 3 3 4 5 -1 1 16           | False
 2028 | 0 22 3 11 6 6 21 0 -1 1 2 3 3 3 4 5 5 -1 1 16       | False
 2029 | 0 22 3 11 6 6 23 -1 1 2 3 3 3 4 5 -1 1 16           | False
 2030 | 0 22 3 11 6 6 0 18 -1 1 2 3 3 3 4 5 5 -1 1 16       | False
 2031 | 0 22 3 11 6 6 0 0 -1 1 2 3 3 3 4 5 5 -1 1 16        | False
 2032 | 0 22 3 11 6 6 18 -1 1 2 3 3 3 4 5 -1 1 16           | False
 2033 | 0 22 3 11 6 6 18 0 -1 1 2 3 3 3 4 5 5 -1 1 16       | False
 2034 | 0 22 3 11 6 6 18 18 -1 1 2 3 3 3 4 5 5 -1 1 16      | False
 2035 | 0 18 6 0 -1 1 1 4 5 -1 1 17                         | False
 2036 | 0 18 6 0 22 -1 1 1 4 5 7 -1 1 12                    | False
 2037 | 0 18 6 21 -1 1 1 4 5 -1 1 16                        | False
 2038 | 0 18 6 21 22 -1 1 1 4 5 7 -1 1 16                   | False
 2039 | 0 18 6 21 0 -1 1 1 4 5 5 -1 1 16                    | False
 2040 | 0 18 6 21 0 22 -1 1 1 4 5 5 7 -1 1 16               | False
 2041 | 0 18 6 23 -1 1 1 4 5 -1 1 16                        | False
 2042 | 0 18 6 23 22 -1 1 1 4 5 7 -1 1 16                   | False
 2043 | 0 18 6 0 18 -1 1 1 4 5 5 -1 1 16                    | False
 2044 | 0 18 6 0 18 22 -1 1 1 4 5 5 7 -1 1 16               | False
 2045 | 0 18 6 0 0 -1 1 1 4 5 5 -1 1 16                     | False
 2046 | 0 18 6 0 0 22 -1 1 1 4 5 5 7 -1 1 16                | False
 2047 | 0 18 6 18 -1 1 1 4 5 -1 1 16                        | False
 2048 | 0 18 6 18 22 -1 1 1 4 5 7 -1 1 16                   | False
 2049 | 0 18 6 18 0 -1 1 1 4 5 5 -1 1 16                    | False
 2471 | 25 6 21 0 -1 1 4 5 5 -1 1 16                        | False
 2050 | 0 18 6 18 0 22 -1 1 1 4 5 5 7 -1 1 16               | False
 2051 | 0 18 6 18 18 -1 1 1 4 5 5 -1 1 16                   | False
 2052 | 0 18 6 18 18 22 -1 1 1 4 5 5 7 -1 1 16              | False
 2053 | 0 18 6 6 0 -1 1 1 3 4 5 -1 1 17                     | False
 2054 | 0 18 6 6 0 22 -1 1 1 3 4 5 7 -1 1 12                | False
 2055 | 0 18 6 6 21 -1 1 1 3 4 5 -1 1 16                    | False
 2056 | 0 18 6 6 21 22 -1 1 1 3 4 5 7 -1 1 16               | False
 2057 | 0 18 6 6 21 0 -1 1 1 3 4 5 5 -1 1 16                | False
 2058 | 0 18 6 6 21 0 22 -1 1 1 3 4 5 5 7 -1 1 16           | False
 2059 | 0 18 6 6 23 -1 1 1 3 4 5 -1 1 16                    | False
 2060 | 0 18 6 6 23 22 -1 1 1 3 4 5 7 -1 1 16               | False
 2061 | 0 18 6 6 0 18 -1 1 1 3 4 5 5 -1 1 16                | False
 2062 | 0 18 6 6 0 18 22 -1 1 1 3 4 5 5 7 -1 1 16           | False
 2063 | 0 18 6 6 0 0 -1 1 1 3 4 5 5 -1 1 16                 | False
 2064 | 0 18 6 6 0 0 22 -1 1 1 3 4 5 5 7 -1 1 16            | False
 2065 | 0 18 6 6 18 -1 1 1 3 4 5 -1 1 16                    | False
 2066 | 0 18 6 6 18 22 -1 1 1 3 4 5 7 -1 1 16               | False
 2067 | 0 18 6 6 18 0 -1 1 1 3 4 5 5 -1 1 16                | False
 2068 | 0 18 6 6 18 0 22 -1 1 1 3 4 5 5 7 -1 1 16           | False
 2069 | 0 18 6 6 18 18 -1 1 1 3 4 5 5 -1 1 16               | False
 2070 | 0 18 6 6 18 18 22 -1 1 1 3 4 5 5 7 -1 1 16          | False
 2071 | 0 18 3 6 0 -1 1 1 3 4 5 -1 1 17                     | False
 2072 | 0 18 3 6 0 22 -1 1 1 3 4 5 7 -1 1 12                | False
 2073 | 0 18 3 6 21 -1 1 1 3 4 5 -1 1 16                    | False
 2074 | 0 18 3 6 21 22 -1 1 1 3 4 5 7 -1 1 16               | False
 2075 | 0 18 3 6 21 0 -1 1 1 3 4 5 5 -1 1 16                | False
 2076 | 0 18 3 6 21 0 22 -1 1 1 3 4 5 5 7 -1 1 16           | False
 2077 | 0 18 3 6 23 -1 1 1 3 4 5 -1 1 16                    | False
 2078 | 0 18 3 6 23 22 -1 1 1 3 4 5 7 -1 1 16               | False
 2079 | 0 18 3 6 0 18 -1 1 1 3 4 5 5 -1 1 16                | False
 2080 | 0 18 3 6 0 18 22 -1 1 1 3 4 5 5 7 -1 1 16           | False
 2081 | 0 18 3 6 0 0 -1 1 1 3 4 5 5 -1 1 16                 | False
 2082 | 0 18 3 6 0 0 22 -1 1 1 3 4 5 5 7 -1 1 16            | False
 2083 | 0 18 3 6 18 -1 1 1 3 4 5 -1 1 16                    | False
 2084 | 0 18 3 6 18 22 -1 1 1 3 4 5 7 -1 1 16               | False
 2085 | 0 18 3 6 18 0 -1 1 1 3 4 5 5 -1 1 16                | False
 2086 | 0 18 3 6 18 0 22 -1 1 1 3 4 5 5 7 -1 1 16           | False
 2087 | 0 18 3 6 18 18 -1 1 1 3 4 5 5 -1 1 16               | False
 2088 | 0 18 3 6 18 18 22 -1 1 1 3 4 5 5 7 -1 1 16          | False
 2089 | 0 18 3 6 6 0 -1 1 1 3 3 4 5 -1 1 17                 | False
 2090 | 0 18 3 6 6 0 22 -1 1 1 3 3 4 5 7 -1 1 12            | False
 2091 | 0 18 3 6 6 21 -1 1 1 3 3 4 5 -1 1 16                | False
 2092 | 0 18 3 6 6 21 22 -1 1 1 3 3 4 5 7 -1 1 16           | False
 2093 | 0 18 3 6 6 21 0 -1 1 1 3 3 4 5 5 -1 1 16            | False
 2094 | 0 18 3 6 6 21 0 22 -1 1 1 3 3 4 5 5 7 -1 1 16       | False
 2095 | 0 18 3 6 6 23 -1 1 1 3 3 4 5 -1 1 16                | False
 2096 | 0 18 3 6 6 23 22 -1 1 1 3 3 4 5 7 -1 1 16           | False
 2097 | 0 18 3 6 6 0 18 -1 1 1 3 3 4 5 5 -1 1 16            | False
 2098 | 0 18 3 6 6 0 18 22 -1 1 1 3 3 4 5 5 7 -1 1 16       | False
 2099 | 0 18 3 6 6 0 0 -1 1 1 3 3 4 5 5 -1 1 16             | False
 2100 | 0 18 3 6 6 0 0 22 -1 1 1 3 3 4 5 5 7 -1 1 16        | False
 2101 | 0 18 3 6 6 18 -1 1 1 3 3 4 5 -1 1 16                | False
 2102 | 0 18 3 6 6 18 22 -1 1 1 3 3 4 5 7 -1 1 16           | False
 2103 | 0 18 3 6 6 18 0 -1 1 1 3 3 4 5 5 -1 1 16            | False
 2104 | 0 18 3 6 6 18 0 22 -1 1 1 3 3 4 5 5 7 -1 1 16       | False
 2105 | 0 18 3 6 6 18 18 -1 1 1 3 3 4 5 5 -1 1 16           | False
 2106 | 0 18 3 6 6 18 18 22 -1 1 1 3 3 4 5 5 7 -1 1 16      | False
 2107 | 0 18 11 6 0 -1 1 1 3 4 5 -1 1 17                    | False
 2108 | 0 18 11 6 0 22 -1 1 1 3 4 5 7 -1 1 12               | False
 2109 | 0 18 11 6 21 -1 1 1 3 4 5 -1 1 16                   | False
 2110 | 0 18 11 6 21 22 -1 1 1 3 4 5 7 -1 1 16              | False
 2111 | 0 18 11 6 21 0 -1 1 1 3 4 5 5 -1 1 16               | False
 2112 | 0 18 11 6 21 0 22 -1 1 1 3 4 5 5 7 -1 1 16          | False
 2113 | 0 18 11 6 23 -1 1 1 3 4 5 -1 1 16                   | False
 2114 | 0 18 11 6 23 22 -1 1 1 3 4 5 7 -1 1 16              | False
 2115 | 0 18 11 6 0 18 -1 1 1 3 4 5 5 -1 1 16               | False
 2116 | 0 18 11 6 0 18 22 -1 1 1 3 4 5 5 7 -1 1 16          | False
 2117 | 0 18 11 6 0 0 -1 1 1 3 4 5 5 -1 1 16                | False
 2118 | 0 18 11 6 0 0 22 -1 1 1 3 4 5 5 7 -1 1 16           | False
 2119 | 0 18 11 6 18 -1 1 1 3 4 5 -1 1 16                   | False
 2120 | 0 18 11 6 18 22 -1 1 1 3 4 5 7 -1 1 16              | False
 2121 | 0 18 11 6 18 0 -1 1 1 3 4 5 5 -1 1 16               | False
 2122 | 0 18 11 6 18 0 22 -1 1 1 3 4 5 5 7 -1 1 16          | False
 2123 | 0 18 11 6 18 18 -1 1 1 3 4 5 5 -1 1 16              | False
 2124 | 0 18 11 6 18 18 22 -1 1 1 3 4 5 5 7 -1 1 16         | False
 2125 | 0 18 11 6 6 0 -1 1 1 3 3 4 5 -1 1 17                | False
 2126 | 0 18 11 6 6 0 22 -1 1 1 3 3 4 5 7 -1 1 12           | False
 2127 | 0 18 11 6 6 21 -1 1 1 3 3 4 5 -1 1 16               | False
 2128 | 0 18 11 6 6 21 22 -1 1 1 3 3 4 5 7 -1 1 16          | False
 2129 | 0 18 11 6 6 21 0 -1 1 1 3 3 4 5 5 -1 1 16           | False
 2130 | 0 18 11 6 6 21 0 22 -1 1 1 3 3 4 5 5 7 -1 1 16      | False
 2131 | 0 18 11 6 6 23 -1 1 1 3 3 4 5 -1 1 16               | False
 2132 | 0 18 11 6 6 23 22 -1 1 1 3 3 4 5 7 -1 1 16          | False
 2133 | 0 18 11 6 6 0 18 -1 1 1 3 3 4 5 5 -1 1 16           | False
 2134 | 0 18 11 6 6 0 18 22 -1 1 1 3 3 4 5 5 7 -1 1 16      | False
 2135 | 0 18 11 6 6 0 0 -1 1 1 3 3 4 5 5 -1 1 16            | False
 2136 | 0 18 11 6 6 0 0 22 -1 1 1 3 3 4 5 5 7 -1 1 16       | False
 2137 | 0 18 11 6 6 18 -1 1 1 3 3 4 5 -1 1 16               | False
 2138 | 0 18 11 6 6 18 22 -1 1 1 3 3 4 5 7 -1 1 16          | False
 2139 | 0 18 11 6 6 18 0 -1 1 1 3 3 4 5 5 -1 1 16           | False
 2140 | 0 18 11 6 6 18 0 22 -1 1 1 3 3 4 5 5 7 -1 1 16      | False
 2141 | 0 18 11 6 6 18 18 -1 1 1 3 3 4 5 5 -1 1 16          | False
 2142 | 0 18 11 6 6 18 18 22 -1 1 1 3 3 4 5 5 7 -1 1 16     | False
 2143 | 0 18 3 11 6 0 -1 1 1 3 3 4 5 -1 1 17                | False
 2144 | 0 18 3 11 6 0 22 -1 1 1 3 3 4 5 7 -1 1 12           | False
 2145 | 0 18 3 11 6 21 -1 1 1 3 3 4 5 -1 1 16               | False
 2146 | 0 18 3 11 6 21 22 -1 1 1 3 3 4 5 7 -1 1 16          | False
 2147 | 0 18 3 11 6 21 0 -1 1 1 3 3 4 5 5 -1 1 16           | False
 2148 | 0 18 3 11 6 21 0 22 -1 1 1 3 3 4 5 5 7 -1 1 16      | False
 2149 | 0 18 3 11 6 23 -1 1 1 3 3 4 5 -1 1 16               | False
 2150 | 0 18 3 11 6 23 22 -1 1 1 3 3 4 5 7 -1 1 16          | False
 2151 | 0 18 3 11 6 0 18 -1 1 1 3 3 4 5 5 -1 1 16           | False
 2152 | 0 18 3 11 6 0 18 22 -1 1 1 3 3 4 5 5 7 -1 1 16      | False
 2153 | 0 18 3 11 6 0 0 -1 1 1 3 3 4 5 5 -1 1 16            | False
 2154 | 0 18 3 11 6 0 0 22 -1 1 1 3 3 4 5 5 7 -1 1 16       | False
 2155 | 0 18 3 11 6 18 -1 1 1 3 3 4 5 -1 1 16               | False
 2156 | 0 18 3 11 6 18 22 -1 1 1 3 3 4 5 7 -1 1 16          | False
 2157 | 0 18 3 11 6 18 0 -1 1 1 3 3 4 5 5 -1 1 16           | False
 2158 | 0 18 3 11 6 18 0 22 -1 1 1 3 3 4 5 5 7 -1 1 16      | False
 2159 | 0 18 3 11 6 18 18 -1 1 1 3 3 4 5 5 -1 1 16          | False
 2160 | 0 18 3 11 6 18 18 22 -1 1 1 3 3 4 5 5 7 -1 1 16     | False
 2161 | 0 18 3 11 6 6 0 -1 1 1 3 3 3 4 5 -1 1 17            | False
 2162 | 0 18 3 11 6 6 0 22 -1 1 1 3 3 3 4 5 7 -1 1 12       | False
 2163 | 0 18 3 11 6 6 21 -1 1 1 3 3 3 4 5 -1 1 16           | False
 2164 | 0 18 3 11 6 6 21 22 -1 1 1 3 3 3 4 5 7 -1 1 16      | False
 2165 | 0 18 3 11 6 6 21 0 -1 1 1 3 3 3 4 5 5 -1 1 16       | False
 2166 | 0 18 3 11 6 6 21 0 22 -1 1 1 3 3 3 4 5 5 7 -1 1 16  | False
 2167 | 0 18 3 11 6 6 23 -1 1 1 3 3 3 4 5 -1 1 16           | False
 2168 | 0 18 3 11 6 6 23 22 -1 1 1 3 3 3 4 5 7 -1 1 16      | False
 2169 | 0 18 3 11 6 6 0 18 -1 1 1 3 3 3 4 5 5 -1 1 16       | False
 2170 | 0 18 3 11 6 6 0 18 22 -1 1 1 3 3 3 4 5 5 7 -1 1 16  | False
 2489 | 25 6 6 21 0 -1 1 3 4 5 5 -1 1 16                    | False
 2171 | 0 18 3 11 6 6 0 0 -1 1 1 3 3 3 4 5 5 -1 1 16        | False
 2172 | 0 18 3 11 6 6 0 0 22 -1 1 1 3 3 3 4 5 5 7 -1 1 16   | False
 2173 | 0 18 3 11 6 6 18 -1 1 1 3 3 3 4 5 -1 1 16           | False
 2174 | 0 18 3 11 6 6 18 22 -1 1 1 3 3 3 4 5 7 -1 1 16      | False
 2175 | 0 18 3 11 6 6 18 0 -1 1 1 3 3 3 4 5 5 -1 1 16       | False
 2176 | 0 18 3 11 6 6 18 0 22 -1 1 1 3 3 3 4 5 5 7 -1 1 16  | False
 2177 | 0 18 3 11 6 6 18 18 -1 1 1 3 3 3 4 5 5 -1 1 16      | False
 2178 | 0 18 3 11 6 6 18 18 22 -1 1 1 3 3 3 4 5 5 7 -1 1 16 | False
 2179 | 0 18 22 6 0 -1 1 1 2 4 5 -1 1 17                    | False
 2180 | 0 18 22 6 21 -1 1 1 2 4 5 -1 1 16                   | False
 2181 | 0 18 22 6 21 0 -1 1 1 2 4 5 5 -1 1 16               | False
 2182 | 0 18 22 6 23 -1 1 1 2 4 5 -1 1 16                   | False
 2183 | 0 18 22 6 0 18 -1 1 1 2 4 5 5 -1 1 16               | False
 2184 | 0 18 22 6 0 0 -1 1 1 2 4 5 5 -1 1 16                | False
 2185 | 0 18 22 6 18 -1 1 1 2 4 5 -1 1 16                   | False
 2186 | 0 18 22 6 18 0 -1 1 1 2 4 5 5 -1 1 16               | False
 2187 | 0 18 22 6 18 18 -1 1 1 2 4 5 5 -1 1 16              | False
 2188 | 0 18 22 6 6 0 -1 1 1 2 3 4 5 -1 1 17                | False
 2189 | 0 18 22 6 6 21 -1 1 1 2 3 4 5 -1 1 16               | False
 2190 | 0 18 22 6 6 21 0 -1 1 1 2 3 4 5 5 -1 1 16           | False
 2191 | 0 18 22 6 6 23 -1 1 1 2 3 4 5 -1 1 16               | False
 2192 | 0 18 22 6 6 0 18 -1 1 1 2 3 4 5 5 -1 1 16           | False
 2193 | 0 18 22 6 6 0 0 -1 1 1 2 3 4 5 5 -1 1 16            | False
 2194 | 0 18 22 6 6 18 -1 1 1 2 3 4 5 -1 1 16               | False
 2195 | 0 18 22 6 6 18 0 -1 1 1 2 3 4 5 5 -1 1 16           | False
 2196 | 0 18 22 6 6 18 18 -1 1 1 2 3 4 5 5 -1 1 16          | False
 2197 | 0 18 22 3 6 0 -1 1 1 2 3 4 5 -1 1 17                | False
 2198 | 0 18 22 3 6 21 -1 1 1 2 3 4 5 -1 1 16               | False
 2199 | 0 18 22 3 6 21 0 -1 1 1 2 3 4 5 5 -1 1 16           | False
 2200 | 0 18 22 3 6 23 -1 1 1 2 3 4 5 -1 1 16               | False
 2201 | 0 18 22 3 6 0 18 -1 1 1 2 3 4 5 5 -1 1 16           | False
 2202 | 0 18 22 3 6 0 0 -1 1 1 2 3 4 5 5 -1 1 16            | False
 2203 | 0 18 22 3 6 18 -1 1 1 2 3 4 5 -1 1 16               | False
 2204 | 0 18 22 3 6 18 0 -1 1 1 2 3 4 5 5 -1 1 16           | False
 2205 | 0 18 22 3 6 18 18 -1 1 1 2 3 4 5 5 -1 1 16          | False
 2206 | 0 18 22 3 6 6 0 -1 1 1 2 3 3 4 5 -1 1 17            | False
 2207 | 0 18 22 3 6 6 21 -1 1 1 2 3 3 4 5 -1 1 16           | False
 2208 | 0 18 22 3 6 6 21 0 -1 1 1 2 3 3 4 5 5 -1 1 16       | False
 2209 | 0 18 22 3 6 6 23 -1 1 1 2 3 3 4 5 -1 1 16           | False
 2210 | 0 18 22 3 6 6 0 18 -1 1 1 2 3 3 4 5 5 -1 1 16       | False
 2211 | 0 18 22 3 6 6 0 0 -1 1 1 2 3 3 4 5 5 -1 1 16        | False
 2212 | 0 18 22 3 6 6 18 -1 1 1 2 3 3 4 5 -1 1 16           | False
 2213 | 0 18 22 3 6 6 18 0 -1 1 1 2 3 3 4 5 5 -1 1 16       | False
 2214 | 0 18 22 3 6 6 18 18 -1 1 1 2 3 3 4 5 5 -1 1 16      | False
 2215 | 0 18 22 11 6 0 -1 1 1 2 3 4 5 -1 1 17               | False
 2216 | 0 18 22 11 6 21 -1 1 1 2 3 4 5 -1 1 16              | False
 2217 | 0 18 22 11 6 21 0 -1 1 1 2 3 4 5 5 -1 1 16          | False
 2218 | 0 18 22 11 6 23 -1 1 1 2 3 4 5 -1 1 16              | False
 2219 | 0 18 22 11 6 0 18 -1 1 1 2 3 4 5 5 -1 1 16          | False
 2220 | 0 18 22 11 6 0 0 -1 1 1 2 3 4 5 5 -1 1 16           | False
 2221 | 0 18 22 11 6 18 -1 1 1 2 3 4 5 -1 1 16              | False
 2222 | 0 18 22 11 6 18 0 -1 1 1 2 3 4 5 5 -1 1 16          | False
 2223 | 0 18 22 11 6 18 18 -1 1 1 2 3 4 5 5 -1 1 16         | False
 2224 | 0 18 22 11 6 6 0 -1 1 1 2 3 3 4 5 -1 1 17           | False
 2225 | 0 18 22 11 6 6 21 -1 1 1 2 3 3 4 5 -1 1 16          | False
 2226 | 0 18 22 11 6 6 21 0 -1 1 1 2 3 3 4 5 5 -1 1 16      | False
 2227 | 0 18 22 11 6 6 23 -1 1 1 2 3 3 4 5 -1 1 16          | False
 2228 | 0 18 22 11 6 6 0 18 -1 1 1 2 3 3 4 5 5 -1 1 16      | False
 2229 | 0 18 22 11 6 6 0 0 -1 1 1 2 3 3 4 5 5 -1 1 16       | False
 2230 | 0 18 22 11 6 6 18 -1 1 1 2 3 3 4 5 -1 1 16          | False
 2231 | 0 18 22 11 6 6 18 0 -1 1 1 2 3 3 4 5 5 -1 1 16      | False
 2232 | 0 18 22 11 6 6 18 18 -1 1 1 2 3 3 4 5 5 -1 1 16     | False
 2233 | 0 18 22 3 11 6 0 -1 1 1 2 3 3 4 5 -1 1 17           | False
 2234 | 0 18 22 3 11 6 21 -1 1 1 2 3 3 4 5 -1 1 16          | False
 2235 | 0 18 22 3 11 6 21 0 -1 1 1 2 3 3 4 5 5 -1 1 16      | False
 2236 | 0 18 22 3 11 6 23 -1 1 1 2 3 3 4 5 -1 1 16          | False
 2237 | 0 18 22 3 11 6 0 18 -1 1 1 2 3 3 4 5 5 -1 1 16      | False
 2238 | 0 18 22 3 11 6 0 0 -1 1 1 2 3 3 4 5 5 -1 1 16       | False
 2239 | 0 18 22 3 11 6 18 -1 1 1 2 3 3 4 5 -1 1 16          | False
 2240 | 0 18 22 3 11 6 18 0 -1 1 1 2 3 3 4 5 5 -1 1 16      | False
 2241 | 0 18 22 3 11 6 18 18 -1 1 1 2 3 3 4 5 5 -1 1 16     | False
 2242 | 0 18 22 3 11 6 6 0 -1 1 1 2 3 3 3 4 5 -1 1 17       | False
 2243 | 0 18 22 3 11 6 6 21 -1 1 1 2 3 3 3 4 5 -1 1 16      | False
 2244 | 0 18 22 3 11 6 6 21 0 -1 1 1 2 3 3 3 4 5 5 -1 1 16  | False
 2245 | 0 18 22 3 11 6 6 23 -1 1 1 2 3 3 3 4 5 -1 1 16      | False
 2246 | 0 18 22 3 11 6 6 0 18 -1 1 1 2 3 3 3 4 5 5 -1 1 16  | False
 2247 | 0 18 22 3 11 6 6 0 0 -1 1 1 2 3 3 3 4 5 5 -1 1 16   | False
 2248 | 0 18 22 3 11 6 6 18 -1 1 1 2 3 3 3 4 5 -1 1 16      | False
 2249 | 0 18 22 3 11 6 6 18 0 -1 1 1 2 3 3 3 4 5 5 -1 1 16  | False
 2250 | 0 18 22 3 11 6 6 18 18 -1 1 1 2 3 3 3 4 5 5 -1 1 16 | False
 2251 | 0 25 6 0 -1 1 1 4 5 -1 1 17                         | False
 2252 | 0 25 6 0 22 -1 1 1 4 5 7 -1 1 12                    | False
 2253 | 0 25 6 21 -1 1 1 4 5 -1 1 16                        | False
 2254 | 0 25 6 21 22 -1 1 1 4 5 7 -1 1 16                   | False
 2255 | 0 25 6 21 0 -1 1 1 4 5 5 -1 1 16                    | False
 2256 | 0 25 6 21 0 22 -1 1 1 4 5 5 7 -1 1 16               | False
 2257 | 0 25 6 23 -1 1 1 4 5 -1 1 16                        | False
 2258 | 0 25 6 23 22 -1 1 1 4 5 7 -1 1 16                   | False
 2259 | 0 25 6 0 18 -1 1 1 4 5 5 -1 1 16                    | False
 2260 | 0 25 6 0 18 22 -1 1 1 4 5 5 7 -1 1 16               | False
 2261 | 0 25 6 0 0 -1 1 1 4 5 5 -1 1 16                     | False
 2262 | 0 25 6 0 0 22 -1 1 1 4 5 5 7 -1 1 16                | False
 2263 | 0 25 6 18 -1 1 1 4 5 -1 1 16                        | False
 2264 | 0 25 6 18 22 -1 1 1 4 5 7 -1 1 16                   | False
 2265 | 0 25 6 18 0 -1 1 1 4 5 5 -1 1 16                    | False
 2266 | 0 25 6 18 0 22 -1 1 1 4 5 5 7 -1 1 16               | False
 2267 | 0 25 6 18 18 -1 1 1 4 5 5 -1 1 16                   | False
 2268 | 0 25 6 18 18 22 -1 1 1 4 5 5 7 -1 1 16              | False
 2269 | 0 25 6 6 0 -1 1 1 3 4 5 -1 1 17                     | False
 2270 | 0 25 6 6 0 22 -1 1 1 3 4 5 7 -1 1 12                | False
 2271 | 0 25 6 6 21 -1 1 1 3 4 5 -1 1 16                    | False
 2272 | 0 25 6 6 21 22 -1 1 1 3 4 5 7 -1 1 16               | False
 2273 | 0 25 6 6 21 0 -1 1 1 3 4 5 5 -1 1 16                | False
 2274 | 0 25 6 6 21 0 22 -1 1 1 3 4 5 5 7 -1 1 16           | False
 2275 | 0 25 6 6 23 -1 1 1 3 4 5 -1 1 16                    | False
 2276 | 0 25 6 6 23 22 -1 1 1 3 4 5 7 -1 1 16               | False
 2277 | 0 25 6 6 0 18 -1 1 1 3 4 5 5 -1 1 16                | False
 2278 | 0 25 6 6 0 18 22 -1 1 1 3 4 5 5 7 -1 1 16           | False
 2279 | 0 25 6 6 0 0 -1 1 1 3 4 5 5 -1 1 16                 | False
 2280 | 0 25 6 6 0 0 22 -1 1 1 3 4 5 5 7 -1 1 16            | False
 2281 | 0 25 6 6 18 -1 1 1 3 4 5 -1 1 16                    | False
 2282 | 0 25 6 6 18 22 -1 1 1 3 4 5 7 -1 1 16               | False
 2283 | 0 25 6 6 18 0 -1 1 1 3 4 5 5 -1 1 16                | False
 2284 | 0 25 6 6 18 0 22 -1 1 1 3 4 5 5 7 -1 1 16           | False
 2285 | 0 25 6 6 18 18 -1 1 1 3 4 5 5 -1 1 16               | False
 2286 | 0 25 6 6 18 18 22 -1 1 1 3 4 5 5 7 -1 1 16          | False
 2287 | 0 25 3 6 0 -1 1 1 3 4 5 -1 1 17                     | False
 2288 | 0 25 3 6 0 22 -1 1 1 3 4 5 7 -1 1 12                | False
 2289 | 0 25 3 6 21 -1 1 1 3 4 5 -1 1 16                    | False
 2290 | 0 25 3 6 21 22 -1 1 1 3 4 5 7 -1 1 16               | False
 2291 | 0 25 3 6 21 0 -1 1 1 3 4 5 5 -1 1 16                | False
 2292 | 0 25 3 6 21 0 22 -1 1 1 3 4 5 5 7 -1 1 16           | False
 2293 | 0 25 3 6 23 -1 1 1 3 4 5 -1 1 16                    | False
 2294 | 0 25 3 6 23 22 -1 1 1 3 4 5 7 -1 1 16               | False
 2295 | 0 25 3 6 0 18 -1 1 1 3 4 5 5 -1 1 16                | False
 2296 | 0 25 3 6 0 18 22 -1 1 1 3 4 5 5 7 -1 1 16           | False
 2297 | 0 25 3 6 0 0 -1 1 1 3 4 5 5 -1 1 16                 | False
 2298 | 0 25 3 6 0 0 22 -1 1 1 3 4 5 5 7 -1 1 16            | False
 2299 | 0 25 3 6 18 -1 1 1 3 4 5 -1 1 16                    | False
 2300 | 0 25 3 6 18 22 -1 1 1 3 4 5 7 -1 1 16               | False
 2301 | 0 25 3 6 18 0 -1 1 1 3 4 5 5 -1 1 16                | False
 2302 | 0 25 3 6 18 0 22 -1 1 1 3 4 5 5 7 -1 1 16           | False
 2303 | 0 25 3 6 18 18 -1 1 1 3 4 5 5 -1 1 16               | False
 2304 | 0 25 3 6 18 18 22 -1 1 1 3 4 5 5 7 -1 1 16          | False
 2305 | 0 25 3 6 6 0 -1 1 1 3 3 4 5 -1 1 17                 | False
 2306 | 0 25 3 6 6 0 22 -1 1 1 3 3 4 5 7 -1 1 12            | False
 2307 | 0 25 3 6 6 21 -1 1 1 3 3 4 5 -1 1 16                | False
 2308 | 0 25 3 6 6 21 22 -1 1 1 3 3 4 5 7 -1 1 16           | False
 2309 | 0 25 3 6 6 21 0 -1 1 1 3 3 4 5 5 -1 1 16            | False
 2310 | 0 25 3 6 6 21 0 22 -1 1 1 3 3 4 5 5 7 -1 1 16       | False
 2311 | 0 25 3 6 6 23 -1 1 1 3 3 4 5 -1 1 16                | False
 2312 | 0 25 3 6 6 23 22 -1 1 1 3 3 4 5 7 -1 1 16           | False
 2313 | 0 25 3 6 6 0 18 -1 1 1 3 3 4 5 5 -1 1 16            | False
 2314 | 0 25 3 6 6 0 18 22 -1 1 1 3 3 4 5 5 7 -1 1 16       | False
 2315 | 0 25 3 6 6 0 0 -1 1 1 3 3 4 5 5 -1 1 16             | False
 2316 | 0 25 3 6 6 0 0 22 -1 1 1 3 3 4 5 5 7 -1 1 16        | False
 2317 | 0 25 3 6 6 18 -1 1 1 3 3 4 5 -1 1 16                | False
 2318 | 0 25 3 6 6 18 22 -1 1 1 3 3 4 5 7 -1 1 16           | False
 2319 | 0 25 3 6 6 18 0 -1 1 1 3 3 4 5 5 -1 1 16            | False
 2320 | 0 25 3 6 6 18 0 22 -1 1 1 3 3 4 5 5 7 -1 1 16       | False
 2321 | 0 25 3 6 6 18 18 -1 1 1 3 3 4 5 5 -1 1 16           | False
 2322 | 0 25 3 6 6 18 18 22 -1 1 1 3 3 4 5 5 7 -1 1 16      | False
 2323 | 0 25 11 6 0 -1 1 1 3 4 5 -1 1 17                    | False
 2324 | 0 25 11 6 0 22 -1 1 1 3 4 5 7 -1 1 12               | False
 2325 | 0 25 11 6 21 -1 1 1 3 4 5 -1 1 16                   | False
 2326 | 0 25 11 6 21 22 -1 1 1 3 4 5 7 -1 1 16              | False
 2327 | 0 25 11 6 21 0 -1 1 1 3 4 5 5 -1 1 16               | False
 2328 | 0 25 11 6 21 0 22 -1 1 1 3 4 5 5 7 -1 1 16          | False
 2329 | 0 25 11 6 23 -1 1 1 3 4 5 -1 1 16                   | False
 2330 | 0 25 11 6 23 22 -1 1 1 3 4 5 7 -1 1 16              | False
 2331 | 0 25 11 6 0 18 -1 1 1 3 4 5 5 -1 1 16               | False
 2332 | 0 25 11 6 0 18 22 -1 1 1 3 4 5 5 7 -1 1 16          | False
 2333 | 0 25 11 6 0 0 -1 1 1 3 4 5 5 -1 1 16                | False
 2334 | 0 25 11 6 0 0 22 -1 1 1 3 4 5 5 7 -1 1 16           | False
 2335 | 0 25 11 6 18 -1 1 1 3 4 5 -1 1 16                   | False
 2336 | 0 25 11 6 18 22 -1 1 1 3 4 5 7 -1 1 16              | False
 2337 | 0 25 11 6 18 0 -1 1 1 3 4 5 5 -1 1 16               | False
 2338 | 0 25 11 6 18 0 22 -1 1 1 3 4 5 5 7 -1 1 16          | False
 2339 | 0 25 11 6 18 18 -1 1 1 3 4 5 5 -1 1 16              | False
 2340 | 0 25 11 6 18 18 22 -1 1 1 3 4 5 5 7 -1 1 16         | False
 2341 | 0 25 11 6 6 0 -1 1 1 3 3 4 5 -1 1 17                | False
 2342 | 0 25 11 6 6 0 22 -1 1 1 3 3 4 5 7 -1 1 12           | False
 2343 | 0 25 11 6 6 21 -1 1 1 3 3 4 5 -1 1 16               | False
 2344 | 0 25 11 6 6 21 22 -1 1 1 3 3 4 5 7 -1 1 16          | False
 2345 | 0 25 11 6 6 21 0 -1 1 1 3 3 4 5 5 -1 1 16           | False
 2346 | 0 25 11 6 6 21 0 22 -1 1 1 3 3 4 5 5 7 -1 1 16      | False
 2347 | 0 25 11 6 6 23 -1 1 1 3 3 4 5 -1 1 16               | False
 2348 | 0 25 11 6 6 23 22 -1 1 1 3 3 4 5 7 -1 1 16          | False
 2349 | 0 25 11 6 6 0 18 -1 1 1 3 3 4 5 5 -1 1 16           | False
 2350 | 0 25 11 6 6 0 18 22 -1 1 1 3 3 4 5 5 7 -1 1 16      | False
 2351 | 0 25 11 6 6 0 0 -1 1 1 3 3 4 5 5 -1 1 16            | False
 2352 | 0 25 11 6 6 0 0 22 -1 1 1 3 3 4 5 5 7 -1 1 16       | False
 2353 | 0 25 11 6 6 18 -1 1 1 3 3 4 5 -1 1 16               | False
 2354 | 0 25 11 6 6 18 22 -1 1 1 3 3 4 5 7 -1 1 16          | False
 2355 | 0 25 11 6 6 18 0 -1 1 1 3 3 4 5 5 -1 1 16           | False
 2356 | 0 25 11 6 6 18 0 22 -1 1 1 3 3 4 5 5 7 -1 1 16      | False
 2357 | 0 25 11 6 6 18 18 -1 1 1 3 3 4 5 5 -1 1 16          | False
 2358 | 0 25 11 6 6 18 18 22 -1 1 1 3 3 4 5 5 7 -1 1 16     | False
 2359 | 0 25 3 11 6 0 -1 1 1 3 3 4 5 -1 1 17                | False
 2360 | 0 25 3 11 6 0 22 -1 1 1 3 3 4 5 7 -1 1 12           | False
 2361 | 0 25 3 11 6 21 -1 1 1 3 3 4 5 -1 1 16               | False
 2362 | 0 25 3 11 6 21 22 -1 1 1 3 3 4 5 7 -1 1 16          | False
 2363 | 0 25 3 11 6 21 0 -1 1 1 3 3 4 5 5 -1 1 16           | False
 2364 | 0 25 3 11 6 21 0 22 -1 1 1 3 3 4 5 5 7 -1 1 16      | False
 2365 | 0 25 3 11 6 23 -1 1 1 3 3 4 5 -1 1 16               | False
 2366 | 0 25 3 11 6 23 22 -1 1 1 3 3 4 5 7 -1 1 16          | False
 2367 | 0 25 3 11 6 0 18 -1 1 1 3 3 4 5 5 -1 1 16           | False
 2368 | 0 25 3 11 6 0 18 22 -1 1 1 3 3 4 5 5 7 -1 1 16      | False
 2369 | 0 25 3 11 6 0 0 -1 1 1 3 3 4 5 5 -1 1 16            | False
 2370 | 0 25 3 11 6 0 0 22 -1 1 1 3 3 4 5 5 7 -1 1 16       | False
 2371 | 0 25 3 11 6 18 -1 1 1 3 3 4 5 -1 1 16               | False
 2372 | 0 25 3 11 6 18 22 -1 1 1 3 3 4 5 7 -1 1 16          | False
 2373 | 0 25 3 11 6 18 0 -1 1 1 3 3 4 5 5 -1 1 16           | False
 2374 | 0 25 3 11 6 18 0 22 -1 1 1 3 3 4 5 5 7 -1 1 16      | False
 2375 | 0 25 3 11 6 18 18 -1 1 1 3 3 4 5 5 -1 1 16          | False
 2376 | 0 25 3 11 6 18 18 22 -1 1 1 3 3 4 5 5 7 -1 1 16     | False
 2377 | 0 25 3 11 6 6 0 -1 1 1 3 3 3 4 5 -1 1 17            | False
 2378 | 0 25 3 11 6 6 0 22 -1 1 1 3 3 3 4 5 7 -1 1 12       | False
 2379 | 0 25 3 11 6 6 21 -1 1 1 3 3 3 4 5 -1 1 16           | False
 2380 | 0 25 3 11 6 6 21 22 -1 1 1 3 3 3 4 5 7 -1 1 16      | False
 2381 | 0 25 3 11 6 6 21 0 -1 1 1 3 3 3 4 5 5 -1 1 16       | False
 2382 | 0 25 3 11 6 6 21 0 22 -1 1 1 3 3 3 4 5 5 7 -1 1 16  | False
 2383 | 0 25 3 11 6 6 23 -1 1 1 3 3 3 4 5 -1 1 16           | False
 2384 | 0 25 3 11 6 6 23 22 -1 1 1 3 3 3 4 5 7 -1 1 16      | False
 2385 | 0 25 3 11 6 6 0 18 -1 1 1 3 3 3 4 5 5 -1 1 16       | False
 2386 | 0 25 3 11 6 6 0 18 22 -1 1 1 3 3 3 4 5 5 7 -1 1 16  | False
 2387 | 0 25 3 11 6 6 0 0 -1 1 1 3 3 3 4 5 5 -1 1 16        | False
 2388 | 0 25 3 11 6 6 0 0 22 -1 1 1 3 3 3 4 5 5 7 -1 1 16   | False
 2389 | 0 25 3 11 6 6 18 -1 1 1 3 3 3 4 5 -1 1 16           | False
 2390 | 0 25 3 11 6 6 18 22 -1 1 1 3 3 3 4 5 7 -1 1 16      | False
 2391 | 0 25 3 11 6 6 18 0 -1 1 1 3 3 3 4 5 5 -1 1 16       | False
 2392 | 0 25 3 11 6 6 18 0 22 -1 1 1 3 3 3 4 5 5 7 -1 1 16  | False
 2393 | 0 25 3 11 6 6 18 18 -1 1 1 3 3 3 4 5 5 -1 1 16      | False
 2394 | 0 25 3 11 6 6 18 18 22 -1 1 1 3 3 3 4 5 5 7 -1 1 16 | False
 2395 | 0 25 22 6 0 -1 1 1 2 4 5 -1 1 17                    | False
 2396 | 0 25 22 6 21 -1 1 1 2 4 5 -1 1 16                   | False
 2397 | 0 25 22 6 21 0 -1 1 1 2 4 5 5 -1 1 16               | False
 2398 | 0 25 22 6 23 -1 1 1 2 4 5 -1 1 16                   | False
 2399 | 0 25 22 6 0 18 -1 1 1 2 4 5 5 -1 1 16               | False
 2400 | 0 25 22 6 0 0 -1 1 1 2 4 5 5 -1 1 16                | False
 2401 | 0 25 22 6 18 -1 1 1 2 4 5 -1 1 16                   | False
 2402 | 0 25 22 6 18 0 -1 1 1 2 4 5 5 -1 1 16               | False
 2403 | 0 25 22 6 18 18 -1 1 1 2 4 5 5 -1 1 16              | False
 2404 | 0 25 22 6 6 0 -1 1 1 2 3 4 5 -1 1 17                | False
 2405 | 0 25 22 6 6 21 -1 1 1 2 3 4 5 -1 1 16               | False
 2406 | 0 25 22 6 6 21 0 -1 1 1 2 3 4 5 5 -1 1 16           | False
 2407 | 0 25 22 6 6 23 -1 1 1 2 3 4 5 -1 1 16               | False
 2408 | 0 25 22 6 6 0 18 -1 1 1 2 3 4 5 5 -1 1 16           | False
 2409 | 0 25 22 6 6 0 0 -1 1 1 2 3 4 5 5 -1 1 16            | False
 2410 | 0 25 22 6 6 18 -1 1 1 2 3 4 5 -1 1 16               | False
 2411 | 0 25 22 6 6 18 0 -1 1 1 2 3 4 5 5 -1 1 16           | False
 2412 | 0 25 22 6 6 18 18 -1 1 1 2 3 4 5 5 -1 1 16          | False
 2413 | 0 25 22 3 6 0 -1 1 1 2 3 4 5 -1 1 17                | False
 2414 | 0 25 22 3 6 21 -1 1 1 2 3 4 5 -1 1 16               | False
 2415 | 0 25 22 3 6 21 0 -1 1 1 2 3 4 5 5 -1 1 16           | False
 2416 | 0 25 22 3 6 23 -1 1 1 2 3 4 5 -1 1 16               | False
 2417 | 0 25 22 3 6 0 18 -1 1 1 2 3 4 5 5 -1 1 16           | False
 2418 | 0 25 22 3 6 0 0 -1 1 1 2 3 4 5 5 -1 1 16            | False
 2419 | 0 25 22 3 6 18 -1 1 1 2 3 4 5 -1 1 16               | False
 2420 | 0 25 22 3 6 18 0 -1 1 1 2 3 4 5 5 -1 1 16           | False
 2421 | 0 25 22 3 6 18 18 -1 1 1 2 3 4 5 5 -1 1 16          | False
 2422 | 0 25 22 3 6 6 0 -1 1 1 2 3 3 4 5 -1 1 17            | False
 2423 | 0 25 22 3 6 6 21 -1 1 1 2 3 3 4 5 -1 1 16           | False
 2424 | 0 25 22 3 6 6 21 0 -1 1 1 2 3 3 4 5 5 -1 1 16       | False
 2425 | 0 25 22 3 6 6 23 -1 1 1 2 3 3 4 5 -1 1 16           | False
 2426 | 0 25 22 3 6 6 0 18 -1 1 1 2 3 3 4 5 5 -1 1 16       | False
 2427 | 0 25 22 3 6 6 0 0 -1 1 1 2 3 3 4 5 5 -1 1 16        | False
 2428 | 0 25 22 3 6 6 18 -1 1 1 2 3 3 4 5 -1 1 16           | False
 2429 | 0 25 22 3 6 6 18 0 -1 1 1 2 3 3 4 5 5 -1 1 16       | False
 2430 | 0 25 22 3 6 6 18 18 -1 1 1 2 3 3 4 5 5 -1 1 16      | False
 2431 | 0 25 22 11 6 0 -1 1 1 2 3 4 5 -1 1 17               | False
 2432 | 0 25 22 11 6 21 -1 1 1 2 3 4 5 -1 1 16              | False
 2433 | 0 25 22 11 6 21 0 -1 1 1 2 3 4 5 5 -1 1 16          | False
 2434 | 0 25 22 11 6 23 -1 1 1 2 3 4 5 -1 1 16              | False
 2435 | 0 25 22 11 6 0 18 -1 1 1 2 3 4 5 5 -1 1 16          | False
 2436 | 0 25 22 11 6 0 0 -1 1 1 2 3 4 5 5 -1 1 16           | False
 2437 | 0 25 22 11 6 18 -1 1 1 2 3 4 5 -1 1 16              | False
 2438 | 0 25 22 11 6 18 0 -1 1 1 2 3 4 5 5 -1 1 16          | False
 2439 | 0 25 22 11 6 18 18 -1 1 1 2 3 4 5 5 -1 1 16         | False
 2440 | 0 25 22 11 6 6 0 -1 1 1 2 3 3 4 5 -1 1 17           | False
 2441 | 0 25 22 11 6 6 21 -1 1 1 2 3 3 4 5 -1 1 16          | False
 2442 | 0 25 22 11 6 6 21 0 -1 1 1 2 3 3 4 5 5 -1 1 16      | False
 2443 | 0 25 22 11 6 6 23 -1 1 1 2 3 3 4 5 -1 1 16          | False
 2444 | 0 25 22 11 6 6 0 18 -1 1 1 2 3 3 4 5 5 -1 1 16      | False
 2445 | 0 25 22 11 6 6 0 0 -1 1 1 2 3 3 4 5 5 -1 1 16       | False
 2446 | 0 25 22 11 6 6 18 -1 1 1 2 3 3 4 5 -1 1 16          | False
 2447 | 0 25 22 11 6 6 18 0 -1 1 1 2 3 3 4 5 5 -1 1 16      | False
 2448 | 0 25 22 11 6 6 18 18 -1 1 1 2 3 3 4 5 5 -1 1 16     | False
 2449 | 0 25 22 3 11 6 0 -1 1 1 2 3 3 4 5 -1 1 17           | False
 2450 | 0 25 22 3 11 6 21 -1 1 1 2 3 3 4 5 -1 1 16          | False
 2451 | 0 25 22 3 11 6 21 0 -1 1 1 2 3 3 4 5 5 -1 1 16      | False
 2452 | 0 25 22 3 11 6 23 -1 1 1 2 3 3 4 5 -1 1 16          | False
 2453 | 0 25 22 3 11 6 0 18 -1 1 1 2 3 3 4 5 5 -1 1 16      | False
 2454 | 0 25 22 3 11 6 0 0 -1 1 1 2 3 3 4 5 5 -1 1 16       | False
 2455 | 0 25 22 3 11 6 18 -1 1 1 2 3 3 4 5 -1 1 16          | False
 2456 | 0 25 22 3 11 6 18 0 -1 1 1 2 3 3 4 5 5 -1 1 16      | False
 2457 | 0 25 22 3 11 6 18 18 -1 1 1 2 3 3 4 5 5 -1 1 16     | False
 2458 | 0 25 22 3 11 6 6 0 -1 1 1 2 3 3 3 4 5 -1 1 17       | False
 2459 | 0 25 22 3 11 6 6 21 -1 1 1 2 3 3 3 4 5 -1 1 16      | False
 2460 | 0 25 22 3 11 6 6 21 0 -1 1 1 2 3 3 3 4 5 5 -1 1 16  | False
 2461 | 0 25 22 3 11 6 6 23 -1 1 1 2 3 3 3 4 5 -1 1 16      | False
 2462 | 0 25 22 3 11 6 6 0 18 -1 1 1 2 3 3 3 4 5 5 -1 1 16  | False
 2463 | 0 25 22 3 11 6 6 0 0 -1 1 1 2 3 3 3 4 5 5 -1 1 16   | False
 2464 | 0 25 22 3 11 6 6 18 -1 1 1 2 3 3 3 4 5 -1 1 16      | False
 2465 | 0 25 22 3 11 6 6 18 0 -1 1 1 2 3 3 3 4 5 5 -1 1 16  | False
 2466 | 0 25 22 3 11 6 6 18 18 -1 1 1 2 3 3 3 4 5 5 -1 1 16 | False
 2467 | 25 6 0 -1 1 4 5 -1 1 17                             | False
 2468 | 25 6 0 22 -1 1 4 5 7 -1 1 12                        | False
 2469 | 25 6 21 -1 1 4 5 -1 1 16                            | False
 2470 | 25 6 21 22 -1 1 4 5 7 -1 1 16                       | False
 2472 | 25 6 21 0 22 -1 1 4 5 5 7 -1 1 16                   | False
 2473 | 25 6 23 -1 1 4 5 -1 1 16                            | False
 2474 | 25 6 23 22 -1 1 4 5 7 -1 1 16                       | False
 2475 | 25 6 0 18 -1 1 4 5 5 -1 1 16                        | False
 2476 | 25 6 0 18 22 -1 1 4 5 5 7 -1 1 16                   | False
 2477 | 25 6 0 0 -1 1 4 5 5 -1 1 16                         | False
 2478 | 25 6 0 0 22 -1 1 4 5 5 7 -1 1 16                    | False
 2479 | 25 6 18 -1 1 4 5 -1 1 16                            | False
 2480 | 25 6 18 22 -1 1 4 5 7 -1 1 16                       | False
 2481 | 25 6 18 0 -1 1 4 5 5 -1 1 16                        | False
 2482 | 25 6 18 0 22 -1 1 4 5 5 7 -1 1 16                   | False
 2483 | 25 6 18 18 -1 1 4 5 5 -1 1 16                       | False
 2484 | 25 6 18 18 22 -1 1 4 5 5 7 -1 1 16                  | False
 2485 | 25 6 6 0 -1 1 3 4 5 -1 1 17                         | False
 2486 | 25 6 6 0 22 -1 1 3 4 5 7 -1 1 12                    | False
 2487 | 25 6 6 21 -1 1 3 4 5 -1 1 16                        | False
 2488 | 25 6 6 21 22 -1 1 3 4 5 7 -1 1 16                   | False
 2490 | 25 6 6 21 0 22 -1 1 3 4 5 5 7 -1 1 16               | False
 2491 | 25 6 6 23 -1 1 3 4 5 -1 1 16                        | False
 2492 | 25 6 6 23 22 -1 1 3 4 5 7 -1 1 16                   | False
 2493 | 25 6 6 0 18 -1 1 3 4 5 5 -1 1 16                    | False
 2494 | 25 6 6 0 18 22 -1 1 3 4 5 5 7 -1 1 16               | False
 2495 | 25 6 6 0 0 -1 1 3 4 5 5 -1 1 16                     | False
 2496 | 25 6 6 0 0 22 -1 1 3 4 5 5 7 -1 1 16                | False
 2497 | 25 6 6 18 -1 1 3 4 5 -1 1 16                        | False
 2498 | 25 6 6 18 22 -1 1 3 4 5 7 -1 1 16                   | False
 2499 | 25 6 6 18 0 -1 1 3 4 5 5 -1 1 16                    | False
 2500 | 25 6 6 18 0 22 -1 1 3 4 5 5 7 -1 1 16               | False
 2501 | 25 6 6 18 18 -1 1 3 4 5 5 -1 1 16                   | False
 2502 | 25 6 6 18 18 22 -1 1 3 4 5 5 7 -1 1 16              | False
 2503 | 25 3 6 0 -1 1 3 4 5 -1 1 17                         | False
 2504 | 25 3 6 0 22 -1 1 3 4 5 7 -1 1 12                    | False
 2505 | 25 3 6 21 -1 1 3 4 5 -1 1 16                        | False
 2506 | 25 3 6 21 22 -1 1 3 4 5 7 -1 1 16                   | False
 2507 | 25 3 6 21 0 -1 1 3 4 5 5 -1 1 16                    | False
 2508 | 25 3 6 21 0 22 -1 1 3 4 5 5 7 -1 1 16               | False
 2509 | 25 3 6 23 -1 1 3 4 5 -1 1 16                        | False
 2510 | 25 3 6 23 22 -1 1 3 4 5 7 -1 1 16                   | False
 2511 | 25 3 6 0 18 -1 1 3 4 5 5 -1 1 16                    | False
 2512 | 25 3 6 0 18 22 -1 1 3 4 5 5 7 -1 1 16               | False
 2513 | 25 3 6 0 0 -1 1 3 4 5 5 -1 1 16                     | False
 2514 | 25 3 6 0 0 22 -1 1 3 4 5 5 7 -1 1 16                | False
 2515 | 25 3 6 18 -1 1 3 4 5 -1 1 16                        | False
 2516 | 25 3 6 18 22 -1 1 3 4 5 7 -1 1 16                   | False
 2517 | 25 3 6 18 0 -1 1 3 4 5 5 -1 1 16                    | False
 2518 | 25 3 6 18 0 22 -1 1 3 4 5 5 7 -1 1 16               | False
 2519 | 25 3 6 18 18 -1 1 3 4 5 5 -1 1 16                   | False
 2520 | 25 3 6 18 18 22 -1 1 3 4 5 5 7 -1 1 16              | False
 2521 | 25 3 6 6 0 -1 1 3 3 4 5 -1 1 17                     | False
 2522 | 25 3 6 6 0 22 -1 1 3 3 4 5 7 -1 1 12                | False
 2523 | 25 3 6 6 21 -1 1 3 3 4 5 -1 1 16                    | False
 2524 | 25 3 6 6 21 22 -1 1 3 3 4 5 7 -1 1 16               | False
 2525 | 25 3 6 6 21 0 -1 1 3 3 4 5 5 -1 1 16                | False
 2526 | 25 3 6 6 21 0 22 -1 1 3 3 4 5 5 7 -1 1 16           | False
 2527 | 25 3 6 6 23 -1 1 3 3 4 5 -1 1 16                    | False
 2528 | 25 3 6 6 23 22 -1 1 3 3 4 5 7 -1 1 16               | False
 2529 | 25 3 6 6 0 18 -1 1 3 3 4 5 5 -1 1 16                | False
 2530 | 25 3 6 6 0 18 22 -1 1 3 3 4 5 5 7 -1 1 16           | False
 2531 | 25 3 6 6 0 0 -1 1 3 3 4 5 5 -1 1 16                 | False
 2532 | 25 3 6 6 0 0 22 -1 1 3 3 4 5 5 7 -1 1 16            | False
 2533 | 25 3 6 6 18 -1 1 3 3 4 5 -1 1 16                    | False
 2534 | 25 3 6 6 18 22 -1 1 3 3 4 5 7 -1 1 16               | False
 2535 | 25 3 6 6 18 0 -1 1 3 3 4 5 5 -1 1 16                | False
 2536 | 25 3 6 6 18 0 22 -1 1 3 3 4 5 5 7 -1 1 16           | False
 2537 | 25 3 6 6 18 18 -1 1 3 3 4 5 5 -1 1 16               | False
 2538 | 25 3 6 6 18 18 22 -1 1 3 3 4 5 5 7 -1 1 16          | False
 2539 | 25 11 6 0 -1 1 3 4 5 -1 1 17                        | False
 2540 | 25 11 6 0 22 -1 1 3 4 5 7 -1 1 12                   | False
 2541 | 25 11 6 21 -1 1 3 4 5 -1 1 16                       | False
 2542 | 25 11 6 21 22 -1 1 3 4 5 7 -1 1 16                  | False
 2543 | 25 11 6 21 0 -1 1 3 4 5 5 -1 1 16                   | False
 2544 | 25 11 6 21 0 22 -1 1 3 4 5 5 7 -1 1 16              | False
 2545 | 25 11 6 23 -1 1 3 4 5 -1 1 16                       | False
 2546 | 25 11 6 23 22 -1 1 3 4 5 7 -1 1 16                  | False
 2547 | 25 11 6 0 18 -1 1 3 4 5 5 -1 1 16                   | False
 2548 | 25 11 6 0 18 22 -1 1 3 4 5 5 7 -1 1 16              | False
 2549 | 25 11 6 0 0 -1 1 3 4 5 5 -1 1 16                    | False
 2550 | 25 11 6 0 0 22 -1 1 3 4 5 5 7 -1 1 16               | False
 2551 | 25 11 6 18 -1 1 3 4 5 -1 1 16                       | False
 2552 | 25 11 6 18 22 -1 1 3 4 5 7 -1 1 16                  | False
 2553 | 25 11 6 18 0 -1 1 3 4 5 5 -1 1 16                   | False
 2554 | 25 11 6 18 0 22 -1 1 3 4 5 5 7 -1 1 16              | False
 2555 | 25 11 6 18 18 -1 1 3 4 5 5 -1 1 16                  | False
 2556 | 25 11 6 18 18 22 -1 1 3 4 5 5 7 -1 1 16             | False
 2557 | 25 11 6 6 0 -1 1 3 3 4 5 -1 1 17                    | False
 2558 | 25 11 6 6 0 22 -1 1 3 3 4 5 7 -1 1 12               | False
 2559 | 25 11 6 6 21 -1 1 3 3 4 5 -1 1 16                   | False
 2560 | 25 11 6 6 21 22 -1 1 3 3 4 5 7 -1 1 16              | False
 2561 | 25 11 6 6 21 0 -1 1 3 3 4 5 5 -1 1 16               | False
 2562 | 25 11 6 6 21 0 22 -1 1 3 3 4 5 5 7 -1 1 16          | False
 2563 | 25 11 6 6 23 -1 1 3 3 4 5 -1 1 16                   | False
 2564 | 25 11 6 6 23 22 -1 1 3 3 4 5 7 -1 1 16              | False
 2565 | 25 11 6 6 0 18 -1 1 3 3 4 5 5 -1 1 16               | False
 2566 | 25 11 6 6 0 18 22 -1 1 3 3 4 5 5 7 -1 1 16          | False
 2567 | 25 11 6 6 0 0 -1 1 3 3 4 5 5 -1 1 16                | False
 2568 | 25 11 6 6 0 0 22 -1 1 3 3 4 5 5 7 -1 1 16           | False
 2569 | 25 11 6 6 18 -1 1 3 3 4 5 -1 1 16                   | False
 2570 | 25 11 6 6 18 22 -1 1 3 3 4 5 7 -1 1 16              | False
 2571 | 25 11 6 6 18 0 -1 1 3 3 4 5 5 -1 1 16               | False
 2572 | 25 11 6 6 18 0 22 -1 1 3 3 4 5 5 7 -1 1 16          | False
 2573 | 25 11 6 6 18 18 -1 1 3 3 4 5 5 -1 1 16              | False
 2574 | 25 11 6 6 18 18 22 -1 1 3 3 4 5 5 7 -1 1 16         | False
 2575 | 25 3 11 6 0 -1 1 3 3 4 5 -1 1 17                    | False
 2576 | 25 3 11 6 0 22 -1 1 3 3 4 5 7 -1 1 12               | False
 2577 | 25 3 11 6 21 -1 1 3 3 4 5 -1 1 16                   | False
 2578 | 25 3 11 6 21 22 -1 1 3 3 4 5 7 -1 1 16              | False
 2579 | 25 3 11 6 21 0 -1 1 3 3 4 5 5 -1 1 16               | False
 2580 | 25 3 11 6 21 0 22 -1 1 3 3 4 5 5 7 -1 1 16          | False
 2581 | 25 3 11 6 23 -1 1 3 3 4 5 -1 1 16                   | False
 2582 | 25 3 11 6 23 22 -1 1 3 3 4 5 7 -1 1 16              | False
 2583 | 25 3 11 6 0 18 -1 1 3 3 4 5 5 -1 1 16               | False
 2584 | 25 3 11 6 0 18 22 -1 1 3 3 4 5 5 7 -1 1 16          | False
 2585 | 25 3 11 6 0 0 -1 1 3 3 4 5 5 -1 1 16                | False
 2586 | 25 3 11 6 0 0 22 -1 1 3 3 4 5 5 7 -1 1 16           | False
 2587 | 25 3 11 6 18 -1 1 3 3 4 5 -1 1 16                   | False
 2588 | 25 3 11 6 18 22 -1 1 3 3 4 5 7 -1 1 16              | False
 2589 | 25 3 11 6 18 0 -1 1 3 3 4 5 5 -1 1 16               | False
 2590 | 25 3 11 6 18 0 22 -1 1 3 3 4 5 5 7 -1 1 16          | False
 2591 | 25 3 11 6 18 18 -1 1 3 3 4 5 5 -1 1 16              | False
 2592 | 25 3 11 6 18 18 22 -1 1 3 3 4 5 5 7 -1 1 16         | False
 2593 | 25 3 11 6 6 0 -1 1 3 3 3 4 5 -1 1 17                | False
 2594 | 25 3 11 6 6 0 22 -1 1 3 3 3 4 5 7 -1 1 12           | False
 2595 | 25 3 11 6 6 21 -1 1 3 3 3 4 5 -1 1 16               | False
 2596 | 25 3 11 6 6 21 22 -1 1 3 3 3 4 5 7 -1 1 16          | False
 2597 | 25 3 11 6 6 21 0 -1 1 3 3 3 4 5 5 -1 1 16           | False
 2598 | 25 3 11 6 6 21 0 22 -1 1 3 3 3 4 5 5 7 -1 1 16      | False
 2599 | 25 3 11 6 6 23 -1 1 3 3 3 4 5 -1 1 16               | False
 2600 | 25 3 11 6 6 23 22 -1 1 3 3 3 4 5 7 -1 1 16          | False
 2601 | 25 3 11 6 6 0 18 -1 1 3 3 3 4 5 5 -1 1 16           | False
 2602 | 25 3 11 6 6 0 18 22 -1 1 3 3 3 4 5 5 7 -1 1 16      | False
 2603 | 25 3 11 6 6 0 0 -1 1 3 3 3 4 5 5 -1 1 16            | False
 2604 | 25 3 11 6 6 0 0 22 -1 1 3 3 3 4 5 5 7 -1 1 16       | False
 2605 | 25 3 11 6 6 18 -1 1 3 3 3 4 5 -1 1 16               | False
 2606 | 25 3 11 6 6 18 22 -1 1 3 3 3 4 5 7 -1 1 16          | False
 2607 | 25 3 11 6 6 18 0 -1 1 3 3 3 4 5 5 -1 1 16           | False
 2608 | 25 3 11 6 6 18 0 22 -1 1 3 3 3 4 5 5 7 -1 1 16      | False
 2609 | 25 3 11 6 6 18 18 -1 1 3 3 3 4 5 5 -1 1 16          | False
 2610 | 25 3 11 6 6 18 18 22 -1 1 3 3 3 4 5 5 7 -1 1 16     | False
 2611 | 25 22 6 0 -1 1 2 4 5 -1 1 17                        | False
 2612 | 25 22 6 21 -1 1 2 4 5 -1 1 16                       | False
 2613 | 25 22 6 21 0 -1 1 2 4 5 5 -1 1 16                   | False
 2614 | 25 22 6 23 -1 1 2 4 5 -1 1 16                       | False
 2615 | 25 22 6 0 18 -1 1 2 4 5 5 -1 1 16                   | False
 2616 | 25 22 6 0 0 -1 1 2 4 5 5 -1 1 16                    | False
 2617 | 25 22 6 18 -1 1 2 4 5 -1 1 16                       | False
 2618 | 25 22 6 18 0 -1 1 2 4 5 5 -1 1 16                   | False
 2619 | 25 22 6 18 18 -1 1 2 4 5 5 -1 1 16                  | False
 2620 | 25 22 6 6 0 -1 1 2 3 4 5 -1 1 17                    | False
 2621 | 25 22 6 6 21 -1 1 2 3 4 5 -1 1 16                   | False
 2622 | 25 22 6 6 21 0 -1 1 2 3 4 5 5 -1 1 16               | False
 2623 | 25 22 6 6 23 -1 1 2 3 4 5 -1 1 16                   | False
 2624 | 25 22 6 6 0 18 -1 1 2 3 4 5 5 -1 1 16               | False
 2625 | 25 22 6 6 0 0 -1 1 2 3 4 5 5 -1 1 16                | False
 2626 | 25 22 6 6 18 -1 1 2 3 4 5 -1 1 16                   | False
 2627 | 25 22 6 6 18 0 -1 1 2 3 4 5 5 -1 1 16               | False
 2628 | 25 22 6 6 18 18 -1 1 2 3 4 5 5 -1 1 16              | False
 2629 | 25 22 3 6 0 -1 1 2 3 4 5 -1 1 17                    | False
 2630 | 25 22 3 6 21 -1 1 2 3 4 5 -1 1 16                   | False
 2631 | 25 22 3 6 21 0 -1 1 2 3 4 5 5 -1 1 16               | False
 2632 | 25 22 3 6 23 -1 1 2 3 4 5 -1 1 16                   | False
 2633 | 25 22 3 6 0 18 -1 1 2 3 4 5 5 -1 1 16               | False
 2634 | 25 22 3 6 0 0 -1 1 2 3 4 5 5 -1 1 16                | False
 2635 | 25 22 3 6 18 -1 1 2 3 4 5 -1 1 16                   | False
 2636 | 25 22 3 6 18 0 -1 1 2 3 4 5 5 -1 1 16               | False
 2637 | 25 22 3 6 18 18 -1 1 2 3 4 5 5 -1 1 16              | False
 2638 | 25 22 3 6 6 0 -1 1 2 3 3 4 5 -1 1 17                | False
 2639 | 25 22 3 6 6 21 -1 1 2 3 3 4 5 -1 1 16               | False
 2640 | 25 22 3 6 6 21 0 -1 1 2 3 3 4 5 5 -1 1 16           | False
 2641 | 25 22 3 6 6 23 -1 1 2 3 3 4 5 -1 1 16               | False
 2642 | 25 22 3 6 6 0 18 -1 1 2 3 3 4 5 5 -1 1 16           | False
 2643 | 25 22 3 6 6 0 0 -1 1 2 3 3 4 5 5 -1 1 16            | False
 2644 | 25 22 3 6 6 18 -1 1 2 3 3 4 5 -1 1 16               | False
 2645 | 25 22 3 6 6 18 0 -1 1 2 3 3 4 5 5 -1 1 16           | False
 2646 | 25 22 3 6 6 18 18 -1 1 2 3 3 4 5 5 -1 1 16          | False
 2647 | 25 22 11 6 0 -1 1 2 3 4 5 -1 1 17                   | False
 2648 | 25 22 11 6 21 -1 1 2 3 4 5 -1 1 16                  | False
 2649 | 25 22 11 6 21 0 -1 1 2 3 4 5 5 -1 1 16              | False
 2650 | 25 22 11 6 23 -1 1 2 3 4 5 -1 1 16                  | False
 2651 | 25 22 11 6 0 18 -1 1 2 3 4 5 5 -1 1 16              | False
 2652 | 25 22 11 6 0 0 -1 1 2 3 4 5 5 -1 1 16               | False
 2653 | 25 22 11 6 18 -1 1 2 3 4 5 -1 1 16                  | False
 2654 | 25 22 11 6 18 0 -1 1 2 3 4 5 5 -1 1 16              | False
 2655 | 25 22 11 6 18 18 -1 1 2 3 4 5 5 -1 1 16             | False
 2656 | 25 22 11 6 6 0 -1 1 2 3 3 4 5 -1 1 17               | False
 2657 | 25 22 11 6 6 21 -1 1 2 3 3 4 5 -1 1 16              | False
 2658 | 25 22 11 6 6 21 0 -1 1 2 3 3 4 5 5 -1 1 16          | False
 2659 | 25 22 11 6 6 23 -1 1 2 3 3 4 5 -1 1 16              | False
 2660 | 25 22 11 6 6 0 18 -1 1 2 3 3 4 5 5 -1 1 16          | False
 2661 | 25 22 11 6 6 0 0 -1 1 2 3 3 4 5 5 -1 1 16           | False
 2662 | 25 22 11 6 6 18 -1 1 2 3 3 4 5 -1 1 16              | False
 2663 | 25 22 11 6 6 18 0 -1 1 2 3 3 4 5 5 -1 1 16          | False
 2664 | 25 22 11 6 6 18 18 -1 1 2 3 3 4 5 5 -1 1 16         | False
 2665 | 25 22 3 11 6 0 -1 1 2 3 3 4 5 -1 1 17               | False
 2666 | 25 22 3 11 6 21 -1 1 2 3 3 4 5 -1 1 16              | False
 2667 | 25 22 3 11 6 21 0 -1 1 2 3 3 4 5 5 -1 1 16          | False
 2668 | 25 22 3 11 6 23 -1 1 2 3 3 4 5 -1 1 16              | False
 2669 | 25 22 3 11 6 0 18 -1 1 2 3 3 4 5 5 -1 1 16          | False
 2670 | 25 22 3 11 6 0 0 -1 1 2 3 3 4 5 5 -1 1 16           | False
 2671 | 25 22 3 11 6 18 -1 1 2 3 3 4 5 -1 1 16              | False
 2672 | 25 22 3 11 6 18 0 -1 1 2 3 3 4 5 5 -1 1 16          | False
 2673 | 25 22 3 11 6 18 18 -1 1 2 3 3 4 5 5 -1 1 16         | False
 2674 | 25 22 3 11 6 6 0 -1 1 2 3 3 3 4 5 -1 1 17           | False
 2675 | 25 22 3 11 6 6 21 -1 1 2 3 3 3 4 5 -1 1 16          | False
 2676 | 25 22 3 11 6 6 21 0 -1 1 2 3 3 3 4 5 5 -1 1 16      | False
 2677 | 25 22 3 11 6 6 23 -1 1 2 3 3 3 4 5 -1 1 16          | False
 2678 | 25 22 3 11 6 6 0 18 -1 1 2 3 3 3 4 5 5 -1 1 16      | False
 2679 | 25 22 3 11 6 6 0 0 -1 1 2 3 3 3 4 5 5 -1 1 16       | False
 2680 | 25 22 3 11 6 6 18 -1 1 2 3 3 3 4 5 -1 1 16          | False
 2681 | 25 22 3 11 6 6 18 0 -1 1 2 3 3 3 4 5 5 -1 1 16      | False
 2682 | 25 22 3 11 6 6 18 18 -1 1 2 3 3 3 4 5 5 -1 1 16     | False
 2683 | 0 22 -1 1 5 -1 1 5                                  | False
 2684 | 0 22 22 -1 1 5 7 -1 1 5                             | False
 2685 | 0 22 1 -1 1 5 5 -1 1 5                              | False
 2686 | 0 22 1 22 -1 1 5 5 7 -1 1 5                         | False
 2687 | 0 15 -1 1 5 -1 1 5                                  | False
 2688 | 0 15 22 -1 1 5 7 -1 1 5                             | False
 2689 | 0 18 18 1 -1 1 5 5 5 -1 1 5                         | False
 2690 | 0 18 18 1 22 -1 1 5 5 5 7 -1 1 5                    | False
 2691 | 0 18 1 -1 1 5 5 -1 1 5                              | False
 2692 | 0 18 1 22 -1 1 5 5 7 -1 1 5                         | False
 2693 | 0 2 -1 1 5 -1 1 5                                   | False
 2694 | 0 2 22 -1 1 5 7 -1 1 5                              | False
 2695 | 0 1 13 1 -1 1 5 5 5 -1 1 5                          | False
 2696 | 0 1 13 1 22 -1 1 5 5 5 7 -1 1 5                     | False
 2697 | 0 1 18 -1 1 5 5 -1 1 5                              | False
 2698 | 0 1 18 22 -1 1 5 5 7 -1 1 5                         | False
 2699 | 0 1 18 1 -1 1 5 5 5 -1 1 5                          | False
 2700 | 0 1 18 1 22 -1 1 5 5 5 7 -1 1 5                     | False
 2701 | 0 22 22 -1 1 2 5 -1 1 5                             | False
 2702 | 0 22 22 22 -1 1 2 5 7 -1 1 5                        | False
 2703 | 0 22 22 1 -1 1 2 5 5 -1 1 5                         | False
 2704 | 0 22 22 1 22 -1 1 2 5 5 7 -1 1 5                    | False
 2705 | 0 22 15 -1 1 2 5 -1 1 5                             | False
 2706 | 0 22 15 22 -1 1 2 5 7 -1 1 5                        | False
 2707 | 0 22 18 18 1 -1 1 2 5 5 5 -1 1 5                    | False
 2708 | 0 22 18 18 1 22 -1 1 2 5 5 5 7 -1 1 5               | False
 2709 | 0 22 18 1 -1 1 2 5 5 -1 1 5                         | False
 2710 | 0 22 18 1 22 -1 1 2 5 5 7 -1 1 5                    | False
 2711 | 0 22 2 -1 1 2 5 -1 1 5                              | False
 2712 | 0 22 2 22 -1 1 2 5 7 -1 1 5                         | False
 2713 | 0 22 1 13 1 -1 1 2 5 5 5 -1 1 5                     | False
 2714 | 0 22 1 13 1 22 -1 1 2 5 5 5 7 -1 1 5                | False
 2715 | 0 22 1 18 -1 1 2 5 5 -1 1 5                         | False
 2716 | 0 22 1 18 22 -1 1 2 5 5 7 -1 1 5                    | False
 2717 | 0 22 1 18 1 -1 1 2 5 5 5 -1 1 5                     | False
 2718 | 0 22 1 18 1 22 -1 1 2 5 5 5 7 -1 1 5                | False
 2719 | 0 18 22 -1 1 1 5 -1 1 5                             | False
 2720 | 0 18 22 22 -1 1 1 5 7 -1 1 5                        | False
 2721 | 0 18 22 1 -1 1 1 5 5 -1 1 5                         | False
 2722 | 0 18 22 1 22 -1 1 1 5 5 7 -1 1 5                    | False
 2723 | 0 18 15 -1 1 1 5 -1 1 5                             | False
 2724 | 0 18 15 22 -1 1 1 5 7 -1 1 5                        | False
 2725 | 0 18 18 18 1 -1 1 1 5 5 5 -1 1 5                    | False
 2726 | 0 18 18 18 1 22 -1 1 1 5 5 5 7 -1 1 5               | False
 2727 | 0 18 18 1 -1 1 1 5 5 -1 1 5                         | False
 2728 | 0 18 18 1 22 -1 1 1 5 5 7 -1 1 5                    | False
 2729 | 0 18 2 -1 1 1 5 -1 1 5                              | False
 2730 | 0 18 2 22 -1 1 1 5 7 -1 1 5                         | False
 2731 | 0 18 1 13 1 -1 1 1 5 5 5 -1 1 5                     | False
 2732 | 0 18 1 13 1 22 -1 1 1 5 5 5 7 -1 1 5                | False
 2733 | 0 18 1 18 -1 1 1 5 5 -1 1 5                         | False
 2734 | 0 18 1 18 22 -1 1 1 5 5 7 -1 1 5                    | False
 2735 | 0 18 1 18 1 -1 1 1 5 5 5 -1 1 5                     | False
 2736 | 0 18 1 18 1 22 -1 1 1 5 5 5 7 -1 1 5                | False
 2737 | 0 18 22 22 -1 1 1 2 5 -1 1 5                        | False
 2738 | 0 18 22 22 22 -1 1 1 2 5 7 -1 1 5                   | False
 2739 | 0 18 22 22 1 -1 1 1 2 5 5 -1 1 5                    | False
 2740 | 0 18 22 22 1 22 -1 1 1 2 5 5 7 -1 1 5               | False
 2741 | 0 18 22 15 -1 1 1 2 5 -1 1 5                        | False
 2742 | 0 18 22 15 22 -1 1 1 2 5 7 -1 1 5                   | False
 2743 | 0 18 22 18 18 1 -1 1 1 2 5 5 5 -1 1 5               | False
 2744 | 0 18 22 18 18 1 22 -1 1 1 2 5 5 5 7 -1 1 5          | False
 2745 | 0 18 22 18 1 -1 1 1 2 5 5 -1 1 5                    | False
 2746 | 0 18 22 18 1 22 -1 1 1 2 5 5 7 -1 1 5               | False
 2747 | 0 18 22 2 -1 1 1 2 5 -1 1 5                         | False
 2748 | 0 18 22 2 22 -1 1 1 2 5 7 -1 1 5                    | False
 2749 | 0 18 22 1 13 1 -1 1 1 2 5 5 5 -1 1 5                | False
 2750 | 0 18 22 1 13 1 22 -1 1 1 2 5 5 5 7 -1 1 5           | False
 2751 | 0 18 22 1 18 -1 1 1 2 5 5 -1 1 5                    | False
 2752 | 0 18 22 1 18 22 -1 1 1 2 5 5 7 -1 1 5               | False
 2753 | 0 18 22 1 18 1 -1 1 1 2 5 5 5 -1 1 5                | False
 2754 | 0 18 22 1 18 1 22 -1 1 1 2 5 5 5 7 -1 1 5           | False
 2755 | 0 25 22 -1 1 1 5 -1 1 5                             | False
 2756 | 0 25 22 22 -1 1 1 5 7 -1 1 5                        | False
 2757 | 0 25 22 1 -1 1 1 5 5 -1 1 5                         | False
 2758 | 0 25 22 1 22 -1 1 1 5 5 7 -1 1 5                    | False
 2759 | 0 25 15 -1 1 1 5 -1 1 5                             | False
 2760 | 0 25 15 22 -1 1 1 5 7 -1 1 5                        | False
 2761 | 0 25 18 18 1 -1 1 1 5 5 5 -1 1 5                    | False
 2762 | 0 25 18 18 1 22 -1 1 1 5 5 5 7 -1 1 5               | False
 2763 | 0 25 18 1 -1 1 1 5 5 -1 1 5                         | False
 2764 | 0 25 18 1 22 -1 1 1 5 5 7 -1 1 5                    | False
 2765 | 0 25 2 -1 1 1 5 -1 1 5                              | False
 2766 | 0 25 2 22 -1 1 1 5 7 -1 1 5                         | False
 2767 | 0 25 1 13 1 -1 1 1 5 5 5 -1 1 5                     | False
 2768 | 0 25 1 13 1 22 -1 1 1 5 5 5 7 -1 1 5                | False
 2769 | 0 25 1 18 -1 1 1 5 5 -1 1 5                         | False
 2770 | 0 25 1 18 22 -1 1 1 5 5 7 -1 1 5                    | False
 2771 | 0 25 1 18 1 -1 1 1 5 5 5 -1 1 5                     | False
 2772 | 0 25 1 18 1 22 -1 1 1 5 5 5 7 -1 1 5                | False
 2773 | 0 25 22 22 -1 1 1 2 5 -1 1 5                        | False
 2774 | 0 25 22 22 22 -1 1 1 2 5 7 -1 1 5                   | False
 2775 | 0 25 22 22 1 -1 1 1 2 5 5 -1 1 5                    | False
 2776 | 0 25 22 22 1 22 -1 1 1 2 5 5 7 -1 1 5               | False
 2777 | 0 25 22 15 -1 1 1 2 5 -1 1 5                        | False
 2778 | 0 25 22 15 22 -1 1 1 2 5 7 -1 1 5                   | False
 2779 | 0 25 22 18 18 1 -1 1 1 2 5 5 5 -1 1 5               | False
 2780 | 0 25 22 18 18 1 22 -1 1 1 2 5 5 5 7 -1 1 5          | False
 2781 | 0 25 22 18 1 -1 1 1 2 5 5 -1 1 5                    | False
 2782 | 0 25 22 18 1 22 -1 1 1 2 5 5 7 -1 1 5               | False
 2783 | 0 25 22 2 -1 1 1 2 5 -1 1 5                         | False
 2784 | 0 25 22 2 22 -1 1 1 2 5 7 -1 1 5                    | False
 2785 | 0 25 22 1 13 1 -1 1 1 2 5 5 5 -1 1 5                | False
 2786 | 0 25 22 1 13 1 22 -1 1 1 2 5 5 5 7 -1 1 5           | False
 2787 | 0 25 22 1 18 -1 1 1 2 5 5 -1 1 5                    | False
 2788 | 0 25 22 1 18 22 -1 1 1 2 5 5 7 -1 1 5               | False
 2789 | 0 25 22 1 18 1 -1 1 1 2 5 5 5 -1 1 5                | False
 2790 | 0 25 22 1 18 1 22 -1 1 1 2 5 5 5 7 -1 1 5           | False
 2791 | 25 22 -1 1 5 -1 1 5                                 | False
 2792 | 25 22 22 -1 1 5 7 -1 1 5                            | False
 2793 | 25 22 1 -1 1 5 5 -1 1 5                             | False
 2794 | 25 22 1 22 -1 1 5 5 7 -1 1 5                        | False
 2795 | 25 15 -1 1 5 -1 1 5                                 | False
 2796 | 25 15 22 -1 1 5 7 -1 1 5                            | False
 2797 | 25 18 18 1 -1 1 5 5 5 -1 1 5                        | False
 2798 | 25 18 18 1 22 -1 1 5 5 5 7 -1 1 5                   | False
 2799 | 25 18 1 -1 1 5 5 -1 1 5                             | False
 2800 | 25 18 1 22 -1 1 5 5 7 -1 1 5                        | False
 2801 | 25 2 -1 1 5 -1 1 5                                  | False
 2802 | 25 2 22 -1 1 5 7 -1 1 5                             | False
 2803 | 25 1 13 1 -1 1 5 5 5 -1 1 5                         | False
 2804 | 25 1 13 1 22 -1 1 5 5 5 7 -1 1 5                    | False
 2805 | 25 1 18 -1 1 5 5 -1 1 5                             | False
 2806 | 25 1 18 22 -1 1 5 5 7 -1 1 5                        | False
 2807 | 25 1 18 1 -1 1 5 5 5 -1 1 5                         | False
 2808 | 25 1 18 1 22 -1 1 5 5 5 7 -1 1 5                    | False
 2809 | 25 22 22 -1 1 2 5 -1 1 5                            | False
 2810 | 25 22 22 22 -1 1 2 5 7 -1 1 5                       | False
 2811 | 25 22 22 1 -1 1 2 5 5 -1 1 5                        | False
 2812 | 25 22 22 1 22 -1 1 2 5 5 7 -1 1 5                   | False
 2813 | 25 22 15 -1 1 2 5 -1 1 5                            | False
 2814 | 25 22 15 22 -1 1 2 5 7 -1 1 5                       | False
 2815 | 25 22 18 18 1 -1 1 2 5 5 5 -1 1 5                   | False
 2816 | 25 22 18 18 1 22 -1 1 2 5 5 5 7 -1 1 5              | False
 2817 | 25 22 18 1 -1 1 2 5 5 -1 1 5                        | False
 2818 | 25 22 18 1 22 -1 1 2 5 5 7 -1 1 5                   | False
 2819 | 25 22 2 -1 1 2 5 -1 1 5                             | False
 2820 | 25 22 2 22 -1 1 2 5 7 -1 1 5                        | False
 2821 | 25 22 1 13 1 -1 1 2 5 5 5 -1 1 5                    | False
 2822 | 25 22 1 13 1 22 -1 1 2 5 5 5 7 -1 1 5               | False
 2823 | 25 22 1 18 -1 1 2 5 5 -1 1 5                        | False
 2824 | 25 22 1 18 22 -1 1 2 5 5 7 -1 1 5                   | False
 2825 | 25 22 1 18 1 -1 1 2 5 5 5 -1 1 5                    | False
 2826 | 25 22 1 18 1 22 -1 1 2 5 5 5 7 -1 1 5               | False
 2827 | 0 2 1 18 -1 1 4 5 5 -1 1 11                         | False
 2828 | 0 2 1 18 22 -1 1 4 5 5 7 -1 1 11                    | False
 2829 | 0 2 1 18 1 -1 1 4 5 5 5 -1 1 11                     | False
 2830 | 0 2 1 18 1 22 -1 1 4 5 5 5 7 -1 1 11                | False
 2831 | 0 2 0 18 -1 1 4 5 5 -1 1 8                          | False
 2832 | 0 2 0 18 22 -1 1 4 5 5 7 -1 1 8                     | False
 2833 | 0 2 0 1 -1 1 4 5 5 -1 1 8                           | False
 2834 | 0 2 0 1 22 -1 1 4 5 5 7 -1 1 8                      | False
 2835 | 0 2 18 1 -1 1 4 5 5 -1 1 8                          | False
 2836 | 0 2 18 1 22 -1 1 4 5 5 7 -1 1 8                     | False
 2837 | 0 2 18 18 1 -1 1 4 5 5 5 -1 1 8                     | False
 2838 | 0 2 18 18 1 22 -1 1 4 5 5 5 7 -1 1 8                | False
 2839 | 0 18 2 1 18 -1 1 1 4 5 5 -1 1 11                    | False
 2840 | 0 18 2 1 18 22 -1 1 1 4 5 5 7 -1 1 11               | False
 2841 | 0 18 2 1 18 1 -1 1 1 4 5 5 5 -1 1 11                | False
 2842 | 0 18 2 1 18 1 22 -1 1 1 4 5 5 5 7 -1 1 11           | False
 2843 | 0 18 2 0 18 -1 1 1 4 5 5 -1 1 11                    | False
 2844 | 0 18 2 0 18 22 -1 1 1 4 5 5 7 -1 1 11               | False
 2845 | 0 18 2 0 1 -1 1 1 4 5 5 -1 1 8                      | False
 2846 | 0 18 2 0 1 22 -1 1 1 4 5 5 7 -1 1 8                 | False
 2847 | 0 18 2 18 1 -1 1 1 4 5 5 -1 1 8                     | False
 2848 | 0 18 2 18 1 22 -1 1 1 4 5 5 7 -1 1 8                | False
 2849 | 0 18 2 18 18 1 -1 1 1 4 5 5 5 -1 1 8                | False
 2850 | 0 18 2 18 18 1 22 -1 1 1 4 5 5 5 7 -1 1 8           | False
 2851 | 0 25 2 1 18 -1 1 1 4 5 5 -1 1 11                    | False
 2852 | 0 25 2 1 18 22 -1 1 1 4 5 5 7 -1 1 11               | False
 2853 | 0 25 2 1 18 1 -1 1 1 4 5 5 5 -1 1 11                | False
 2854 | 0 25 2 1 18 1 22 -1 1 1 4 5 5 5 7 -1 1 11           | False
 2855 | 0 25 2 0 18 -1 1 1 4 5 5 -1 1 8                     | False
 2856 | 0 25 2 0 18 22 -1 1 1 4 5 5 7 -1 1 8                | False
 2857 | 0 25 2 0 1 -1 1 1 4 5 5 -1 1 8                      | False
 2858 | 0 25 2 0 1 22 -1 1 1 4 5 5 7 -1 1 8                 | False
 2859 | 0 25 2 18 1 -1 1 1 4 5 5 -1 1 8                     | False
 2860 | 0 25 2 18 1 22 -1 1 1 4 5 5 7 -1 1 8                | False
 2861 | 0 25 2 18 18 1 -1 1 1 4 5 5 5 -1 1 8                | False
 2862 | 0 25 2 18 18 1 22 -1 1 1 4 5 5 5 7 -1 1 8           | False
 2863 | 25 2 1 18 -1 1 4 5 5 -1 1 11                        | False
 2864 | 25 2 1 18 22 -1 1 4 5 5 7 -1 1 11                   | False
 2865 | 25 2 1 18 1 -1 1 4 5 5 5 -1 1 11                    | False
 2866 | 25 2 1 18 1 22 -1 1 4 5 5 5 7 -1 1 11               | False
 2867 | 25 2 0 18 -1 1 4 5 5 -1 1 8                         | False
 2868 | 25 2 0 18 22 -1 1 4 5 5 7 -1 1 8                    | False
 2869 | 25 2 0 1 -1 1 4 5 5 -1 1 8                          | False
 2870 | 25 2 0 1 22 -1 1 4 5 5 7 -1 1 8                     | False
 2871 | 25 2 18 1 -1 1 4 5 5 -1 1 8                         | False
 2872 | 25 2 18 1 22 -1 1 4 5 5 7 -1 1 8                    | False
 2873 | 25 2 18 18 1 -1 1 4 5 5 5 -1 1 8                    | False
 2874 | 25 2 18 18 1 22 -1 1 4 5 5 5 7 -1 1 8               | False
 2875 | 0 14 2 -1 1 5 6 -1 1 16                             | False
 2876 | 0 14 2 22 -1 1 5 6 7 -1 1 16                        | False
 2877 | 0 15 1 2 -1 1 5 5 6 -1 1 16                         | False
 2878 | 0 15 1 2 22 -1 1 5 5 6 7 -1 1 16                    | False
 2879 | 0 24 2 -1 1 5 6 -1 1 16                             | False
 2880 | 0 24 2 22 -1 1 5 6 7 -1 1 16                        | False
 2881 | 0 24 24 2 -1 1 5 5 6 -1 1 16                        | False
 2882 | 0 24 24 2 22 -1 1 5 5 6 7 -1 1 16                   | False
 2883 | 0 24 2 2 -1 1 5 5 6 -1 1 16                         | False
 2884 | 0 24 2 2 22 -1 1 5 5 6 7 -1 1 16                    | False
 2885 | 0 24 1 2 -1 1 5 5 6 -1 1 16                         | False
 2886 | 0 24 1 2 22 -1 1 5 5 6 7 -1 1 16                    | False
 2887 | 0 22 2 -1 1 5 6 -1 1 16                             | False
 2888 | 0 22 2 22 -1 1 5 6 7 -1 1 16                        | False
 2889 | 0 22 1 2 -1 1 5 5 6 -1 1 16                         | False
 2890 | 0 22 1 2 22 -1 1 5 5 6 7 -1 1 16                    | False
 2891 | 0 25 2 -1 1 5 6 -1 1 16                             | False
 2892 | 0 25 2 22 -1 1 5 6 7 -1 1 16                        | False
 2893 | 0 0 25 2 -1 1 5 5 6 -1 1 16                         | False
 2894 | 0 0 25 2 22 -1 1 5 5 6 7 -1 1 16                    | False
 2895 | 0 15 2 -1 1 5 6 -1 1 16                             | False
 2896 | 0 15 2 22 -1 1 5 6 7 -1 1 16                        | False
 2897 | 0 18 18 18 2 -1 1 5 5 5 6 -1 1 16                   | False
 2898 | 0 18 18 18 2 22 -1 1 5 5 5 6 7 -1 1 16              | False
 2899 | 0 18 18 1 2 -1 1 5 5 5 6 -1 1 16                    | False
 2900 | 0 18 18 1 2 22 -1 1 5 5 5 6 7 -1 1 16               | False
 2901 | 0 18 2 2 -1 1 5 5 6 -1 1 16                         | False
 2902 | 0 18 2 2 22 -1 1 5 5 6 7 -1 1 16                    | False
 2903 | 0 18 1 2 -1 1 5 5 6 -1 1 16                         | False
 2904 | 0 18 1 2 22 -1 1 5 5 6 7 -1 1 16                    | False
 2905 | 0 2 2 -1 1 5 6 -1 1 16                              | False
 2906 | 0 2 2 22 -1 1 5 6 7 -1 1 16                         | False
 2907 | 0 2 0 2 -1 1 5 5 6 -1 1 16                          | False
 2908 | 0 2 0 2 22 -1 1 5 5 6 7 -1 1 16                     | False
 2909 | 0 2 1 2 -1 1 5 5 6 -1 1 16                          | False
 2910 | 0 2 1 2 22 -1 1 5 5 6 7 -1 1 16                     | False
 2911 | 0 16 0 2 -1 1 5 5 6 -1 1 16                         | False
 2912 | 0 16 0 2 22 -1 1 5 5 6 7 -1 1 16                    | False
 2913 | 0 1 13 1 2 -1 1 5 5 5 6 -1 1 16                     | False
 2914 | 0 1 13 1 2 22 -1 1 5 5 5 6 7 -1 1 16                | False
 2915 | 0 1 15 2 -1 1 5 5 6 -1 1 16                         | False
 2916 | 0 1 15 2 22 -1 1 5 5 6 7 -1 1 16                    | False
 2917 | 0 1 24 2 -1 1 5 5 6 -1 1 16                         | False
 2918 | 0 1 24 2 22 -1 1 5 5 6 7 -1 1 16                    | False
 2919 | 0 1 24 24 2 -1 1 5 5 5 6 -1 1 16                    | False
 2920 | 0 1 24 24 2 22 -1 1 5 5 5 6 7 -1 1 16               | False
 2921 | 0 1 24 1 2 -1 1 5 5 5 6 -1 1 16                     | False
 2922 | 0 1 24 1 2 22 -1 1 5 5 5 6 7 -1 1 16                | False
 2923 | 0 1 22 2 -1 1 5 5 6 -1 1 16                         | False
 2924 | 0 1 22 2 22 -1 1 5 5 6 7 -1 1 16                    | False
 2925 | 0 1 22 1 2 -1 1 5 5 5 6 -1 1 16                     | False
 2926 | 0 1 22 1 2 22 -1 1 5 5 5 6 7 -1 1 16                | False
 2927 | 0 1 25 2 -1 1 5 5 6 -1 1 16                         | False
 2928 | 0 1 25 2 22 -1 1 5 5 6 7 -1 1 16                    | False
 2929 | 0 1 0 2 -1 1 5 5 6 -1 1 16                          | False
 2930 | 0 1 0 2 22 -1 1 5 5 6 7 -1 1 16                     | False
 2931 | 0 1 18 2 -1 1 5 5 6 -1 1 16                         | False
 2932 | 0 1 18 2 22 -1 1 5 5 6 7 -1 1 16                    | False
 2933 | 0 1 18 2 2 -1 1 5 5 5 6 -1 1 16                     | False
 2934 | 0 1 18 2 2 22 -1 1 5 5 5 6 7 -1 1 16                | False
 2935 | 0 1 18 1 2 -1 1 5 5 5 6 -1 1 16                     | False
 2936 | 0 1 18 1 2 22 -1 1 5 5 5 6 7 -1 1 16                | False
 2937 | 0 1 2 2 -1 1 5 5 6 -1 1 16                          | False
 2938 | 0 1 2 2 22 -1 1 5 5 6 7 -1 1 16                     | False
 2939 | 0 1 2 2 2 -1 1 5 5 5 6 -1 1 16                      | False
 2940 | 0 1 2 2 2 22 -1 1 5 5 5 6 7 -1 1 16                 | False
 2941 | 0 21 2 -1 1 5 6 -1 1 16                             | False
 2942 | 0 21 2 22 -1 1 5 6 7 -1 1 16                        | False
 2943 | 0 22 14 2 -1 1 2 5 6 -1 1 16                        | False
 2944 | 0 22 14 2 22 -1 1 2 5 6 7 -1 1 16                   | False
 2945 | 0 22 15 1 2 -1 1 2 5 5 6 -1 1 16                    | False
 2946 | 0 22 15 1 2 22 -1 1 2 5 5 6 7 -1 1 16               | False
 2947 | 0 22 24 2 -1 1 2 5 6 -1 1 16                        | False
 2948 | 0 22 24 2 22 -1 1 2 5 6 7 -1 1 16                   | False
 2949 | 0 22 24 24 2 -1 1 2 5 5 6 -1 1 16                   | False
 2950 | 0 22 24 24 2 22 -1 1 2 5 5 6 7 -1 1 16              | False
 2951 | 0 22 24 2 2 -1 1 2 5 5 6 -1 1 16                    | False
 2952 | 0 22 24 2 2 22 -1 1 2 5 5 6 7 -1 1 16               | False
 2953 | 0 22 24 1 2 -1 1 2 5 5 6 -1 1 16                    | False
 2954 | 0 22 24 1 2 22 -1 1 2 5 5 6 7 -1 1 16               | False
 2955 | 0 22 22 2 -1 1 2 5 6 -1 1 16                        | False
 2956 | 0 22 22 2 22 -1 1 2 5 6 7 -1 1 16                   | False
 2957 | 0 22 22 1 2 -1 1 2 5 5 6 -1 1 16                    | False
 2958 | 0 22 22 1 2 22 -1 1 2 5 5 6 7 -1 1 16               | False
 2959 | 0 22 25 2 -1 1 2 5 6 -1 1 16                        | False
 2960 | 0 22 25 2 22 -1 1 2 5 6 7 -1 1 16                   | False
 2961 | 0 22 0 25 2 -1 1 2 5 5 6 -1 1 16                    | False
 2962 | 0 22 0 25 2 22 -1 1 2 5 5 6 7 -1 1 16               | False
 2963 | 0 22 15 2 -1 1 2 5 6 -1 1 16                        | False
 2964 | 0 22 15 2 22 -1 1 2 5 6 7 -1 1 16                   | False
 2965 | 0 22 18 18 18 2 -1 1 2 5 5 5 6 -1 1 16              | False
 2966 | 0 22 18 18 18 2 22 -1 1 2 5 5 5 6 7 -1 1 16         | False
 2967 | 0 22 18 18 1 2 -1 1 2 5 5 5 6 -1 1 16               | False
 2968 | 0 22 18 18 1 2 22 -1 1 2 5 5 5 6 7 -1 1 16          | False
 2969 | 0 22 18 2 2 -1 1 2 5 5 6 -1 1 16                    | False
 2970 | 0 22 18 2 2 22 -1 1 2 5 5 6 7 -1 1 16               | False
 2971 | 0 22 18 1 2 -1 1 2 5 5 6 -1 1 16                    | False
 2972 | 0 22 18 1 2 22 -1 1 2 5 5 6 7 -1 1 16               | False
 2973 | 0 22 2 2 -1 1 2 5 6 -1 1 16                         | False
 2974 | 0 22 2 2 22 -1 1 2 5 6 7 -1 1 16                    | False
 2975 | 0 22 2 0 2 -1 1 2 5 5 6 -1 1 16                     | False
 2976 | 0 22 2 0 2 22 -1 1 2 5 5 6 7 -1 1 16                | False
 2977 | 0 22 2 1 2 -1 1 2 5 5 6 -1 1 16                     | False
 2978 | 0 22 2 1 2 22 -1 1 2 5 5 6 7 -1 1 16                | False
 2979 | 0 22 16 0 2 -1 1 2 5 5 6 -1 1 16                    | False
 2980 | 0 22 16 0 2 22 -1 1 2 5 5 6 7 -1 1 16               | False
 2981 | 0 22 1 13 1 2 -1 1 2 5 5 5 6 -1 1 16                | False
 2982 | 0 22 1 13 1 2 22 -1 1 2 5 5 5 6 7 -1 1 16           | False
 2983 | 0 22 1 15 2 -1 1 2 5 5 6 -1 1 16                    | False
 2984 | 0 22 1 15 2 22 -1 1 2 5 5 6 7 -1 1 16               | False
 2985 | 0 22 1 24 2 -1 1 2 5 5 6 -1 1 16                    | False
 2986 | 0 22 1 24 2 22 -1 1 2 5 5 6 7 -1 1 16               | False
 2987 | 0 22 1 24 24 2 -1 1 2 5 5 5 6 -1 1 16               | False
 2988 | 0 22 1 24 24 2 22 -1 1 2 5 5 5 6 7 -1 1 16          | False
 2989 | 0 22 1 24 1 2 -1 1 2 5 5 5 6 -1 1 16                | False
 2990 | 0 22 1 24 1 2 22 -1 1 2 5 5 5 6 7 -1 1 16           | False
 2991 | 0 22 1 22 2 -1 1 2 5 5 6 -1 1 16                    | False
 2992 | 0 22 1 22 2 22 -1 1 2 5 5 6 7 -1 1 16               | False
 2993 | 0 22 1 22 1 2 -1 1 2 5 5 5 6 -1 1 16                | False
 2994 | 0 22 1 22 1 2 22 -1 1 2 5 5 5 6 7 -1 1 16           | False
 2995 | 0 22 1 25 2 -1 1 2 5 5 6 -1 1 16                    | False
 2996 | 0 22 1 25 2 22 -1 1 2 5 5 6 7 -1 1 16               | False
 2997 | 0 22 1 0 2 -1 1 2 5 5 6 -1 1 16                     | False
 2998 | 0 22 1 0 2 22 -1 1 2 5 5 6 7 -1 1 16                | False
 2999 | 0 22 1 18 2 -1 1 2 5 5 6 -1 1 16                    | False
 3000 | 0 22 1 18 2 22 -1 1 2 5 5 6 7 -1 1 16               | False
 3001 | 0 22 1 18 2 2 -1 1 2 5 5 5 6 -1 1 16                | False
 3002 | 0 22 1 18 2 2 22 -1 1 2 5 5 5 6 7 -1 1 16           | False
 3003 | 0 22 1 18 1 2 -1 1 2 5 5 5 6 -1 1 16                | False
 3004 | 0 22 1 18 1 2 22 -1 1 2 5 5 5 6 7 -1 1 16           | False
 3005 | 0 22 1 2 2 -1 1 2 5 5 6 -1 1 16                     | False
 3006 | 0 22 1 2 2 22 -1 1 2 5 5 6 7 -1 1 16                | False
 3007 | 0 22 1 2 2 2 -1 1 2 5 5 5 6 -1 1 16                 | False
 3008 | 0 22 1 2 2 2 22 -1 1 2 5 5 5 6 7 -1 1 16            | False
 3009 | 0 22 21 2 -1 1 2 5 6 -1 1 16                        | False
 3010 | 0 22 21 2 22 -1 1 2 5 6 7 -1 1 16                   | False
 3011 | 0 18 14 2 -1 1 1 5 6 -1 1 16                        | False
 3012 | 0 18 14 2 22 -1 1 1 5 6 7 -1 1 16                   | False
 3013 | 0 18 15 1 2 -1 1 1 5 5 6 -1 1 16                    | False
 3014 | 0 18 15 1 2 22 -1 1 1 5 5 6 7 -1 1 16               | False
 3015 | 0 18 24 2 -1 1 1 5 6 -1 1 16                        | False
 3016 | 0 18 24 2 22 -1 1 1 5 6 7 -1 1 16                   | False
 3017 | 0 18 24 24 2 -1 1 1 5 5 6 -1 1 16                   | False
 3018 | 0 18 24 24 2 22 -1 1 1 5 5 6 7 -1 1 16              | False
 3019 | 0 18 24 2 2 -1 1 1 5 5 6 -1 1 16                    | False
 3020 | 0 18 24 2 2 22 -1 1 1 5 5 6 7 -1 1 16               | False
 3021 | 0 18 24 1 2 -1 1 1 5 5 6 -1 1 16                    | False
 3022 | 0 18 24 1 2 22 -1 1 1 5 5 6 7 -1 1 16               | False
 3023 | 0 18 22 2 -1 1 1 5 6 -1 1 16                        | False
 3024 | 0 18 22 2 22 -1 1 1 5 6 7 -1 1 16                   | False
 3025 | 0 18 22 1 2 -1 1 1 5 5 6 -1 1 16                    | False
 3026 | 0 18 22 1 2 22 -1 1 1 5 5 6 7 -1 1 16               | False
 3027 | 0 18 25 2 -1 1 1 5 6 -1 1 16                        | False
 3028 | 0 18 25 2 22 -1 1 1 5 6 7 -1 1 16                   | False
 3029 | 0 18 0 25 2 -1 1 1 5 5 6 -1 1 16                    | False
 3030 | 0 18 0 25 2 22 -1 1 1 5 5 6 7 -1 1 16               | False
 3031 | 0 18 15 2 -1 1 1 5 6 -1 1 16                        | False
 3032 | 0 18 15 2 22 -1 1 1 5 6 7 -1 1 16                   | False
 3033 | 0 18 18 18 18 2 -1 1 1 5 5 5 6 -1 1 16              | False
 3034 | 0 18 18 18 18 2 22 -1 1 1 5 5 5 6 7 -1 1 16         | False
 3035 | 0 18 18 18 1 2 -1 1 1 5 5 5 6 -1 1 16               | False
 3036 | 0 18 18 18 1 2 22 -1 1 1 5 5 5 6 7 -1 1 16          | False
 3037 | 0 18 18 2 2 -1 1 1 5 5 6 -1 1 16                    | False
 3038 | 0 18 18 2 2 22 -1 1 1 5 5 6 7 -1 1 16               | False
 3039 | 0 18 18 1 2 -1 1 1 5 5 6 -1 1 16                    | False
 3040 | 0 18 18 1 2 22 -1 1 1 5 5 6 7 -1 1 16               | False
 3041 | 0 18 2 2 -1 1 1 5 6 -1 1 16                         | False
 3042 | 0 18 2 2 22 -1 1 1 5 6 7 -1 1 16                    | False
 3043 | 0 18 2 0 2 -1 1 1 5 5 6 -1 1 16                     | False
 3044 | 0 18 2 0 2 22 -1 1 1 5 5 6 7 -1 1 16                | False
 3045 | 0 18 2 1 2 -1 1 1 5 5 6 -1 1 16                     | False
 3046 | 0 18 2 1 2 22 -1 1 1 5 5 6 7 -1 1 16                | False
 3047 | 0 18 16 0 2 -1 1 1 5 5 6 -1 1 16                    | False
 3381 | 25 22 2 2 -1 1 2 5 6 -1 1 16                        | False
 3048 | 0 18 16 0 2 22 -1 1 1 5 5 6 7 -1 1 16               | False
 3049 | 0 18 1 13 1 2 -1 1 1 5 5 5 6 -1 1 16                | False
 3050 | 0 18 1 13 1 2 22 -1 1 1 5 5 5 6 7 -1 1 16           | False
 3051 | 0 18 1 15 2 -1 1 1 5 5 6 -1 1 16                    | False
 3052 | 0 18 1 15 2 22 -1 1 1 5 5 6 7 -1 1 16               | False
 3053 | 0 18 1 24 2 -1 1 1 5 5 6 -1 1 16                    | False
 3054 | 0 18 1 24 2 22 -1 1 1 5 5 6 7 -1 1 16               | False
 3055 | 0 18 1 24 24 2 -1 1 1 5 5 5 6 -1 1 16               | False
 3056 | 0 18 1 24 24 2 22 -1 1 1 5 5 5 6 7 -1 1 16          | False
 3057 | 0 18 1 24 1 2 -1 1 1 5 5 5 6 -1 1 16                | False
 3058 | 0 18 1 24 1 2 22 -1 1 1 5 5 5 6 7 -1 1 16           | False
 3059 | 0 18 1 22 2 -1 1 1 5 5 6 -1 1 16                    | False
 3060 | 0 18 1 22 2 22 -1 1 1 5 5 6 7 -1 1 16               | False
 3061 | 0 18 1 22 1 2 -1 1 1 5 5 5 6 -1 1 16                | False
 3062 | 0 18 1 22 1 2 22 -1 1 1 5 5 5 6 7 -1 1 16           | False
 3063 | 0 18 1 25 2 -1 1 1 5 5 6 -1 1 16                    | False
 3064 | 0 18 1 25 2 22 -1 1 1 5 5 6 7 -1 1 16               | False
 3065 | 0 18 1 0 2 -1 1 1 5 5 6 -1 1 16                     | False
 3066 | 0 18 1 0 2 22 -1 1 1 5 5 6 7 -1 1 16                | False
 3067 | 0 18 1 18 2 -1 1 1 5 5 6 -1 1 16                    | False
 3068 | 0 18 1 18 2 22 -1 1 1 5 5 6 7 -1 1 16               | False
 3069 | 0 18 1 18 2 2 -1 1 1 5 5 5 6 -1 1 16                | False
 3070 | 0 18 1 18 2 2 22 -1 1 1 5 5 5 6 7 -1 1 16           | False
 3071 | 0 18 1 18 1 2 -1 1 1 5 5 5 6 -1 1 16                | False
 3072 | 0 18 1 18 1 2 22 -1 1 1 5 5 5 6 7 -1 1 16           | False
 3073 | 0 18 1 2 2 -1 1 1 5 5 6 -1 1 16                     | False
 3074 | 0 18 1 2 2 22 -1 1 1 5 5 6 7 -1 1 16                | False
 3075 | 0 18 1 2 2 2 -1 1 1 5 5 5 6 -1 1 16                 | False
 3076 | 0 18 1 2 2 2 22 -1 1 1 5 5 5 6 7 -1 1 16            | False
 3077 | 0 18 21 2 -1 1 1 5 6 -1 1 16                        | False
 3078 | 0 18 21 2 22 -1 1 1 5 6 7 -1 1 16                   | False
 3079 | 0 18 22 14 2 -1 1 1 2 5 6 -1 1 16                   | False
 3080 | 0 18 22 14 2 22 -1 1 1 2 5 6 7 -1 1 16              | False
 3081 | 0 18 22 15 1 2 -1 1 1 2 5 5 6 -1 1 16               | False
 3082 | 0 18 22 15 1 2 22 -1 1 1 2 5 5 6 7 -1 1 16          | False
 3083 | 0 18 22 24 2 -1 1 1 2 5 6 -1 1 16                   | False
 3084 | 0 18 22 24 2 22 -1 1 1 2 5 6 7 -1 1 16              | False
 3085 | 0 18 22 24 24 2 -1 1 1 2 5 5 6 -1 1 16              | False
 3086 | 0 18 22 24 24 2 22 -1 1 1 2 5 5 6 7 -1 1 16         | False
 3087 | 0 18 22 24 2 2 -1 1 1 2 5 5 6 -1 1 16               | False
 3088 | 0 18 22 24 2 2 22 -1 1 1 2 5 5 6 7 -1 1 16          | False
 3089 | 0 18 22 24 1 2 -1 1 1 2 5 5 6 -1 1 16               | False
 3090 | 0 18 22 24 1 2 22 -1 1 1 2 5 5 6 7 -1 1 16          | False
 3091 | 0 18 22 22 2 -1 1 1 2 5 6 -1 1 16                   | False
 3092 | 0 18 22 22 2 22 -1 1 1 2 5 6 7 -1 1 16              | False
 3093 | 0 18 22 22 1 2 -1 1 1 2 5 5 6 -1 1 16               | False
 3094 | 0 18 22 22 1 2 22 -1 1 1 2 5 5 6 7 -1 1 16          | False
 3095 | 0 18 22 25 2 -1 1 1 2 5 6 -1 1 16                   | False
 3096 | 0 18 22 25 2 22 -1 1 1 2 5 6 7 -1 1 16              | False
 3097 | 0 18 22 0 25 2 -1 1 1 2 5 5 6 -1 1 16               | False
 3098 | 0 18 22 0 25 2 22 -1 1 1 2 5 5 6 7 -1 1 16          | False
 3099 | 0 18 22 15 2 -1 1 1 2 5 6 -1 1 16                   | False
 3100 | 0 18 22 15 2 22 -1 1 1 2 5 6 7 -1 1 16              | False
 3101 | 0 18 22 18 18 18 2 -1 1 1 2 5 5 5 6 -1 1 16         | False
 3102 | 0 18 22 18 18 18 2 22 -1 1 1 2 5 5 5 6 7 -1 1 16    | False
 3103 | 0 18 22 18 18 1 2 -1 1 1 2 5 5 5 6 -1 1 16          | False
 3104 | 0 18 22 18 18 1 2 22 -1 1 1 2 5 5 5 6 7 -1 1 16     | False
 3105 | 0 18 22 18 2 2 -1 1 1 2 5 5 6 -1 1 16               | False
 3106 | 0 18 22 18 2 2 22 -1 1 1 2 5 5 6 7 -1 1 16          | False
 3107 | 0 18 22 18 1 2 -1 1 1 2 5 5 6 -1 1 16               | False
 3108 | 0 18 22 18 1 2 22 -1 1 1 2 5 5 6 7 -1 1 16          | False
 3109 | 0 18 22 2 2 -1 1 1 2 5 6 -1 1 16                    | False
 3110 | 0 18 22 2 2 22 -1 1 1 2 5 6 7 -1 1 16               | False
 3111 | 0 18 22 2 0 2 -1 1 1 2 5 5 6 -1 1 16                | False
 3112 | 0 18 22 2 0 2 22 -1 1 1 2 5 5 6 7 -1 1 16           | False
 3113 | 0 18 22 2 1 2 -1 1 1 2 5 5 6 -1 1 16                | False
 3114 | 0 18 22 2 1 2 22 -1 1 1 2 5 5 6 7 -1 1 16           | False
 3115 | 0 18 22 16 0 2 -1 1 1 2 5 5 6 -1 1 16               | False
 3116 | 0 18 22 16 0 2 22 -1 1 1 2 5 5 6 7 -1 1 16          | False
 3117 | 0 18 22 1 13 1 2 -1 1 1 2 5 5 5 6 -1 1 16           | False
 3118 | 0 18 22 1 13 1 2 22 -1 1 1 2 5 5 5 6 7 -1 1 16      | False
 3119 | 0 18 22 1 15 2 -1 1 1 2 5 5 6 -1 1 16               | False
 3120 | 0 18 22 1 15 2 22 -1 1 1 2 5 5 6 7 -1 1 16          | False
 3121 | 0 18 22 1 24 2 -1 1 1 2 5 5 6 -1 1 16               | False
 3122 | 0 18 22 1 24 2 22 -1 1 1 2 5 5 6 7 -1 1 16          | False
 3123 | 0 18 22 1 24 24 2 -1 1 1 2 5 5 5 6 -1 1 16          | False
 3124 | 0 18 22 1 24 24 2 22 -1 1 1 2 5 5 5 6 7 -1 1 16     | False
 3125 | 0 18 22 1 24 1 2 -1 1 1 2 5 5 5 6 -1 1 16           | False
 3126 | 0 18 22 1 24 1 2 22 -1 1 1 2 5 5 5 6 7 -1 1 16      | False
 3127 | 0 18 22 1 22 2 -1 1 1 2 5 5 6 -1 1 16               | False
 3128 | 0 18 22 1 22 2 22 -1 1 1 2 5 5 6 7 -1 1 16          | False
 3129 | 0 18 22 1 22 1 2 -1 1 1 2 5 5 5 6 -1 1 16           | False
 3130 | 0 18 22 1 22 1 2 22 -1 1 1 2 5 5 5 6 7 -1 1 16      | False
 3131 | 0 18 22 1 25 2 -1 1 1 2 5 5 6 -1 1 16               | False
 3132 | 0 18 22 1 25 2 22 -1 1 1 2 5 5 6 7 -1 1 16          | False
 3133 | 0 18 22 1 0 2 -1 1 1 2 5 5 6 -1 1 16                | False
 3134 | 0 18 22 1 0 2 22 -1 1 1 2 5 5 6 7 -1 1 16           | False
 3135 | 0 18 22 1 18 2 -1 1 1 2 5 5 6 -1 1 16               | False
 3136 | 0 18 22 1 18 2 22 -1 1 1 2 5 5 6 7 -1 1 16          | False
 3137 | 0 18 22 1 18 2 2 -1 1 1 2 5 5 5 6 -1 1 16           | False
 3138 | 0 18 22 1 18 2 2 22 -1 1 1 2 5 5 5 6 7 -1 1 16      | False
 3139 | 0 18 22 1 18 1 2 -1 1 1 2 5 5 5 6 -1 1 16           | False
 3140 | 0 18 22 1 18 1 2 22 -1 1 1 2 5 5 5 6 7 -1 1 16      | False
 3141 | 0 18 22 1 2 2 -1 1 1 2 5 5 6 -1 1 16                | False
 3142 | 0 18 22 1 2 2 22 -1 1 1 2 5 5 6 7 -1 1 16           | False
 3143 | 0 18 22 1 2 2 2 -1 1 1 2 5 5 5 6 -1 1 16            | False
 3144 | 0 18 22 1 2 2 2 22 -1 1 1 2 5 5 5 6 7 -1 1 16       | False
 3145 | 0 18 22 21 2 -1 1 1 2 5 6 -1 1 16                   | False
 3146 | 0 18 22 21 2 22 -1 1 1 2 5 6 7 -1 1 16              | False
 3147 | 0 25 14 2 -1 1 1 5 6 -1 1 16                        | False
 3148 | 0 25 14 2 22 -1 1 1 5 6 7 -1 1 16                   | False
 3149 | 0 25 15 1 2 -1 1 1 5 5 6 -1 1 16                    | False
 3150 | 0 25 15 1 2 22 -1 1 1 5 5 6 7 -1 1 16               | False
 3151 | 0 25 24 2 -1 1 1 5 6 -1 1 16                        | False
 3152 | 0 25 24 2 22 -1 1 1 5 6 7 -1 1 16                   | False
 3153 | 0 25 24 24 2 -1 1 1 5 5 6 -1 1 16                   | False
 3154 | 0 25 24 24 2 22 -1 1 1 5 5 6 7 -1 1 16              | False
 3155 | 0 25 24 2 2 -1 1 1 5 5 6 -1 1 16                    | False
 3156 | 0 25 24 2 2 22 -1 1 1 5 5 6 7 -1 1 16               | False
 3157 | 0 25 24 1 2 -1 1 1 5 5 6 -1 1 16                    | False
 3158 | 0 25 24 1 2 22 -1 1 1 5 5 6 7 -1 1 16               | False
 3159 | 0 25 22 2 -1 1 1 5 6 -1 1 16                        | False
 3160 | 0 25 22 2 22 -1 1 1 5 6 7 -1 1 16                   | False
 3161 | 0 25 22 1 2 -1 1 1 5 5 6 -1 1 16                    | False
 3162 | 0 25 22 1 2 22 -1 1 1 5 5 6 7 -1 1 16               | False
 3163 | 0 25 25 2 -1 1 1 5 6 -1 1 16                        | False
 3164 | 0 25 25 2 22 -1 1 1 5 6 7 -1 1 16                   | False
 3165 | 0 25 0 25 2 -1 1 1 5 5 6 -1 1 16                    | False
 3166 | 0 25 0 25 2 22 -1 1 1 5 5 6 7 -1 1 16               | False
 3167 | 0 25 15 2 -1 1 1 5 6 -1 1 16                        | False
 3168 | 0 25 15 2 22 -1 1 1 5 6 7 -1 1 16                   | False
 3169 | 0 25 18 18 18 2 -1 1 1 5 5 5 6 -1 1 16              | False
 3170 | 0 25 18 18 18 2 22 -1 1 1 5 5 5 6 7 -1 1 16         | False
 3171 | 0 25 18 18 1 2 -1 1 1 5 5 5 6 -1 1 16               | False
 3172 | 0 25 18 18 1 2 22 -1 1 1 5 5 5 6 7 -1 1 16          | False
 3173 | 0 25 18 2 2 -1 1 1 5 5 6 -1 1 16                    | False
 3174 | 0 25 18 2 2 22 -1 1 1 5 5 6 7 -1 1 16               | False
 3175 | 0 25 18 1 2 -1 1 1 5 5 6 -1 1 16                    | False
 3176 | 0 25 18 1 2 22 -1 1 1 5 5 6 7 -1 1 16               | False
 3177 | 0 25 2 2 -1 1 1 5 6 -1 1 16                         | False
 3178 | 0 25 2 2 22 -1 1 1 5 6 7 -1 1 16                    | False
 3179 | 0 25 2 0 2 -1 1 1 5 5 6 -1 1 16                     | False
 3180 | 0 25 2 0 2 22 -1 1 1 5 5 6 7 -1 1 16                | False
 3181 | 0 25 2 1 2 -1 1 1 5 5 6 -1 1 16                     | False
 3182 | 0 25 2 1 2 22 -1 1 1 5 5 6 7 -1 1 16                | False
 3183 | 0 25 16 0 2 -1 1 1 5 5 6 -1 1 16                    | False
 3184 | 0 25 16 0 2 22 -1 1 1 5 5 6 7 -1 1 16               | False
 3185 | 0 25 1 13 1 2 -1 1 1 5 5 5 6 -1 1 16                | False
 3186 | 0 25 1 13 1 2 22 -1 1 1 5 5 5 6 7 -1 1 16           | False
 3187 | 0 25 1 15 2 -1 1 1 5 5 6 -1 1 16                    | False
 3188 | 0 25 1 15 2 22 -1 1 1 5 5 6 7 -1 1 16               | False
 3189 | 0 25 1 24 2 -1 1 1 5 5 6 -1 1 16                    | False
 3190 | 0 25 1 24 2 22 -1 1 1 5 5 6 7 -1 1 16               | False
 3191 | 0 25 1 24 24 2 -1 1 1 5 5 5 6 -1 1 16               | False
 3192 | 0 25 1 24 24 2 22 -1 1 1 5 5 5 6 7 -1 1 16          | False
 3193 | 0 25 1 24 1 2 -1 1 1 5 5 5 6 -1 1 16                | False
 3194 | 0 25 1 24 1 2 22 -1 1 1 5 5 5 6 7 -1 1 16           | False
 3195 | 0 25 1 22 2 -1 1 1 5 5 6 -1 1 16                    | False
 3196 | 0 25 1 22 2 22 -1 1 1 5 5 6 7 -1 1 16               | False
 3197 | 0 25 1 22 1 2 -1 1 1 5 5 5 6 -1 1 16                | False
 3198 | 0 25 1 22 1 2 22 -1 1 1 5 5 5 6 7 -1 1 16           | False
 3199 | 0 25 1 25 2 -1 1 1 5 5 6 -1 1 16                    | False
 3200 | 0 25 1 25 2 22 -1 1 1 5 5 6 7 -1 1 16               | False
 3201 | 0 25 1 0 2 -1 1 1 5 5 6 -1 1 16                     | False
 3202 | 0 25 1 0 2 22 -1 1 1 5 5 6 7 -1 1 16                | False
 3203 | 0 25 1 18 2 -1 1 1 5 5 6 -1 1 16                    | False
 3204 | 0 25 1 18 2 22 -1 1 1 5 5 6 7 -1 1 16               | False
 3205 | 0 25 1 18 2 2 -1 1 1 5 5 5 6 -1 1 16                | False
 3206 | 0 25 1 18 2 2 22 -1 1 1 5 5 5 6 7 -1 1 16           | False
 3207 | 0 25 1 18 1 2 -1 1 1 5 5 5 6 -1 1 16                | False
 3208 | 0 25 1 18 1 2 22 -1 1 1 5 5 5 6 7 -1 1 16           | False
 3209 | 0 25 1 2 2 -1 1 1 5 5 6 -1 1 16                     | False
 3210 | 0 25 1 2 2 22 -1 1 1 5 5 6 7 -1 1 16                | False
 3211 | 0 25 1 2 2 2 -1 1 1 5 5 5 6 -1 1 16                 | False
 3212 | 0 25 1 2 2 2 22 -1 1 1 5 5 5 6 7 -1 1 16            | False
 3213 | 0 25 21 2 -1 1 1 5 6 -1 1 16                        | False
 3214 | 0 25 21 2 22 -1 1 1 5 6 7 -1 1 16                   | False
 3215 | 0 25 22 14 2 -1 1 1 2 5 6 -1 1 16                   | False
 3216 | 0 25 22 14 2 22 -1 1 1 2 5 6 7 -1 1 16              | False
 3217 | 0 25 22 15 1 2 -1 1 1 2 5 5 6 -1 1 16               | False
 3218 | 0 25 22 15 1 2 22 -1 1 1 2 5 5 6 7 -1 1 16          | False
 3219 | 0 25 22 24 2 -1 1 1 2 5 6 -1 1 16                   | False
 3220 | 0 25 22 24 2 22 -1 1 1 2 5 6 7 -1 1 16              | False
 3221 | 0 25 22 24 24 2 -1 1 1 2 5 5 6 -1 1 16              | False
 3222 | 0 25 22 24 24 2 22 -1 1 1 2 5 5 6 7 -1 1 16         | False
 3223 | 0 25 22 24 2 2 -1 1 1 2 5 5 6 -1 1 16               | False
 3224 | 0 25 22 24 2 2 22 -1 1 1 2 5 5 6 7 -1 1 16          | False
 3225 | 0 25 22 24 1 2 -1 1 1 2 5 5 6 -1 1 16               | False
 3226 | 0 25 22 24 1 2 22 -1 1 1 2 5 5 6 7 -1 1 16          | False
 3227 | 0 25 22 22 2 -1 1 1 2 5 6 -1 1 16                   | False
 3228 | 0 25 22 22 2 22 -1 1 1 2 5 6 7 -1 1 16              | False
 3229 | 0 25 22 22 1 2 -1 1 1 2 5 5 6 -1 1 16               | False
 3230 | 0 25 22 22 1 2 22 -1 1 1 2 5 5 6 7 -1 1 16          | False
 3231 | 0 25 22 25 2 -1 1 1 2 5 6 -1 1 16                   | False
 3232 | 0 25 22 25 2 22 -1 1 1 2 5 6 7 -1 1 16              | False
 3233 | 0 25 22 0 25 2 -1 1 1 2 5 5 6 -1 1 16               | False
 3234 | 0 25 22 0 25 2 22 -1 1 1 2 5 5 6 7 -1 1 16          | False
 3235 | 0 25 22 15 2 -1 1 1 2 5 6 -1 1 16                   | False
 3236 | 0 25 22 15 2 22 -1 1 1 2 5 6 7 -1 1 16              | False
 3237 | 0 25 22 18 18 18 2 -1 1 1 2 5 5 5 6 -1 1 16         | False
 3238 | 0 25 22 18 18 18 2 22 -1 1 1 2 5 5 5 6 7 -1 1 16    | False
 3239 | 0 25 22 18 18 1 2 -1 1 1 2 5 5 5 6 -1 1 16          | False
 3240 | 0 25 22 18 18 1 2 22 -1 1 1 2 5 5 5 6 7 -1 1 16     | False
 3241 | 0 25 22 18 2 2 -1 1 1 2 5 5 6 -1 1 16               | False
 3242 | 0 25 22 18 2 2 22 -1 1 1 2 5 5 6 7 -1 1 16          | False
 3243 | 0 25 22 18 1 2 -1 1 1 2 5 5 6 -1 1 16               | False
 3244 | 0 25 22 18 1 2 22 -1 1 1 2 5 5 6 7 -1 1 16          | False
 3245 | 0 25 22 2 2 -1 1 1 2 5 6 -1 1 16                    | False
 3246 | 0 25 22 2 2 22 -1 1 1 2 5 6 7 -1 1 16               | False
 3247 | 0 25 22 2 0 2 -1 1 1 2 5 5 6 -1 1 16                | False
 3248 | 0 25 22 2 0 2 22 -1 1 1 2 5 5 6 7 -1 1 16           | False
 3249 | 0 25 22 2 1 2 -1 1 1 2 5 5 6 -1 1 16                | False
 3250 | 0 25 22 2 1 2 22 -1 1 1 2 5 5 6 7 -1 1 16           | False
 3251 | 0 25 22 16 0 2 -1 1 1 2 5 5 6 -1 1 16               | False
 3252 | 0 25 22 16 0 2 22 -1 1 1 2 5 5 6 7 -1 1 16          | False
 3253 | 0 25 22 1 13 1 2 -1 1 1 2 5 5 5 6 -1 1 16           | False
 3254 | 0 25 22 1 13 1 2 22 -1 1 1 2 5 5 5 6 7 -1 1 16      | False
 3255 | 0 25 22 1 15 2 -1 1 1 2 5 5 6 -1 1 16               | False
 3256 | 0 25 22 1 15 2 22 -1 1 1 2 5 5 6 7 -1 1 16          | False
 3257 | 0 25 22 1 24 2 -1 1 1 2 5 5 6 -1 1 16               | False
 3258 | 0 25 22 1 24 2 22 -1 1 1 2 5 5 6 7 -1 1 16          | False
 3259 | 0 25 22 1 24 24 2 -1 1 1 2 5 5 5 6 -1 1 16          | False
 3260 | 0 25 22 1 24 24 2 22 -1 1 1 2 5 5 5 6 7 -1 1 16     | False
 3261 | 0 25 22 1 24 1 2 -1 1 1 2 5 5 5 6 -1 1 16           | False
 3262 | 0 25 22 1 24 1 2 22 -1 1 1 2 5 5 5 6 7 -1 1 16      | False
 3263 | 0 25 22 1 22 2 -1 1 1 2 5 5 6 -1 1 16               | False
 3264 | 0 25 22 1 22 2 22 -1 1 1 2 5 5 6 7 -1 1 16          | False
 3382 | 25 22 2 2 22 -1 1 2 5 6 7 -1 1 16                   | False
 3265 | 0 25 22 1 22 1 2 -1 1 1 2 5 5 5 6 -1 1 16           | False
 3266 | 0 25 22 1 22 1 2 22 -1 1 1 2 5 5 5 6 7 -1 1 16      | False
 3267 | 0 25 22 1 25 2 -1 1 1 2 5 5 6 -1 1 16               | False
 3268 | 0 25 22 1 25 2 22 -1 1 1 2 5 5 6 7 -1 1 16          | False
 3269 | 0 25 22 1 0 2 -1 1 1 2 5 5 6 -1 1 16                | False
 3270 | 0 25 22 1 0 2 22 -1 1 1 2 5 5 6 7 -1 1 16           | False
 3271 | 0 25 22 1 18 2 -1 1 1 2 5 5 6 -1 1 16               | False
 3272 | 0 25 22 1 18 2 22 -1 1 1 2 5 5 6 7 -1 1 16          | False
 3273 | 0 25 22 1 18 2 2 -1 1 1 2 5 5 5 6 -1 1 16           | False
 3274 | 0 25 22 1 18 2 2 22 -1 1 1 2 5 5 5 6 7 -1 1 16      | False
 3275 | 0 25 22 1 18 1 2 -1 1 1 2 5 5 5 6 -1 1 16           | False
 3276 | 0 25 22 1 18 1 2 22 -1 1 1 2 5 5 5 6 7 -1 1 16      | False
 3277 | 0 25 22 1 2 2 -1 1 1 2 5 5 6 -1 1 16                | False
 3278 | 0 25 22 1 2 2 22 -1 1 1 2 5 5 6 7 -1 1 16           | False
 3279 | 0 25 22 1 2 2 2 -1 1 1 2 5 5 5 6 -1 1 16            | False
 3280 | 0 25 22 1 2 2 2 22 -1 1 1 2 5 5 5 6 7 -1 1 16       | False
 3281 | 0 25 22 21 2 -1 1 1 2 5 6 -1 1 16                   | False
 3282 | 0 25 22 21 2 22 -1 1 1 2 5 6 7 -1 1 16              | False
 3284 | 25 14 2 22 -1 1 5 6 7 -1 1 16                       | False
 3285 | 25 15 1 2 -1 1 5 5 6 -1 1 16                        | False
 3286 | 25 15 1 2 22 -1 1 5 5 6 7 -1 1 16                   | False
 3287 | 25 24 2 -1 1 5 6 -1 1 16                            | False
 3288 | 25 24 2 22 -1 1 5 6 7 -1 1 16                       | False
 3289 | 25 24 24 2 -1 1 5 5 6 -1 1 16                       | False
 3290 | 25 24 24 2 22 -1 1 5 5 6 7 -1 1 16                  | False
 3291 | 25 24 2 2 -1 1 5 5 6 -1 1 16                        | False
 3292 | 25 24 2 2 22 -1 1 5 5 6 7 -1 1 16                   | False
 3293 | 25 24 1 2 -1 1 5 5 6 -1 1 16                        | False
 3294 | 25 24 1 2 22 -1 1 5 5 6 7 -1 1 16                   | False
 3295 | 25 22 2 -1 1 5 6 -1 1 16                            | False
 3296 | 25 22 2 22 -1 1 5 6 7 -1 1 16                       | False
 3297 | 25 22 1 2 -1 1 5 5 6 -1 1 16                        | False
 3298 | 25 22 1 2 22 -1 1 5 5 6 7 -1 1 16                   | False
 3299 | 25 25 2 -1 1 5 6 -1 1 16                            | False
 3300 | 25 25 2 22 -1 1 5 6 7 -1 1 16                       | False
 3301 | 25 0 25 2 -1 1 5 5 6 -1 1 16                        | False
 3302 | 25 0 25 2 22 -1 1 5 5 6 7 -1 1 16                   | False
 3303 | 25 15 2 -1 1 5 6 -1 1 16                            | False
 3304 | 25 15 2 22 -1 1 5 6 7 -1 1 16                       | False
 3305 | 25 18 18 18 2 -1 1 5 5 5 6 -1 1 16                  | False
 3306 | 25 18 18 18 2 22 -1 1 5 5 5 6 7 -1 1 16             | False
 3307 | 25 18 18 1 2 -1 1 5 5 5 6 -1 1 16                   | False
 3308 | 25 18 18 1 2 22 -1 1 5 5 5 6 7 -1 1 16              | False
 3309 | 25 18 2 2 -1 1 5 5 6 -1 1 16                        | False
 3310 | 25 18 2 2 22 -1 1 5 5 6 7 -1 1 16                   | False
 3311 | 25 18 1 2 -1 1 5 5 6 -1 1 16                        | False
 3312 | 25 18 1 2 22 -1 1 5 5 6 7 -1 1 16                   | False
 3313 | 25 2 2 -1 1 5 6 -1 1 16                             | False
 3314 | 25 2 2 22 -1 1 5 6 7 -1 1 16                        | False
 3315 | 25 2 0 2 -1 1 5 5 6 -1 1 16                         | False
 3316 | 25 2 0 2 22 -1 1 5 5 6 7 -1 1 16                    | False
 3317 | 25 2 1 2 -1 1 5 5 6 -1 1 16                         | False
 3318 | 25 2 1 2 22 -1 1 5 5 6 7 -1 1 16                    | False
 3319 | 25 16 0 2 -1 1 5 5 6 -1 1 16                        | False
 3320 | 25 16 0 2 22 -1 1 5 5 6 7 -1 1 16                   | False
 3321 | 25 1 13 1 2 -1 1 5 5 5 6 -1 1 16                    | False
 3322 | 25 1 13 1 2 22 -1 1 5 5 5 6 7 -1 1 16               | False
 3323 | 25 1 15 2 -1 1 5 5 6 -1 1 16                        | False
 3324 | 25 1 15 2 22 -1 1 5 5 6 7 -1 1 16                   | False
 3325 | 25 1 24 2 -1 1 5 5 6 -1 1 16                        | False
 3326 | 25 1 24 2 22 -1 1 5 5 6 7 -1 1 16                   | False
 3327 | 25 1 24 24 2 -1 1 5 5 5 6 -1 1 16                   | False
 3328 | 25 1 24 24 2 22 -1 1 5 5 5 6 7 -1 1 16              | False
 3329 | 25 1 24 1 2 -1 1 5 5 5 6 -1 1 16                    | False
 3330 | 25 1 24 1 2 22 -1 1 5 5 5 6 7 -1 1 16               | False
 3331 | 25 1 22 2 -1 1 5 5 6 -1 1 16                        | False
 3332 | 25 1 22 2 22 -1 1 5 5 6 7 -1 1 16                   | False
 3333 | 25 1 22 1 2 -1 1 5 5 5 6 -1 1 16                    | False
 3334 | 25 1 22 1 2 22 -1 1 5 5 5 6 7 -1 1 16               | False
 3335 | 25 1 25 2 -1 1 5 5 6 -1 1 16                        | False
 3336 | 25 1 25 2 22 -1 1 5 5 6 7 -1 1 16                   | False
 3337 | 25 1 0 2 -1 1 5 5 6 -1 1 16                         | False
 3338 | 25 1 0 2 22 -1 1 5 5 6 7 -1 1 16                    | False
 3339 | 25 1 18 2 -1 1 5 5 6 -1 1 16                        | False
 3340 | 25 1 18 2 22 -1 1 5 5 6 7 -1 1 16                   | False
 3341 | 25 1 18 2 2 -1 1 5 5 5 6 -1 1 16                    | False
 3342 | 25 1 18 2 2 22 -1 1 5 5 5 6 7 -1 1 16               | False
 3343 | 25 1 18 1 2 -1 1 5 5 5 6 -1 1 16                    | False
 3344 | 25 1 18 1 2 22 -1 1 5 5 5 6 7 -1 1 16               | False
 3345 | 25 1 2 2 -1 1 5 5 6 -1 1 16                         | False
 3346 | 25 1 2 2 22 -1 1 5 5 6 7 -1 1 16                    | False
 3347 | 25 1 2 2 2 -1 1 5 5 5 6 -1 1 16                     | False
 3348 | 25 1 2 2 2 22 -1 1 5 5 5 6 7 -1 1 16                | False
 3349 | 25 21 2 -1 1 5 6 -1 1 16                            | False
 3350 | 25 21 2 22 -1 1 5 6 7 -1 1 16                       | False
 3351 | 25 22 14 2 -1 1 2 5 6 -1 1 16                       | False
 3352 | 25 22 14 2 22 -1 1 2 5 6 7 -1 1 16                  | False
 3353 | 25 22 15 1 2 -1 1 2 5 5 6 -1 1 16                   | False
 3354 | 25 22 15 1 2 22 -1 1 2 5 5 6 7 -1 1 16              | False
 3355 | 25 22 24 2 -1 1 2 5 6 -1 1 16                       | False
 3356 | 25 22 24 2 22 -1 1 2 5 6 7 -1 1 16                  | False
 3357 | 25 22 24 24 2 -1 1 2 5 5 6 -1 1 16                  | False
 3358 | 25 22 24 24 2 22 -1 1 2 5 5 6 7 -1 1 16             | False
 3359 | 25 22 24 2 2 -1 1 2 5 5 6 -1 1 16                   | False
 3360 | 25 22 24 2 2 22 -1 1 2 5 5 6 7 -1 1 16              | False
 3361 | 25 22 24 1 2 -1 1 2 5 5 6 -1 1 16                   | False
 3362 | 25 22 24 1 2 22 -1 1 2 5 5 6 7 -1 1 16              | False
 3363 | 25 22 22 2 -1 1 2 5 6 -1 1 16                       | False
 3364 | 25 22 22 2 22 -1 1 2 5 6 7 -1 1 16                  | False
 3365 | 25 22 22 1 2 -1 1 2 5 5 6 -1 1 16                   | False
 3366 | 25 22 22 1 2 22 -1 1 2 5 5 6 7 -1 1 16              | False
 3367 | 25 22 25 2 -1 1 2 5 6 -1 1 16                       | False
 3368 | 25 22 25 2 22 -1 1 2 5 6 7 -1 1 16                  | False
 3369 | 25 22 0 25 2 -1 1 2 5 5 6 -1 1 16                   | False
 3370 | 25 22 0 25 2 22 -1 1 2 5 5 6 7 -1 1 16              | False
 3371 | 25 22 15 2 -1 1 2 5 6 -1 1 16                       | False
 3372 | 25 22 15 2 22 -1 1 2 5 6 7 -1 1 16                  | False
 3373 | 25 22 18 18 18 2 -1 1 2 5 5 5 6 -1 1 16             | False
 3374 | 25 22 18 18 18 2 22 -1 1 2 5 5 5 6 7 -1 1 16        | False
 3375 | 25 22 18 18 1 2 -1 1 2 5 5 5 6 -1 1 16              | False
 3376 | 25 22 18 18 1 2 22 -1 1 2 5 5 5 6 7 -1 1 16         | False
 3377 | 25 22 18 2 2 -1 1 2 5 5 6 -1 1 16                   | False
 3378 | 25 22 18 2 2 22 -1 1 2 5 5 6 7 -1 1 16              | False
 3379 | 25 22 18 1 2 -1 1 2 5 5 6 -1 1 16                   | False
 3380 | 25 22 18 1 2 22 -1 1 2 5 5 6 7 -1 1 16              | False
 3383 | 25 22 2 0 2 -1 1 2 5 5 6 -1 1 16                    | False
 3384 | 25 22 2 0 2 22 -1 1 2 5 5 6 7 -1 1 16               | False
 3385 | 25 22 2 1 2 -1 1 2 5 5 6 -1 1 16                    | False
 3386 | 25 22 2 1 2 22 -1 1 2 5 5 6 7 -1 1 16               | False
 3387 | 25 22 16 0 2 -1 1 2 5 5 6 -1 1 16                   | False
 3388 | 25 22 16 0 2 22 -1 1 2 5 5 6 7 -1 1 16              | False
 3389 | 25 22 1 13 1 2 -1 1 2 5 5 5 6 -1 1 16               | False
 3390 | 25 22 1 13 1 2 22 -1 1 2 5 5 5 6 7 -1 1 16          | False
 3391 | 25 22 1 15 2 -1 1 2 5 5 6 -1 1 16                   | False
 3392 | 25 22 1 15 2 22 -1 1 2 5 5 6 7 -1 1 16              | False
 3393 | 25 22 1 24 2 -1 1 2 5 5 6 -1 1 16                   | False
 3394 | 25 22 1 24 2 22 -1 1 2 5 5 6 7 -1 1 16              | False
 3395 | 25 22 1 24 24 2 -1 1 2 5 5 5 6 -1 1 16              | False
 3396 | 25 22 1 24 24 2 22 -1 1 2 5 5 5 6 7 -1 1 16         | False
 3397 | 25 22 1 24 1 2 -1 1 2 5 5 5 6 -1 1 16               | False
 3398 | 25 22 1 24 1 2 22 -1 1 2 5 5 5 6 7 -1 1 16          | False
 3399 | 25 22 1 22 2 -1 1 2 5 5 6 -1 1 16                   | False
 3400 | 25 22 1 22 2 22 -1 1 2 5 5 6 7 -1 1 16              | False
 3401 | 25 22 1 22 1 2 -1 1 2 5 5 5 6 -1 1 16               | False
 3402 | 25 22 1 22 1 2 22 -1 1 2 5 5 5 6 7 -1 1 16          | False
 3403 | 25 22 1 25 2 -1 1 2 5 5 6 -1 1 16                   | False
 3404 | 25 22 1 25 2 22 -1 1 2 5 5 6 7 -1 1 16              | False
 3405 | 25 22 1 0 2 -1 1 2 5 5 6 -1 1 16                    | False
 3406 | 25 22 1 0 2 22 -1 1 2 5 5 6 7 -1 1 16               | False
 3407 | 25 22 1 18 2 -1 1 2 5 5 6 -1 1 16                   | False
 3408 | 25 22 1 18 2 22 -1 1 2 5 5 6 7 -1 1 16              | False
 3409 | 25 22 1 18 2 2 -1 1 2 5 5 5 6 -1 1 16               | False
 3410 | 25 22 1 18 2 2 22 -1 1 2 5 5 5 6 7 -1 1 16          | False
 3411 | 25 22 1 18 1 2 -1 1 2 5 5 5 6 -1 1 16               | False
 3412 | 25 22 1 18 1 2 22 -1 1 2 5 5 5 6 7 -1 1 16          | False
 3413 | 25 22 1 2 2 -1 1 2 5 5 6 -1 1 16                    | False
 3414 | 25 22 1 2 2 22 -1 1 2 5 5 6 7 -1 1 16               | False
 3415 | 25 22 1 2 2 2 -1 1 2 5 5 5 6 -1 1 16                | False
 3416 | 25 22 1 2 2 2 22 -1 1 2 5 5 5 6 7 -1 1 16           | False
 3417 | 25 22 21 2 -1 1 2 5 6 -1 1 16                       | False
 3418 | 25 22 21 2 22 -1 1 2 5 6 7 -1 1 16                  | False
 3419 | 0 -1 1 -1 3 17                                      | False
 3420 | 0 18 -1 1 1 -1 3 16                                 | False
 3421 | 0 25 -1 1 1 -1 3 16                                 | False
 3422 | 0 22 -1 1 1 -1 3 9                                  | False
 3423 | 22 0 -1 1 1 -1 3 9                                  | False
 3424 | 1 0 -1 1 1 -1 3 6                                   | False
 3425 | 18 0 -1 1 1 -1 3 12                                 | False
 3426 | 25 -1 1 -1 3 12                                     | False
 3427 | 21 0 -1 1 1 -1 3 12                                 | False
 3428 | 0 21 -1 1 1 -1 3 9                                  | False
 3429 | 0 0 -1 1 1 -1 3 15                                  | False
 3430 | 21 0 0 -1 1 1 1 -1 3 9                              | False
 3431 | 0 0 21 -1 1 1 1 -1 3 9                              | False
 3432 | 0 0 18 -1 1 1 1 -1 3 9                              | False
 3433 | 18 0 -1 1 1 -1 3 9                                  | False
 3434 | 18 0 0 -1 1 1 1 -1 3 9                              | False
 3435 | 0 0 18 -1 1 1 1 -1 3 9                              | False
 3436 | 8 -1 8 -1 4 7                                       | False
 3437 | 8 23 -1 8 8 -1 4 16                                 | False
 3438 | 8 0 -1 8 8 -1 4 17                                  | False
 3439 | 8 0 18 -1 8 8 8 -1 4 16                             | False
 3440 | 8 18 -1 8 8 -1 4 16                                 | False
 3441 | 8 18 0 -1 8 8 8 -1 4 16                             | False
 3442 | 8 1 -1 8 8 -1 4 2                                   | False
 3443 | 14 -1 14 -1 4 10                                    | False
 3444 | 14 21 -1 14 15 -1 4 16                              | False
 3445 | 14 23 -1 14 15 -1 4 17                              | False
 3446 | 14 0 -1 14 15 -1 4 17                               | False
 3447 | 14 0 18 -1 14 15 15 -1 4 16                         | False
 3448 | 14 0 18 0 -1 14 15 15 15 -1 4 16                    | False
 3449 | 14 18 -1 14 15 -1 4 16                              | False
 3450 | 14 18 0 -1 14 15 15 -1 4 16                         | False
 3451 | 14 1 -1 14 15 -1 4 2                                | False
 3452 | 1 24 -1 0 0 -1 4 15                                 | False
 3453 | 14 24 -1 0 0 -1 4 10                                | False
 3454 | 24 24 -1 0 0 -1 4 10                                | False
 3455 | 24 24 24 -1 0 0 0 -1 4 10                           | False
 3456 | 24 22 24 -1 0 0 0 -1 4 10                           | False
 3457 | 24 18 24 -1 0 0 0 -1 4 10                           | False
 3458 | 24 2 24 -1 0 0 0 -1 4 10                            | False
 3459 | 24 1 24 -1 0 0 0 -1 4 10                            | False
 3460 | 22 24 -1 0 0 -1 4 10                                | False
 3461 | 22 24 24 -1 0 0 0 -1 4 10                           | False
 3462 | 22 24 24 24 -1 0 0 0 0 -1 4 10                      | False
 3463 | 22 24 1 24 -1 0 0 0 0 -1 4 10                       | False
 3464 | 22 22 24 -1 0 0 0 -1 4 10                           | False
 3465 | 22 2 24 -1 0 0 0 -1 4 10                            | False
 3466 | 22 1 24 -1 0 0 0 -1 4 10                            | False
 3467 | 18 24 -1 0 0 -1 4 10                                | False
 3468 | 18 13 18 24 -1 0 0 0 0 -1 4 10                      | False
 3469 | 18 24 24 -1 0 0 0 -1 4 10                           | False
 3470 | 18 18 24 -1 0 0 0 -1 4 10                           | False
 3471 | 18 18 18 24 -1 0 0 0 0 -1 4 10                      | False
 3472 | 18 18 2 24 -1 0 0 0 0 -1 4 10                       | False
 3473 | 18 18 1 24 -1 0 0 0 0 -1 4 10                       | False
 3474 | 18 2 24 -1 0 0 0 -1 4 10                            | False
 3475 | 18 1 24 -1 0 0 0 -1 4 10                            | False
 3476 | 18 1 24 24 -1 0 0 0 0 -1 4 10                       | False
 3477 | 2 24 -1 0 0 -1 4 10                                 | False
 3478 | 2 22 24 -1 0 0 0 -1 4 10                            | False
 3479 | 2 0 24 -1 0 0 0 -1 4 10                             | False
 3480 | 2 18 24 -1 0 0 0 -1 4 10                            | False
 3481 | 2 2 24 -1 0 0 0 -1 4 10                             | False
 3482 | 2 1 24 -1 0 0 0 -1 4 10                             | False
 3483 | 1 13 1 24 -1 0 0 0 0 -1 4 10                        | False
 3484 | 1 24 24 24 -1 0 0 0 0 -1 4 10                       | False
 3485 | 1 24 22 24 -1 0 0 0 0 -1 4 10                       | False
 3486 | 1 24 2 24 -1 0 0 0 0 -1 4 10                        | False
 3487 | 1 24 1 24 -1 0 0 0 0 -1 4 10                        | False
 3488 | 1 22 24 -1 0 0 0 -1 4 10                            | False
 3489 | 1 22 24 24 -1 0 0 0 0 -1 4 10                       | False
 3490 | 1 0 24 -1 0 0 0 -1 4 10                             | False
 3491 | 1 0 24 24 -1 0 0 0 0 -1 4 10                        | False
 3492 | 1 0 1 24 -1 0 0 0 0 -1 4 10                         | False
 3493 | 1 18 24 -1 0 0 0 -1 4 10                            | False
 3494 | 1 18 1 24 -1 0 0 0 0 -1 4 10                        | False
 3495 | 1 2 24 -1 0 0 0 -1 4 10                             | False
 3496 | 1 2 1 24 -1 0 0 0 0 -1 4 10                         | False
 3497 | 0 1 24 -1 0 0 0 -1 4 15                             | False
 3498 | 0 14 24 -1 0 0 0 -1 4 10                            | False
 3499 | 0 24 24 -1 0 0 0 -1 4 10                            | False
 3500 | 0 24 24 24 -1 0 0 0 0 -1 4 10                       | False
 3501 | 0 24 22 24 -1 0 0 0 0 -1 4 10                       | False
 3502 | 0 24 18 24 -1 0 0 0 0 -1 4 10                       | False
 3503 | 0 24 2 24 -1 0 0 0 0 -1 4 10                        | False
 3504 | 0 24 1 24 -1 0 0 0 0 -1 4 10                        | False
 3505 | 0 22 24 -1 0 0 0 -1 4 10                            | False
 3506 | 0 22 24 24 -1 0 0 0 0 -1 4 10                       | False
 3507 | 0 22 24 24 24 -1 0 0 0 0 0 -1 4 10                  | False
 3508 | 0 22 24 1 24 -1 0 0 0 0 0 -1 4 10                   | False
 3509 | 0 22 22 24 -1 0 0 0 0 -1 4 10                       | False
 3510 | 0 22 2 24 -1 0 0 0 0 -1 4 10                        | False
 3511 | 0 22 1 24 -1 0 0 0 0 -1 4 10                        | False
 3512 | 0 18 24 -1 0 0 0 -1 4 10                            | False
 3513 | 0 18 13 18 24 -1 0 0 0 0 0 -1 4 10                  | False
 3514 | 0 18 24 24 -1 0 0 0 0 -1 4 10                       | False
 3515 | 0 18 18 24 -1 0 0 0 0 -1 4 10                       | False
 3516 | 0 18 18 18 24 -1 0 0 0 0 0 -1 4 10                  | False
 3517 | 0 18 18 2 24 -1 0 0 0 0 0 -1 4 10                   | False
 3518 | 0 18 18 1 24 -1 0 0 0 0 0 -1 4 10                   | False
 3519 | 0 18 2 24 -1 0 0 0 0 -1 4 10                        | False
 3520 | 0 18 1 24 -1 0 0 0 0 -1 4 10                        | False
 3521 | 0 18 1 24 24 -1 0 0 0 0 0 -1 4 10                   | False
 3522 | 0 2 24 -1 0 0 0 -1 4 10                             | False
 3523 | 0 2 22 24 -1 0 0 0 0 -1 4 10                        | False
 3524 | 0 2 0 24 -1 0 0 0 0 -1 4 10                         | False
 3525 | 0 2 18 24 -1 0 0 0 0 -1 4 10                        | False
 3526 | 0 2 2 24 -1 0 0 0 0 -1 4 10                         | False
 3527 | 0 2 1 24 -1 0 0 0 0 -1 4 10                         | False
 3528 | 0 1 13 1 24 -1 0 0 0 0 0 -1 4 10                    | False
 3529 | 0 1 24 24 24 -1 0 0 0 0 0 -1 4 10                   | False
 3530 | 0 1 24 22 24 -1 0 0 0 0 0 -1 4 10                   | False
 3531 | 0 1 24 2 24 -1 0 0 0 0 0 -1 4 10                    | False
 3532 | 0 1 24 1 24 -1 0 0 0 0 0 -1 4 10                    | False
 3533 | 0 1 22 24 -1 0 0 0 0 -1 4 10                        | False
 3534 | 0 1 22 24 24 -1 0 0 0 0 0 -1 4 10                   | False
 3535 | 0 1 0 24 -1 0 0 0 0 -1 4 10                         | False
 3536 | 0 1 0 24 24 -1 0 0 0 0 0 -1 4 10                    | False
 3537 | 0 1 0 1 24 -1 0 0 0 0 0 -1 4 10                     | False
 3538 | 0 1 18 24 -1 0 0 0 0 -1 4 10                        | False
 3539 | 0 1 18 1 24 -1 0 0 0 0 0 -1 4 10                    | False
 3540 | 0 1 2 24 -1 0 0 0 0 -1 4 10                         | False
 3541 | 0 1 2 1 24 -1 0 0 0 0 0 -1 4 10                     | False
 3542 | 0 18 1 24 -1 0 0 0 0 -1 4 15                        | False
 3543 | 0 18 14 24 -1 0 0 0 0 -1 4 10                       | False
 3544 | 0 18 24 24 -1 0 0 0 0 -1 4 10                       | False
 3545 | 0 18 24 24 24 -1 0 0 0 0 0 -1 4 10                  | False
 3546 | 0 18 24 22 24 -1 0 0 0 0 0 -1 4 10                  | False
 3547 | 0 18 24 18 24 -1 0 0 0 0 0 -1 4 10                  | False
 3548 | 0 18 24 2 24 -1 0 0 0 0 0 -1 4 10                   | False
 3549 | 0 18 24 1 24 -1 0 0 0 0 0 -1 4 10                   | False
 3550 | 0 18 22 24 -1 0 0 0 0 -1 4 10                       | False
 3551 | 0 18 22 24 24 -1 0 0 0 0 0 -1 4 10                  | False
 3552 | 0 18 22 24 24 24 -1 0 0 0 0 0 0 -1 4 10             | False
 3553 | 0 18 22 24 1 24 -1 0 0 0 0 0 0 -1 4 10              | False
 3554 | 0 18 22 22 24 -1 0 0 0 0 0 -1 4 10                  | False
 3555 | 0 18 22 2 24 -1 0 0 0 0 0 -1 4 10                   | False
 3556 | 0 18 22 1 24 -1 0 0 0 0 0 -1 4 10                   | False
 3557 | 0 18 18 24 -1 0 0 0 0 -1 4 10                       | False
 3558 | 0 18 18 13 18 24 -1 0 0 0 0 0 0 -1 4 10             | False
 3559 | 0 18 18 24 24 -1 0 0 0 0 0 -1 4 10                  | False
 3560 | 0 18 18 18 24 -1 0 0 0 0 0 -1 4 10                  | False
 3561 | 0 18 18 18 18 24 -1 0 0 0 0 0 0 -1 4 10             | False
 3562 | 0 18 18 18 2 24 -1 0 0 0 0 0 0 -1 4 10              | False
 3563 | 0 18 18 18 1 24 -1 0 0 0 0 0 0 -1 4 10              | False
 3564 | 0 18 18 2 24 -1 0 0 0 0 0 -1 4 10                   | False
 3565 | 0 18 18 1 24 -1 0 0 0 0 0 -1 4 10                   | False
 3566 | 0 18 18 1 24 24 -1 0 0 0 0 0 0 -1 4 10              | False
 3567 | 0 18 2 24 -1 0 0 0 0 -1 4 10                        | False
 3568 | 0 18 2 22 24 -1 0 0 0 0 0 -1 4 10                   | False
 3569 | 0 18 2 0 24 -1 0 0 0 0 0 -1 4 10                    | False
 3570 | 0 18 2 18 24 -1 0 0 0 0 0 -1 4 10                   | False
 3571 | 0 18 2 2 24 -1 0 0 0 0 0 -1 4 10                    | False
 3572 | 0 18 2 1 24 -1 0 0 0 0 0 -1 4 10                    | False
 3573 | 0 18 1 13 1 24 -1 0 0 0 0 0 0 -1 4 10               | False
 3574 | 0 18 1 24 24 24 -1 0 0 0 0 0 0 -1 4 10              | False
 3575 | 0 18 1 24 22 24 -1 0 0 0 0 0 0 -1 4 10              | False
 3576 | 0 18 1 24 2 24 -1 0 0 0 0 0 0 -1 4 10               | False
 3577 | 0 18 1 24 1 24 -1 0 0 0 0 0 0 -1 4 10               | False
 3578 | 0 18 1 22 24 -1 0 0 0 0 0 -1 4 10                   | False
 3579 | 0 18 1 22 24 24 -1 0 0 0 0 0 0 -1 4 10              | False
 3580 | 0 18 1 0 24 -1 0 0 0 0 0 -1 4 10                    | False
 3581 | 0 18 1 0 24 24 -1 0 0 0 0 0 0 -1 4 10               | False
 3582 | 0 18 1 0 1 24 -1 0 0 0 0 0 0 -1 4 10                | False
 3583 | 0 18 1 18 24 -1 0 0 0 0 0 -1 4 10                   | False
 3584 | 0 18 1 18 1 24 -1 0 0 0 0 0 0 -1 4 10               | False
 3585 | 0 18 1 2 24 -1 0 0 0 0 0 -1 4 10                    | False
 3586 | 0 18 1 2 1 24 -1 0 0 0 0 0 0 -1 4 10                | False
 3587 | 0 25 1 24 -1 0 0 0 0 -1 4 15                        | False
 3588 | 0 25 14 24 -1 0 0 0 0 -1 4 10                       | False
 3589 | 0 25 24 24 -1 0 0 0 0 -1 4 10                       | False
 3590 | 0 25 24 24 24 -1 0 0 0 0 0 -1 4 10                  | False
 3591 | 0 25 24 22 24 -1 0 0 0 0 0 -1 4 10                  | False
 3592 | 0 25 24 18 24 -1 0 0 0 0 0 -1 4 10                  | False
 3593 | 0 25 24 2 24 -1 0 0 0 0 0 -1 4 10                   | False
 3594 | 0 25 24 1 24 -1 0 0 0 0 0 -1 4 10                   | False
 3595 | 0 25 22 24 -1 0 0 0 0 -1 4 10                       | False
 3596 | 0 25 22 24 24 -1 0 0 0 0 0 -1 4 10                  | False
 3597 | 0 25 22 24 24 24 -1 0 0 0 0 0 0 -1 4 10             | False
 3598 | 0 25 22 24 1 24 -1 0 0 0 0 0 0 -1 4 10              | False
 3599 | 0 25 22 22 24 -1 0 0 0 0 0 -1 4 10                  | False
 3600 | 0 25 22 2 24 -1 0 0 0 0 0 -1 4 10                   | False
 3601 | 0 25 22 1 24 -1 0 0 0 0 0 -1 4 10                   | False
 3602 | 0 25 18 24 -1 0 0 0 0 -1 4 10                       | False
 3603 | 0 25 18 13 18 24 -1 0 0 0 0 0 0 -1 4 10             | False
 3604 | 0 25 18 24 24 -1 0 0 0 0 0 -1 4 10                  | False
 3605 | 0 25 18 18 24 -1 0 0 0 0 0 -1 4 10                  | False
 3606 | 0 25 18 18 18 24 -1 0 0 0 0 0 0 -1 4 10             | False
 3607 | 0 25 18 18 2 24 -1 0 0 0 0 0 0 -1 4 10              | False
 3608 | 0 25 18 18 1 24 -1 0 0 0 0 0 0 -1 4 10              | False
 3609 | 0 25 18 2 24 -1 0 0 0 0 0 -1 4 10                   | False
 3610 | 0 25 18 1 24 -1 0 0 0 0 0 -1 4 10                   | False
 3611 | 0 25 18 1 24 24 -1 0 0 0 0 0 0 -1 4 10              | False
 3612 | 0 25 2 24 -1 0 0 0 0 -1 4 10                        | False
 3613 | 0 25 2 22 24 -1 0 0 0 0 0 -1 4 10                   | False
 3614 | 0 25 2 0 24 -1 0 0 0 0 0 -1 4 10                    | False
 3615 | 0 25 2 18 24 -1 0 0 0 0 0 -1 4 10                   | False
 3616 | 0 25 2 2 24 -1 0 0 0 0 0 -1 4 10                    | False
 3617 | 0 25 2 1 24 -1 0 0 0 0 0 -1 4 10                    | False
 3618 | 0 25 1 13 1 24 -1 0 0 0 0 0 0 -1 4 10               | False
 3619 | 0 25 1 24 24 24 -1 0 0 0 0 0 0 -1 4 10              | False
 3620 | 0 25 1 24 22 24 -1 0 0 0 0 0 0 -1 4 10              | False
 3621 | 0 25 1 24 2 24 -1 0 0 0 0 0 0 -1 4 10               | False
 3622 | 0 25 1 24 1 24 -1 0 0 0 0 0 0 -1 4 10               | False
 3623 | 0 25 1 22 24 -1 0 0 0 0 0 -1 4 10                   | False
 3624 | 0 25 1 22 24 24 -1 0 0 0 0 0 0 -1 4 10              | False
 3625 | 0 25 1 0 24 -1 0 0 0 0 0 -1 4 10                    | False
 3626 | 0 25 1 0 24 24 -1 0 0 0 0 0 0 -1 4 10               | False
 3627 | 0 25 1 0 1 24 -1 0 0 0 0 0 0 -1 4 10                | False
 3628 | 0 25 1 18 24 -1 0 0 0 0 0 -1 4 10                   | False
 3629 | 0 25 1 18 1 24 -1 0 0 0 0 0 0 -1 4 10               | False
 3630 | 0 25 1 2 24 -1 0 0 0 0 0 -1 4 10                    | False
 3631 | 0 25 1 2 1 24 -1 0 0 0 0 0 0 -1 4 10                | False
 3632 | 18 0 1 24 -1 0 0 0 0 -1 4 15                        | False
 3633 | 18 0 14 24 -1 0 0 0 0 -1 4 10                       | False
 3634 | 18 0 24 24 -1 0 0 0 0 -1 4 10                       | False
 3635 | 18 0 24 24 24 -1 0 0 0 0 0 -1 4 10                  | False
 3636 | 18 0 24 22 24 -1 0 0 0 0 0 -1 4 10                  | False
 3637 | 18 0 24 18 24 -1 0 0 0 0 0 -1 4 10                  | False
 3638 | 18 0 24 2 24 -1 0 0 0 0 0 -1 4 10                   | False
 3639 | 18 0 24 1 24 -1 0 0 0 0 0 -1 4 10                   | False
 3640 | 18 0 22 24 -1 0 0 0 0 -1 4 10                       | False
 3641 | 18 0 22 24 24 -1 0 0 0 0 0 -1 4 10                  | False
 3642 | 18 0 22 24 24 24 -1 0 0 0 0 0 0 -1 4 10             | False
 3643 | 18 0 22 24 1 24 -1 0 0 0 0 0 0 -1 4 10              | False
 3644 | 18 0 22 22 24 -1 0 0 0 0 0 -1 4 10                  | False
 3645 | 18 0 22 2 24 -1 0 0 0 0 0 -1 4 10                   | False
 3646 | 18 0 22 1 24 -1 0 0 0 0 0 -1 4 10                   | False
 3647 | 18 0 18 24 -1 0 0 0 0 -1 4 10                       | False
 3648 | 18 0 18 13 18 24 -1 0 0 0 0 0 0 -1 4 10             | False
 3649 | 18 0 18 24 24 -1 0 0 0 0 0 -1 4 10                  | False
 3650 | 18 0 18 18 24 -1 0 0 0 0 0 -1 4 10                  | False
 3651 | 18 0 18 18 18 24 -1 0 0 0 0 0 0 -1 4 10             | False
 3652 | 18 0 18 18 2 24 -1 0 0 0 0 0 0 -1 4 10              | False
 3653 | 18 0 18 18 1 24 -1 0 0 0 0 0 0 -1 4 10              | False
 3654 | 18 0 18 2 24 -1 0 0 0 0 0 -1 4 10                   | False
 3655 | 18 0 18 1 24 -1 0 0 0 0 0 -1 4 10                   | False
 3656 | 18 0 18 1 24 24 -1 0 0 0 0 0 0 -1 4 10              | False
 3657 | 18 0 2 24 -1 0 0 0 0 -1 4 10                        | False
 3658 | 18 0 2 22 24 -1 0 0 0 0 0 -1 4 10                   | False
 3659 | 18 0 2 0 24 -1 0 0 0 0 0 -1 4 10                    | False
 3660 | 18 0 2 18 24 -1 0 0 0 0 0 -1 4 10                   | False
 3661 | 18 0 2 2 24 -1 0 0 0 0 0 -1 4 10                    | False
 3662 | 18 0 2 1 24 -1 0 0 0 0 0 -1 4 10                    | False
 3663 | 18 0 1 13 1 24 -1 0 0 0 0 0 0 -1 4 10               | False
 3664 | 18 0 1 24 24 24 -1 0 0 0 0 0 0 -1 4 10              | False
 3665 | 18 0 1 24 22 24 -1 0 0 0 0 0 0 -1 4 10              | False
 3666 | 18 0 1 24 2 24 -1 0 0 0 0 0 0 -1 4 10               | False
 3667 | 18 0 1 24 1 24 -1 0 0 0 0 0 0 -1 4 10               | False
 3668 | 18 0 1 22 24 -1 0 0 0 0 0 -1 4 10                   | False
 3669 | 18 0 1 22 24 24 -1 0 0 0 0 0 0 -1 4 10              | False
 3670 | 18 0 1 0 24 -1 0 0 0 0 0 -1 4 10                    | False
 3671 | 18 0 1 0 24 24 -1 0 0 0 0 0 0 -1 4 10               | False
 3672 | 18 0 1 0 1 24 -1 0 0 0 0 0 0 -1 4 10                | False
 3673 | 18 0 1 18 24 -1 0 0 0 0 0 -1 4 10                   | False
 3674 | 18 0 1 18 1 24 -1 0 0 0 0 0 0 -1 4 10               | False
 3675 | 18 0 1 2 24 -1 0 0 0 0 0 -1 4 10                    | False
 3676 | 18 0 1 2 1 24 -1 0 0 0 0 0 0 -1 4 10                | False
 3677 | 19 -1 0 -1 4 2                                      | False
 3678 | 19 1 -1 0 0 -1 4 6                                  | False
 3679 | 19 24 1 -1 0 0 0 -1 4 10                            | False
 3680 | 19 24 1 0 -1 0 0 0 0 -1 4 10                        | False
 3681 | 19 23 -1 0 0 -1 4 10                                | False
 3682 | 19 0 -1 0 0 -1 4 10                                 | False
 3683 | 19 0 24 -1 0 0 0 -1 4 10                            | False
 3684 | 19 0 1 -1 0 0 0 -1 4 10                             | False
 3685 | 19 18 -1 0 0 -1 4 10                                | False
 3686 | 19 2 0 -1 0 0 -1 4 10                               | False
 3687 | 19 1 0 -1 0 0 -1 4 10                               | False
 3688 | 0 19 -1 0 0 -1 4 2                                  | False
 3689 | 0 19 1 -1 0 0 0 -1 4 6                              | False
 3690 | 0 19 24 1 -1 0 0 0 0 -1 4 10                        | False
 3691 | 0 19 24 1 0 -1 0 0 0 0 0 -1 4 10                    | False
 3692 | 0 19 23 -1 0 0 0 -1 4 10                            | False
 3693 | 0 19 0 -1 0 0 0 -1 4 10                             | False
 3694 | 0 19 0 24 -1 0 0 0 0 -1 4 10                        | False
 3695 | 0 19 0 1 -1 0 0 0 0 -1 4 10                         | False
 3696 | 0 19 18 -1 0 0 0 -1 4 10                            | False
 3697 | 0 19 2 0 -1 0 0 0 -1 4 10                           | False
 3698 | 0 19 1 0 -1 0 0 0 -1 4 10                           | False
 3699 | 0 18 19 -1 0 0 0 -1 4 2                             | False
 3700 | 0 18 19 1 -1 0 0 0 0 -1 4 6                         | False
 3701 | 0 18 19 24 1 -1 0 0 0 0 0 -1 4 10                   | False
 3702 | 0 18 19 24 1 0 -1 0 0 0 0 0 0 -1 4 10               | False
 3703 | 0 18 19 23 -1 0 0 0 0 -1 4 10                       | False
 3704 | 0 18 19 0 -1 0 0 0 0 -1 4 10                        | False
 3705 | 0 18 19 0 24 -1 0 0 0 0 0 -1 4 10                   | False
 3706 | 0 18 19 0 1 -1 0 0 0 0 0 -1 4 10                    | False
 3707 | 0 18 19 18 -1 0 0 0 0 -1 4 10                       | False
 3708 | 0 18 19 2 0 -1 0 0 0 0 -1 4 10                      | False
 3709 | 0 18 19 1 0 -1 0 0 0 0 -1 4 10                      | False
 3710 | 0 25 19 -1 0 0 0 -1 4 2                             | False
 3711 | 0 25 19 1 -1 0 0 0 0 -1 4 6                         | False
 3712 | 0 25 19 24 1 -1 0 0 0 0 0 -1 4 10                   | False
 3713 | 0 25 19 24 1 0 -1 0 0 0 0 0 0 -1 4 10               | False
 3714 | 0 25 19 23 -1 0 0 0 0 -1 4 10                       | False
 3715 | 0 25 19 0 -1 0 0 0 0 -1 4 10                        | False
 3716 | 0 25 19 0 24 -1 0 0 0 0 0 -1 4 10                   | False
 3717 | 0 25 19 0 1 -1 0 0 0 0 0 -1 4 10                    | False
 3718 | 0 25 19 18 -1 0 0 0 0 -1 4 10                       | False
 3719 | 0 25 19 2 0 -1 0 0 0 0 -1 4 10                      | False
 3720 | 0 25 19 1 0 -1 0 0 0 0 -1 4 10                      | False
 3721 | 18 0 19 -1 0 0 0 -1 4 2                             | False
 3722 | 18 0 19 1 -1 0 0 0 0 -1 4 6                         | False
 3723 | 18 0 19 24 1 -1 0 0 0 0 0 -1 4 10                   | False
 3724 | 18 0 19 24 1 0 -1 0 0 0 0 0 0 -1 4 10               | False
 3725 | 18 0 19 23 -1 0 0 0 0 -1 4 10                       | False
 3726 | 18 0 19 0 -1 0 0 0 0 -1 4 10                        | False
 3727 | 18 0 19 0 24 -1 0 0 0 0 0 -1 4 10                   | False
 3728 | 18 0 19 0 1 -1 0 0 0 0 0 -1 4 10                    | False
 3729 | 18 0 19 18 -1 0 0 0 0 -1 4 10                       | False
 3730 | 18 0 19 2 0 -1 0 0 0 0 -1 4 10                      | False
 3731 | 18 0 19 1 0 -1 0 0 0 0 -1 4 10                      | False
 3732 | 23 -1 17 -1 4 7                                     | False
 3733 | 0 -1 17 -1 4 7                                      | False
 3734 | 18 -1 17 -1 4 7                                     | False
 3735 | 18 0 -1 17 17 -1 4 7                                | False
 3736 | 18 18 -1 17 17 -1 4 7                               | False
 3737 | 18 0 18 -1 17 17 17 -1 4 7                          | False
 3738 | 21 -1 17 -1 4 7                                     | False
 3739 | 21 0 -1 17 17 -1 4 7                                | False
 3740 | 25 -1 17 -1 4 7                                     | False
 3741 | 0 21 -1 17 17 -1 4 7                                | False
 3742 | 0 0 -1 17 17 -1 4 7                                 | False
 3743 | 0 18 -1 17 17 -1 4 7                                | False
 3744 | 0 1 -1 17 17 -1 4 7                                 | False
 3745 | 1 -1 17 -1 4 7                                      | False
 3746 | 16 -1 16 -1 4 7                                     | False
 3747 | 16 23 -1 16 17 -1 4 17                              | False
 3748 | 16 0 -1 16 17 -1 4 17                               | False
 3749 | 16 18 -1 16 17 -1 4 11                              | False
 3750 | 16 18 0 -1 16 17 17 -1 4 7                          | False
 3751 | 16 18 18 -1 16 17 17 -1 4 7                         | False
 3752 | 16 18 0 18 -1 16 17 17 17 -1 4 7                    | False
 3753 | 16 21 -1 16 17 -1 4 7                               | False
 3754 | 16 21 0 -1 16 17 17 -1 4 7                          | False
 3755 | 16 25 -1 16 17 -1 4 7                               | False
 3756 | 16 0 21 -1 16 17 17 -1 4 7                          | False
 3757 | 16 0 0 -1 16 17 17 -1 4 7                           | False
 3758 | 16 0 18 -1 16 17 17 -1 4 7                          | False
 3759 | 16 0 1 -1 16 17 17 -1 4 7                           | False
 3760 | 16 1 -1 16 17 -1 4 7                                | False
 3761 | 16 16 -1 16 16 -1 4 7                               | False
 3762 | 16 16 23 -1 16 16 17 -1 4 17                        | False
 3763 | 16 16 0 -1 16 16 17 -1 4 17                         | False
 3764 | 16 16 18 -1 16 16 17 -1 4 11                        | False
 3765 | 16 16 18 0 -1 16 16 17 17 -1 4 7                    | False
 3766 | 16 16 18 18 -1 16 16 17 17 -1 4 7                   | False
 3767 | 16 16 18 0 18 -1 16 16 17 17 17 -1 4 7              | False
 3768 | 16 16 21 -1 16 16 17 -1 4 7                         | False
 3769 | 16 16 21 0 -1 16 16 17 17 -1 4 7                    | False
 3770 | 16 16 25 -1 16 16 17 -1 4 7                         | False
 3771 | 16 16 0 21 -1 16 16 17 17 -1 4 7                    | False
 3772 | 16 16 0 0 -1 16 16 17 17 -1 4 7                     | False
 3773 | 16 16 0 18 -1 16 16 17 17 -1 4 7                    | False
 3774 | 16 16 0 1 -1 16 16 17 17 -1 4 7                     | False
 3775 | 16 16 1 -1 16 16 17 -1 4 7                          | False
 3777 | 17 23 -1 17 17 -1 4 17                              | False
 3778 | 17 0 -1 17 17 -1 4 17                               | False
 3779 | 17 18 -1 17 17 -1 4 17                              | False
 3780 | 17 18 0 -1 17 17 17 -1 4 17                         | False
 3781 | 17 18 18 -1 17 17 17 -1 4 17                        | False
 3782 | 17 18 0 18 -1 17 17 17 17 -1 4 17                   | False
 3783 | 17 21 -1 17 17 -1 4 17                              | False
 3784 | 17 21 0 -1 17 17 17 -1 4 17                         | False
 3785 | 17 25 -1 17 17 -1 4 17                              | False
 3786 | 17 0 21 -1 17 17 17 -1 4 17                         | False
 3787 | 17 0 0 -1 17 17 17 -1 4 17                          | False
 3788 | 17 0 18 -1 17 17 17 -1 4 17                         | False
 3789 | 17 0 1 -1 17 17 17 -1 4 17                          | False
 3790 | 17 1 -1 17 17 -1 4 17                               | False
 3791 | 17 16 -1 17 16 -1 4 17                              | False
 3792 | 17 16 23 -1 17 16 17 -1 4 17                        | False
 3793 | 17 16 0 -1 17 16 17 -1 4 17                         | False
 3794 | 17 16 18 -1 17 16 17 -1 4 17                        | False
 3795 | 17 16 18 0 -1 17 16 17 17 -1 4 17                   | False
 3796 | 17 16 18 18 -1 17 16 17 17 -1 4 17                  | False
 3797 | 17 16 18 0 18 -1 17 16 17 17 17 -1 4 17             | False
 3798 | 17 16 21 -1 17 16 17 -1 4 17                        | False
 3799 | 17 16 21 0 -1 17 16 17 17 -1 4 17                   | False
 3800 | 17 16 25 -1 17 16 17 -1 4 17                        | False
 3801 | 17 16 0 21 -1 17 16 17 17 -1 4 17                   | False
 3802 | 17 16 0 0 -1 17 16 17 17 -1 4 17                    | False
 3803 | 17 16 0 18 -1 17 16 17 17 -1 4 17                   | False
 3804 | 17 16 0 1 -1 17 16 17 17 -1 4 17                    | False
 3805 | 17 16 1 -1 17 16 17 -1 4 17                         | False
 3806 | 17 16 16 -1 17 16 16 -1 4 17                        | False
 3807 | 17 16 16 23 -1 17 16 16 17 -1 4 17                  | False
 3808 | 17 16 16 0 -1 17 16 16 17 -1 4 17                   | False
 3809 | 17 16 16 18 -1 17 16 16 17 -1 4 17                  | False
 3810 | 17 16 16 18 0 -1 17 16 16 17 17 -1 4 17             | False
 3811 | 17 16 16 18 18 -1 17 16 16 17 17 -1 4 17            | False
 3812 | 17 16 16 18 0 18 -1 17 16 16 17 17 17 -1 4 17       | False
 3813 | 17 16 16 21 -1 17 16 16 17 -1 4 17                  | False
 3814 | 17 16 16 21 0 -1 17 16 16 17 17 -1 4 17             | False
 3815 | 17 16 16 25 -1 17 16 16 17 -1 4 17                  | False
 3816 | 17 16 16 0 21 -1 17 16 16 17 17 -1 4 17             | False
 3817 | 17 16 16 0 0 -1 17 16 16 17 17 -1 4 17              | False
 3818 | 17 16 16 0 18 -1 17 16 16 17 17 -1 4 17             | False
 3819 | 17 16 16 0 1 -1 17 16 16 17 17 -1 4 17              | False
 3820 | 17 16 16 1 -1 17 16 16 17 -1 4 17                   | False
 3821 | 15 17 -1 17 17 -1 4 8                               | False
 3822 | 15 17 23 -1 17 17 17 -1 4 8                         | False
 3823 | 15 17 0 -1 17 17 17 -1 4 8                          | False
 3824 | 15 17 18 -1 17 17 17 -1 4 8                         | False
 3825 | 15 17 18 0 -1 17 17 17 17 -1 4 8                    | False
 3826 | 15 17 18 18 -1 17 17 17 17 -1 4 8                   | False
 3827 | 15 17 18 0 18 -1 17 17 17 17 17 -1 4 8              | False
 3828 | 15 17 21 -1 17 17 17 -1 4 8                         | False
 3829 | 15 17 21 0 -1 17 17 17 17 -1 4 8                    | False
 3830 | 15 17 25 -1 17 17 17 -1 4 8                         | False
 3831 | 15 17 0 21 -1 17 17 17 17 -1 4 8                    | False
 3832 | 15 17 0 0 -1 17 17 17 17 -1 4 8                     | False
 3833 | 15 17 0 18 -1 17 17 17 17 -1 4 8                    | False
 3834 | 15 17 0 1 -1 17 17 17 17 -1 4 8                     | False
 3835 | 15 17 1 -1 17 17 17 -1 4 8                          | False
 3836 | 15 17 16 -1 17 17 16 -1 4 8                         | False
 3837 | 15 17 16 23 -1 17 17 16 17 -1 4 8                   | False
 3838 | 15 17 16 0 -1 17 17 16 17 -1 4 8                    | False
 3839 | 15 17 16 18 -1 17 17 16 17 -1 4 8                   | False
 3840 | 15 17 16 18 0 -1 17 17 16 17 17 -1 4 8              | False
 3841 | 15 17 16 18 18 -1 17 17 16 17 17 -1 4 8             | False
 3842 | 15 17 16 18 0 18 -1 17 17 16 17 17 17 -1 4 8        | False
 3843 | 15 17 16 21 -1 17 17 16 17 -1 4 8                   | False
 3844 | 15 17 16 21 0 -1 17 17 16 17 17 -1 4 8              | False
 3845 | 15 17 16 25 -1 17 17 16 17 -1 4 8                   | False
 3846 | 15 17 16 0 21 -1 17 17 16 17 17 -1 4 8              | False
 3847 | 15 17 16 0 0 -1 17 17 16 17 17 -1 4 8               | False
 3848 | 15 17 16 0 18 -1 17 17 16 17 17 -1 4 8              | False
 3849 | 15 17 16 0 1 -1 17 17 16 17 17 -1 4 8               | False
 3850 | 15 17 16 1 -1 17 17 16 17 -1 4 8                    | False
 3851 | 15 17 16 16 -1 17 17 16 16 -1 4 8                   | False
 3852 | 15 17 16 16 23 -1 17 17 16 16 17 -1 4 8             | False
 3853 | 15 17 16 16 0 -1 17 17 16 16 17 -1 4 8              | False
 3854 | 15 17 16 16 18 -1 17 17 16 16 17 -1 4 8             | False
 3855 | 15 17 16 16 18 0 -1 17 17 16 16 17 17 -1 4 8        | False
 3856 | 15 17 16 16 18 18 -1 17 17 16 16 17 17 -1 4 8       | False
 3857 | 15 17 16 16 18 0 18 -1 17 17 16 16 17 17 17 -1 4 8  | False
 3858 | 15 17 16 16 21 -1 17 17 16 16 17 -1 4 8             | False
 3859 | 15 17 16 16 21 0 -1 17 17 16 16 17 17 -1 4 8        | False
 3860 | 15 17 16 16 25 -1 17 17 16 16 17 -1 4 8             | False
 3861 | 15 17 16 16 0 21 -1 17 17 16 16 17 17 -1 4 8        | False
 3862 | 15 17 16 16 0 0 -1 17 17 16 16 17 17 -1 4 8         | False
 3863 | 15 17 16 16 0 18 -1 17 17 16 16 17 17 -1 4 8        | False
 3864 | 15 17 16 16 0 1 -1 17 17 16 16 17 17 -1 4 8         | False
 3865 | 15 17 16 16 1 -1 17 17 16 16 17 -1 4 8              | False
 3866 | 17 17 -1 17 17 -1 4 16                              | False
 3867 | 17 17 23 -1 17 17 17 -1 4 16                        | False
 3868 | 17 17 0 -1 17 17 17 -1 4 16                         | False
 3869 | 17 17 18 -1 17 17 17 -1 4 16                        | False
 3870 | 17 17 18 0 -1 17 17 17 17 -1 4 16                   | False
 3871 | 17 17 18 18 -1 17 17 17 17 -1 4 16                  | False
 3872 | 17 17 18 0 18 -1 17 17 17 17 17 -1 4 16             | False
 3873 | 17 17 21 -1 17 17 17 -1 4 16                        | False
 3874 | 17 17 21 0 -1 17 17 17 17 -1 4 16                   | False
 3875 | 17 17 25 -1 17 17 17 -1 4 16                        | False
 3876 | 17 17 0 21 -1 17 17 17 17 -1 4 16                   | False
 3877 | 17 17 0 0 -1 17 17 17 17 -1 4 16                    | False
 3878 | 17 17 0 18 -1 17 17 17 17 -1 4 16                   | False
 3879 | 17 17 0 1 -1 17 17 17 17 -1 4 16                    | False
 3880 | 17 17 1 -1 17 17 17 -1 4 16                         | False
 3881 | 17 17 16 -1 17 17 16 -1 4 16                        | False
 3882 | 17 17 16 23 -1 17 17 16 17 -1 4 16                  | False
 3883 | 17 17 16 0 -1 17 17 16 17 -1 4 16                   | False
 3884 | 17 17 16 18 -1 17 17 16 17 -1 4 16                  | False
 3885 | 17 17 16 18 0 -1 17 17 16 17 17 -1 4 16             | False
 3886 | 17 17 16 18 18 -1 17 17 16 17 17 -1 4 16            | False
 3887 | 17 17 16 18 0 18 -1 17 17 16 17 17 17 -1 4 16       | False
 3888 | 17 17 16 21 -1 17 17 16 17 -1 4 16                  | False
 3889 | 17 17 16 21 0 -1 17 17 16 17 17 -1 4 16             | False
 3890 | 17 17 16 25 -1 17 17 16 17 -1 4 16                  | False
 3891 | 17 17 16 0 21 -1 17 17 16 17 17 -1 4 16             | False
 3892 | 17 17 16 0 0 -1 17 17 16 17 17 -1 4 16              | False
 3893 | 17 17 16 0 18 -1 17 17 16 17 17 -1 4 16             | False
 3894 | 17 17 16 0 1 -1 17 17 16 17 17 -1 4 16              | False
 3895 | 17 17 16 1 -1 17 17 16 17 -1 4 16                   | False
 3896 | 17 17 16 16 -1 17 17 16 16 -1 4 16                  | False
 3897 | 17 17 16 16 23 -1 17 17 16 16 17 -1 4 16            | False
 3898 | 17 17 16 16 0 -1 17 17 16 16 17 -1 4 16             | False
 3899 | 17 17 16 16 18 -1 17 17 16 16 17 -1 4 16            | False
 3900 | 17 17 16 16 18 0 -1 17 17 16 16 17 17 -1 4 16       | False
 3901 | 17 17 16 16 18 18 -1 17 17 16 16 17 17 -1 4 16      | False
 3902 | 17 17 16 16 18 0 18 -1 17 17 16 16 17 17 17 -1 4 16 | False
 3903 | 17 17 16 16 21 -1 17 17 16 16 17 -1 4 16            | False
 3904 | 17 17 16 16 21 0 -1 17 17 16 16 17 17 -1 4 16       | False
 3905 | 17 17 16 16 25 -1 17 17 16 16 17 -1 4 16            | False
 3906 | 17 17 16 16 0 21 -1 17 17 16 16 17 17 -1 4 16       | False
 3907 | 17 17 16 16 0 0 -1 17 17 16 16 17 17 -1 4 16        | False
 3908 | 17 17 16 16 0 18 -1 17 17 16 16 17 17 -1 4 16       | False
 3909 | 17 17 16 16 0 1 -1 17 17 16 16 17 17 -1 4 16        | False
 3910 | 17 17 16 16 1 -1 17 17 16 16 17 -1 4 16             | False
 3911 | 17 -1 17 -1 4 8                                     | False
 3912 | 15 17 -1 17 17 -1 4 8                               | False
 3913 | 17 17 -1 17 17 -1 4 8                               | False
 3914 | 23 17 -1 17 17 -1 4 8                               | False
 3915 | 23 15 17 -1 17 17 17 -1 4 8                         | False
 3916 | 23 17 17 -1 17 17 17 -1 4 8                         | False
 3917 | 0 17 -1 17 17 -1 4 8                                | False
 3918 | 0 15 17 -1 17 17 17 -1 4 8                          | False
 3919 | 0 17 17 -1 17 17 17 -1 4 8                          | False
 3920 | 18 17 -1 17 17 -1 4 8                               | False
 3921 | 18 15 17 -1 17 17 17 -1 4 8                         | False
 3922 | 18 17 17 -1 17 17 17 -1 4 8                         | False
 3923 | 18 0 17 -1 17 17 17 -1 4 8                          | False
 3924 | 18 0 15 17 -1 17 17 17 17 -1 4 8                    | False
 3925 | 18 0 17 17 -1 17 17 17 17 -1 4 8                    | False
 3926 | 18 18 17 -1 17 17 17 -1 4 8                         | False
 3927 | 18 18 15 17 -1 17 17 17 17 -1 4 8                   | False
 3928 | 18 18 17 17 -1 17 17 17 17 -1 4 8                   | False
 3929 | 18 0 18 17 -1 17 17 17 17 -1 4 8                    | False
 3930 | 18 0 18 15 17 -1 17 17 17 17 17 -1 4 8              | False
 3931 | 18 0 18 17 17 -1 17 17 17 17 17 -1 4 8              | False
 3932 | 21 17 -1 17 17 -1 4 8                               | False
 3933 | 21 15 17 -1 17 17 17 -1 4 8                         | False
 3934 | 21 17 17 -1 17 17 17 -1 4 8                         | False
 3935 | 21 0 17 -1 17 17 17 -1 4 8                          | False
 3936 | 21 0 15 17 -1 17 17 17 17 -1 4 8                    | False
 3937 | 21 0 17 17 -1 17 17 17 17 -1 4 8                    | False
 3938 | 25 17 -1 17 17 -1 4 8                               | False
 3939 | 25 15 17 -1 17 17 17 -1 4 8                         | False
 3940 | 25 17 17 -1 17 17 17 -1 4 8                         | False
 3941 | 0 21 17 -1 17 17 17 -1 4 8                          | False
 3942 | 0 21 15 17 -1 17 17 17 17 -1 4 8                    | False
 3943 | 0 21 17 17 -1 17 17 17 17 -1 4 8                    | False
 3944 | 0 0 17 -1 17 17 17 -1 4 8                           | False
 3945 | 0 0 15 17 -1 17 17 17 17 -1 4 8                     | False
 3946 | 0 0 17 17 -1 17 17 17 17 -1 4 8                     | False
 3947 | 0 18 17 -1 17 17 17 -1 4 8                          | False
 3948 | 0 18 15 17 -1 17 17 17 17 -1 4 8                    | False
 3949 | 0 18 17 17 -1 17 17 17 17 -1 4 8                    | False
 3950 | 0 1 17 -1 17 17 17 -1 4 8                           | False
 3951 | 0 1 15 17 -1 17 17 17 17 -1 4 8                     | False
 3952 | 0 1 17 17 -1 17 17 17 17 -1 4 8                     | False
 3953 | 1 17 -1 17 17 -1 4 8                                | False
 3954 | 1 15 17 -1 17 17 17 -1 4 8                          | False
 3955 | 1 17 17 -1 17 17 17 -1 4 8                          | False
 3956 | 16 17 -1 16 17 -1 4 8                               | False
 3957 | 16 15 17 -1 16 17 17 -1 4 8                         | False
 3958 | 16 17 17 -1 16 17 17 -1 4 8                         | False
 3959 | 16 23 17 -1 16 17 17 -1 4 8                         | False
 3960 | 16 23 15 17 -1 16 17 17 17 -1 4 8                   | False
 3961 | 16 23 17 17 -1 16 17 17 17 -1 4 8                   | False
 3962 | 16 0 17 -1 16 17 17 -1 4 8                          | False
 3963 | 16 0 15 17 -1 16 17 17 17 -1 4 8                    | False
 3964 | 16 0 17 17 -1 16 17 17 17 -1 4 8                    | False
 3965 | 16 18 17 -1 16 17 17 -1 4 8                         | False
 3966 | 16 18 15 17 -1 16 17 17 17 -1 4 8                   | False
 3967 | 16 18 17 17 -1 16 17 17 17 -1 4 8                   | False
 3968 | 16 18 0 17 -1 16 17 17 17 -1 4 8                    | False
 3969 | 16 18 0 15 17 -1 16 17 17 17 17 -1 4 8              | False
 3970 | 16 18 0 17 17 -1 16 17 17 17 17 -1 4 8              | False
 3971 | 16 18 18 17 -1 16 17 17 17 -1 4 8                   | False
 3972 | 16 18 18 15 17 -1 16 17 17 17 17 -1 4 8             | False
 3973 | 16 18 18 17 17 -1 16 17 17 17 17 -1 4 8             | False
 3974 | 16 18 0 18 17 -1 16 17 17 17 17 -1 4 8              | False
 3975 | 16 18 0 18 15 17 -1 16 17 17 17 17 17 -1 4 8        | False
 3976 | 16 18 0 18 17 17 -1 16 17 17 17 17 17 -1 4 8        | False
 3977 | 16 21 17 -1 16 17 17 -1 4 8                         | False
 3978 | 16 21 15 17 -1 16 17 17 17 -1 4 8                   | False
 3979 | 16 21 17 17 -1 16 17 17 17 -1 4 8                   | False
 3980 | 16 21 0 17 -1 16 17 17 17 -1 4 8                    | False
 3981 | 16 21 0 15 17 -1 16 17 17 17 17 -1 4 8              | False
 3982 | 16 21 0 17 17 -1 16 17 17 17 17 -1 4 8              | False
 3983 | 16 25 17 -1 16 17 17 -1 4 8                         | False
 3984 | 16 25 15 17 -1 16 17 17 17 -1 4 8                   | False
 3985 | 16 25 17 17 -1 16 17 17 17 -1 4 8                   | False
 3986 | 16 0 21 17 -1 16 17 17 17 -1 4 8                    | False
 3987 | 16 0 21 15 17 -1 16 17 17 17 17 -1 4 8              | False
 3988 | 16 0 21 17 17 -1 16 17 17 17 17 -1 4 8              | False
 3989 | 16 0 0 17 -1 16 17 17 17 -1 4 8                     | False
 3990 | 16 0 0 15 17 -1 16 17 17 17 17 -1 4 8               | False
 3991 | 16 0 0 17 17 -1 16 17 17 17 17 -1 4 8               | False
 3992 | 16 0 18 17 -1 16 17 17 17 -1 4 8                    | False
 3993 | 16 0 18 15 17 -1 16 17 17 17 17 -1 4 8              | False
 3994 | 16 0 18 17 17 -1 16 17 17 17 17 -1 4 8              | False
 3995 | 16 0 1 17 -1 16 17 17 17 -1 4 8                     | False
 3996 | 16 0 1 15 17 -1 16 17 17 17 17 -1 4 8               | False
 3997 | 16 0 1 17 17 -1 16 17 17 17 17 -1 4 8               | False
 3998 | 16 1 17 -1 16 17 17 -1 4 8                          | False
 3999 | 16 1 15 17 -1 16 17 17 17 -1 4 8                    | False
 4000 | 16 1 17 17 -1 16 17 17 17 -1 4 8                    | False
 4001 | 16 16 17 -1 16 16 17 -1 4 8                         | False
 4002 | 16 16 15 17 -1 16 16 17 17 -1 4 8                   | False
 4003 | 16 16 17 17 -1 16 16 17 17 -1 4 8                   | False
 4004 | 16 16 23 17 -1 16 16 17 17 -1 4 8                   | False
 4005 | 16 16 23 15 17 -1 16 16 17 17 17 -1 4 8             | False
 4006 | 16 16 23 17 17 -1 16 16 17 17 17 -1 4 8             | False
 4007 | 16 16 0 17 -1 16 16 17 17 -1 4 8                    | False
 4008 | 16 16 0 15 17 -1 16 16 17 17 17 -1 4 8              | False
 4009 | 16 16 0 17 17 -1 16 16 17 17 17 -1 4 8              | False
 4010 | 16 16 18 17 -1 16 16 17 17 -1 4 8                   | False
 4011 | 16 16 18 15 17 -1 16 16 17 17 17 -1 4 8             | False
 4012 | 16 16 18 17 17 -1 16 16 17 17 17 -1 4 8             | False
 4013 | 16 16 18 0 17 -1 16 16 17 17 17 -1 4 8              | False
 4014 | 16 16 18 0 15 17 -1 16 16 17 17 17 17 -1 4 8        | False
 4015 | 16 16 18 0 17 17 -1 16 16 17 17 17 17 -1 4 8        | False
 4016 | 16 16 18 18 17 -1 16 16 17 17 17 -1 4 8             | False
 4017 | 16 16 18 18 15 17 -1 16 16 17 17 17 17 -1 4 8       | False
 4018 | 16 16 18 18 17 17 -1 16 16 17 17 17 17 -1 4 8       | False
 4019 | 16 16 18 0 18 17 -1 16 16 17 17 17 17 -1 4 8        | False
 4020 | 16 16 18 0 18 15 17 -1 16 16 17 17 17 17 17 -1 4 8  | False
 4021 | 16 16 18 0 18 17 17 -1 16 16 17 17 17 17 17 -1 4 8  | False
 4022 | 16 16 21 17 -1 16 16 17 17 -1 4 8                   | False
 4023 | 16 16 21 15 17 -1 16 16 17 17 17 -1 4 8             | False
 4024 | 16 16 21 17 17 -1 16 16 17 17 17 -1 4 8             | False
 4025 | 16 16 21 0 17 -1 16 16 17 17 17 -1 4 8              | False
 4026 | 16 16 21 0 15 17 -1 16 16 17 17 17 17 -1 4 8        | False
 4027 | 16 16 21 0 17 17 -1 16 16 17 17 17 17 -1 4 8        | False
 4028 | 16 16 25 17 -1 16 16 17 17 -1 4 8                   | False
 4029 | 16 16 25 15 17 -1 16 16 17 17 17 -1 4 8             | False
 4030 | 16 16 25 17 17 -1 16 16 17 17 17 -1 4 8             | False
 4031 | 16 16 0 21 17 -1 16 16 17 17 17 -1 4 8              | False
 4032 | 16 16 0 21 15 17 -1 16 16 17 17 17 17 -1 4 8        | False
 4033 | 16 16 0 21 17 17 -1 16 16 17 17 17 17 -1 4 8        | False
 4034 | 16 16 0 0 17 -1 16 16 17 17 17 -1 4 8               | False
 4035 | 16 16 0 0 15 17 -1 16 16 17 17 17 17 -1 4 8         | False
 4036 | 16 16 0 0 17 17 -1 16 16 17 17 17 17 -1 4 8         | False
 4037 | 16 16 0 18 17 -1 16 16 17 17 17 -1 4 8              | False
 4038 | 16 16 0 18 15 17 -1 16 16 17 17 17 17 -1 4 8        | False
 4039 | 16 16 0 18 17 17 -1 16 16 17 17 17 17 -1 4 8        | False
 4040 | 16 16 0 1 17 -1 16 16 17 17 17 -1 4 8               | False
 4041 | 16 16 0 1 15 17 -1 16 16 17 17 17 17 -1 4 8         | False
 4042 | 16 16 0 1 17 17 -1 16 16 17 17 17 17 -1 4 8         | False
 4043 | 16 16 1 17 -1 16 16 17 17 -1 4 8                    | False
 4044 | 16 16 1 15 17 -1 16 16 17 17 17 -1 4 8              | False
 4045 | 16 16 1 17 17 -1 16 16 17 17 17 -1 4 8              | False
 4046 | 12 -1 12 -1 0 3                                     | False
 4047 | 12 23 23 13 13 -1 12 -1 0 3                         | False
 4048 | 12 0 -1 12 13 -1 0 3                                | False
 4049 | 12 0 0 -1 12 13 13 -1 0 3                           | False
 4050 | 12 27 -1 12 13 -1 0 3                               | False
 4051 | 12 27 26 -1 12 13 13 -1 0 3                         | False
 4052 | 12 28 -1 12 13 -1 0 3                               | False
 4053 | 12 28 29 -1 12 13 13 -1 0 3                         | False
 4054 | 23 23 13 13 -1 -1 0 14                              | False
 4055 | 23 23 13 13 12 -1 12 -1 0 3                         | False
 4056 | 0 -1 13 -1 0 14                                     | False
 4057 | 0 12 -1 13 12 -1 0 3                                | False
 4058 | 0 0 -1 13 13 -1 0 14                                | False
 4059 | 0 0 12 -1 13 13 12 -1 0 3                           | False
 4060 | 27 -1 13 -1 0 14                                    | False
 4061 | 27 12 -1 13 12 -1 0 3                               | False
 4062 | 27 26 -1 13 13 -1 0 14                              | False
 4063 | 27 26 12 -1 13 13 12 -1 0 3                         | False
 4064 | 28 -1 13 -1 0 14                                    | False
 4065 | 28 12 -1 13 12 -1 0 3                               | False
 4066 | 28 29 -1 13 13 -1 0 14                              | False
 4067 | 28 29 12 -1 13 13 12 -1 0 3                         | False
 4068 | 11 -1 11 -1 0 3                                     | False
 4069 | 11 23 23 13 13 -1 11 -1 0 7                         | False
 4070 | 11 0 -1 11 13 -1 0 7                                | False
 4071 | 11 0 0 -1 11 13 13 -1 0 7                           | False
 4072 | 11 27 -1 11 13 -1 0 7                               | False
 4073 | 11 27 26 -1 11 13 13 -1 0 7                         | False
 4074 | 11 28 -1 11 13 -1 0 7                               | False
 4075 | 11 28 29 -1 11 13 13 -1 0 7                         | False
 4076 | 10 -1 10 -1 0 5                                     | False
 4077 | 10 12 -1 10 12 -1 0 3                               | False
 4078 | 10 12 23 23 13 13 -1 10 12 -1 0 3                   | False
 4079 | 10 12 0 -1 10 12 13 -1 0 3                          | False
 4080 | 10 12 0 0 -1 10 12 13 13 -1 0 3                     | False
 4081 | 10 12 27 -1 10 12 13 -1 0 3                         | False
 4082 | 10 12 27 26 -1 10 12 13 13 -1 0 3                   | False
 4083 | 10 12 28 -1 10 12 13 -1 0 3                         | False
 4084 | 10 12 28 29 -1 10 12 13 13 -1 0 3                   | False
 4085 | 10 23 23 13 13 -1 10 -1 0 9                         | False
 4086 | 10 23 23 13 13 12 -1 10 12 -1 0 3                   | False
 4087 | 10 0 -1 10 13 -1 0 9                                | False
 4088 | 10 0 12 -1 10 13 12 -1 0 3                          | False
 4089 | 10 0 0 -1 10 13 13 -1 0 9                           | False
 4090 | 10 0 0 12 -1 10 13 13 12 -1 0 3                     | False
 4091 | 10 27 -1 10 13 -1 0 9                               | False
 4092 | 10 27 12 -1 10 13 12 -1 0 3                         | False
 4093 | 10 27 26 -1 10 13 13 -1 0 9                         | False
 4094 | 10 27 26 12 -1 10 13 13 12 -1 0 3                   | False
 4095 | 10 28 -1 10 13 -1 0 9                               | False
 4096 | 10 28 12 -1 10 13 12 -1 0 3                         | False
 4097 | 10 28 29 -1 10 13 13 -1 0 9                         | False
 4098 | 10 28 29 12 -1 10 13 13 12 -1 0 3                   | False
 4099 | 10 11 -1 10 11 -1 0 13                              | False
 4100 | 10 11 12 -1 10 11 12 -1 0 15                        | False
 4101 | 10 11 12 23 23 13 13 -1 10 11 12 -1 0 17            | False
 4102 | 10 11 12 0 -1 10 11 12 13 -1 0 17                   | False
 4103 | 10 11 12 0 0 -1 10 11 12 13 13 -1 0 17              | False
 4104 | 10 11 12 27 -1 10 11 12 13 -1 0 17                  | False
 4105 | 10 11 12 27 26 -1 10 11 12 13 13 -1 0 17            | False
 4106 | 10 11 12 28 -1 10 11 12 13 -1 0 17                  | False
 4107 | 10 11 12 28 29 -1 10 11 12 13 13 -1 0 17            | False
 4108 | 10 11 23 23 13 13 -1 10 11 -1 0 16                  | False
 4109 | 10 11 23 23 13 13 12 -1 10 11 12 -1 0 17            | False
 4110 | 10 11 0 -1 10 11 13 -1 0 16                         | False
 4111 | 10 11 0 12 -1 10 11 13 12 -1 0 17                   | False
 4112 | 10 11 0 0 -1 10 11 13 13 -1 0 16                    | False
 4113 | 10 11 0 0 12 -1 10 11 13 13 12 -1 0 17              | False
 4114 | 10 11 27 -1 10 11 13 -1 0 16                        | False
 4115 | 10 11 27 12 -1 10 11 13 12 -1 0 17                  | False
 4116 | 10 11 27 26 -1 10 11 13 13 -1 0 16                  | False
 4117 | 10 11 27 26 12 -1 10 11 13 13 12 -1 0 17            | False
 4118 | 10 11 28 -1 10 11 13 -1 0 16                        | False
 4119 | 10 11 28 12 -1 10 11 13 12 -1 0 17                  | False
 4120 | 10 11 28 29 -1 10 11 13 13 -1 0 16                  | False
 4121 | 10 11 28 29 12 -1 10 11 13 13 12 -1 0 17            | False
 4122 | 1 -1 10 -1 0 5                                      | False
 4123 | 1 12 -1 10 12 -1 0 3                                | False
 4124 | 1 12 23 23 13 13 -1 10 12 -1 0 3                    | False
 4125 | 1 12 0 -1 10 12 13 -1 0 3                           | False
 4126 | 1 12 0 0 -1 10 12 13 13 -1 0 3                      | False
 4127 | 1 12 27 -1 10 12 13 -1 0 3                          | False
 4128 | 1 12 27 26 -1 10 12 13 13 -1 0 3                    | False
 4129 | 1 12 28 -1 10 12 13 -1 0 3                          | False
 4130 | 1 12 28 29 -1 10 12 13 13 -1 0 3                    | False
 4131 | 1 23 23 13 13 -1 10 -1 0 9                          | False
 4132 | 1 23 23 13 13 12 -1 10 12 -1 0 3                    | False
 4133 | 1 0 -1 10 13 -1 0 9                                 | False
 4134 | 1 0 12 -1 10 13 12 -1 0 3                           | False
 4135 | 1 0 0 -1 10 13 13 -1 0 9                            | False
 4136 | 1 0 0 12 -1 10 13 13 12 -1 0 3                      | False
 4137 | 1 27 -1 10 13 -1 0 9                                | False
 4138 | 1 27 12 -1 10 13 12 -1 0 3                          | False
 4139 | 1 27 26 -1 10 13 13 -1 0 9                          | False
 4140 | 1 27 26 12 -1 10 13 13 12 -1 0 3                    | False
 4141 | 1 28 -1 10 13 -1 0 9                                | False
 4142 | 1 28 12 -1 10 13 12 -1 0 3                          | False
 4143 | 1 28 29 -1 10 13 13 -1 0 9                          | False
 4144 | 1 28 29 12 -1 10 13 13 12 -1 0 3                    | False
 4145 | 1 11 -1 10 11 -1 0 13                               | False
 4146 | 1 11 12 -1 10 11 12 -1 0 15                         | False
 4147 | 1 11 12 23 23 13 13 -1 10 11 12 -1 0 17             | False
 4148 | 1 11 12 0 -1 10 11 12 13 -1 0 17                    | False
 4149 | 1 11 12 0 0 -1 10 11 12 13 13 -1 0 17               | False
 4150 | 1 11 12 27 -1 10 11 12 13 -1 0 17                   | False
 4151 | 1 11 12 27 26 -1 10 11 12 13 13 -1 0 17             | False
 4152 | 1 11 12 28 -1 10 11 12 13 -1 0 17                   | False
 4153 | 1 11 12 28 29 -1 10 11 12 13 13 -1 0 17             | False
 4154 | 1 11 23 23 13 13 -1 10 11 -1 0 16                   | False
 4155 | 1 11 23 23 13 13 12 -1 10 11 12 -1 0 17             | False
 4156 | 1 11 0 -1 10 11 13 -1 0 16                          | False
 4157 | 1 11 0 12 -1 10 11 13 12 -1 0 17                    | False
 4158 | 1 11 0 0 -1 10 11 13 13 -1 0 16                     | False
 4159 | 1 11 0 0 12 -1 10 11 13 13 12 -1 0 17               | False
 4160 | 1 11 27 -1 10 11 13 -1 0 16                         | False
 4161 | 1 11 27 12 -1 10 11 13 12 -1 0 17                   | False
 4162 | 1 11 27 26 -1 10 11 13 13 -1 0 16                   | False
 4163 | 1 11 27 26 12 -1 10 11 13 13 12 -1 0 17             | False
 4164 | 1 11 28 -1 10 11 13 -1 0 16                         | False
 4165 | 1 11 28 12 -1 10 11 13 12 -1 0 17                   | False
 4166 | 1 11 28 29 -1 10 11 13 13 -1 0 16                   | False
 4167 | 1 11 28 29 12 -1 10 11 13 13 12 -1 0 17             | False
 4168 | 22 1 -1 10 10 -1 0 5                                | False
 4169 | 22 1 12 -1 10 10 12 -1 0 3                          | False
 4170 | 22 1 12 23 23 13 13 -1 10 10 12 -1 0 3              | False
 4171 | 22 1 12 0 -1 10 10 12 13 -1 0 3                     | False
 4172 | 22 1 12 0 0 -1 10 10 12 13 13 -1 0 3                | False
 4173 | 22 1 12 27 -1 10 10 12 13 -1 0 3                    | False
 4174 | 22 1 12 27 26 -1 10 10 12 13 13 -1 0 3              | False
 4175 | 22 1 12 28 -1 10 10 12 13 -1 0 3                    | False
 4176 | 22 1 12 28 29 -1 10 10 12 13 13 -1 0 3              | False
 4177 | 22 1 23 23 13 13 -1 10 10 -1 0 9                    | False
 4178 | 22 1 23 23 13 13 12 -1 10 10 12 -1 0 3              | False
 4179 | 22 1 0 -1 10 10 13 -1 0 9                           | False
 4180 | 22 1 0 12 -1 10 10 13 12 -1 0 3                     | False
 4181 | 22 1 0 0 -1 10 10 13 13 -1 0 9                      | False
 4182 | 22 1 0 0 12 -1 10 10 13 13 12 -1 0 3                | False
 4183 | 22 1 27 -1 10 10 13 -1 0 9                          | False
 4184 | 22 1 27 12 -1 10 10 13 12 -1 0 3                    | False
 4185 | 22 1 27 26 -1 10 10 13 13 -1 0 9                    | False
 4186 | 22 1 27 26 12 -1 10 10 13 13 12 -1 0 3              | False
 4187 | 22 1 28 -1 10 10 13 -1 0 9                          | False
 4188 | 22 1 28 12 -1 10 10 13 12 -1 0 3                    | False
 4189 | 22 1 28 29 -1 10 10 13 13 -1 0 9                    | False
 4190 | 22 1 28 29 12 -1 10 10 13 13 12 -1 0 3              | False
 4191 | 22 1 11 -1 10 10 11 -1 0 13                         | False
 4192 | 22 1 11 12 -1 10 10 11 12 -1 0 15                   | False
 4193 | 22 1 11 12 23 23 13 13 -1 10 10 11 12 -1 0 17       | False
 4194 | 22 1 11 12 0 -1 10 10 11 12 13 -1 0 17              | False
 4195 | 22 1 11 12 0 0 -1 10 10 11 12 13 13 -1 0 17         | False
 4196 | 22 1 11 12 27 -1 10 10 11 12 13 -1 0 17             | False
 4197 | 22 1 11 12 27 26 -1 10 10 11 12 13 13 -1 0 17       | False
 4198 | 22 1 11 12 28 -1 10 10 11 12 13 -1 0 17             | False
 4199 | 22 1 11 12 28 29 -1 10 10 11 12 13 13 -1 0 17       | False
 4200 | 22 1 11 23 23 13 13 -1 10 10 11 -1 0 16             | False
 4201 | 22 1 11 23 23 13 13 12 -1 10 10 11 12 -1 0 17       | False
 4202 | 22 1 11 0 -1 10 10 11 13 -1 0 16                    | False
 4203 | 22 1 11 0 12 -1 10 10 11 13 12 -1 0 17              | False
 4204 | 22 1 11 0 0 -1 10 10 11 13 13 -1 0 16               | False
 4205 | 22 1 11 0 0 12 -1 10 10 11 13 13 12 -1 0 17         | False
 4206 | 22 1 11 27 -1 10 10 11 13 -1 0 16                   | False
 4207 | 22 1 11 27 12 -1 10 10 11 13 12 -1 0 17             | False
 4208 | 22 1 11 27 26 -1 10 10 11 13 13 -1 0 16             | False
 4209 | 22 1 11 27 26 12 -1 10 10 11 13 13 12 -1 0 17       | False
 4210 | 22 1 11 28 -1 10 10 11 13 -1 0 16                   | False
 4211 | 22 1 11 28 12 -1 10 10 11 13 12 -1 0 17             | False
 4212 | 22 1 11 28 29 -1 10 10 11 13 13 -1 0 16             | False
 4213 | 22 1 11 28 29 12 -1 10 10 11 13 13 12 -1 0 17       | False
 4214 | 1 22 -1 10 10 -1 0 5                                | False
 4215 | 1 22 12 -1 10 10 12 -1 0 3                          | False
 4216 | 1 22 12 23 23 13 13 -1 10 10 12 -1 0 3              | False
 4217 | 1 22 12 0 -1 10 10 12 13 -1 0 3                     | False
 4218 | 1 22 12 0 0 -1 10 10 12 13 13 -1 0 3                | False
 4219 | 1 22 12 27 -1 10 10 12 13 -1 0 3                    | False
 4220 | 1 22 12 27 26 -1 10 10 12 13 13 -1 0 3              | False
 4221 | 1 22 12 28 -1 10 10 12 13 -1 0 3                    | False
 4222 | 1 22 12 28 29 -1 10 10 12 13 13 -1 0 3              | False
 4223 | 1 22 23 23 13 13 -1 10 10 -1 0 9                    | False
 4224 | 1 22 23 23 13 13 12 -1 10 10 12 -1 0 3              | False
 4225 | 1 22 0 -1 10 10 13 -1 0 9                           | False
 4226 | 1 22 0 12 -1 10 10 13 12 -1 0 3                     | False
 4227 | 1 22 0 0 -1 10 10 13 13 -1 0 9                      | False
 4228 | 1 22 0 0 12 -1 10 10 13 13 12 -1 0 3                | False
 4229 | 1 22 27 -1 10 10 13 -1 0 9                          | False
 4230 | 1 22 27 12 -1 10 10 13 12 -1 0 3                    | False
 4231 | 1 22 27 26 -1 10 10 13 13 -1 0 9                    | False
 4232 | 1 22 27 26 12 -1 10 10 13 13 12 -1 0 3              | False
 4233 | 1 22 28 -1 10 10 13 -1 0 9                          | False
 4234 | 1 22 28 12 -1 10 10 13 12 -1 0 3                    | False
 4235 | 1 22 28 29 -1 10 10 13 13 -1 0 9                    | False
 4236 | 1 22 28 29 12 -1 10 10 13 13 12 -1 0 3              | False
 4237 | 1 22 11 -1 10 10 11 -1 0 13                         | False
 4238 | 1 22 11 12 -1 10 10 11 12 -1 0 15                   | False
 4239 | 1 22 11 12 23 23 13 13 -1 10 10 11 12 -1 0 17       | False
 4240 | 1 22 11 12 0 -1 10 10 11 12 13 -1 0 17              | False
 4241 | 1 22 11 12 0 0 -1 10 10 11 12 13 13 -1 0 17         | False
 4242 | 1 22 11 12 27 -1 10 10 11 12 13 -1 0 17             | False
 4243 | 1 22 11 12 27 26 -1 10 10 11 12 13 13 -1 0 17       | False
 4244 | 1 22 11 12 28 -1 10 10 11 12 13 -1 0 17             | False
 4245 | 1 22 11 12 28 29 -1 10 10 11 12 13 13 -1 0 17       | False
 4246 | 1 22 11 23 23 13 13 -1 10 10 11 -1 0 16             | False
 4247 | 1 22 11 23 23 13 13 12 -1 10 10 11 12 -1 0 17       | False
 4248 | 1 22 11 0 -1 10 10 11 13 -1 0 16                    | False
 4249 | 1 22 11 0 12 -1 10 10 11 13 12 -1 0 17              | False
 4250 | 1 22 11 0 0 -1 10 10 11 13 13 -1 0 16               | False
 4251 | 1 22 11 0 0 12 -1 10 10 11 13 13 12 -1 0 17         | False
 4252 | 1 22 11 27 -1 10 10 11 13 -1 0 16                   | False
 4253 | 1 22 11 27 12 -1 10 10 11 13 12 -1 0 17             | False
 4254 | 1 22 11 27 26 -1 10 10 11 13 13 -1 0 16             | False
 4255 | 1 22 11 27 26 12 -1 10 10 11 13 13 12 -1 0 17       | False
 4256 | 1 22 11 28 -1 10 10 11 13 -1 0 16                   | False
 4257 | 1 22 11 28 12 -1 10 10 11 13 12 -1 0 17             | False
 4258 | 1 22 11 28 29 -1 10 10 11 13 13 -1 0 16             | False
 4259 | 1 22 11 28 29 12 -1 10 10 11 13 13 12 -1 0 17       | False
 4260 | 2 1 -1 10 10 -1 0 5                                 | False
 4261 | 2 1 12 -1 10 10 12 -1 0 3                           | False
 4262 | 2 1 12 23 23 13 13 -1 10 10 12 -1 0 3               | False
 4263 | 2 1 12 0 -1 10 10 12 13 -1 0 3                      | False
 4264 | 2 1 12 0 0 -1 10 10 12 13 13 -1 0 3                 | False
 4265 | 2 1 12 27 -1 10 10 12 13 -1 0 3                     | False
 4266 | 2 1 12 27 26 -1 10 10 12 13 13 -1 0 3               | False
 4267 | 2 1 12 28 -1 10 10 12 13 -1 0 3                     | False
 4268 | 2 1 12 28 29 -1 10 10 12 13 13 -1 0 3               | False
 4269 | 2 1 23 23 13 13 -1 10 10 -1 0 9                     | False
 4270 | 2 1 23 23 13 13 12 -1 10 10 12 -1 0 3               | False
 4271 | 2 1 0 -1 10 10 13 -1 0 9                            | False
 4272 | 2 1 0 12 -1 10 10 13 12 -1 0 3                      | False
 4273 | 2 1 0 0 -1 10 10 13 13 -1 0 9                       | False
 4274 | 2 1 0 0 12 -1 10 10 13 13 12 -1 0 3                 | False
 4275 | 2 1 27 -1 10 10 13 -1 0 9                           | False
 4276 | 2 1 27 12 -1 10 10 13 12 -1 0 3                     | False
 4277 | 2 1 27 26 -1 10 10 13 13 -1 0 9                     | False
 4278 | 2 1 27 26 12 -1 10 10 13 13 12 -1 0 3               | False
 4279 | 2 1 28 -1 10 10 13 -1 0 9                           | False
 4280 | 2 1 28 12 -1 10 10 13 12 -1 0 3                     | False
 4281 | 2 1 28 29 -1 10 10 13 13 -1 0 9                     | False
 4282 | 2 1 28 29 12 -1 10 10 13 13 12 -1 0 3               | False
 4283 | 2 1 11 -1 10 10 11 -1 0 13                          | False
 4284 | 2 1 11 12 -1 10 10 11 12 -1 0 15                    | False
 4285 | 2 1 11 12 23 23 13 13 -1 10 10 11 12 -1 0 17        | False
 4286 | 2 1 11 12 0 -1 10 10 11 12 13 -1 0 17               | False
 4287 | 2 1 11 12 0 0 -1 10 10 11 12 13 13 -1 0 17          | False
 4288 | 2 1 11 12 27 -1 10 10 11 12 13 -1 0 17              | False
 4289 | 2 1 11 12 27 26 -1 10 10 11 12 13 13 -1 0 17        | False
 4290 | 2 1 11 12 28 -1 10 10 11 12 13 -1 0 17              | False
 4291 | 2 1 11 12 28 29 -1 10 10 11 12 13 13 -1 0 17        | False
 4292 | 2 1 11 23 23 13 13 -1 10 10 11 -1 0 16              | False
 4293 | 2 1 11 23 23 13 13 12 -1 10 10 11 12 -1 0 17        | False
 4294 | 2 1 11 0 -1 10 10 11 13 -1 0 16                     | False
 4295 | 2 1 11 0 12 -1 10 10 11 13 12 -1 0 17               | False
 4296 | 2 1 11 0 0 -1 10 10 11 13 13 -1 0 16                | False
 4297 | 2 1 11 0 0 12 -1 10 10 11 13 13 12 -1 0 17          | False
 4298 | 2 1 11 27 -1 10 10 11 13 -1 0 16                    | False
 4299 | 2 1 11 27 12 -1 10 10 11 13 12 -1 0 17              | False
 4300 | 2 1 11 27 26 -1 10 10 11 13 13 -1 0 16              | False
 4301 | 2 1 11 27 26 12 -1 10 10 11 13 13 12 -1 0 17        | False
 4302 | 2 1 11 28 -1 10 10 11 13 -1 0 16                    | False
 4303 | 2 1 11 28 12 -1 10 10 11 13 12 -1 0 17              | False
 4304 | 2 1 11 28 29 -1 10 10 11 13 13 -1 0 16              | False
 4305 | 2 1 11 28 29 12 -1 10 10 11 13 13 12 -1 0 17        | False
 4306 | 1 2 -1 10 10 -1 0 5                                 | False
 4307 | 1 2 12 -1 10 10 12 -1 0 3                           | False
 4308 | 1 2 12 23 23 13 13 -1 10 10 12 -1 0 3               | False
 4309 | 1 2 12 0 -1 10 10 12 13 -1 0 3                      | False
 4310 | 1 2 12 0 0 -1 10 10 12 13 13 -1 0 3                 | False
 4311 | 1 2 12 27 -1 10 10 12 13 -1 0 3                     | False
 4312 | 1 2 12 27 26 -1 10 10 12 13 13 -1 0 3               | False
 4313 | 1 2 12 28 -1 10 10 12 13 -1 0 3                     | False
 4314 | 1 2 12 28 29 -1 10 10 12 13 13 -1 0 3               | False
 4315 | 1 2 23 23 13 13 -1 10 10 -1 0 9                     | False
 4316 | 1 2 23 23 13 13 12 -1 10 10 12 -1 0 3               | False
 4317 | 1 2 0 -1 10 10 13 -1 0 9                            | False
 4318 | 1 2 0 12 -1 10 10 13 12 -1 0 3                      | False
 4319 | 1 2 0 0 -1 10 10 13 13 -1 0 9                       | False
 4320 | 1 2 0 0 12 -1 10 10 13 13 12 -1 0 3                 | False
 4321 | 1 2 27 -1 10 10 13 -1 0 9                           | False
 4322 | 1 2 27 12 -1 10 10 13 12 -1 0 3                     | False
 4323 | 1 2 27 26 -1 10 10 13 13 -1 0 9                     | False
 4324 | 1 2 27 26 12 -1 10 10 13 13 12 -1 0 3               | False
 4325 | 1 2 28 -1 10 10 13 -1 0 9                           | False
 4326 | 1 2 28 12 -1 10 10 13 12 -1 0 3                     | False
 4327 | 1 2 28 29 -1 10 10 13 13 -1 0 9                     | False
 4328 | 1 2 28 29 12 -1 10 10 13 13 12 -1 0 3               | False
 4329 | 1 2 11 -1 10 10 11 -1 0 13                          | False
 4330 | 1 2 11 12 -1 10 10 11 12 -1 0 15                    | False
 4331 | 1 2 11 12 23 23 13 13 -1 10 10 11 12 -1 0 17        | False
 4332 | 1 2 11 12 0 -1 10 10 11 12 13 -1 0 17               | False
 4333 | 1 2 11 12 0 0 -1 10 10 11 12 13 13 -1 0 17          | False
 4334 | 1 2 11 12 27 -1 10 10 11 12 13 -1 0 17              | False
 4335 | 1 2 11 12 27 26 -1 10 10 11 12 13 13 -1 0 17        | False
 4336 | 1 2 11 12 28 -1 10 10 11 12 13 -1 0 17              | False
 4337 | 1 2 11 12 28 29 -1 10 10 11 12 13 13 -1 0 17        | False
 4338 | 1 2 11 23 23 13 13 -1 10 10 11 -1 0 16              | False
 4339 | 1 2 11 23 23 13 13 12 -1 10 10 11 12 -1 0 17        | False
 4340 | 1 2 11 0 -1 10 10 11 13 -1 0 16                     | False
 4341 | 1 2 11 0 12 -1 10 10 11 13 12 -1 0 17               | False
 4342 | 1 2 11 0 0 -1 10 10 11 13 13 -1 0 16                | False
 4343 | 1 2 11 0 0 12 -1 10 10 11 13 13 12 -1 0 17          | False
 4344 | 1 2 11 27 -1 10 10 11 13 -1 0 16                    | False
 4345 | 1 2 11 27 12 -1 10 10 11 13 12 -1 0 17              | False
 4346 | 1 2 11 27 26 -1 10 10 11 13 13 -1 0 16              | False
 4347 | 1 2 11 27 26 12 -1 10 10 11 13 13 12 -1 0 17        | False
 4348 | 1 2 11 28 -1 10 10 11 13 -1 0 16                    | False
 4349 | 1 2 11 28 12 -1 10 10 11 13 12 -1 0 17              | False
 4350 | 1 2 11 28 29 -1 10 10 11 13 13 -1 0 16              | False
 4351 | 1 2 11 28 29 12 -1 10 10 11 13 13 12 -1 0 17        | False
 4352 | 16 0 22 -1 16 17 17 -1 4 7                          | False
 4353 | 0 1 6 -1 1 5 5 -1 1 9                               | False
(4354 rows)
```



## Districts


```sql
SELECT * FROM districts;
```

```sql
 id | name             | geometry
----+------------------+----------
  1 | Altstadt         | NULL
  2 | Neustadt         | NULL
  3 | Nordstadt        | NULL
  4 | Westliche Höhe   | NULL
  5 | Friesischer Berg | NULL
  6 | Weiche           | NULL
  7 | Südstadt         | NULL
  8 | Sandberg         | NULL
  9 | Jürgensby        | NULL
 10 | Fruerlund        | NULL
 11 | Mürwik           | NULL
 12 | Engelsby         | NULL
 13 | Tarup            | NULL
(13 rows)
```



## Residents By Districts

Einwohnerinnen in den Stadtteilen 2011 bis 2021

*Einwohnerinnen mit Haupt- oder alleiniger Wohnung. Geringfügige Abweichungen ergeben sich durch nicht zuordenbare Personen.*


```sql
SELECT * FROM residents_by_districts;
```

```sql
 id | year | district_id | residents
----+------+-------------+-----------
  1 | 2011 |           1 |      3323
  2 | 2017 |           1 |      3807
  3 | 2018 |           1 |      3815
  4 | 2019 |           1 |      3793
  5 | 2020 |           1 |      3739
  6 | 2021 |           1 |      3866
  7 | 2022 |           1 |      3907
  8 | 2011 |           2 |      4039
  9 | 2017 |           2 |      4698
 10 | 2018 |           2 |      4730
 11 | 2019 |           2 |      4770
 12 | 2020 |           2 |      4725
 13 | 2021 |           2 |      4850
 14 | 2022 |           2 |      5052
 15 | 2011 |           3 |     10844
 16 | 2017 |           3 |     11995
 17 | 2018 |           3 |     12073
 18 | 2019 |           3 |     12160
 19 | 2020 |           3 |     12291
 20 | 2021 |           3 |     12525
 21 | 2022 |           3 |     12532
 22 | 2011 |           4 |      7884
 23 | 2017 |           4 |      8042
 24 | 2018 |           4 |      8083
 25 | 2019 |           4 |      8034
 26 | 2020 |           4 |      7884
 27 | 2021 |           4 |      8015
 28 | 2022 |           4 |      8109
 29 | 2011 |           5 |      6632
 30 | 2017 |           5 |      6836
 31 | 2018 |           5 |      6676
 32 | 2019 |           5 |      6696
 33 | 2020 |           5 |      6645
 34 | 2021 |           5 |      6644
 35 | 2022 |           5 |      6731
 36 | 2011 |           6 |      6613
 37 | 2017 |           6 |      7350
 38 | 2018 |           6 |      7431
 39 | 2019 |           6 |      7435
 40 | 2020 |           6 |      7350
 41 | 2021 |           6 |      7472
 42 | 2022 |           6 |      7679
 43 | 2011 |           7 |      3960
 44 | 2017 |           7 |      4079
 45 | 2018 |           7 |      4166
 46 | 2019 |           7 |      4170
 47 | 2020 |           7 |      4065
 48 | 2021 |           7 |      4205
 49 | 2022 |           7 |      4324
 50 | 2011 |           8 |      5949
 51 | 2017 |           8 |      6513
 52 | 2018 |           8 |      6583
 53 | 2019 |           8 |      6731
 54 | 2020 |           8 |      6729
 55 | 2021 |           8 |      6702
 56 | 2022 |           8 |      6906
 57 | 2011 |           9 |      7761
 58 | 2017 |           9 |      8362
 59 | 2018 |           9 |      8431
 60 | 2019 |           9 |      8424
 61 | 2020 |           9 |      8325
 62 | 2021 |           9 |      8371
 63 | 2022 |           9 |      8562
 64 | 2011 |          10 |      6242
 65 | 2017 |          10 |      6754
 66 | 2018 |          10 |      6779
 67 | 2019 |          10 |      6909
 68 | 2020 |          10 |      6880
 69 | 2021 |          10 |      6794
 70 | 2022 |          10 |      6853
 71 | 2011 |          11 |     14257
 72 | 2017 |          11 |     14740
 73 | 2018 |          11 |     14930
 74 | 2019 |          11 |     15214
 75 | 2020 |          11 |     15283
 76 | 2021 |          11 |     15301
 77 | 2022 |          11 |     15350
 78 | 2011 |          12 |      7829
 79 | 2017 |          12 |      7548
 80 | 2018 |          12 |      7581
 81 | 2019 |          12 |      7487
 82 | 2020 |          12 |      7468
 83 | 2021 |          12 |      7536
 84 | 2022 |          12 |      7661
 85 | 2011 |          13 |      4115
 86 | 2017 |          13 |      4727
 87 | 2018 |          13 |      4909
 88 | 2019 |          13 |      5097
 89 | 2020 |          13 |      5347
 90 | 2021 |          13 |      5596
 91 | 2022 |          13 |      5675
(91 rows)
```



## Number Of Births By Districts

Anzahl der Geburten und Geburtenquoten in den Stadtteilen 2011 bis 2021


```sql
SELECT * FROM number_of_births_by_districts;
```

```sql
 id | year | district_id | births | birth_rate
----+------+-------------+--------+------------
  1 | 2011 |           1 |     29 |       30.4
  2 | 2017 |           1 |     39 |       36.8
  3 | 2018 |           1 |     34 |       32.1
  4 | 2019 |           1 |     41 |       39.1
  5 | 2020 |           1 |     41 |       39.6
  6 | 2021 |           1 |     31 |       28.3
  7 | 2011 |           2 |     53 |       35.8
  8 | 2017 |           2 |     59 |       46.3
  9 | 2018 |           2 |     55 |       44.8
 10 | 2019 |           2 |     62 |       50.2
 11 | 2020 |           2 |     55 |       45.7
 12 | 2021 |           2 |     61 |       47.2
 13 | 2011 |           3 |     61 |       38.8
 14 | 2017 |           3 |    132 |       57.9
 15 | 2018 |           3 |    134 |       58.1
 16 | 2019 |           3 |    142 |       60.8
 17 | 2020 |           3 |    145 |       60.6
 18 | 2021 |           3 |    124 |       49.5
 19 | 2011 |           4 |     41 |       33.9
 20 | 2017 |           4 |     67 |       44.5
 21 | 2018 |           4 |     81 |       54
 22 | 2019 |           4 |     84 |       55.6
 23 | 2020 |           4 |     75 |       50.5
 24 | 2021 |           4 |     69 |       45
 25 | 2011 |           5 |     56 |       30.1
 26 | 2017 |           5 |     54 |       35.1
 27 | 2018 |           5 |     69 |       45.4
 28 | 2019 |           5 |     74 |       48.7
 29 | 2020 |           5 |     56 |       37.2
 30 | 2021 |           5 |     55 |       36
 31 | 2011 |           6 |    119 |       51.3
 32 | 2017 |           6 |     67 |       54.1
 33 | 2018 |           6 |     76 |       62.2
 34 | 2019 |           6 |     64 |       53
 35 | 2020 |           6 |     57 |       47.7
 36 | 2021 |           6 |     55 |       45
 37 | 2011 |           7 |     46 |       44.1
 38 | 2017 |           7 |     55 |       60.1
 39 | 2018 |           7 |     57 |       60.3
 40 | 2019 |           7 |     52 |       53.9
 41 | 2020 |           7 |     46 |       50.2
 42 | 2021 |           7 |     51 |       54.2
 43 | 2011 |           8 |    122 |       56.3
 44 | 2017 |           8 |     48 |       27.6
 45 | 2018 |           8 |     51 |       29.5
 46 | 2019 |           8 |     57 |       32.7
 47 | 2020 |           8 |     63 |       37
 48 | 2021 |           8 |     58 |       34.3
 49 | 2011 |           9 |     39 |       27.1
 50 | 2017 |           9 |     88 |       44.3
 51 | 2018 |           9 |     71 |       34.8
 52 | 2019 |           9 |     80 |       39.8
 53 | 2020 |           9 |     81 |       41.7
 54 | 2021 |           9 |     73 |       37.3
 55 | 2011 |          10 |     45 |       52.2
 56 | 2017 |          10 |     68 |       55.8
 57 | 2018 |          10 |     68 |       55.7
 58 | 2019 |          10 |     65 |       51.3
 59 | 2020 |          10 |     76 |       61.5
 60 | 2021 |          10 |     59 |       48
 61 | 2011 |          11 |     32 |       40.3
 62 | 2017 |          11 |    133 |       56.2
 63 | 2018 |          11 |    108 |       44.4
 64 | 2019 |          11 |    160 |       64.5
 65 | 2020 |          11 |    129 |       52
 66 | 2021 |          11 |    145 |       58
 67 | 2011 |          12 |     53 |       44.2
 68 | 2017 |          12 |     59 |       45.8
 69 | 2018 |          12 |     63 |       48.5
 70 | 2019 |          12 |     65 |       51
 71 | 2020 |          12 |     67 |       53.1
 72 | 2021 |          12 |     76 |       60.7
 73 | 2011 |          13 |     78 |       50.9
 74 | 2017 |          13 |     42 |       47.5
 75 | 2018 |          13 |     44 |       48.2
 76 | 2019 |          13 |     61 |       62.2
 77 | 2020 |          13 |     49 |       46.8
 78 | 2021 |          13 |     41 |       37
(78 rows)
```



## Age Groups Of Residents

Entwicklung der Altersgruppen 2011 bis 2021


```sql
SELECT * FROM age_groups_of_residents;
```

```sql
 id | year | age_under_18 | age_18_to_under_30 | age_30_to_under_45 | age_45_to_under_65 | age_65_to_under_80 | age_80_and_above
----+------+--------------+--------------------+--------------------+--------------------+--------------------+------------------
  1 | 2011 |        13401 |              17944 |              17376 |              23067 |              13144 |             4581
  2 | 2017 |        14237 |              20063 |              17667 |              24741 |              13442 |             5301
  3 | 2018 |        14524 |              19992 |              18089 |              24757 |              13244 |             5581
  4 | 2019 |        14737 |              19846 |              18547 |              24744 |              13124 |             5922
  5 | 2020 |        14739 |              19237 |              18869 |              24674 |              12962 |              625
  6 | 2021 |        14947 |              19330 |              19457 |              24785 |              12885 |             6478
(6 rows)
```



## Age Ratio By Districts

Altenquotient 2011 bis 2021 differenziert nach Stadtteilen


```sql
SELECT * FROM age_ratio_by_districts;
```

```sql
 id | year | district_id | quotient
----+------+-------------+----------
  1 | 2011 |           1 |       15
  2 | 2017 |           1 |       14
  3 | 2018 |           1 |       14
  4 | 2019 |           1 |       15
  5 | 2020 |           1 |       15
  6 | 2021 |           1 |       14
  7 | 2011 |           2 |       13
  8 | 2017 |           2 |       10
  9 | 2018 |           2 |       10
 10 | 2019 |           2 |       11
 11 | 2020 |           2 |       11
 12 | 2021 |           2 |       10
 13 | 2011 |           3 |       25
 14 | 2017 |           3 |       24
 15 | 2018 |           3 |       25
 16 | 2019 |           3 |       24
 17 | 2020 |           3 |       24
 18 | 2021 |           3 |       24
 19 | 2011 |           4 |       40
 20 | 2017 |           4 |       42
 21 | 2018 |           4 |       41
 22 | 2019 |           4 |       42
 23 | 2020 |           4 |       43
 24 | 2021 |           4 |       43
 25 | 2011 |           5 |       30
 26 | 2017 |           5 |       28
 27 | 2018 |           5 |       29
 28 | 2019 |           5 |       28
 29 | 2020 |           5 |       30
 30 | 2021 |           5 |       29
 31 | 2011 |           6 |       30
 32 | 2017 |           6 |       34
 33 | 2018 |           6 |       34
 34 | 2019 |           6 |       34
 35 | 2020 |           6 |       34
 36 | 2021 |           6 |       35
 37 | 2011 |           7 |       34
 38 | 2017 |           7 |       27
 39 | 2018 |           7 |       26
 40 | 2019 |           7 |       26
 41 | 2020 |           7 |       26
 42 | 2021 |           7 |       25
 43 | 2011 |           8 |       27
 44 | 2017 |           8 |       24
 45 | 2018 |           8 |       24
 46 | 2019 |           8 |       24
 47 | 2020 |           8 |       23
 48 | 2021 |           8 |       22
 49 | 2011 |           9 |       27
 50 | 2017 |           9 |       24
 51 | 2018 |           9 |       24
 52 | 2019 |           9 |       25
 53 | 2020 |           9 |       25
 54 | 2021 |           9 |       25
 55 | 2011 |          10 |       36
 56 | 2017 |          10 |       40
 57 | 2018 |          10 |       40
 58 | 2019 |          10 |       40
 59 | 2020 |          10 |       41
 60 | 2021 |          10 |       22
 61 | 2011 |          11 |       50
 62 | 2017 |          11 |       52
 63 | 2018 |          11 |       52
 64 | 2019 |          11 |       51
 65 | 2020 |          11 |       52
 66 | 2021 |          11 |       53
 67 | 2011 |          12 |       32
 68 | 2017 |          12 |       37
 69 | 2018 |          12 |       37
 70 | 2019 |          12 |       38
 71 | 2020 |          12 |       39
 72 | 2021 |          12 |       39
 73 | 2011 |          13 |       29
 74 | 2017 |          13 |       27
 75 | 2018 |          13 |       26
 76 | 2019 |          13 |       26
 77 | 2020 |          13 |       27
 78 | 2021 |          13 |       27
(78 rows)
```



## Residents By Districts In Age Groups

Einwohnerinnen in den Stadtteilen 2021 differenziert nach Altersgruppen


```sql
SELECT * FROM residents_by_districts_in_age_groups;
```

```sql
 id | year | district_id | total | age_under_18 | age_18_to_under_30 | age_30_to_under_45 | age_45_to_under_65 | age_65_to_under_80 | age_80_and_older | age_0_to_under_7 | age_60_and_older
----+------+-------------+-------+--------------+--------------------+--------------------+--------------------+--------------------+------------------+------------------+------------------
  1 | 2021 |           1 |  3866 |          360 |               1338 |                951 |                804 |                265 |              148 |              174 |              565
  2 | 2021 |           2 |  4850 |          745 |               1597 |               1162 |                977 |                277 |               92 |              347 |              551
  3 | 2021 |           3 | 12525 |         2164 |               2349 |               2722 |               3348 |               1494 |              448 |              946 |             2642
  4 | 2021 |           4 |  8015 |         1241 |               1387 |               1485 |               1912 |               1276 |              714 |              501 |             2451
  5 | 2021 |           5 |  6644 |          816 |               1578 |               1376 |               1583 |                840 |              451 |              337 |             1681
  6 | 2021 |           6 |  7472 |         1533 |                917 |               1433 |               2105 |                987 |              497 |              549 |             1958
  7 | 2021 |           7 |  4205 |          591 |                996 |                954 |                950 |                485 |              229 |              283 |              953
  8 | 2021 |           8 |  7602 |          657 |               2225 |               1333 |               1425 |                627 |              435 |              291 |             1380
  9 | 2021 |           9 |  8371 |          959 |               2160 |               1735 |               2071 |                997 |              449 |              402 |             1938
 10 | 2021 |          10 |  6794 |         1017 |                974 |               1296 |               1863 |               1066 |              578 |              425 |             2113
 11 | 2021 |          11 | 15301 |         2361 |               1976 |               2609 |               3969 |               2790 |             1596 |              943 |             5460
 12 | 2021 |          12 |  7536 |         1256 |               1025 |               1293 |               2250 |               1164 |              548 |              497 |             2292
 13 | 2021 |          13 |  5596 |         1244 |                808 |               1106 |               1528 |                617 |              293 |              453 |             1214
(13 rows)
```



## Children By Districts Age Under 18

Anzahl der Kinder und Jugendlichen bis unter 18 Jahren und Anteil an der Gesamtbevölkerung in den Stadtteilen 2011 bis 2021


```sql
SELECT * FROM children_by_districts_age_under_18;
```

```sql
 id | year | district_id | residents
----+------+-------------+-----------
  1 | 2011 |           1 |       297
  2 | 2017 |           1 |       361
  3 | 2018 |           1 |       357
  4 | 2019 |           1 |       385
  5 | 2020 |           1 |       371
  6 | 2021 |           1 |       360
  7 | 2011 |           2 |       574
  8 | 2017 |           2 |       663
  9 | 2018 |           2 |       676
 10 | 2019 |           2 |       734
 11 | 2020 |           2 |       735
 12 | 2021 |           2 |       745
 13 | 2011 |           3 |      1842
 14 | 2017 |           3 |      1968
 15 | 2018 |           3 |      2028
 16 | 2019 |           3 |      2068
 17 | 2020 |           3 |      2111
 18 | 2021 |           3 |      2164
 19 | 2011 |           4 |      1151
 20 | 2017 |           4 |      1205
 21 | 2018 |           4 |      1236
 22 | 2019 |           4 |      1265
 23 | 2020 |           4 |      1209
 24 | 2021 |           4 |      1241
 25 | 2011 |           5 |       808
 26 | 2017 |           5 |       833
 27 | 2018 |           5 |       832
 28 | 2019 |           5 |       866
 29 | 2020 |           5 |       840
 30 | 2021 |           5 |       816
 31 | 2011 |           6 |      1455
 32 | 2017 |           6 |      1531
 33 | 2018 |           6 |      1552
 34 | 2019 |           6 |      1518
 35 | 2020 |           6 |      1500
 36 | 2021 |           6 |      1533
 37 | 2011 |           7 |       500
 38 | 2017 |           7 |       558
 39 | 2018 |           7 |       614
 40 | 2019 |           7 |       581
 41 | 2020 |           7 |       573
 42 | 2021 |           7 |       591
 43 | 2011 |           8 |       548
 44 | 2017 |           8 |       572
 45 | 2018 |           8 |       588
 46 | 2019 |           8 |       616
 47 | 2020 |           8 |       649
 48 | 2021 |           8 |       657
 49 | 2011 |           9 |       830
 50 | 2017 |           9 |       987
 51 | 2018 |           9 |       962
 52 | 2019 |           9 |       992
 53 | 2020 |           9 |       962
 54 | 2021 |           9 |       959
 55 | 2011 |          10 |       901
 56 | 2017 |          10 |      1009
 57 | 2018 |          10 |      1042
 58 | 2019 |          10 |      1050
 59 | 2020 |          10 |      1061
 60 | 2021 |          10 |      1017
 61 | 2011 |          11 |      2074
 62 | 2017 |          11 |      2246
 63 | 2018 |          11 |      2288
 64 | 2019 |          11 |      2313
 65 | 2020 |          11 |      2350
 66 | 2021 |          11 |      2361
 67 | 2011 |          12 |      1438
 68 | 2017 |          12 |      1202
 69 | 2018 |          12 |      1219
 70 | 2019 |          12 |      1204
 71 | 2020 |          12 |      1194
 72 | 2021 |          12 |      1256
 73 | 2011 |          13 |       969
 74 | 2017 |          13 |      1101
 75 | 2018 |          13 |      1127
 76 | 2019 |          13 |      1142
 77 | 2020 |          13 |      1181
 78 | 2021 |          13 |      1244
(78 rows)
```



## Residents By Districts Age 18 To Under 65

Personen im Alter von 18 bis unter 65 Jahren und Anteil an der Gesamtbevölkerung in den Stadtteilen 2011 bis 2021


```sql
SELECT * FROM residents_by_districts_age_18_to_under_65;
```

```sql
 id | year | district_id | residents
----+------+-------------+-----------
  1 | 2011 |           1 |      2644
  2 | 2017 |           1 |      3039
  3 | 2018 |           1 |      3037
  4 | 2019 |           1 |      2988
  5 | 2020 |           1 |      2949
  6 | 2021 |           1 |      3093
  7 | 2011 |           2 |      3091
  8 | 2017 |           2 |      3680
  9 | 2018 |           2 |      3686
 10 | 2019 |           2 |      3660
 11 | 2020 |           2 |      3610
 12 | 2021 |           2 |      3736
 13 | 2011 |           3 |      7282
 14 | 2017 |           3 |      8117
 15 | 2018 |           3 |      8127
 16 | 2019 |           3 |      8173
 17 | 2020 |           3 |      8234
 18 | 2021 |           3 |      8419
 19 | 2011 |           4 |      4848
 20 | 2017 |           4 |      4871
 21 | 2018 |           4 |      4896
 22 | 2019 |           4 |      4817
 23 | 2020 |           4 |      4717
 24 | 2021 |           4 |      4784
 25 | 2011 |           5 |      4519
 26 | 2017 |           5 |      4735
 27 | 2018 |           5 |      4577
 28 | 2019 |           5 |      4571
 29 | 2020 |           5 |      4509
 30 | 2021 |           5 |      4537
 31 | 2011 |           6 |      4004
 32 | 2017 |           6 |      4400
 33 | 2018 |           6 |      4449
 34 | 2019 |           6 |      4481
 35 | 2020 |           6 |      4397
 36 | 2021 |           6 |      4455
 37 | 2011 |           7 |      2603
 38 | 2017 |           7 |      2797
 39 | 2018 |           7 |      2843
 40 | 2019 |           7 |      2865
 41 | 2020 |           7 |      2778
 42 | 2021 |           7 |      2900
 43 | 2011 |           8 |      4289
 44 | 2017 |           8 |      4821
 45 | 2018 |           8 |      4874
 46 | 2019 |           8 |      4984
 47 | 2020 |           8 |      4980
 48 | 2021 |           8 |      4983
 49 | 2011 |           9 |      5484
 50 | 2017 |           9 |      5999
 51 | 2018 |           9 |      6081
 52 | 2019 |           9 |      5993
 53 | 2020 |           9 |      5922
 54 | 2021 |           9 |      5966
 55 | 2011 |          10 |      3966
 56 | 2017 |          10 |      4145
 57 | 2018 |          10 |      4144
 58 | 2019 |          10 |      4221
 59 | 2020 |          10 |      4172
 60 | 2021 |          10 |      4133
 61 | 2011 |          11 |      8257
 62 | 2017 |          11 |      8303
 63 | 2018 |          11 |      8404
 64 | 2019 |          11 |      8627
 65 | 2020 |          11 |      8617
 66 | 2021 |          11 |      8554
 67 | 2011 |          12 |      4892
 68 | 2017 |          12 |      4674
 69 | 2018 |          12 |      4691
 70 | 2019 |          12 |      4589
 71 | 2020 |          12 |      4575
 72 | 2021 |          12 |      4568
 73 | 2011 |          13 |      2464
 74 | 2017 |          13 |      2887
 75 | 2018 |          13 |      3027
 76 | 2019 |          13 |      3166
 77 | 2020 |          13 |      3318
 78 | 2021 |          13 |      3442
(78 rows)
```



## Residents By Districts Age 65 And Above

Personen im Alter von 65 Jahren und älter in den Stadtteilen 2011 bis 2021


```sql
SELECT * FROM residents_by_districts_age_65_and_above;
```

```sql
 id | year | district_id | residents
----+------+-------------+-----------
  1 | 2011 |           1 |       382
  2 | 2017 |           1 |       407
  3 | 2018 |           1 |       421
  4 | 2019 |           1 |       420
  5 | 2020 |           1 |       419
  6 | 2021 |           1 |       413
  7 | 2011 |           2 |       374
  8 | 2017 |           2 |       355
  9 | 2018 |           2 |       368
 10 | 2019 |           2 |       376
 11 | 2020 |           2 |       380
 12 | 2021 |           2 |       369
 13 | 2011 |           3 |      1720
 14 | 2017 |           3 |      1910
 15 | 2018 |           3 |      1918
 16 | 2019 |           3 |      1919
 17 | 2020 |           3 |      1946
 18 | 2021 |           3 |      1942
 19 | 2011 |           4 |      1885
 20 | 2017 |           4 |      1966
 21 | 2018 |           4 |      1951
 22 | 2019 |           4 |      1952
 23 | 2020 |           4 |      1958
 24 | 2021 |           4 |      1990
 25 | 2011 |           5 |      1305
 26 | 2017 |           5 |      1268
 27 | 2018 |           5 |      1267
 28 | 2019 |           5 |      1259
 29 | 2020 |           5 |      1296
 30 | 2021 |           5 |      1291
 31 | 2011 |           6 |      1154
 32 | 2017 |           6 |      1419
 33 | 2018 |           6 |      1430
 34 | 2019 |           6 |      1436
 35 | 2020 |           6 |      1453
 36 | 2021 |           6 |      1484
 37 | 2011 |           7 |       857
 38 | 2017 |           7 |       724
 39 | 2018 |           7 |       709
 40 | 2019 |           7 |       724
 41 | 2020 |           7 |       714
 42 | 2021 |           7 |       714
 43 | 2011 |           8 |      1112
 44 | 2017 |           8 |      1120
 45 | 2018 |           8 |      1121
 46 | 2019 |           8 |      1131
 47 | 2020 |           8 |      1100
 48 | 2021 |           8 |      1062
 49 | 2011 |           9 |      1447
 50 | 2017 |           9 |      1376
 51 | 2018 |           9 |      1388
 52 | 2019 |           9 |      1439
 53 | 2020 |           9 |      1441
 54 | 2021 |           9 |      1446
 55 | 2011 |          10 |      1375
 56 | 2017 |          10 |      1600
 57 | 2018 |          10 |      1593
 58 | 2019 |          10 |      1638
 59 | 2020 |          10 |      1647
 60 | 2021 |          10 |      1644
 61 | 2011 |          11 |      3926
 62 | 2017 |          11 |      4187
 63 | 2018 |          11 |      4233
 64 | 2019 |          11 |      4269
 65 | 2020 |          11 |      4311
 66 | 2021 |          11 |      4386
 67 | 2011 |          12 |      1499
 68 | 2017 |          12 |      1672
 69 | 2018 |          12 |      1671
 70 | 2019 |          12 |      1694
 71 | 2020 |          12 |      1699
 72 | 2021 |          12 |      1712
 73 | 2011 |          13 |       682
 74 | 2017 |          13 |       739
 75 | 2018 |          13 |       755
 76 | 2019 |          13 |       789
 77 | 2020 |          13 |       848
 78 | 2021 |          13 |       910
(78 rows)
```



## Migration Background By Districts

Anzahl der Personen mit Migrationshintergrund und Anteil an der Gesamtbevölkerung in den Stadtteilen 2021


```sql
SELECT * FROM migration_background_by_districts;
```

```sql
 id | year | district_id | foreign_citizenship | german_citizenship
----+------+-------------+---------------------+--------------------
  1 | 2021 |           1 |                 999 |                375
  2 | 2021 |           2 |                1748 |                443
  3 | 2021 |           3 |                4109 |               1673
  4 | 2021 |           4 |                1158 |                991
  5 | 2021 |           5 |                 907 |                778
  6 | 2021 |           6 |                 933 |               1222
  7 | 2021 |           7 |                 919 |                517
  8 | 2021 |           8 |                1117 |                601
  9 | 2021 |           9 |                1273 |                699
 10 | 2021 |          10 |                 645 |                927
 11 | 2021 |          11 |                1623 |               2082
 12 | 2021 |          12 |                 946 |               1335
 13 | 2021 |          13 |                 244 |                865
(13 rows)
```



## Non German Nationals Residence Status

Nicht-deutsche Staatsangehörige nach Aufenthaltsstatus (Fallzahlen 2016 bis 2021, jeweils zum 31.12.)

*Nach Angaben vom Einwanderungsbüro zum Stichtag 31.12.2021. Ein direkter Abgleich mit Daten nach Auswertung des Einwohnermelderegisters ist nicht möglich. Bei den Personen ohne langfristiges Aufenthaltsrecht handelt es sich ausschließlich um Menschen aus sog. Drittstaaten. Ihr Aufenthalt begründet sich nach dem Aufenthaltsgesetz für Drittstaatsangehörige. Die Zeile „Gesamt“ umfasst weitere Personen, die in den anderen Spalten nicht geführt werden, da sie andere Rechtsstatus haben.*


```sql
SELECT * FROM non_german_nationals_residence_status;
```

```sql
 id | year | permanent_residency | permanent_residency_according_eu_freedom_movement_act | permanent_residency_third_country_nationality | without_permanent_residency | asylum_seeker | suspension_of_deportation
----+------+---------------------+-------------------------------------------------------+-----------------------------------------------+-----------------------------+---------------+---------------------------
  1 | 2016 |                6527 |                                                  5029 |                                          1498 |                        2138 |           790 |                       146
  2 | 2017 |                7995 |                                                  6466 |                                          1529 |                        3234 |           424 |                       186
  3 | 2018 |                8363 |                                                  6865 |                                          1498 |                        3987 |           366 |                       214
  4 | 2019 |                8117 |                                                  6569 |                                          1548 |                        4585 |           287 |                       275
  5 | 2020 |                9510 |                                                  7842 |                                          1668 |                        4747 |           204 |                       252
  6 | 2021 |               10178 |                                                  8314 |                                          1864 |                        4868 |           143 |                       276
(6 rows)
```



## Employed With Pension Insurance By Districts

Anzahl der sozialversicherungspflichtig Beschäftigten nach Stadtteilen 2017 bis 2021

*Beschäftigungsquote (BQ) = Anteil der sozialversicherungspflichtig Beschäftigten an der Wohnbevölkerung im erwerbsfähigen Alter (15 bis unter 65 Jahren). Abweichungen gegenüber der Gesamtsumme ergeben sich durch nicht zuordenbare Adressen.*


```sql
SELECT * FROM employed_with_pension_insurance_by_districts;
```

```sql
 id | year | district_id | residents
----+------+-------------+-----------
  1 | 2017 |           1 |      1336
  2 | 2018 |           1 |      1360
  3 | 2019 |           1 |      1424
  4 | 2020 |           1 |      1409
  5 | 2021 |           1 |      1593
  6 | 2017 |           2 |      1505
  7 | 2018 |           2 |      1614
  8 | 2019 |           2 |      1618
  9 | 2020 |           2 |      1644
 10 | 2021 |           2 |      1768
 11 | 2017 |           3 |      3599
 12 | 2018 |           3 |      3682
 13 | 2019 |           3 |      3834
 14 | 2020 |           3 |      3850
 15 | 2021 |           3 |      4164
 16 | 2017 |           4 |      2388
 17 | 2018 |           4 |      2472
 18 | 2019 |           4 |      2452
 19 | 2020 |           4 |      2394
 20 | 2021 |           4 |      2451
 21 | 2017 |           5 |      2393
 22 | 2018 |           5 |      2415
 23 | 2019 |           5 |      2454
 24 | 2020 |           5 |      2457
 25 | 2021 |           5 |      2517
 26 | 2017 |           6 |      2500
 27 | 2018 |           6 |      2531
 28 | 2019 |           6 |      2551
 29 | 2020 |           6 |      2488
 30 | 2021 |           6 |      2566
 31 | 2017 |           7 |      1507
 32 | 2018 |           7 |      1550
 33 | 2019 |           7 |      1590
 34 | 2020 |           7 |      1583
 35 | 2021 |           7 |      1681
 36 | 2017 |           8 |      2177
 37 | 2018 |           8 |      2265
 38 | 2019 |           8 |      2418
 39 | 2020 |           8 |      2445
 40 | 2021 |           8 |      2598
 41 | 2017 |           9 |      2993
 42 | 2018 |           9 |      3085
 43 | 2019 |           9 |      3091
 44 | 2020 |           9 |      3096
 45 | 2021 |           9 |      3222
 46 | 2017 |          10 |      2299
 47 | 2018 |          10 |      2320
 48 | 2019 |          10 |      2410
 49 | 2020 |          10 |      2337
 50 | 2021 |          10 |      2406
 51 | 2017 |          11 |      4381
 52 | 2018 |          11 |      4471
 53 | 2019 |          11 |      4627
 54 | 2020 |          11 |      4619
 55 | 2021 |          11 |      4740
 56 | 2017 |          12 |      2588
 57 | 2018 |          12 |      2623
 58 | 2019 |          12 |      2614
 59 | 2020 |          12 |      2580
 60 | 2021 |          12 |      2676
 61 | 2017 |          13 |      1627
 62 | 2018 |          13 |      1700
 63 | 2019 |          13 |      1779
 64 | 2020 |          13 |      1887
 65 | 2021 |          13 |      1972
(65 rows)
```



## Unemployed Residents By Districts

Arbeitslose und Anteil an der Bevölkerung im Alter von 18 bis unter 65 Jahren in den Stadtteilen 2017 bis 2021

*Anteil der Arbeitslosen an der Bevölkerung im Alter von 18- unter 65 Jahren. Darstellung und Berechnung auf Grundlage der Statistik der Bundesagentur für Arbeit und der Statistikstelle der Stadt Flensburg. Arbeitslosenzahlen zum 30.06.*


```sql
SELECT * FROM unemployed_residents_by_districts;
```

```sql
 id | year | district_id | residents
----+------+-------------+-----------
  1 | 2017 |           1 |       233
  2 | 2018 |           1 |       227
  3 | 2019 |           1 |       218
  4 | 2020 |           1 |       252
  5 | 2021 |           1 |       226
  6 | 2017 |           2 |       390
  7 | 2018 |           2 |       360
  8 | 2019 |           2 |       343
  9 | 2020 |           2 |       450
 10 | 2021 |           2 |       383
 11 | 2017 |           3 |       933
 12 | 2018 |           3 |       856
 13 | 2019 |           3 |       754
 14 | 2020 |           3 |       927
 15 | 2021 |           3 |       823
 16 | 2017 |           4 |       281
 17 | 2018 |           4 |       259
 18 | 2019 |           4 |       270
 19 | 2020 |           4 |       350
 20 | 2021 |           4 |       304
 21 | 2017 |           5 |       300
 22 | 2018 |           5 |       276
 23 | 2019 |           5 |       251
 24 | 2020 |           5 |       288
 25 | 2021 |           5 |       286
 26 | 2017 |           6 |       229
 27 | 2018 |           6 |       204
 28 | 2019 |           6 |       202
 29 | 2020 |           6 |       230
 30 | 2021 |           6 |       205
 31 | 2017 |           7 |       241
 32 | 2018 |           7 |       239
 33 | 2019 |           7 |       213
 34 | 2020 |           7 |       238
 35 | 2021 |           7 |       226
 36 | 2017 |           8 |       292
 37 | 2018 |           8 |       304
 38 | 2019 |           8 |       296
 39 | 2020 |           8 |       359
 40 | 2021 |           8 |       327
 41 | 2017 |           9 |       452
 42 | 2018 |           9 |       456
 43 | 2019 |           9 |       431
 44 | 2020 |           9 |       567
 45 | 2021 |           9 |       427
 46 | 2017 |          10 |       278
 47 | 2018 |          10 |       278
 48 | 2019 |          10 |       241
 49 | 2020 |          10 |       335
 50 | 2021 |          10 |       303
 51 | 2017 |          11 |       512
 52 | 2018 |          11 |       517
 53 | 2019 |          11 |       477
 54 | 2020 |          11 |       614
 55 | 2021 |          11 |       532
 56 | 2017 |          12 |       266
 57 | 2018 |          12 |       265
 58 | 2019 |          12 |       248
 59 | 2020 |          12 |       310
 60 | 2021 |          12 |       276
 61 | 2017 |          13 |        52
 62 | 2018 |          13 |        53
 63 | 2019 |          13 |        54
 64 | 2020 |          13 |        98
 65 | 2021 |          13 |        85
(65 rows)
```



## Unemployed Residents By Districts Categorized

Anzahl der Arbeitslosen nach ausgewählten Merkmalen in den Stadtteilen (zum 30.06.2021)

*Geringfügige Abweichungen gegenüber der Gesamtsumme ergeben sich durch nicht zuordenbare Adressen. Berechnung auf Grundlage der Statistik der Bundesagentur für Arbeit.*


```sql
SELECT * FROM unemployed_residents_by_districts_categorized;
```

```sql
 id | year | district_id | total | unemployed_total | percentage_of_total | percentage_sgb_iii | percentage_sgb_ii | percentage_foreign_citizenship | percentage_female | percentage_age_under_25
----+------+-------------+-------+------------------+---------------------+--------------------+-------------------+--------------------------------+-------------------+-------------------------
  1 | 2021 |           1 | NULL  |              226 |                 5.1 |               31   |              69   |                           23   |              41.2 |                    11.9
  2 | 2021 |           2 | NULL  |              383 |                 8.6 |               20.1 |              79.9 |                           30.3 |              34.7 |                    12
  3 | 2021 |           3 | NULL  |              823 |                18.5 |               21.7 |              78.3 |                           34.9 |              42.5 |                     8.9
  4 | 2021 |           4 | NULL  |              304 |                 6.8 |               31.6 |              68.4 |                           27.3 |              36.8 |                    11.5
  5 | 2021 |           5 | NULL  |              286 |                 6.4 |               34.6 |              65.4 |                           21.7 |              40.2 |                    15
  6 | 2021 |           6 | NULL  |              205 |                 4.6 |               44.9 |              55.1 |                           23.4 |              42.4 |                    12.2
  7 | 2021 |           7 | NULL  |              226 |                 5.1 |               26.1 |              73.9 |                           23.9 |              43.8 |                    10.2
  8 | 2021 |           8 | NULL  |              327 |                 7.4 |               30.6 |              69.4 |                           19.3 |              33.6 |                    15
  9 | 2021 |           9 | NULL  |              427 |                 9.6 |               27.2 |              72.8 |                           21.8 |              38.6 |                    14.3
 10 | 2021 |          10 | NULL  |              303 |                 6.8 |               30.7 |              69.3 |                           17.5 |              45.5 |                     6.9
 11 | 2021 |          11 | NULL  |              532 |                12   |               37   |              63   |                           20.9 |              48.7 |                    10.9
 12 | 2021 |          12 | NULL  |              276 |                 6.2 |               33   |              67   |                           25   |              46.4 |                    10.5
 13 | 2021 |          13 | NULL  |               85 |                 1.9 |               48.2 |              51.8 |                           17.6 |              54.1 |                    12.9
 14 | 2021 |        NULL | NULL  |               37 |                 0.8 |             NULL   |            NULL   |                         NULL   |            NULL   |                  NULL
(14 rows)
```



## Housing Benefit By Districts

Wohngeldempfängerinnen und ihr Anteil an der Gesamtbevölkerung in den Stadtteilen 2011 bis 2021

*Zusammenstellung nach Angaben des Fachbereiches Soziales und Gesundheit.*


```sql
SELECT * FROM housing_benefit_by_districts;
```

```sql
 id | year | district_id | residents
----+------+-------------+-----------
  1 | 2011 |           1 |       130
  2 | 2017 |           1 |        96
  3 | 2018 |           1 |       133
  4 | 2019 |           1 |       119
  5 | 2020 |           1 |        92
  6 | 2021 |           1 |       116
  7 | 2011 |           2 |       207
  8 | 2017 |           2 |       114
  9 | 2018 |           2 |       165
 10 | 2019 |           2 |       218
 11 | 2020 |           2 |       172
 12 | 2021 |           2 |       172
 13 | 2011 |           3 |       584
 14 | 2017 |           3 |       413
 15 | 2018 |           3 |       165
 16 | 2019 |           3 |       571
 17 | 2020 |           3 |       722
 18 | 2021 |           3 |       523
 19 | 2011 |           4 |       228
 20 | 2017 |           4 |       194
 21 | 2018 |           4 |       212
 22 | 2019 |           4 |       180
 23 | 2020 |           4 |       189
 24 | 2021 |           4 |       252
 25 | 2011 |           5 |       274
 26 | 2017 |           5 |       239
 27 | 2018 |           5 |       244
 28 | 2019 |           5 |       204
 29 | 2020 |           5 |       223
 30 | 2021 |           5 |       258
 31 | 2011 |           6 |       280
 32 | 2017 |           6 |       170
 33 | 2018 |           6 |       295
 34 | 2019 |           6 |       216
 35 | 2020 |           6 |       211
 36 | 2021 |           6 |       163
 37 | 2011 |           7 |       173
 38 | 2017 |           7 |       192
 39 | 2018 |           7 |       242
 40 | 2019 |           7 |       216
 41 | 2020 |           7 |       231
 42 | 2021 |           7 |       204
 43 | 2011 |           8 |       229
 44 | 2017 |           8 |       182
 45 | 2018 |           8 |       191
 46 | 2019 |           8 |       211
 47 | 2020 |           8 |       227
 48 | 2021 |           8 |       252
 49 | 2011 |           9 |       353
 50 | 2017 |           9 |       256
 51 | 2018 |           9 |       293
 52 | 2019 |           9 |       266
 53 | 2020 |           9 |       292
 54 | 2021 |           9 |       328
 55 | 2011 |          10 |       337
 56 | 2017 |          10 |       360
 57 | 2018 |          10 |       375
 58 | 2019 |          10 |       416
 59 | 2020 |          10 |       455
 60 | 2021 |          10 |       370
 61 | 2011 |          11 |       623
 62 | 2017 |          11 |       504
 63 | 2018 |          11 |       590
 64 | 2019 |          11 |       569
 65 | 2020 |          11 |       601
 66 | 2021 |          11 |       484
 67 | 2011 |          12 |       392
 68 | 2017 |          12 |       233
 69 | 2018 |          12 |       286
 70 | 2019 |          12 |       228
 71 | 2020 |          12 |       285
 72 | 2021 |          12 |       247
 73 | 2011 |          13 |        91
 74 | 2017 |          13 |        44
 75 | 2018 |          13 |        71
 76 | 2019 |          13 |        56
 77 | 2020 |          13 |       125
 78 | 2021 |          13 |       114
(78 rows)
```



## Housing Assistance Cases By Districts

Wohnungshilfefälle 2021

*Zusammenstellung nach Angaben der Fachstelle für Wohnhilfen und Schuldnerberatung. Mit gekennzeichnete Werte liegen unter 4 und werden aus datenschutzrechtlichen Gründen unkenntlich gemacht. Auf Grund einer Programmunmstellung werden bei den Beratungen keine Fallzahlen, sondern die Anzahl der tatsächlich durchgeführten Beratungen dargestellt.*


```sql
SELECT * FROM housing_assistance_cases_by_districts;
```

```sql
 id | year | district_id | general_consulting | notices_of_rent_arrears | termination_rent_arrears | termination_for_conduct | action_for_eviction | eviction_notice | eviction_carried
----+------+-------------+--------------------+-------------------------+--------------------------+-------------------------+---------------------+-----------------+------------------
  1 | 2021 |           1 |                 15 |                    NULL |                     NULL |                    NULL |                NULL |               5 |                5
  2 | 2021 |           2 |                 39 |                    NULL |                        4 |                    NULL |                   5 |               9 |                5
  3 | 2021 |           3 |                175 |                    NULL |                       19 |                       4 |                  15 |              20 |               10
  4 | 2021 |           4 |                 60 |                    NULL |                     NULL |                    NULL |                  11 |               7 |                5
  5 | 2021 |           5 |                 28 |                    NULL |                        4 |                    NULL |                   6 |            NULL |             NULL
  6 | 2021 |           6 |                 70 |                    NULL |                     NULL |                    NULL |                NULL |               4 |             NULL
  7 | 2021 |           7 |                 40 |                    NULL |                        5 |                    NULL |                   6 |            NULL |             NULL
  8 | 2021 |           8 |                 28 |                    NULL |                        5 |                    NULL |                NULL |               8 |                6
  9 | 2021 |           9 |                 61 |                       4 |                       14 |                    NULL |                   8 |               4 |                4
 10 | 2021 |          10 |                 54 |                    NULL |                     NULL |                    NULL |                NULL |            NULL |             NULL
 11 | 2021 |          11 |                 44 |                       5 |                        6 |                    NULL |                  10 |               5 |                5
 12 | 2021 |          12 |                 40 |                    NULL |                        7 |                    NULL |                  12 |               7 |                5
 13 | 2021 |          13 |                 24 |                    NULL |                     NULL |                    NULL |                NULL |            NULL |             NULL
(13 rows)
```



## Households At Risk Of Homelessness By Districts

Von Wohnungslosigkeit bedrohte Haushalte (Räumungsklagen) in den Stadtteilen 2017 bis 2021

*Zusammenstellung nach Angaben der Fachstelle für Wohnhilfen und Schuldnerberatung. Mit  gekennzeichnete Werte liegen unter 4 und werden unkenntlich gemacht.*


```sql
SELECT * FROM households_at_risk_of_homelessness_by_districts;
```

```sql
 id | year | district_id | residents
----+------+-------------+-----------
  1 | 2017 |           1 |        14
  2 | 2018 |           1 |         5
  3 | 2019 |           1 |        13
  4 | 2020 |           1 |        11
  5 | 2021 |           1 |      NULL
  6 | 2017 |           2 |        21
  7 | 2018 |           2 |        23
  8 | 2019 |           2 |        21
  9 | 2020 |           2 |        20
 10 | 2021 |           2 |         5
 11 | 2017 |           3 |        31
 12 | 2018 |           3 |        27
 13 | 2019 |           3 |        27
 14 | 2020 |           3 |        21
 15 | 2021 |           3 |        15
 16 | 2017 |           4 |         8
 17 | 2018 |           4 |        11
 18 | 2019 |           4 |        11
 19 | 2020 |           4 |         9
 20 | 2021 |           4 |        11
 21 | 2017 |           5 |        15
 22 | 2018 |           5 |         8
 23 | 2019 |           5 |        10
 24 | 2020 |           5 |        15
 25 | 2021 |           5 |         6
 26 | 2017 |           6 |        11
 27 | 2018 |           6 |      NULL
 28 | 2019 |           6 |      NULL
 29 | 2020 |           6 |         6
 30 | 2021 |           6 |      NULL
 31 | 2017 |           7 |         9
 32 | 2018 |           7 |         7
 33 | 2019 |           7 |        16
 34 | 2020 |           7 |        16
 35 | 2021 |           7 |         6
 36 | 2017 |           8 |         9
 37 | 2018 |           8 |        13
 38 | 2019 |           8 |        16
 39 | 2020 |           8 |        14
 40 | 2021 |           8 |      NULL
 41 | 2017 |           9 |        14
 42 | 2018 |           9 |        10
 43 | 2019 |           9 |        15
 44 | 2020 |           9 |        15
 45 | 2021 |           9 |         8
 46 | 2017 |          10 |         6
 47 | 2018 |          10 |         9
 48 | 2019 |          10 |        15
 49 | 2020 |          10 |         8
 50 | 2021 |          10 |      NULL
 51 | 2017 |          11 |        28
 52 | 2018 |          11 |        12
 53 | 2019 |          11 |      NULL
 54 | 2020 |          11 |        21
 55 | 2021 |          11 |        10
 56 | 2017 |          12 |        17
 57 | 2018 |          12 |         9
 58 | 2019 |          12 |        14
 59 | 2020 |          12 |        11
 60 | 2021 |          12 |        12
 61 | 2017 |          13 |      NULL
 62 | 2018 |          13 |      NULL
 63 | 2019 |          13 |      NULL
 64 | 2020 |          13 |         4
 65 | 2021 |          13 |      NULL
(65 rows)
```



## Beneficiaries Age 15 To Under 65 By Districts

Anzahl der Personen im Bezug von Leistungen nach SGB II, III und XIl (im Alter von 15 bis unter 65 Jahren) und Anteil an der Bevölkerung in den Stadtteilen 2021

*Darstellung und Berechnung nach Statistik der Bundesagentur für Arbeit, der Statistikstelle der Stadt Flensburg und des Fachbereichs Soziales und Gesundheit. Dargestellt sind die Empfänger:innen im Alter von 15- und 65 Jahren bezogen auf die Bevölkerung in dieser Altersgruppe. Berichtsmonat SGB II: März 2021, Berichtsmonat SGB III: Juni 2021, Stichtag SGB XII: 31.12.2021*


```sql
SELECT * FROM beneficiaries_age_15_to_under_65_by_districts;
```

```sql
 id | year | district_id | total | percentage_of_total_residents | employable_with_benefits | unemployment_benefits | basic_income | assisting_benefits
----+------+-------------+-------+-------------------------------+--------------------------+-----------------------+--------------+--------------------
  1 | 2021 |           1 |   517 |                          16.5 |                      377 |                    70 |           55 |                 15
  2 | 2021 |           2 |     1 |                          27   |                      809 |                    77 |          122 |                 26
  3 | 2021 |           3 |     2 |                          24.1 |                        2 |                   179 |          283 |                 62
  4 | 2021 |           4 |   715 |                          14.4 |                      518 |                    96 |           74 |                 27
  5 | 2021 |           5 |   741 |                          15.8 |                      514 |                    99 |           88 |                 40
  6 | 2021 |           6 |   462 |                           9.8 |                      324 |                    92 |           37 |                  9
  7 | 2021 |           7 |   600 |                          20.4 |                      444 |                    59 |           80 |                 17
  8 | 2021 |           8 |   776 |                          15.3 |                      567 |                   100 |           81 |                 28
  9 | 2021 |           9 |     1 |                          18.4 |                      837 |                   116 |          126 |                 36
 10 | 2021 |          10 |   828 |                          19.3 |                      569 |                    93 |          138 |                 28
 11 | 2021 |          11 |     1 |                          15.2 |                      988 |                   197 |          137 |                 28
 12 | 2021 |          12 |   693 |                          14.5 |                      518 |                    91 |           69 |                 15
 13 | 2021 |          13 |   188 |                           5.2 |                      120 |                    41 |           23 |                  4
 14 | 2021 |        NULL |   451 |                        NULL   |                       53 |                     9 |          337 |                 52
(14 rows)
```



## Beneficiaries By Districts

Anzahl der Regelleistungsberechtigten nach SGB Il und Anteil an der Bevölkerung unter 65 Jahren in den Stadtteilen 2018 bis 2021


```sql
SELECT * FROM beneficiaries_by_districts;
```

```sql
 id | year | district_id | residents
----+------+-------------+-----------
  1 | 2018 |           1 |       554
  2 | 2019 |           1 |       532
  3 | 2020 |           1 |       502
  4 | 2021 |           1 |       475
  5 | 2018 |           2 |      1097
  6 | 2019 |           2 |      1094
  7 | 2020 |           2 |      1063
  8 | 2021 |           2 |      1116
  9 | 2018 |           3 |      2481
 10 | 2019 |           3 |      2352
 11 | 2020 |           3 |      2241
 12 | 2021 |           3 |      2170
 13 | 2018 |           4 |       729
 14 | 2019 |           4 |       734
 15 | 2020 |           4 |       736
 16 | 2021 |           4 |       733
 17 | 2018 |           5 |       753
 18 | 2019 |           5 |       703
 19 | 2020 |           5 |       647
 20 | 2021 |           5 |       670
 21 | 2018 |           6 |       512
 22 | 2019 |           6 |       483
 23 | 2020 |           6 |       505
 24 | 2021 |           6 |       494
 25 | 2018 |           7 |       669
 26 | 2019 |           7 |       665
 27 | 2020 |           7 |       622
 28 | 2021 |           7 |       615
 29 | 2018 |           8 |       672
 30 | 2019 |           8 |       665
 31 | 2020 |           8 |       645
 32 | 2021 |           8 |       706
 33 | 2018 |           9 |      1102
 34 | 2019 |           9 |      1082
 35 | 2020 |           9 |      1072
 36 | 2021 |           9 |      1048
 37 | 2018 |          10 |       766
 38 | 2019 |          10 |       769
 39 | 2020 |          10 |       780
 40 | 2021 |          10 |       792
 41 | 2018 |          11 |      1474
 42 | 2019 |          11 |      1466
 43 | 2020 |          11 |      1484
 44 | 2021 |          11 |      1429
 45 | 2018 |          12 |       773
 46 | 2019 |          12 |       763
 47 | 2020 |          12 |       707
 48 | 2021 |          12 |       754
 49 | 2018 |          13 |        74
 50 | 2019 |          13 |        81
 51 | 2020 |          13 |       105
 52 | 2021 |          13 |       150
(52 rows)
```



## Beneficiaries Characteristics By Districts

Regelleistungsberechtigte nach SGB II nach ausgewählten Merkmalen in den Stadtteilen 2021


```sql
SELECT * FROM beneficiaries_characteristics_by_districts;
```

```sql
 id | district_id | year | unemployability | employability | percentage_females | percenatage_single_parents | percentage_foreign_citizenship
----+-------------+------+-----------------+---------------+--------------------+----------------------------+--------------------------------
  1 |           1 | 2021 |              98 |           377 |               40.3 |                        7.2 |                           31.3
  2 |           2 | 2021 |             307 |           809 |               41.9 |                        7.5 |                           40.5
  3 |           3 | 2021 |             585 |          1585 |               48   |                       14.5 |                           37.5
  4 |           4 | 2021 |             215 |           518 |               49.4 |                       12.9 |                           31.9
  5 |           5 | 2021 |             156 |           514 |               52.3 |                       17.9 |                           23.7
  6 |           6 | 2021 |             170 |           324 |               47.5 |                       16   |                           38.9
  7 |           7 | 2021 |             171 |           444 |               50.5 |                       16.2 |                           29.3
  8 |           8 | 2021 |             139 |           567 |               39.2 |                       10.1 |                           25.4
  9 |           9 | 2021 |             211 |           837 |               43.8 |                        9.3 |                           26.8
 10 |          10 | 2021 |             223 |           569 |               56.1 |                       20.7 |                           19
 11 |          11 | 2021 |             441 |           988 |               53.8 |                       18.8 |                           29.9
 12 |          12 | 2021 |             236 |           518 |               56   |                       14.3 |                           24.5
 13 |          13 | 2021 |              30 |           120 |               50.8 |                        9.2 |                           23.3
(13 rows)
```



## Inactive Beneficiaries In Households By Districts

Nichterwerbsfähige Leistungsberechtigte in Bedarfsgemeinschaften nach SGB II (überwiegend Personen unter 15 Jahren) und Anteil an der Bevölkerung in den Stadtteilen unter 15 Jahren 2018 bis 2021

*Regelleistungsberechtigte nach SGB II nach ausgewählten Merkmalen in den Stadtteilen 2021. Darstellungen und Berechnungen nach Statistik der Bundesagentur für Arbeit und der Statistikstelle der Stadt Flensburg.*


```sql
SELECT * FROM inactive_beneficiaries_in_households_by_districts;
```

```sql
 id | year | district_id | residents
----+------+-------------+-----------
  1 | 2018 |           1 |       115
  2 | 2019 |           1 |       124
  3 | 2020 |           1 |       118
  4 | 2021 |           1 |        98
  5 | 2018 |           2 |       262
  6 | 2019 |           2 |       297
  7 | 2020 |           2 |       299
  8 | 2021 |           2 |       307
  9 | 2018 |           3 |       675
 10 | 2019 |           3 |       659
 11 | 2020 |           3 |       626
 12 | 2021 |           3 |       585
 13 | 2018 |           4 |       212
 14 | 2019 |           4 |       228
 15 | 2020 |           4 |       214
 16 | 2021 |           4 |       215
 17 | 2018 |           5 |       192
 18 | 2019 |           5 |       188
 19 | 2020 |           5 |       161
 20 | 2021 |           5 |       156
 21 | 2018 |           6 |       166
 22 | 2019 |           6 |       155
 23 | 2020 |           6 |       176
 24 | 2021 |           6 |       170
 25 | 2018 |           7 |       192
 26 | 2019 |           7 |       202
 27 | 2020 |           7 |       187
 28 | 2021 |           7 |       171
 29 | 2018 |           8 |       107
 30 | 2019 |           8 |       124
 31 | 2020 |           8 |       120
 32 | 2021 |           8 |       139
 33 | 2018 |           9 |       207
 34 | 2019 |           9 |       218
 35 | 2020 |           9 |       231
 36 | 2021 |           9 |       211
 37 | 2018 |          10 |       215
 38 | 2019 |          10 |       232
 39 | 2020 |          10 |       231
 40 | 2021 |          10 |       223
 41 | 2018 |          11 |       447
 42 | 2019 |          11 |       487
 43 | 2020 |          11 |       470
 44 | 2021 |          11 |       441
 45 | 2018 |          12 |       252
 46 | 2019 |          12 |       271
 47 | 2020 |          12 |       243
 48 | 2021 |          12 |       236
 49 | 2018 |          13 |        23
 50 | 2019 |          13 |        24
 51 | 2020 |          13 |        31
 52 | 2021 |          13 |        30
(52 rows)
```



## Basic Benefits Income By Districts

Empfängerinnen der Grundsicherung nach ausgewählten Merkmalen in den Stadtteilen 2021


```sql
SELECT * FROM basic_benefits_income_by_districts;
```

```sql
 id | district_id | year | male | female | age_18_to_under_65 | age_65_and_above
----+-------------+------+------+--------+--------------------+------------------
  1 |           1 | 2021 |  245 |    158 |                 55 |               55
  2 |           2 | 2021 |   61 |     49 |                122 |               76
  3 |           3 | 2021 |  112 |     86 |                283 |              248
  4 |           4 | 2021 |  287 |    244 |                 74 |               79
  5 |           5 | 2021 |   74 |     79 |                 88 |               78
  6 |           6 | 2021 |   76 |     90 |                 37 |               45
  7 |           7 | 2021 |   37 |     45 |                 80 |               65
  8 |           8 | 2021 |   75 |     70 |                 81 |               74
  9 |           9 | 2021 |   77 |     78 |                126 |              104
 10 |          10 | 2021 |  111 |    119 |                138 |              110
 11 |          11 | 2021 |  116 |    132 |                137 |              164
 12 |          12 | 2021 |  140 |    161 |                 69 |               99
 13 |          13 | 2021 |   77 |     91 |                 23 |               28
(13 rows)
```



## Household Type


```sql
SELECT * FROM household_type;
```

```sql
 id | label
----+--------------------------
  1 | male_living_alone
  2 | female_living_alone
  3 | single_father
  4 | single_mother
  5 | couples_without_children
  6 | couples_with_children
  7 | other_way_of_life
(7 rows)
```



## Debt Counseling Residents

In der Schuldnerberatung beratene Personen 2021


```sql
SELECT * FROM debt_counseling_residents;
```

```sql
 id | year | household_type_id | residents
----+------+-------------------+-----------
  1 | 2021 |                 1 |       767
  2 | 2021 |                 2 |       403
  3 | 2021 |                 3 |      NULL
  4 | 2021 |                 4 |       381
  5 | 2021 |                 5 |       350
  6 | 2021 |                 6 |       528
  7 | 2021 |                 7 |        60
(7 rows)
```



## Child Education Support

Anzahl der Hilfen zur Erziehung (Durchschnittszahlen) und ihre Verteilung auf die Hilfearten 2017 bis 2021


```sql
SELECT * FROM child_education_support;
```

```sql
 id | year | educational_assistance | parenting_counselor | pedagogical_family_assistance | child_day_care_facility | full_time_care | residential_education | integration_assistance | additional_support
----+------+------------------------+---------------------+-------------------------------+-------------------------+----------------+-----------------------+------------------------+--------------------
  1 | 2017 |                     23 |                  39 |                           142 |                      19 |            137 |                   134 |                    126 |                 10
  2 | 2018 |                     13 |                  45 |                           151 |                      22 |            116 |                   123 |                    151 |                  7
  3 | 2019 |                      7 |                  39 |                           154 |                      27 |            106 |                   120 |                    141 |                  6
  4 | 2020 |                      9 |                  31 |                           144 |                      25 |             99 |                   145 |                    152 |                  3
  5 | 2021 |                      3 |                  44 |                           148 |                      19 |             95 |                   168 |                    149 |                  4
(5 rows)
```