
select
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
, DATEDIFF(DAY,[(Do Not Modify) Modified On] ,GETDATE() ) AS IdleDays
from Notes30
where [Sales Stage (Regarding) (Customer Product)] <> '8-Disengaged'
order by owner,customer,IdleDays



select

[Customer (Regarding) (Customer Product)] as Customer
,[Owner (Regarding) (Customer Product)] as Owner
,[Created On] as CreatedOn

from Notes30

where [Customer (Regarding) (Customer Product)] = ( 

	SELECT 	distinct [Customer (Regarding) (Customer Product)] 
	from Notes
		where [Customer (Regarding) (Customer Product)]  = (
			SELECT 	distinct [Customer (Regarding) (Customer Product)] 
						from Notes30)
)

