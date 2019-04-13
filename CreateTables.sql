Create Table tbl_MAO002_HDR (
	RecordType					char(1)		-- 0=Header
,	Delimiter01					char(1)		-- *
,	ReportID					char(7)		-- "MAO-002"
,	Delimiter02					char(1)		-- *
,	ReportDate					char(8)		-- CCYYMMDD
,	Delimiter03					char(1)		-- *
,	TransactionDate				char(8)		-- CCYYMMDD
,	Delimiter04					char(1)		-- *
,	ReportDescription			char(39)	-- "Encounter Data Processing Status Report"
,	Delimiter05					char(1)		-- *
,	Filler1						char(5)		-- Blank (Was formerly Contract Id)
,	Delimiter06					char(1)		-- *
,	SubmissionInterchangeNum	char(30)	-- Interchange Sender ID (ISA06) + Interchange Control Number (ISA13) + Interchange Date (ISA09)
,	Delimiter07					char(1)		-- *
,	RecordType_FileContentType		char(3)		-- INS, PRO or DME
,	Delimiter08					char(1)		-- *
,	SubmissionFileType			char(4)		-- "TEST" or "PROD"
,	Delimiter09					char(1)		-- *
,	Filler2						char(46)	-- 
)

Create Table tbl_MAO002_DET (
	RecordType					char(1)		-- 1=Detail
,	Delimiter01					char(1)		-- *
,	ReportID					char(7)		-- "MAO-002"
,	Delimiter02					char(1)		-- *
,	MAContractID				char(5)		-- Medicare Contract ID assigned to the MA Plan
,	Delimiter03					char(1)		-- *
,	PlanID_CCN					char(38)	-- Plan internal encounter control number.
,	Delimiter04					char(1)		-- *
,	EncounterICN				char(44)	-- Internal Control Number. In encounter data, only 13 spaces represent the ICN
											-- however 44 spaces are coded to allow enhancement of the ICN.
,	Delimiter05					char(1)		-- *
,	EncounterLineNum			char(3)		-- Internal line number generated by EDPS. For any given ICN (claim document) the line
											-- numbers will start from “000” representing the claim level, the first encounter line will start
											-- from “001” and increment by 1 for every additional line.
,	Delimiter06					char(1)		-- *
,	EncounterStatus				char(8)		-- Accepted or Rejected
,	Delimiter07					char(1)		-- *
,	ErrorCode					char(5)		-- 
,	Delimiter08					char(1)		-- *
,	ErrorDescription			char(40)	-- 
,	Delimiter09					char(1)		-- *
)

Create Table tbl_MAO002_TRL (
	RecordType					char(1)		-- 9=Trailer
,	Delimiter01					char(1)		-- *
,	ReportID					char(7)		-- "MAO-002"
,	Delimiter02					char(1)		-- *
,	TotalNumProcessingErrors	char(8)		-- 
,	Delimiter03					char(1)		-- *
,	TotalNumEncLinesAccepted	char(8)		-- 
,	Delimiter04					char(1)		-- *
,	TotalNumEncLinesRejected	char(8)		-- 
,	Delimiter05					char(1)		-- *
,	TotalNumEncLinesSubmitted	char(8)		-- 
,	Delimiter06					char(1)		-- *
,	TotalNumEncRecordsAccepted	char(8)		-- 
,	Delimiter07					char(1)		-- *
,	TotalNumEncRecordsRejected	char(8)		-- 
,	Delimiter08					char(1)		-- *
,	TotalNumEncRecordsSubmitted	char(8)		-- 
,	Delimiter09					char(1)		-- *
,	Filler1						char(87)	-- 
)