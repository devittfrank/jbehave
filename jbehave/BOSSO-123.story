Scenario:1  Create MCOM Legacy pool prepare order for BOSS shipment with single_line

Meta: 
@TestId MCOM_Pool_Single_BOSS_Shipment_with_single_line
@themes acceptance

Given a BOSS order is created and integrated
Then validate RESLN table line 1 with HOW_EXP POOL
When validate RIB table for PICKING and RESLN table Status 5
Then validate shipmentTransactioType in FIL_STG_SHP table
Then update TRGT_RDY_PCK_TS to current time
When Run Mainfram job TLFILC10
When validate RIB table for PRINTED and RESLN table Status 6
Then validate EvntTimeHdr table for evntType RTF
When Run Mainfram job TLFILC30
When validate RIB table for BOSS-INTRANS and RESLN table Status 7
Then Validate PICKUP_STAT in SHPPS table as I
Then Validate Order eventT2 for SCF has 1 message in Log
Then Validate T2 message No NotificationHeaderInfo for SCF shipID 1
Then Validate FTCAUDIT table has no entry for Note type 246 for shipID 1

Examples:
|test_id|desc |
|BOSS0123-01|MCOM_POOL_BOSS_Shipment_Single_Line|

Scenario:2  Create MCOM Legacy pool prepare order for BOSS shipment with multiple lines

Meta: 
@TestId MCOM_Pool_Single_BOSS_Shipment_with_multiple_lines
@themes acceptance

Given a BOSS order is created and integrated
Then validate RESLN table line 1 with HOW_EXP POOL
Then validate RESLN table line 2 with HOW_EXP POOL
When validate RIB table for PICKING and RESLN table Status 5
Then validate shipmentTransactioType in FIL_STG_SHP table
Then update TRGT_RDY_PCK_TS to current time
When Run Mainfram job TLFILC10
When validate RIB table for PRINTED and RESLN table Status 6
Then validate EvntTimeHdr table for evntType RTF
When Run Mainfram job TLFILC30
When validate RIB table for BOSS-INTRANS and RESLN table Status 7
Then Validate PICKUP_STAT in SHPPS table as I
Then Validate Order eventT2 for SCF has 1 message in Log
Then Validate T2 message No NotificationHeaderInfo for SCF shipID 1
Then Validate FTCAUDIT table has no entry for Note type 246 for shipID 1

Examples:
|test_id|desc |
|BOSS0123-02|MCOM_POOL_BOSS_Shipment_Multi_Line|

Scenario:3  Create MCOM Legacy pool prepare order for mutiple BOSS shipment with single_line

Meta: 
@TestId MCOM_Pool_Multiple_BOSS_Shipments_single_line
@themes acceptance

Given a BOSS order is created and integrated
Then validate RESLN table line 1 with HOW_EXP POOL
Then validate RESLN table line 2 with HOW_EXP POOL
When validate RIB table for PICKING and RESLN table Status 5
Then validate shipmentTransactioType in FIL_STG_SHP table
Then update TRGT_RDY_PCK_TS to current time
When Run Mainfram job TLFILC10
When validate RIB table for PRINTED and RESLN table Status 6
Then validate EvntTimeHdr table for evntType RTF
When Run Mainfram job TLFILC30
When validate RIB table for BOSS-INTRANS and RESLN table Status 7
Then Validate PICKUP_STAT in SHPPS table as I
Then Validate Order eventT2 for SCF has 2 message in Log
Then Validate T2 message No NotificationHeaderInfo for SCF shipID 1
Then Validate FTCAUDIT table has no entry for Note type 246 for shipID 1
Then Validate T2 message No NotificationHeaderInfo for SCF shipID 2
Then Validate FTCAUDIT table has no entry for Note type 246 for shipID 2

Examples:
|test_id|desc |
|BOSS0123-03|MCOM_POOL_BOSS_Multi_Shipment_Single_Line|

Scenario:4  Create MCOM Legacy pool prepare order for mutiple BOSS shipment with_multiple_lines

