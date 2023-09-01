/*select * from Notes*/
select 
customer
,[Owner]
,[Created On] as CreatedOn
,[Last Contact Date:] as LastContacted
,[(Do Not Modify) Modified On] as ModifiedOn
,[Sales Stage]  as SalesStage
,[Deployment Status] as DeploymentStatus
,[Top Opportunities] as TopOpp
,[FastTrack Engaged] as FT
,[Is Partner Engaged] as PT
,Description as Note
,DATEDIFF(day, [(Do Not Modify) Modified On], CAST(CURRENT_TIMESTAMP AS DATE)) as IdleDays
/*, IdleSince as  DATEDIFF(day, ModifiedOn, CAST(CURRENT_TIMESTAMP AS DATE)) 

//,[FastTrack Engaged? (Regarding) (Customer Product)] as FTEngaged
,[Is Partner Engaged? (Regarding) (Customer Product)] as PartnerEngaged
,Description as Note
*/

from Notes
