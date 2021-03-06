USE CuatroCuadras
GO
-- ===========================================================================================
-- Descripción: Mostrar los amigos en comun
-- ===========================================================================================
CREATE PROCEDURE USP_AmigosEnComun
    @Nickname1 NVARCHAR(35),
	@Nickname2 NVARCHAR(35)
AS
BEGIN

	DECLARE @AmigosEnComun Table(
	Nickname1 NVARCHAR(35),
	Nickname2 NVARCHAR(35)
	)

	INSERT INTO @AmigosEnComun 

	Select * from
		(Select Nickname1,Nickname2 FROM AMIGO 
		WHERE Nickname1=@Nickname1
		UNION
		Select Nickname2,Nickname1 FROM AMIGO
		WHERE Nickname2=@Nickname1 and estado='A') as T1
	UNION
	Select * from
		(Select Nickname1,Nickname2 FROM AMIGO 
		WHERE Nickname1=@Nickname2
		UNION
		Select Nickname2,Nickname1 FROM AMIGO
		WHERE Nickname2=@Nickname2 and estado='A') as T2

	Select Nickname2 as [Amigo en Comun] from @AmigosEnComun
	GROUP BY Nickname2
	Having count(*)>1
END

GO
-- ===========================================================================================
-- Descripción: Insertar Usuario y asignarle automaticamente el logro "Primeros Pasos"
-- ===========================================================================================
CREATE PROCEDURE USP_InsertUsuarioLogro
    @Nickname NVARCHAR(35),
    @Nombre VARCHAR(40),
    @Apellidos VARCHAR(50),
    @Sexo CHAR(1),
    @Fecha_Nacimiento DATE,
    @Email VARCHAR(40),
    @Contrasena VARCHAR(MAX),
    @ID_Ciudad INT

AS
BEGIN
Begin try 
Begin TRAN
    SET NOCOUNT OFF;
    INSERT INTO USUARIO ( Nickname, Nombre, Apellidos, Sexo, Fecha_Nacimiento, Email, Contrasena, ID_Ciudad )
    VALUES (@Nickname, @Nombre, @Apellidos, @Sexo, @Fecha_Nacimiento, @Email, ENCRYPTBYPASSPHRASE('contrasena', @Contrasena), @ID_Ciudad)
    IF @@ROWCOUNT>0
        INSERT INTO LOGRO_USUARIO (Nickname,ID_Logro,Fecha) VALUES (@Nickname, 8, GETDATE())
COMMIT TRAN 
End try
    Begin CATCH
        IF @@TRANCOUNT>0
        ROLLBACK TRANSACTION
    End CATCH
END
GO
-- ===========================================================================================
-- Descripción: Mandar solicitud de amistad a un Usuario
-- ===========================================================================================
CREATE PROCEDURE USP_SolicitudAmistad
    @Nickname1 NVARCHAR(35),
	@Nickname2 NVARCHAR(35)
AS
BEGIN
Begin try 
Begin TRAN
    INSERT INTO AMIGO ( Nickname1, Nickname2, Estado ) VALUES ( @Nickname1, @Nickname2, 'P')
COMMIT TRAN 
End try 
    Begin CATCH
        IF @@TRANCOUNT>0
        ROLLBACK TRANSACTION
    End CATCH
END

GO
-- ===========================================================================================
-- Descripción: Mostrar el porcentaje que lleva realizado un usuario en cada logro
-- ===========================================================================================
CREATE PROCEDURE USP_AvanceLogros
    @Nickname varchar(35)
