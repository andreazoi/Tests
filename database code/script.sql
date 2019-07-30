

CREATE TABLE [dbo].[Students](
	[studentCode] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NULL,
	[surname] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[phone_number] [nvarchar](50) NULL,
	[registrationYear] [nvarchar](50) NULL,
	[specialty] [nvarchar](50) NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[studentCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblAdmin]    Script Date: 18/06/2019 9:42:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAdmin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[aname] [varchar](50) NULL,
	[aemail] [varchar](50) NULL,
	[apass] [varchar](50) NULL,
	[astatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Students] ([studentCode], [name], [surname], [email], [phone_number], [registrationYear], [specialty]) VALUES (N'St001', N'Jhone Smith', N'jon', N'johnesmith@gmail.com', N' 2123121212', N'2019-06-04', N'computer Sceinec')
INSERT [dbo].[Students] ([studentCode], [name], [surname], [email], [phone_number], [registrationYear], [specialty]) VALUES (N'St0010', N'Clark', N'Clark', N'Clark@gmail.com', N' 2124234423', N'bio sceince', N'2019')
INSERT [dbo].[Students] ([studentCode], [name], [surname], [email], [phone_number], [registrationYear], [specialty]) VALUES (N'st0012', N'joli', N'joli', N'joli@gmail.com', N'+1244343242', N'2019-06-10', N'art')
INSERT [dbo].[Students] ([studentCode], [name], [surname], [email], [phone_number], [registrationYear], [specialty]) VALUES (N'St002', N'Bruce', N'Bruce', N'Bruce@gmail.com', N' 2142342342', N'2019-06-12', N'2018')
INSERT [dbo].[Students] ([studentCode], [name], [surname], [email], [phone_number], [registrationYear], [specialty]) VALUES (N'St003', N'Joe Smith', N'Joe ', N'Joe@gmail.com', N' 2132323313', N'2019-06-04', N'Busiiness admisitrator')
INSERT [dbo].[Students] ([studentCode], [name], [surname], [email], [phone_number], [registrationYear], [specialty]) VALUES (N'St004', N'Snorrie', N'Snorrie', N'Snorrie@gmail.com', N'+2131231323', N'2012', N'medical sceine')
INSERT [dbo].[Students] ([studentCode], [name], [surname], [email], [phone_number], [registrationYear], [specialty]) VALUES (N'St005', N'Sturrluson', N'Sturrluson', N'johnesmith@gmail.com', N'+2124354554', N'2013', N'computer Sceinec')
INSERT [dbo].[Students] ([studentCode], [name], [surname], [email], [phone_number], [registrationYear], [specialty]) VALUES (N'St006', N'Clark', N'Clark', N'Clark@gmail.com', N' 2124324324', N'2019-06-12', N'scinec')
INSERT [dbo].[Students] ([studentCode], [name], [surname], [email], [phone_number], [registrationYear], [specialty]) VALUES (N'St007', N'Ferdinand', N'Ferdinand', N'Ferdinand@gmail.com', N' 2125465633', N'2019-06-20', N'computer Sceinec')
INSERT [dbo].[Students] ([studentCode], [name], [surname], [email], [phone_number], [registrationYear], [specialty]) VALUES (N'St008', N'Bill', N'Bill', N'Bill@gmail.com', N' 2124353453', N'2019-06-12', N'Arts')
INSERT [dbo].[Students] ([studentCode], [name], [surname], [email], [phone_number], [registrationYear], [specialty]) VALUES (N'St009', N'Edward', N'Edward', N'Edward@gmail.com', N' 2123432432', N'2019-06-13', N'animal science')
SET IDENTITY_INSERT [dbo].[tblAdmin] ON 

INSERT [dbo].[tblAdmin] ([id], [aname], [aemail], [apass], [astatus]) VALUES (1, N'Admin', N'Admin@ecom.com', N'admin123', 1)
SET IDENTITY_INSERT [dbo].[tblAdmin] OFF
/****** Object:  StoredProcedure [dbo].[Sp_Getstudents]    Script Date: 18/06/2019 9:42:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_Getstudents]
       @Action VARCHAR(10) 
      ,@studentCode nvarchar(50)=null
	  ,@name nvarchar(50)=null
      ,@surname nvarchar(50)=null
      ,@email nvarchar(50)=null
      ,@phone_number nvarchar(50)=null
      ,@registrationYear nvarchar(50)=null
      ,@specialty nvarchar(50)=null
      ,@PageIndex INT  = null
      ,@PageSize INT  = null
      ,@RecordCount INT = null
	  ,@SortExpression nvarchar(50) = null,
      @SortDirection nvarchar(50) = null
	,@search nvarchar(max) = null
	

 AS
BEGIN
      SET NOCOUNT ON;

IF (@Action='Selec')
begin
Select*
FROM Students 
where 
(studentCode =@studentCode)
 end 


 IF (@Action='allrep')
begin 
 SELECT ROW_NUMBER() OVER(ORDER BY 
 
    case when @SortExpression = 'studentCode' and @SortDirection = 'ASC' 
      then Ca.studentCode end asc, 
    case when @SortExpression = 'studentCode' and @SortDirection = 'DESC' 
      then Ca.studentCode end desc,
   
	   case  when @SortExpression = 'name' and @SortDirection = 'ASC' 
      then ca.name end asc, 
    case when @SortExpression = 'name' and @SortDirection = 'DESC' 
      then ca.name  end desc,
    case when @SortExpression = 'surname' and @SortDirection = 'ASC' 
      then Ca.surname end asc, 
    case when @SortExpression = 'surname' and @SortDirection = 'DESC' 
      then Ca.surname end desc,
   case when @SortExpression = 'email' and @SortDirection = 'ASC' 
      then Ca.email  end asc, 
    case when @SortExpression = 'email' and @SortDirection = 'DESC' 
      then Ca.email  end desc,
	   case  when @SortExpression = 'phone_number' and @SortDirection = 'ASC' 
      then ca.phone_number  end asc, 
    case when @SortExpression = 'phone_number' and @SortDirection = 'DESC' 
      then ca.phone_number   end desc,
   case when @SortExpression = 'registrationYear' and @SortDirection = 'ASC' 
      then Ca.registrationYear   end asc, 
    case when @SortExpression = 'registrationYear' and @SortDirection = 'DESC' 
      then Ca.registrationYear  end desc,
	   case  when @SortExpression = 'specialty' and @SortDirection = 'ASC' 
      then Ca.specialty end asc, 
    case when @SortExpression = 'specialty' and @SortDirection = 'DESC' 
      then Ca.specialty end desc
    )AS rownumber , Ca.studentCode ,ca.phone_number,ca.surname,ca.name,ca.email,ca.registrationYear,ca.specialty
 INTO #Results
  
FROM Students   as ca

where
 ((name   like +'%'+@search+ '%'  OR @search IS NULL) or
       (surname   like +'%'+@search+ '%'  OR @search IS NULL) or
     (phone_number   like +'%'+@search+ '%'  OR @search IS NULL) or
       (registrationYear   like +'%'+@search+ '%'  OR @search IS NULL)Or
	   (specialty  like +'%'+@search+ '%'  OR @search IS NULL)or
	   (studentCode  like +'%'+@search+ '%'  OR @search IS NULL)
	   )
	  
     
     

   SELECT  COUNT(*) FROM #Results as totalRows
           
      SELECT * FROM #Results
      WHERE (rownumber BETWEEN (@PageIndex -1) * @PageSize + 1 AND(((@PageIndex -1) * @PageSize + 1) + @PageSize) - 1)
	  
      DROP TABLE #Results

	  end




 IF (@Action='Update')
begin

     
       UPDATE  Students  SET 
       name= @name
      ,surname =@surname
      ,email=@email
      ,phone_number=@phone_number  
      ,registrationYear =@registrationYear 
	  ,specialty=@specialty

      WHERE  (studentCode= @studentCode)


 end 

 

  IF @Action = 'Delete'  
BEGIN  
DELETE FROM  Students   WHERE (studentCode= @studentCode)

END 
 



if (@Action='Insert')
begin
 Insert into Students 
	       (studentCode,name,surname,email,phone_number,registrationYear,specialty)
           values(@studentCode,@name,@surname,@email,@phone_number,@registrationYear,@specialty)

     

end




IF @Action = 'Count'  
BEGIN 
 
 SELECT COUNT (DISTINCT studentCode)as TotalStudents
      
  FROM Students  
 
 END

 IF @Action = 'Search'  
BEGIN 
 
 SELECT pro.name,pro.surname,pro.phone_number,pro.registrationYear
      
  FROM Students as pro
  where name like +'%'+@name+ '%' or surname like + '%'+@surname+ '%'or phone_number like + '%'+@phone_number+ '%'or registrationYear like + '%'+@registrationYear+ '%'
 
 END
  
 
end

GO
/****** Object:  StoredProcedure [dbo].[spAuthenticateUserhadi]    Script Date: 18/06/2019 9:42:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[spAuthenticateUserhadi] @apass nvarchar(50),@aname nvarchar(50) 
AS

BEGIN
 
 SELECT id,aname
FROM         tblAdmin as adm
WHERE     (aname =@aname AND apass =@apass)
 End 

GO
USE [master]
GO
ALTER DATABASE [studentList] SET  READ_WRITE 
GO
