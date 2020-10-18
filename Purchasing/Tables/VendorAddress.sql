CREATE TABLE [Purchasing].[VendorAddress] (
    [VendorID]      INT      NOT NULL,
    [AddressID]     INT      NOT NULL,
    [AddressTypeID] INT      NOT NULL,
    [ModifiedDate]  DATETIME CONSTRAINT [DF_VendorAddress_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_VendorAddress_VendorID_AddressID] PRIMARY KEY CLUSTERED ([VendorID] ASC, [AddressID] ASC),
    CONSTRAINT [FK_VendorAddress_Address_AddressID] FOREIGN KEY ([AddressID]) REFERENCES [Person].[Address] ([AddressID]),
    CONSTRAINT [FK_VendorAddress_AddressType_AddressTypeID] FOREIGN KEY ([AddressTypeID]) REFERENCES [Person].[AddressType] ([AddressTypeID]),
    CONSTRAINT [FK_VendorAddress_Vendor_VendorID] FOREIGN KEY ([VendorID]) REFERENCES [Purchasing].[Vendor] ([VendorID])
);


GO
CREATE NONCLUSTERED INDEX [IX_VendorAddress_AddressID]
    ON [Purchasing].[VendorAddress]([AddressID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Nonclustered index.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'VendorAddress', @level2type = N'INDEX', @level2name = N'IX_VendorAddress_AddressID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Default constraint value of GETDATE()', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'VendorAddress', @level2type = N'CONSTRAINT', @level2name = N'DF_VendorAddress_ModifiedDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Address.AddressID.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'VendorAddress', @level2type = N'CONSTRAINT', @level2name = N'FK_VendorAddress_Address_AddressID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing AddressType.AddressTypeID.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'VendorAddress', @level2type = N'CONSTRAINT', @level2name = N'FK_VendorAddress_AddressType_AddressTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Foreign key constraint referencing Vendor.VendorID.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'VendorAddress', @level2type = N'CONSTRAINT', @level2name = N'FK_VendorAddress_Vendor_VendorID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key (clustered) constraint', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'VendorAddress', @level2type = N'CONSTRAINT', @level2name = N'PK_VendorAddress_VendorID_AddressID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Cross-reference mapping vendors and addresses.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'VendorAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to Vendor.VendorID.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'VendorAddress', @level2type = N'COLUMN', @level2name = N'VendorID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Primary key. Foreign key to Address.AddressID.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'VendorAddress', @level2type = N'COLUMN', @level2name = N'AddressID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Address type. Foreign key to AddressType.AddressTypeID.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'VendorAddress', @level2type = N'COLUMN', @level2name = N'AddressTypeID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Date and time the record was last updated.', @level0type = N'SCHEMA', @level0name = N'Purchasing', @level1type = N'TABLE', @level1name = N'VendorAddress', @level2type = N'COLUMN', @level2name = N'ModifiedDate';

