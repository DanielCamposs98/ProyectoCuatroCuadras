USE CuatroCuadras
GO

ALTER TABLE CATEGORIA ADD CONSTRAINT PK_IDCategoria PRIMARY KEY (ID_Categoria)
GO

ALTER TABLE LUGAR ADD CONSTRAINT PK_IDLugar PRIMARY KEY(ID_Lugar)
GO

ALTER TABLE LUGAR ADD CONSTRAINT FK_IDCat FOREIGN KEY (ID_Categoria) REFERENCES Categoria(ID_Categoria) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE ETIQUETA ADD CONSTRAINT PK_IDEtiqueta PRIMARY KEY(ID_Etiqueta)
GO

ALTER TABLE LUGAR ADD CONSTRAINT FK_IDEtiq FOREIGN KEY (ID_Etiqueta) REFERENCES ETIQUETA(ID_Etiqueta) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE CIUDAD ADD CONSTRAINT PK_IDCIudad PRIMARY KEY(ID_Ciudad)
GO

ALTER TABLE LUGAR ADD CONSTRAINT FK_L_IDCiudad FOREIGN KEY (ID_Ciudad) REFERENCES Ciudad(ID_Ciudad) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE INTERES ADD CONSTRAINT PK_InteresNickname PRIMARY KEY (ID_Interes)
GO

ALTER TABLE USUARIO ADD CONSTRAINT PK_Nickname PRIMARY KEY(Nickname)
GO

ALTER TABLE USUARIO ADD CONSTRAINT FK_U_IDCiudad FOREIGN KEY (ID_Ciudad) REFERENCES Ciudad(ID_Ciudad) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE VISITA ADD CONSTRAINT FK_IDLugar FOREIGN KEY (ID_Lugar) REFERENCES Lugar(ID_Lugar) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE VISITA ADD CONSTRAINT FK_Nickname FOREIGN KEY (Nickname) REFERENCES Usuario(Nickname) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE LOGRO ADD CONSTRAINT PK_IDLogro PRIMARY KEY(ID_Logro)
GO

ALTER TABLE AMIGO ADD CONSTRAINT FK_Nickname1 FOREIGN KEY (Nickname1) REFERENCES Usuario(Nickname) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE AMIGO ADD CONSTRAINT FK_Nickname2 FOREIGN KEY (Nickname2) REFERENCES Usuario(Nickname) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE AMIGO ADD CONSTRAINT U_Amigo UNIQUE (Nickname1,Nickname2)
GO

ALTER TABLE AMIGO ADD CONSTRAINT Check_Amigo CHECK (Nickname1!=Nickname2)
GO

ALTER TABLE LOGRO_USUARIO ADD CONSTRAINT FK_LUNickname FOREIGN KEY (Nickname) REFERENCES Usuario(Nickname) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE LOGRO_USUARIO ADD CONSTRAINT FK_IDLogro FOREIGN KEY (ID_Logro) REFERENCES LOGRO(ID_Logro) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE LOGRO_USUARIO ADD CONSTRAINT U_LogroUsuario UNIQUE(Nickname,ID_Logro)
GO

ALTER TABLE INTERES_USUARIO ADD CONSTRAINT FK_IUNickname FOREIGN KEY (Nickname) REFERENCES Usuario(Nickname)ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE INTERES_USUARIO ADD CONSTRAINT FK_IUID_Interes FOREIGN KEY (ID_Interes) REFERENCES Interes(ID_Interes) ON DELETE CASCADE ON UPDATE CASCADE
GO

ALTER TABLE USUARIO ADD CONSTRAINT Check_Sexo CHECK (Sexo IN ('M', 'F'))
GO

ALTER TABLE USUARIO ADD CONSTRAINT Check_Nacimiento Check (Fecha_Nacimiento<=GETDATE())