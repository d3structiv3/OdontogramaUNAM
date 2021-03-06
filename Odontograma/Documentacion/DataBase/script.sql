/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 28/06/2020 07:05:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AntFam]    Script Date: 28/06/2020 07:05:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AntFam](
	[AntFamId] [nvarchar](128) NOT NULL,
	[Antecedente] [varchar](100) NOT NULL,
	[Parentesco] [varchar](100) NOT NULL,
	[PacienteId] [nvarchar](128) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AntFamId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AntPer]    Script Date: 28/06/2020 07:05:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AntPer](
	[AntPerId] [nvarchar](128) NOT NULL,
	[Antecedente] [varchar](100) NOT NULL,
	[PacienteId] [nvarchar](128) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AntPerId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 28/06/2020 07:05:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 28/06/2020 07:05:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 28/06/2020 07:05:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 28/06/2020 07:05:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 28/06/2020 07:05:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cita]    Script Date: 28/06/2020 07:05:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cita](
	[CitaId] [nvarchar](128) NOT NULL,
	[Fecha] [varchar](100) NOT NULL,
	[Hora] [varchar](100) NOT NULL,
	[ClinicaId] [nvarchar](128) NOT NULL,
	[PacienteId] [nvarchar](128) NOT NULL,
	[Estado] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CitaId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clinica]    Script Date: 28/06/2020 07:05:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clinica](
	[ClinicaId] [nvarchar](128) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ClinicaId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacto]    Script Date: 28/06/2020 07:05:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacto](
	[ContactoId] [nvarchar](128) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Correo] [varchar](100) NOT NULL,
	[Telefono] [varchar](100) NOT NULL,
	[Parentesco] [varchar](100) NOT NULL,
	[PacienteId] [nvarchar](128) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactoId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Derechohabiencia]    Script Date: 28/06/2020 07:05:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Derechohabiencia](
	[DerechohabienciaId] [nvarchar](128) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Alias] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DerechohabienciaId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleCita]    Script Date: 28/06/2020 07:05:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleCita](
	[DetalleCitaId] [nvarchar](128) NOT NULL,
	[Descripcion] [text] NOT NULL,
	[Observacion] [text] NOT NULL,
	[CitaId] [nvarchar](128) NOT NULL,
	[EstudianteId] [nvarchar](128) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DetalleCitaId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallePaciente]    Script Date: 28/06/2020 07:05:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallePaciente](
	[DetPacId] [nvarchar](128) NOT NULL,
	[Calle] [varchar](100) NOT NULL,
	[Colonia] [varchar](100) NOT NULL,
	[Cp] [varchar](100) NOT NULL,
	[DerechohabienciaId] [nvarchar](128) NOT NULL,
	[EstadoId] [nvarchar](128) NOT NULL,
	[OcupacionId] [nvarchar](128) NOT NULL,
	[EscolaridadId] [nvarchar](128) NOT NULL,
	[PacienteId] [nvarchar](128) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DetPacId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diagnostico]    Script Date: 28/06/2020 07:05:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diagnostico](
	[DiagnosticoId] [nvarchar](128) NOT NULL,
	[Diente] [varchar](100) NOT NULL,
	[Sintoma] [varchar](100) NOT NULL,
	[CitaId] [nvarchar](128) NOT NULL,
	[SintomaId] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[DiagnosticoId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Escolaridad]    Script Date: 28/06/2020 07:05:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Escolaridad](
	[EscolaridadId] [nvarchar](128) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EscolaridadId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Escuela]    Script Date: 28/06/2020 07:05:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Escuela](
	[EscuelaId] [nvarchar](128) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Alias] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EscuelaId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 28/06/2020 07:05:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[EstadoId] [nvarchar](128) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EstadoId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiante]    Script Date: 28/06/2020 07:05:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiante](
	[EstudianteId] [nvarchar](128) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Apellido] [varchar](100) NOT NULL,
	[Telefono] [varchar](100) NOT NULL,
	[FechaNacimiento] [varchar](100) NOT NULL,
	[Sexo] [varchar](100) NOT NULL,
	[EscuelaId] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EstudianteId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ocupacion]    Script Date: 28/06/2020 07:05:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ocupacion](
	[OcupacionId] [nvarchar](128) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OcupacionId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 28/06/2020 07:05:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[PacienteId] [nvarchar](128) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Apellido] [varchar](100) NOT NULL,
	[Telefono] [varchar](100) NOT NULL,
	[FechaNacimiento] [varchar](100) NOT NULL,
	[Sexo] [varchar](100) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PacienteId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sintoma]    Script Date: 28/06/2020 07:05:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sintoma](
	[SintomaId] [nvarchar](128) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SintomaId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sysdiagrams]    Script Date: 28/06/2020 07:05:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysdiagrams](
	[name] [sysname] NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] IDENTITY(1,1) NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[diagram_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_principal_name] UNIQUE NONCLUSTERED 
