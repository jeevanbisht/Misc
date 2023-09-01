DECLARE @ProcessedCustomerList TABLE(
	
	[Customer] [nvarchar](255) NULL,
	[Owner] [nvarchar](255) NULL,
	[CreatedOn] [datetime] NULL,
	[LastContacted] [datetime] NULL,
	[Modified On] [datetime] NULL,
	[SalesStage] [nvarchar](255) NULL,
	[DeploymentStatus] [nvarchar](255) NULL,
	[TopOpp] [nvarchar](255) NULL,
	[FT] [nvarchar](255) NULL,
	[PT] [nvarchar](255) NULL,
	[Note] [nvarchar](max) NULL,
	[IdleDays] [int]
	)
	

DECLARE @CustomerList TABLE(Customer varchar(300))
DECLARE @Customer varchar(300)
    
INSERT @CustomerList(Customer)
	SELECT 	distinct [Customer (Regarding) (Customer Product)] 
	from Notes30

	
    
WHILE(1 = 1)
BEGIN
            
    SET @Customer = NULL
    SELECT TOP(1) @Customer = Customer
    FROM @CustomerList
    
    IF @Customer IS NULL
	 BREAK
    
	insert into @ProcessedCustomerList
select top 1
[Customer (Regarding) (Customer Product)] as Customer
,[Owner (Regarding) (Customer Product)] as Owner
,[Created On] as CreatedOn
,[Last Contact Date: Account Team/Customer (Regarding) (Customer P] as LastContacted
,[(Do Not Modify) Modified On] as ModifiedOn
,[Sales Stage (Regarding) (Customer Product)] as SalesStage
,[Deployment Status (Regarding) (Customer Product)] as DeploymentStatus
,[Top Opportunities? (Regarding) (Customer Product)] as TopOpp
,[FastTrack Engaged? (Regarding) (Customer Product)] as FT
,[Is Partner Engaged? (Regarding) (Customer Product)] as PT
,Description as Note
, DATEDIFF(DAY,[Last Contact Date: Account Team/Customer (Regarding) (Customer P] ,GETDATE() ) AS IdleDays 
from Notes30
where
[Customer (Regarding) (Customer Product)] =  @Customer
order by IdleDays asc



    
    DELETE TOP(1) FROM @CustomerList
    
END

select * from @ProcessedCustomerList
where CreatedOn > '2023-06-01'
order by IdleDays desc

 