AS
BEGIN
    Select U.Nickname, L1.Nombre,L1.Cantidad_Visitas,COUNT(*) as [Visitas Realizadas], ((100/L1.Cantidad_Visitas)*COUNT(*)) as Porcentaje from VISITA V 
	INNER JOIN USUARIO U 
	ON V.Nickname=U.Nickname 
	INNER JOIN LUGAR L 
	ON V.ID_Lugar=L.ID_Lugar
	INNER JOIN LOGRO L1
	ON L.ID_Categoria=L1.Tipo_Categoria
	WHERE U.Nickname=@Nickname and L1.ID_Logro NOT IN (Select ID_Logro FROM LOGRO_USUARIO WHERE Nickname=@Nickname)
	GROUP BY U.Nickname,L1.Nombre,L1.Cantidad_Visitas
	UNION
	Select U.Nickname, L1.Nombre,L1.Cantidad_Visitas,COUNT(*) as [Visitas Realizadas], ((100/L1.Cantidad_Visitas)*COUNT(*)) as Porcentaje from VISITA V 
	INNER JOIN USUARIO U 
	ON V.Nickname=U.Nickname 
	INNER JOIN LUGAR L 
	ON V.ID_Lugar=L.ID_Lugar
	INNER JOIN LOGRO L1
	ON L.ID_Etiqueta=L1.Tipo_Etiqueta
	WHERE U.Nickname=@Nickname and L1.ID_Logro NOT IN (Select ID_Logro FROM LOGRO_USUARIO WHERE Nickname=@Nickname)
	GROUP BY U.Nickname,L1.Nombre,L1.Cantidad_Visitas
	ORDER BY Porcentaje DESC
END

GO
-- ===========================================================================================
-- Descripción: Busca cualquier palabra ingresada por toda la base de datos
-- ===========================================================================================
CREATE PROC USP_BuscadorGenerico
    @StrValorBusqueda nvarchar(100)
AS
BEGIN

CREATE TABLE #Resultado (NombreColumna nvarchar(370), ValorColumna nvarchar(3630))
SET NOCOUNT ON

DECLARE @NombreTabla nvarchar(256),
@NombreColumna nvarchar(128),
@StrValorBusqueda2 nvarchar(110)

SET  @NombreTabla = ''
SET @StrValorBusqueda2 = QUOTENAME('%' + @StrValorBusqueda + '%','''')

WHILE @NombreTabla IS NOT NULL
     BEGIN
     SET @NombreColumna = ''
     SET @NombreTabla =
     (SELECT MIN(QUOTENAME(TABLE_SCHEMA) + '.' + QUOTENAME(TABLE_NAME))
     FROM INFORMATION_SCHEMA.TABLES
     WHERE TABLE_TYPE = 'BASE TABLE'
     AND QUOTENAME(TABLE_SCHEMA) + '.' + QUOTENAME(TABLE_NAME) > @NombreTabla
     AND OBJECTPROPERTY(
     OBJECT_ID(QUOTENAME(TABLE_SCHEMA) + '.' + QUOTENAME(TABLE_NAME)), 'IsMSShipped') = 0)

     WHILE (@NombreTabla IS NOT NULL) AND (@NombreColumna IS NOT NULL)
         BEGIN
         SET @NombreColumna =
         (SELECT MIN(QUOTENAME(COLUMN_NAME))
         FROM INFORMATION_SCHEMA.COLUMNS
         WHERE TABLE_SCHEMA = PARSENAME(@NombreTabla, 2)
         AND TABLE_NAME = PARSENAME(@NombreTabla, 1)
         AND DATA_TYPE IN ('char', 'varchar', 'nchar', 'nvarchar')
         AND QUOTENAME(COLUMN_NAME) > @NombreColumna)

         IF @NombreColumna IS NOT NULL
              BEGIN
              INSERT INTO #Resultado
              EXEC
              ('SELECT ''' + @NombreTabla + '.' + @NombreColumna + ''', LEFT(' + @NombreColumna + ', 3630)
              FROM ' + @NombreTabla + ' (NOLOCK) ' + ' WHERE ' + @NombreColumna + ' LIKE ' + @StrValorBusqueda2)
              END 
         END
     END
     SELECT NombreColumna, ValorColumna FROM #Resultado
END
GO

-- ===========================================================================================
-- Descripción: 
-- ===========================================================================================
CREATE PROCEDURE USP_AmigosSugeridos
    @Nickname1 NVARCHAR(35)
AS
BEGIN
    Select TOP 5 Nickname from USUARIO WHERE Nickname <> @Nickname1 and Nickname NOT IN(
				Select Nickname2 from (
					Select Nickname1,Nickname2 FROM AMIGO 
					WHERE Nickname1=@Nickname1 and (estado='A' OR estado='P')
					UNION
					Select Nickname2,Nickname1 FROM AMIGO
					WHERE Nickname2=@Nickname1 and (estado='A' OR estado='P')) as T1)
END
GO