Feature:
  Create MCOM Legacy Pool Prepare Order for BOSS Shipment with single_line

  Scenario:
    Given a BOSS order is created and integrated
    Then validate RESLN table line 1 with HOW_Exp Pool
    When validate RIB table for PICKING and RESLN table Status 5
    Then validate shipmentTransactionType in Fil_STG_SHP table