(
	[principal_id] ASC,
	[name] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[AntFam] ADD  DEFAULT (newid()) FOR [AntFamId]
GO
ALTER TABLE [dbo].[AntPer] ADD  DEFAULT (newid()) FOR [AntPerId]
GO
ALTER TABLE [dbo].[Cita] ADD  DEFAULT (newid()) FOR [CitaId]
GO
ALTER TABLE [dbo].[Clinica] ADD  DEFAULT (newid()) FOR [ClinicaId]
GO
ALTER TABLE [dbo].[Contacto] ADD  DEFAULT (newid()) FOR [ContactoId]
GO
ALTER TABLE [dbo].[Derechohabiencia] ADD  DEFAULT (newid()) FOR [DerechohabienciaId]
GO
ALTER TABLE [dbo].[DetalleCita] ADD  DEFAULT (newid()) FOR [DetalleCitaId]
GO
ALTER TABLE [dbo].[DetallePaciente] ADD  DEFAULT (newid()) FOR [DetPacId]
GO
ALTER TABLE [dbo].[Diagnostico] ADD  DEFAULT (newid()) FOR [DiagnosticoId]
GO
ALTER TABLE [dbo].[Escolaridad] ADD  DEFAULT (newid()) FOR [EscolaridadId]
GO
ALTER TABLE [dbo].[Escuela] ADD  DEFAULT (newid()) FOR [EscuelaId]
GO
ALTER TABLE [dbo].[Estado] ADD  DEFAULT (newid()) FOR [EstadoId]
GO
ALTER TABLE [dbo].[Estudiante] ADD  DEFAULT (newid()) FOR [EstudianteId]
GO
ALTER TABLE [dbo].[Ocupacion] ADD  DEFAULT (newid()) FOR [OcupacionId]
GO
ALTER TABLE [dbo].[Paciente] ADD  DEFAULT (newid()) FOR [PacienteId]
GO
ALTER TABLE [dbo].[Sintoma] ADD  DEFAULT (newid()) FOR [SintomaId]
GO
ALTER TABLE [dbo].[AntFam]  WITH CHECK ADD  CONSTRAINT [FK__AntFam__Paciente__3BFFE745] FOREIGN KEY([PacienteId])
REFERENCES [dbo].[Paciente] ([PacienteId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AntFam] CHECK CONSTRAINT [FK__AntFam__Paciente__3BFFE745]
GO
ALTER TABLE [dbo].[AntPer]  WITH CHECK ADD  CONSTRAINT [FK__AntFam__Paciente__382F5661] FOREIGN KEY([PacienteId])
REFERENCES [dbo].[Paciente] ([PacienteId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AntPer] CHECK CONSTRAINT [FK__AntFam__Paciente__382F5661]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Cita]  WITH CHECK ADD FOREIGN KEY([ClinicaId])
REFERENCES [dbo].[Clinica] ([ClinicaId])
GO
ALTER TABLE [dbo].[Cita]  WITH CHECK ADD FOREIGN KEY([PacienteId])
REFERENCES [dbo].[Paciente] ([PacienteId])
GO
ALTER TABLE [dbo].[Contacto]  WITH CHECK ADD FOREIGN KEY([PacienteId])
REFERENCES [dbo].[Paciente] ([PacienteId])
GO
ALTER TABLE [dbo].[DetalleCita]  WITH CHECK ADD FOREIGN KEY([CitaId])
REFERENCES [dbo].[Cita] ([CitaId])
GO
ALTER TABLE [dbo].[DetalleCita]  WITH CHECK ADD FOREIGN KEY([EstudianteId])
REFERENCES [dbo].[Estudiante] ([EstudianteId])
GO
ALTER TABLE [dbo].[DetallePaciente]  WITH CHECK ADD FOREIGN KEY([DerechohabienciaId])
REFERENCES [dbo].[Derechohabiencia] ([DerechohabienciaId])
GO
ALTER TABLE [dbo].[DetallePaciente]  WITH CHECK ADD FOREIGN KEY([EscolaridadId])
REFERENCES [dbo].[Escolaridad] ([EscolaridadId])
GO
ALTER TABLE [dbo].[DetallePaciente]  WITH CHECK ADD FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estado] ([EstadoId])
GO
ALTER TABLE [dbo].[DetallePaciente]  WITH CHECK ADD FOREIGN KEY([OcupacionId])
REFERENCES [dbo].[Ocupacion] ([OcupacionId])
GO
ALTER TABLE [dbo].[DetallePaciente]  WITH CHECK ADD FOREIGN KEY([PacienteId])
REFERENCES [dbo].[Paciente] ([PacienteId])
GO
ALTER TABLE [dbo].[Diagnostico]  WITH CHECK ADD FOREIGN KEY([CitaId])
REFERENCES [dbo].[Cita] ([CitaId])
GO
ALTER TABLE [dbo].[Diagnostico]  WITH CHECK ADD FOREIGN KEY([SintomaId])
REFERENCES [dbo].[Sintoma] ([SintomaId])
GO
ALTER TABLE [dbo].[Estudiante]  WITH CHECK ADD FOREIGN KEY([EscuelaId])
REFERENCES [dbo].[Escuela] ([EscuelaId])
GO
ALTER TABLE [dbo].[Estudiante]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
EXEC sys.sp_addextendedproperty @name=N'microsoft_database_tools_support', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sysdiagrams'
GO
