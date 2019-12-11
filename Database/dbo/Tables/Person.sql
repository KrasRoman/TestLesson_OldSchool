CREATE TABLE [dbo].[Person] (
    [Uid]         UNIQUEIDENTIFIER NOT NULL,
    [Name]        VARCHAR (MAX)    NOT NULL,
    [UidPosition] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED ([Uid] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_Person]
    ON [dbo].[Person]([Uid] ASC, [UidPosition] ASC);

