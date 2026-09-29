changes-operations
batchSerialize: aCollection into: aFileSystem
	| operations currentSnapshot changedSnapshot |
	operations := aCollection gather: #operations.
	operations ifEmpty: [^ self].
	currentSnapshot := self loadSnapshotFrom: aFileSystem.
	changedSnapshot := (MCPatch operations: operations) gitSApplyTo: currentSnapshot.
	self serialize: changedSnapshot into: aFileSystem.