Meta: 
@TestId MCOM_Pool_Multiple_BOSS_Shipments_with_multiple_lines
@themes acceptance

Given a BOSS order is created and integrated
Then validate RESLN table line 1 with HOW_EXP POOL
Then validate RESLN table line 2 with HOW_EXP POOL
Then validate RESLN table line 3 with HOW_EXP POOL
Then validate RESLN table line 4 with HOW_EXP POOL
When validate RIB table for PICKING and RESLN table Status 5
Then validate shipmentTransactioType in FIL_STG_SHP table
Then update TRGT_RDY_PCK_TS to current time
When Run Mainfram job TLFILC10
When validate RIB table for PRINTED and RESLN table Status 6
Then validate EvntTimeHdr table for evntType RTF
When Run Mainfram job TLFILC30
When validate RIB table for BOSS-INTRANS and RESLN table Status 7
Then Validate PICKUP_STAT in SHPPS table as I
Then Validate Order eventT2 for SCF has 2 message in Log
Then Validate T2 message No NotificationHeaderInfo for SCF shipID 1
Then Validate FTCAUDIT table has no entry for Note type 246 for shipID 1
Then Validate T2 message No NotificationHeaderInfo for SCF shipID 2
Then Validate FTCAUDIT table has no entry for Note type 246 for shipID 2

Examples:
|test_id|desc |
|BOSS0123-04|MCOM_POOL_BOSS_Multi_Shipment_Multi_Line|


Scenario:5 Create MCOM Legacy Mixed bag(BOSS+BOPS , BOSS+SDD) shipments

Meta: 
@TestId MCOM_Mixed_Bag(BOSS+BOPS , BOSS+SDD) shipments
@themes acceptance

Given a BOSS order is created and integrated
Then validate RESLN table line 1 with HOW_EXP POOL
Then validate RESLN table line 2 with HOW_EXP STR1
When validate RIB table for PICKING and RESLN table Status 5
Then validate shipmentTransactioType in FIL_STG_SHP table
Then update TRGT_RDY_PCK_TS to current time
When invoke multiple mainframe job FLFILC10,TLFILC70
When validate RIB table for PRINTED and RESLN table Status 6
When invoke multiple mainframe job FLFILC30,TLFILC70
Then validate RIB table BOSS_INTRANS for shipID 1
Then validate RIB table SHIP for shipID 2
Then validate shipment 1 with status 7
Then Validate Order eventT2 for SCF has 2 message in Log
Then Validate T2 message No NotificationHeaderInfo for SCF shipID 1
Then Validate FTCAUDIT table has no entry for Note type 246 for shipID 1


Examples:
|test_id|desc |
|BOSS0123-05|MCOM_BOSS(POOL)+BOPS|
|BOSS0123-06|MCOM_BOSS(POOL)+SDD|



Scenario:6  Create MCOM Legacy Mixed bag(BOSS+STH) shipments

Meta: 
@TestId MCOM_Mixed_Bag_Shipments
@themes acceptance

Given a BOSS order is created and integrated
Then validate RESLN table line 1 with HOW_EXP POOL
Then validate RESLN table line 2 with HOW_EXP POOL
When validate RIB table for PICKING and RESLN table Status 5
Then validate shipmentTransactioType in FIL_STG_SHP table
Then update TRGT_RDY_PCK_TS to current time
When Run Mainfram job TLFILC10
When validate RIB table for PRINTED and RESLN table Status 6
When Run Mainfram job TLFILC50
Then validate RIB table BOSS_INTRANS for shipID 1
Then validate RIB table SHIP for shipID 2
Then validate shipment 1 with status 7
Then Validate Order eventT2 for SCF has 2 message in Log
Then Validate T2 message No NotificationHeaderInfo for SCF shipID 1
Then Validate FTCAUDIT table has no entry for Note type 246 for shipID 1

Examples:
|test_id|desc |
|BOSS0123-07|MCOM_BOSS(POOL)+STH|