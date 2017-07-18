
CREATE procedure DetailsForRajaSree
As


	-- BGL CRM / PULL CLIENT DATA

	
	

	-- Pull client data to GTLMF_ClientDetails_RajaSree from client_dev

	-- Take only pan, if duplicates existion take new client (check enrolldate)

	-- PAN format  : '[A-Z][A-Z][A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9][A-Z]'  

	-- creditcard not in 'CLOSED','TRANSFERED'

	-- region  = MEA

	-- need to show Error message



	-- Master tables

		-- location : region = MEA
		-- FATCA_regClientDetails : USCitizen = 'Y' , tinno, Fstatus = 'US PERSON'  
		-- clientmaster : Nationality = C.FirstHolderNationality  
		-- CVLKYCRegisteredPAN : pan
		-- Client



	/*
	select * into 
CREATE procedure DetailsForRajaSree
As


	-- BGL CRM / PULL CLIENT DATA

	
	

	-- Pull client data to GTLMF_ClientDetails_RajaSree from client_dev

	-- Take only pan, if duplicates existion take new client (check enrolldate)

	-- PAN format  : '[A-Z][A-Z][A-Z][A-Z][A-Z][0-9][0-9][0-9][0-9][A-Z]'  

	-- creditcard not in 'CLOSED','TRANSFERED'

	-- region  = MEA

	-- need to show Error message



	-- Master tables

		-- location : region = MEA/ location , curlocation
		-- FATCA_regClientDetails : USCitizen = 'Y' , tinno, Fstatus = 'US PERSON'  
		-- clientmaster : Nationality = C.FirstHolderNationality  
		-- CVLKYCRegisteredPAN : pan
		-- Client_dev



	/*
	select * into GTLMF_ClientDetails_RajaSree from [192.168.29.224].BarjeelDistribution.dbo.GTLMF_ClientDetails
	where Entrychannel not like 'BGLCRM%'

	 -- sp for key generation  

	CREATE PROCEDURE [dbo].[SpGenerateKey]    
	 @kn [varchar](32),    
	 @key [int] OUTPUT    
	AS    
	  set nocount on    
	  set @key = -1    
	  UPDATE keytable  SET    @key = newkey = newkey + 1    
	  WHERE      
	  (keyname = @kn)    
	  RETURN @key 

	select max(clientid) from GTLMF_ClientDetails

	insert into KeyTable select  'MFCLIENTDETAILSID','206611'

    */


 from [192.168.29.224].BarjeelDistribution.dbo.GTLMF_ClientDetails
	where Entrychannel not like 'BGLCRM%'

	 -- sp for key generation  

	CREATE PROCEDURE [dbo].[SpGenerateKey]    
	 @kn [varchar](32),    
	 @key [int] OUTPUT    
	AS    
	  set nocount on    
	  set @key = -1    
	  UPDATE keytable  SET    @key = newkey = newkey + 1    
	  WHERE      
	  (keyname = @kn)    
	  RETURN @key 

	select max(clientid) from GTLMF_ClientDetails

	insert into KeyTable select  'MFCLIENTDETAILSID','206611'

    */


